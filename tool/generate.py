"""Generates lib/src/sf_icons.g.dart: one const IconData per SF Symbol, with the
symbol outline embedded in IconData.fontFamilyFallback.

Outlines come from Apple's variable SF-Pro.ttf. Symbol glyphs only vary along
the wght axis, with one delta set at wght=1 and one at wght=1000, so storing
three masters (Ultralight, Regular, Black) reproduces every weight exactly.

Usage: python3 tool/generate.py [--font /Library/Fonts/SF-Pro.ttf] [--only a,b]
"""

import argparse
import os
import sys

from fontTools.pens.recordingPen import DecomposingRecordingPointPen
from fontTools.ttLib import TTFont

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Format marker, first element of IconData.fontFamilyFallback.
MARKER = 'sf2'

# Bits are packed 15 per UTF-16 code unit starting at this character, so the
# data is a plain Dart string literal at 2 bytes per 15 bits in the snapshot.
CHAR_BASE = 0x4E00
CHAR_BITS = 15


def zigzag(n):
    return (n << 1) ^ (n >> 63)


class BitWriter:
    def __init__(self):
        self.bits = []

    def write(self, value, count):
        for i in range(count):
            self.bits.append((value >> i) & 1)

    def rice(self, value, k):
        self.bits.extend([1] * (value >> k))
        self.bits.append(0)
        self.write(value, k)

    def rice_signed(self, value, k):
        self.rice(zigzag(value), k)

    def to_string(self):
        bits = self.bits + [0] * (-len(self.bits) % CHAR_BITS)
        chars = []
        for i in range(0, len(bits), CHAR_BITS):
            value = 0
            for j, bit in enumerate(bits[i:i + CHAR_BITS]):
                value |= bit << j
            chars.append(chr(CHAR_BASE + value))
        return ''.join(chars)


class BitReader:
    def __init__(self, text):
        self.text, self.pos, self.buf, self.n = text, 0, 0, 0

    def read(self, count):
        while self.n < count:
            self.buf |= (ord(self.text[self.pos]) - CHAR_BASE) << self.n
            self.pos += 1
            self.n += CHAR_BITS
        value = self.buf & ((1 << count) - 1)
        self.buf >>= count
        self.n -= count
        return value

    def rice(self, k):
        q = 0
        while self.read(1):
            q += 1
        return (q << k) | self.read(k)

    def rice_signed(self, k):
        z = self.rice(k)
        return (z >> 1) ^ -(z & 1)


def rice_cost(values):
    """Best Rice parameter for signed values and its cost in bits."""
    zs = [zigzag(v) for v in values]
    return min((sum((z >> k) + 1 + k for z in zs), k) for k in range(15))


def axis_diff(values):
    """Differences between consecutive points, per axis (x with x, y with y)."""
    return values[:2] + [values[i] - values[i - 2] for i in range(2, len(values))]


def axis_undiff(values):
    out = list(values[:2])
    for i in range(2, len(values)):
        out.append(values[i] + out[i - 2])
    return out


def predict_black(scale, light):
    # Black deltas point the opposite way of Ultralight ones: black ~ -scale/16 * light.
    return (scale * light + 8) >> 4


def contours(glyph_set, name):
    pen = DecomposingRecordingPointPen(glyph_set)
    glyph_set[name].drawPoints(pen)
    result, current = [], None
    for op, args, _ in pen.value:
        if op == 'beginPath':
            current = []
        elif op == 'addPoint':
            (x, y), segment_type = args[0], args[1]
            current.append((round(x), round(y), segment_type is not None))
        elif op == 'endPath':
            if current:
                result.append(current)
            current = None
    return result, round(glyph_set[name].width)


def encode(regular, light, black):
    """Bit stream, all fields LSB-first:

    rice(2) contour count, rice(4) points per contour - 1, 1 bit per point
    (on-curve), rice(11) advance, signed rice(5) advance deltas to Ultralight
    and Black, 4+4+4 bits Rice parameters, 6 bits Black prediction scale,
    then three streams of 2 signed Rice values per point: Regular coordinates
    as differences from the previous point, Ultralight deltas as differences
    from the previous point's delta, and the residual of Black deltas after
    prediction from Ultralight, also as differences.
    """
    (c_reg, w_reg), (c_min, w_min), (c_max, w_max) = regular, light, black
    shape = [[p[2] for p in c] for c in c_reg]
    if shape != [[p[2] for p in c] for c in c_min] or shape != [[p[2] for p in c] for c in c_max]:
        raise ValueError('masters are not point-compatible')

    reg = [v for c in c_reg for p in c for v in p[:2]]
    to_light = [m - r for m, r in zip((v for c in c_min for p in c for v in p[:2]), reg)]
    to_black = [m - r for m, r in zip((v for c in c_max for p in c for v in p[:2]), reg)]

    num = sum(-l * b for l, b in zip(to_light, to_black))
    den = sum(l * l for l in to_light) or 1
    scale = max(0, min(63, round(num / den * 16)))

    reg_stream = [reg[i] - (reg[i - 2] if i >= 2 else 0) for i in range(len(reg))]
    light_stream = axis_diff(to_light)
    black_stream = axis_diff([b + predict_black(scale, l) for l, b in zip(to_light, to_black)])
    streams = [(s, rice_cost(s)[1]) for s in (reg_stream, light_stream, black_stream)]

    w = BitWriter()
    w.rice(len(c_reg), 2)
    for c in c_reg:
        w.rice(len(c) - 1, 4)
    for c in shape:
        for on in c:
            w.write(int(on), 1)
    w.rice(w_reg, 11)
    w.rice_signed(w_min - w_reg, 5)
    w.rice_signed(w_max - w_reg, 5)
    for _, k in streams:
        w.write(k, 4)
    w.write(scale, 6)
    for values, k in streams:
        for v in values:
            w.rice_signed(v, k)
    text = w.to_string()

    if decode(text) != (shape, reg, to_light, to_black, (w_reg, w_min, w_max)):
        raise AssertionError('round trip failed')
    return text


def decode(text):
    r = BitReader(text)
    shape = [[0] * (r.rice(4) + 1) for _ in range(r.rice(2))]
    shape = [[bool(r.read(1)) for _ in c] for c in shape]
    n = sum(len(c) for c in shape)
    w_reg = r.rice(11)
    w_min, w_max = w_reg + r.rice_signed(5), w_reg + r.rice_signed(5)
    ks = [r.read(4) for _ in range(3)]
    scale = r.read(6)
    reg_stream = [r.rice_signed(ks[0]) for _ in range(2 * n)]
    light_stream = [r.rice_signed(ks[1]) for _ in range(2 * n)]
    black_stream = [r.rice_signed(ks[2]) for _ in range(2 * n)]
    reg = axis_undiff(reg_stream)
    to_light = axis_undiff(light_stream)
    to_black = [b - predict_black(scale, l) for l, b in zip(to_light, axis_undiff(black_stream))]
    return shape, reg, to_light, to_black, (w_reg, w_min, w_max)


HEADER = '''// GENERATED CODE - DO NOT MODIFY BY HAND.
// Generated by tool/generate.py from {font} ({version}).
// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

/// SFIcons contains all the SF Symbols as static IconData.
/// This aproach is used to enable tree shaking.
/// Naming convention for SF Symbols is as follows:
/// 1. SF Symbol name is prefixed with 'sf_'.
/// 2. Dots are replaced with underscores.
/// Examples:
/// — SF Symbol 0.circle is named as sf_0_circle.
/// — SF Symbol heart.fill is named as sf_heart_fill.
@staticIconProvider
class SFIcons {{
'''


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--font', default='/Library/Fonts/SF-Pro.ttf')
    parser.add_argument('--only', help='comma-separated symbol names')
    parser.add_argument('--out', default=os.path.join(ROOT, 'lib', 'src', 'sf_icons.g.dart'))
    args = parser.parse_args()

    # name, identifier, codepoint, deprecation note (see tool/update_symbols.py)
    rows = [line.rstrip('\n').split('\t') for line in open(os.path.join(ROOT, 'tool', 'symbols.tsv'))]
    if args.only:
        only = set(args.only.split(','))
        rows = [r for r in rows if r[0] in only]

    font = TTFont(args.font)
    cmap = font.getBestCmap()
    sets = [font.getGlyphSet(location={'wght': w}, normalized=False) for w in (400, 1, 1000)]

    lines, total = [], 0
    for name, ident, cp, note in rows:
        glyph = cmap.get(int(cp, 16))
        if glyph is None:
            print(f'missing glyph for {name} (U+{cp})', file=sys.stderr)
            continue
        data = encode(*(contours(s, glyph) for s in sets))
        total += len(data)
        lines.append(
            f'  /// IconData for SF Symbol {name}\n'
            + (f"  @Deprecated('{note}')\n" if note else '')
            +             f"  static const IconData {ident} = IconData(0x{cp}, fontFamilyFallback: <String>['{MARKER}', '{data}']);\n"
        )

    version = font['name'].getDebugName(5)
    with open(args.out, 'w') as f:
        f.write(HEADER.format(font=os.path.basename(args.font), version=version))
        f.write('\n'.join(lines))
        f.write('}\n')
    print(f'{len(lines)} symbols, {total / 1e6:.2f} MB of path data, {os.path.getsize(args.out) / 1e6:.2f} MB file')

    # Name -> IconData maps for the tests (every name) and the example's
    # catalog (current names only). They reference every symbol, so they must
    # never be imported from lib/.
    for path, current_only in (('test/all_icons.g.dart', False), ('example/lib/all_icons.g.dart', True)):
        entries = ''.join(f"  '{name}': SFIcons.{ident},\n" for name, ident, _, note in rows
                          if not (current_only and note))
        with open(os.path.join(ROOT, path), 'w') as f:
            f.write(CATALOG.format(entries=entries))


CATALOG = '''// GENERATED CODE - DO NOT MODIFY BY HAND.
// Generated by tool/generate.py.
// ignore_for_file: deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

const Map<String, IconData> allIcons = <String, IconData>{{
{entries}}};
'''


if __name__ == '__main__':
    main()

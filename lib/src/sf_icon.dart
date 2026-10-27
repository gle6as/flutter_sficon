import 'dart:collection';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/foundation.dart' show listEquals;
import 'package:flutter/widgets.dart';

/// SFIcon is a widget that displays an SF Symbol from SF Symbols 27.
/// Symbols are drawn as vector paths, so no font is bundled with the app.
/// It takes an IconData as input and displays the corresponding SF Symbol.
/// Optional parameters: fontSize, fontWeight, color, shadows, textDirection and semanticsLabel.
class SFIcon extends StatelessWidget {
  const SFIcon(
    this.icon, {
    Key? key,
    this.fontSize = 24,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.shadows,
    this.textDirection,
    this.semanticsLabel,
  }) : super(key: key);

  final IconData icon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final List<Shadow>? shadows;
  final TextDirection? textDirection;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final textDirection = this.textDirection ?? Directionality.of(context);

    final iconWeight = fontWeight?.value.toDouble() ?? iconTheme.weight;

    final iconOpacity = iconTheme.opacity ?? 1.0;
    var iconColor = color ?? iconTheme.color!;
    if (iconOpacity != 1.0) {
      iconColor = iconColor.withValues(alpha: iconColor.a * iconOpacity);
    }

    final symbol = _SFSymbol.of(icon);
    if (symbol == null) {
      // Not an SFIcons constant: draw it from its own font, like Icon does.
      return Text(
        String.fromCharCode(icon.codePoint),
        textDirection: textDirection,
        semanticsLabel: semanticsLabel,
        style: TextStyle(
          fontVariations: <FontVariation>[
            if (iconWeight != null) FontVariation('wght', iconWeight),
          ],
          inherit: false,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          fontFamilyFallback: icon.fontFamilyFallback,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: iconColor,
          shadows: shadows,
        ),
      );
    }

    // Text scales with the platform text size, so icons do too.
    final textScaler = MediaQuery.textScalerOf(context);
    Widget result = _SFSymbolBox(
      symbol: symbol,
      fontSize: textScaler.scale(fontSize ?? kDefaultFontSize),
      weight: iconWeight ?? FontWeight.normal.value.toDouble(),
      color: iconColor,
      shadows: shadows,
    );
    if (semanticsLabel != null) {
      result = Semantics(
        label: semanticsLabel,
        textDirection: textDirection,
        child: ExcludeSemantics(child: result),
      );
    }
    return result;
  }
}

// Vertical metrics of SF Pro, in font units. They match the line box the
// font-based SFIcon had, so layouts don't move.
const double _kUnitsPerEm = 2048;
const double _kAscent = 1950;
const double _kDescent = 494;

// wght axis value of SF Pro's named instances for FontWeight w100…w900.
const List<double> _kWeightAxis = <double>[
  30.925, 110.725, 274.315, 400, 510, 590, 700, 860, 1000, //
];

/// A decoded symbol: TrueType contours for the Regular master plus the
/// per-point deltas to the Ultralight (wght=1) and Black (wght=1000) masters.
class _SFSymbol {
  _SFSymbol._(this._contours, this._onCurve, this._xy, this._toLight,
      this._toBlack, this._advance);

  // Format marker, written by tool/generate.py.
  static const String _kMarker = 'sf2';
  static const int _kCacheSize = 512;
  static final LinkedHashMap<int, _SFSymbol> _cache =
      LinkedHashMap<int, _SFSymbol>();

  static _SFSymbol? of(IconData icon) {
    final data = icon.fontFamilyFallback;
    if (data == null || data.length != 2 || data[0] != _kMarker) {
      return null;
    }
    var symbol = _cache.remove(icon.codePoint);
    symbol ??= _SFSymbol._decode(data[1]);
    _cache[icon.codePoint] = symbol;
    if (_cache.length > _kCacheSize) {
      _cache.remove(_cache.keys.first);
    }
    return symbol;
  }

  // The layout is documented on encode() in tool/generate.py.
  factory _SFSymbol._decode(String data) {
    final bits = _BitReader(data);
    final contours = Uint16List(bits.rice(2));
    var points = 0;
    for (var i = 0; i < contours.length; i++) {
      contours[i] = bits.rice(4) + 1;
      points += contours[i];
    }
    final onCurve = Uint8List(points);
    for (var i = 0; i < points; i++) {
      onCurve[i] = bits.read(1);
    }

    final advance = bits.rice(11);
    final advanceLight = bits.riceSigned(5);
    final advanceBlack = bits.riceSigned(5);
    final kRegular = bits.read(4);
    final kLight = bits.read(4);
    final kBlack = bits.read(4);
    final blackScale = bits.read(6);

    // Each stream holds differences to the previous point on the same axis.
    final n = points * 2;
    Int32List stream(int k) {
      final values = Int32List(n);
      for (var i = 0; i < n; i++) {
        values[i] = bits.riceSigned(k) + (i >= 2 ? values[i - 2] : 0);
      }
      return values;
    }

    final xy = stream(kRegular);
    final toLight = stream(kLight);
    final toBlack = stream(kBlack);
    for (var i = 0; i < n; i++) {
      // Black deltas were stored as the residual of this prediction.
      toBlack[i] -= (blackScale * toLight[i] + 8) >> 4;
    }

    return _SFSymbol._(
      contours,
      onCurve,
      Float32List.fromList(xy.map((v) => v.toDouble()).toList()),
      Float32List.fromList(toLight.map((v) => v.toDouble()).toList()),
      Float32List.fromList(toBlack.map((v) => v.toDouble()).toList()),
      Float64List.fromList(<double>[
        advance.toDouble(),
        advanceLight.toDouble(),
        advanceBlack.toDouble(),
      ]),
    );
  }

  final Uint16List _contours;
  final Uint8List _onCurve;
  final Float32List _xy;
  final Float32List _toLight;
  final Float32List _toBlack;
  final Float64List _advance;

  final Map<double, Path> _paths = <double, Path>{};

  /// How far [weight] (100…900, like FontWeight) is towards the Ultralight
  /// and the Black master.
  static (double, double) _blend(double weight) {
    final w = (weight.clamp(100, 900) - 100) / 100;
    final i = math.min(w.floor(), 7);
    final axis = _kWeightAxis[i] + (_kWeightAxis[i + 1] - _kWeightAxis[i]) * (w - i);
    return axis < 400 ? ((400 - axis) / 399, 0) : (0, (axis - 400) / 600);
  }

  /// Advance width in font units.
  double advance(double weight) {
    final (light, black) = _blend(weight);
    return _advance[0] + _advance[1] * light + _advance[2] * black;
  }

  /// Outline in font units, with y pointing down from the baseline.
  Path path(double weight) {
    final cached = _paths[weight];
    if (cached != null) return cached;
    if (_paths.length >= 8) _paths.clear();

    final (light, black) = _blend(weight);
    final xy = Float32List(_xy.length);
    for (var i = 0; i < xy.length; i++) {
      xy[i] = _xy[i] + _toLight[i] * light + _toBlack[i] * black;
    }

    final path = Path();
    var start = 0;
    for (final count in _contours) {
      _addContour(path, xy, start, count);
      start += count;
    }
    return _paths[weight] = path;
  }

  // Builds a TrueType contour: on-curve points are line or curve ends,
  // off-curve points are quadratic controls, and two controls in a row imply
  // an on-curve point halfway between them.
  void _addContour(Path path, Float32List xy, int start, int count) {
    double px(int i) => xy[(start + i) * 2];
    double py(int i) => -xy[(start + i) * 2 + 1];
    bool on(int i) => _onCurve[start + i] == 1;

    var first = 0;
    while (first < count && !on(first)) {
      first++;
    }
    final double sx, sy;
    final int steps;
    if (first < count) {
      sx = px(first);
      sy = py(first);
      steps = count - 1;
    } else {
      sx = (px(count - 1) + px(0)) / 2;
      sy = (py(count - 1) + py(0)) / 2;
      first = -1;
      steps = count;
    }

    path.moveTo(sx, sy);
    var hasControl = false;
    var cx = 0.0, cy = 0.0;
    for (var k = 1; k <= steps; k++) {
      final i = (first + k) % count;
      final x = px(i), y = py(i);
      if (on(i)) {
        if (hasControl) {
          path.quadraticBezierTo(cx, cy, x, y);
          hasControl = false;
        } else {
          path.lineTo(x, y);
        }
      } else {
        if (hasControl) {
          path.quadraticBezierTo(cx, cy, (cx + x) / 2, (cy + y) / 2);
        }
        cx = x;
        cy = y;
        hasControl = true;
      }
    }
    if (hasControl) {
      path.quadraticBezierTo(cx, cy, sx, sy);
    }
    path.close();
  }
}

/// Reads the bit stream tool/generate.py packs into a string, 15 bits per
/// UTF-16 code unit.
class _BitReader {
  _BitReader(this._data);

  static const int _kCharBase = 0x4E00;
  static const int _kCharBits = 15;

  final String _data;
  int _pos = 0;
  int _buffer = 0;
  int _count = 0;

  int read(int bits) {
    while (_count < bits) {
      _buffer |= (_data.codeUnitAt(_pos++) - _kCharBase) << _count;
      _count += _kCharBits;
    }
    final value = _buffer & ((1 << bits) - 1);
    _buffer >>= bits;
    _count -= bits;
    return value;
  }

  /// Rice code: unary quotient, then [k] low bits.
  int rice(int k) {
    var quotient = 0;
    while (read(1) == 1) {
      quotient++;
    }
    return (quotient << k) | read(k);
  }

  int riceSigned(int k) {
    final zigzag = rice(k);
    return (zigzag >> 1) ^ -(zigzag & 1);
  }
}

class _SFSymbolBox extends LeafRenderObjectWidget {
  const _SFSymbolBox({
    required this.symbol,
    required this.fontSize,
    required this.weight,
    required this.color,
    required this.shadows,
  });

  final _SFSymbol symbol;
  final double fontSize;
  final double weight;
  final Color color;
  final List<Shadow>? shadows;

  @override
  _RenderSFSymbol createRenderObject(BuildContext context) => _RenderSFSymbol(
        symbol: symbol,
        fontSize: fontSize,
        weight: weight,
        color: color,
        shadows: shadows,
      );

  @override
  void updateRenderObject(BuildContext context, _RenderSFSymbol renderObject) {
    renderObject
      ..symbol = symbol
      ..fontSize = fontSize
      ..weight = weight
      ..color = color
      ..shadows = shadows;
  }
}

class _RenderSFSymbol extends RenderBox {
  _RenderSFSymbol({
    required _SFSymbol symbol,
    required double fontSize,
    required double weight,
    required Color color,
    required List<Shadow>? shadows,
  })  : _symbol = symbol,
        _fontSize = fontSize,
        _weight = weight,
        _color = color,
        _shadows = shadows;

  _SFSymbol _symbol;
  set symbol(_SFSymbol value) {
    if (identical(value, _symbol)) return;
    _symbol = value;
    _path = null;
    markNeedsLayout();
  }

  double _fontSize;
  set fontSize(double value) {
    if (value == _fontSize) return;
    _fontSize = value;
    _path = null;
    markNeedsLayout();
  }

  double _weight;
  set weight(double value) {
    if (value == _weight) return;
    _weight = value;
    _path = null;
    markNeedsLayout();
  }

  Color _color;
  set color(Color value) {
    if (value == _color) return;
    _color = value;
    markNeedsPaint();
  }

  List<Shadow>? _shadows;
  set shadows(List<Shadow>? value) {
    if (listEquals(value, _shadows)) return;
    _shadows = value;
    markNeedsPaint();
  }

  // Outline scaled to the current font size.
  Path? _path;

  double get _scale => _fontSize / _kUnitsPerEm;

  // Text rounds its line height to whole pixels, the baseline stays exact.
  Size get _preferredSize => Size(
        _symbol.advance(_weight) * _scale,
        ((_kAscent + _kDescent) * _scale).roundToDouble(),
      );

  @override
  double computeMinIntrinsicWidth(double height) => _preferredSize.width;

  @override
  double computeMaxIntrinsicWidth(double height) => _preferredSize.width;

  @override
  double computeMinIntrinsicHeight(double width) => _preferredSize.height;

  @override
  double computeMaxIntrinsicHeight(double width) => _preferredSize.height;

  double _baseline(TextBaseline baseline) => switch (baseline) {
        TextBaseline.alphabetic => _kAscent * _scale,
        TextBaseline.ideographic => (_kAscent + _kDescent) * _scale,
      };

  @override
  double computeDistanceToActualBaseline(TextBaseline baseline) =>
      _baseline(baseline);

  @override
  double computeDryBaseline(BoxConstraints constraints, TextBaseline baseline) =>
      _baseline(baseline);

  @override
  Size computeDryLayout(BoxConstraints constraints) =>
      constraints.constrain(_preferredSize);

  @override
  void performLayout() {
    size = computeDryLayout(constraints);
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  void paint(PaintingContext context, Offset offset) {
    final path = _path ??= _symbol
        .path(_weight)
        .transform(Matrix4.diagonal3Values(_scale, _scale, 1).storage);
    final canvas = context.canvas;
    canvas.save();
    canvas.translate(offset.dx, offset.dy + _kAscent * _scale);
    for (final shadow in _shadows ?? const <Shadow>[]) {
      canvas.translate(shadow.offset.dx, shadow.offset.dy);
      canvas.drawPath(path, shadow.toPaint());
      canvas.translate(-shadow.offset.dx, -shadow.offset.dy);
    }
    canvas.drawPath(path, Paint()..color = _color);
    canvas.restore();
  }
}

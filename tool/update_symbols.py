"""Updates tool/symbols.tsv (name, identifier, codepoint, deprecation note) from
lists copied out of the SF Symbols app.

In list view with all groups expanded, Edit > Copy Names gives the full list of
current names (--latest). Edit > Copy Symbols gives the characters, but only
for a few hundred rows at a time and never for symbols that are in no font, so
copy names and symbols for the same selection and pass each copy as a --pair.

  python3 tool/update_symbols.py --latest names.txt \\
      --pair names1.txt symbols1.txt --pair names2.txt symbols2.txt

Names already in symbols.tsv keep their codepoint. Names that left the latest
list stay, so existing code keeps compiling, and are marked deprecated.
"""

import argparse
import os
import re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TSV = os.path.join(ROOT, 'tool', 'symbols.tsv')
METADATA = '/Applications/SF Symbols.app/Contents/Resources/Metadata'


def lines(path):
    return [line for line in open(path, encoding='utf-8').read().split('\n') if line]


def identifier(name):
    ident = 'sf_' + name.replace('.', '_')
    if not re.fullmatch(r'[a-z0-9_]+', ident):
        raise ValueError(f'cannot make an identifier from {name!r}')
    return ident


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--latest', required=True)
    parser.add_argument('--pair', nargs=2, action='append', default=[], metavar=('NAMES', 'SYMBOLS'))
    args = parser.parse_args()

    codepoints = {}
    for row in (line.split('\t') for line in lines(TSV)):
        codepoints[row[0]] = int(row[2], 16)
    for names_path, symbols_path in args.pair:
        names, symbols = lines(names_path), lines(symbols_path)
        if len(names) != len(symbols) or any(len(s) != 1 or ord(s) < 0x100000 for s in symbols):
            raise ValueError(f'{names_path} and {symbols_path} do not pair up')
        for name, symbol in zip(names, symbols):
            if codepoints.setdefault(name, ord(symbol)) != ord(symbol):
                raise ValueError(f'{name} changed codepoint')

    latest = lines(args.latest)
    current = {name for name in latest if name in codepoints}
    without_glyph = [name for name in latest if name not in codepoints]

    # Old name -> new name, from Apple's alias lists ("new" = "old").
    renamed = {}
    for file in ('name_aliases.strings', 'legacy_aliases.strings'):
        text = open(os.path.join(METADATA, file), encoding='utf-8').read()
        for new, old in re.findall(r'"([^"]+)"\s*=\s*"([^"]+)";', text):
            renamed.setdefault(old, new)
    current_by_codepoint = {}
    for name in latest:
        if name in current:
            current_by_codepoint.setdefault(codepoints[name], name)

    rows = []
    for name in sorted(codepoints):
        note = ''
        if name not in current:
            successor = current_by_codepoint.get(codepoints[name]) or renamed.get(name)
            if successor in current:
                note = f'Renamed to SFIcons.{identifier(successor)}'
            else:
                note = 'No longer in SF Symbols'
        rows.append(f'{name}\t{identifier(name)}\t{codepoints[name]:X}\t{note}\n')

    with open(TSV, 'w') as f:
        f.writelines(rows)
    print(f'{len(current)} current symbols, {len(rows) - len(current)} kept as deprecated, '
          f'{len(without_glyph)} current names skipped (in no font)')


if __name__ == '__main__':
    main()

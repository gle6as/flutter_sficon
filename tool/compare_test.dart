// Local tool, not part of the test suite: compares path rendering with
// Apple's static SF Pro Text weights.
//
// SFICON_OUT=<dir> [SFICON_SYMBOLS=<file with one name per line>] \
//   flutter test tool/compare_test.dart

import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test/all_icons.g.dart';

const _weights = <(FontWeight, String)>[
  (FontWeight.w100, 'Ultralight'),
  (FontWeight.w200, 'Thin'),
  (FontWeight.w300, 'Light'),
  (FontWeight.w400, 'Regular'),
  (FontWeight.w500, 'Medium'),
  (FontWeight.w600, 'Semibold'),
  (FontWeight.w700, 'Bold'),
  (FontWeight.w800, 'Heavy'),
  (FontWeight.w900, 'Black'),
];

const _sheetSymbols = <String>[
  'heart', 'pawprint.fill', 'fork.knife', 'figure.walk', 'syringe', 'cat',
  'checkmark.circle.fill', 'calendar', '31.calendar', 'scalemass',
  'waveform.path.ecg.text.page', 'moon.stars',
];

const _black = Color(0xFF000000);

Future<void> _loadFont(String family, String path) async {
  final bytes = File(path).readAsBytesSync();
  await (FontLoader(family)..addFont(Future.value(ByteData.sublistView(bytes)))).load();
}

Widget _ref(IconData icon, FontWeight weight, double size) => Text(
      String.fromCharCode(icon.codePoint),
      style: TextStyle(inherit: false, fontFamily: 'ref${weight.value}', fontSize: size, color: _black),
    );

Widget _new(IconData icon, FontWeight weight, double size) =>
    SFIcon(icon, fontSize: size, fontWeight: weight, color: _black);

Widget _label(String text, {double size = 11}) => Text(
      text,
      style: TextStyle(inherit: false, fontFamily: 'ref400', fontSize: size, color: const Color(0xFF666666)),
    );

Widget _app(Widget child) => MediaQuery(
      data: const MediaQueryData(),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: IconTheme(
          data: const IconThemeData(color: _black),
          child: Align(alignment: Alignment.topLeft, child: child),
        ),
      ),
    );

Future<ui.Image> _capture(WidgetTester tester, GlobalKey key, double pixelRatio) async {
  final boundary = key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  return (await tester.runAsync(() => boundary.toImage(pixelRatio: pixelRatio)))!;
}

Future<void> _savePng(WidgetTester tester, ui.Image image, String path) async {
  final data = await tester.runAsync(() => image.toByteData(format: ui.ImageByteFormat.png));
  File(path).writeAsBytesSync(data!.buffer.asUint8List());
}

void main() {
  final out = Platform.environment['SFICON_OUT'] ?? 'build';

  testWidgets('compare', (tester) async {
    tester.view.physicalSize = const Size(4000, 6000);
    tester.view.devicePixelRatio = 1;
    await tester.runAsync(() async {
      for (final (weight, name) in _weights) {
        await _loadFont('ref${weight.value}', '/Library/Fonts/SF-Pro-Text-$name.otf');
      }
    });

    // 1. Sheet: new paths and Apple's static weights side by side.
    final sheetKey = GlobalKey();
    const size = 40.0;
    Widget cell(Widget child) => SizedBox(width: 64, height: 56, child: Center(child: child));
    final shown = [FontWeight.w100, FontWeight.w400, FontWeight.w500, FontWeight.w600, FontWeight.w700, FontWeight.w900];
    await tester.pumpWidget(_app(RepaintBoundary(
      key: sheetKey,
      child: Container(
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.all(16),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisSize: MainAxisSize.min, children: [
            const SizedBox(width: 180),
            for (final title in ['new paths', "Apple's static weights (reference)"])
              SizedBox(width: shown.length * 64 + 24, child: _label(title, size: 14)),
          ]),
          Row(mainAxisSize: MainAxisSize.min, children: [
            const SizedBox(width: 180),
            for (final w in shown) cell(_label('w${w.value}')),
            const SizedBox(width: 24),
            for (final w in shown) cell(_label('w${w.value}')),
          ]),
          for (final name in _sheetSymbols)
            Row(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(width: 180, child: _label(name, size: 12)),
              for (final w in shown) cell(_new(allIcons[name]!, w, size)),
              const SizedBox(width: 24),
              for (final w in shown) cell(_ref(allIcons[name]!, w, size)),
            ]),
        ]),
      ),
    )));
    await _savePng(tester, await _capture(tester, sheetKey, 2), '$out/sheet.png');

    // 1b. Overlay at 160px: reference red, new paths blue (multiplied).
    final overlayKey = GlobalKey();
    await tester.pumpWidget(_app(RepaintBoundary(
      key: overlayKey,
      child: Container(
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          for (final (name, w) in [('line.3.horizontal', FontWeight.w100), ('heart', FontWeight.w400), ('checkmark.circle.fill', FontWeight.w600)])
            Stack(children: [
              Text(String.fromCharCode(allIcons[name]!.codePoint),
                  style: TextStyle(inherit: false, fontFamily: 'ref${w.value}', fontSize: 160, color: const Color(0xFFFF0000))),
              Opacity(opacity: 0.5, child: SFIcon(allIcons[name]!, fontSize: 160, fontWeight: w, color: const Color(0xFF0000FF))),
            ]),
        ]),
      ),
    )));
    await _savePng(tester, await _capture(tester, overlayKey, 1), '$out/overlay.png');

    // 2. Small sizes at 3x, where filled paths and font glyphs differ most.
    final smallKey = GlobalKey();
    const smallSymbols = ['heart', 'checkmark.circle.fill', 'calendar', 'pawprint.fill', 'figure.walk', 'gearshape'];
    await tester.pumpWidget(_app(RepaintBoundary(
      key: smallKey,
      child: Container(
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.all(8),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (final s in [11.0, 13.0, 17.0])
            for (final (label, build) in [('new', _new), ('ref', _ref)])
              Row(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(width: 70, child: _label('$label ${s.toInt()}pt', size: 8)),
                for (final w in [FontWeight.w400, FontWeight.w600])
                  for (final name in smallSymbols)
                    SizedBox(width: 24, height: 22, child: Center(child: build(allIcons[name]!, w, s))),
              ]),
        ]),
      ),
    )));
    await _savePng(tester, await _capture(tester, smallKey, 3), '$out/small.png');

    // 3. Pixel overlap between new paths and the static fonts, per weight.
    final listFile = Platform.environment['SFICON_SYMBOLS'];
    final names = listFile == null
        ? _sheetSymbols
        : File(listFile).readAsLinesSync().where((n) => n.isNotEmpty).toList();
    const cellW = 120.0, cellH = 80.0, baseline = 60.0, metricSize = 48.0;
    const columns = 20;
    final rows = (names.length / columns).ceil();
    Widget grid(Widget Function(IconData, FontWeight, double) build, FontWeight weight, Key key) =>
        RepaintBoundary(
          key: key,
          child: SizedBox(
            width: columns * cellW,
            height: rows * cellH,
            child: Wrap(children: [
              for (final name in names)
                SizedBox(
                  width: cellW,
                  height: cellH,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Baseline(
                      baseline: baseline,
                      baselineType: TextBaseline.alphabetic,
                      child: build(allIcons[name]!, weight, metricSize),
                    ),
                  ),
                ),
            ]),
          ),
        );

    final report = StringBuffer('weight\tmedian IoU\tworst IoU\tworst symbol\tmean bbox edge diff px\tmax bbox edge diff px\n');
    for (final (weight, wname) in _weights) {
      final a = GlobalKey(), b = GlobalKey();
      await tester.pumpWidget(_app(Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        grid(_new, weight, a),
        grid(_ref, weight, b),
      ])));
      final ia = await _capture(tester, a, 1), ib = await _capture(tester, b, 1);
      final da = (await tester.runAsync(() => ia.toByteData()))!;
      final db = (await tester.runAsync(() => ib.toByteData()))!;
      final scores = <(double, String)>[];
      var maxEdge = 0, edgeSum = 0, edgeCount = 0;
      for (var n = 0; n < names.length; n++) {
        final x0 = (n % columns) * cellW.toInt(), y0 = (n ~/ columns) * cellH.toInt();
        var both = 0, any = 0;
        final boxA = [9999, 9999, -1, -1], boxB = [9999, 9999, -1, -1];
        void grow(List<int> b, int x, int y) {
          if (x < b[0]) b[0] = x;
          if (y < b[1]) b[1] = y;
          if (x > b[2]) b[2] = x;
          if (y > b[3]) b[3] = y;
        }
        for (var y = y0; y < y0 + cellH; y++) {
          for (var x = x0; x < x0 + cellW; x++) {
            final i = (y * ia.width + x) * 4 + 3;
            final inA = da.getUint8(i) > 127, inB = db.getUint8(i) > 127;
            if (inA) grow(boxA, x, y);
            if (inB) grow(boxB, x, y);
            if (inA && inB) both++;
            if (inA || inB) any++;
          }
        }
        for (var k = 0; k < 4; k++) {
          final d = (boxA[k] - boxB[k]).abs();
          if (d > maxEdge) maxEdge = d;
          edgeSum += d;
          edgeCount++;
        }
        scores.add((any == 0 ? 1 : both / any, names[n]));
      }
      scores.sort((x, y) => x.$1.compareTo(y.$1));
      report.writeln('$wname\t${scores[scores.length ~/ 2].$1.toStringAsFixed(4)}\t'
          '${scores.first.$1.toStringAsFixed(4)}\t${scores.first.$2}\t'
          '${(edgeSum / edgeCount).toStringAsFixed(2)}\t$maxEdge');
    }
    File('$out/overlap.tsv').writeAsStringSync(report.toString());
  });
}

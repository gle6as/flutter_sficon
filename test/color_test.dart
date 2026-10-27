import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter_test/flutter_test.dart';

final _key = GlobalKey();

Widget _frame(Widget child, {IconThemeData theme = const IconThemeData(color: Color(0xFF000000))}) =>
    Directionality(
      textDirection: TextDirection.ltr,
      child: IconTheme(
        data: theme,
        child: Align(
          alignment: Alignment.topLeft,
          child: RepaintBoundary(key: _key, child: child),
        ),
      ),
    );

/// Pixel counts by straight (not premultiplied) RGBA, transparent ones left out.
Future<Map<int, int>> _pixels(WidgetTester tester) async {
  final boundary = _key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  final data = await tester.runAsync(() async {
    final image = await boundary.toImage();
    return image.toByteData(format: ui.ImageByteFormat.rawStraightRgba);
  });
  final counts = <int, int>{};
  for (var i = 0; i < data!.lengthInBytes; i += 4) {
    if (data.getUint8(i + 3) == 0) continue;
    final rgba = data.getUint32(i);
    counts[rgba] = (counts[rgba] ?? 0) + 1;
  }
  return counts;
}

int _rgba(int r, int g, int b, int a) => (r << 24) | (g << 16) | (b << 8) | a;

int _dominant(Map<int, int> counts) =>
    counts.entries.reduce((a, b) => a.value >= b.value ? a : b).key;

Future<(int, int, int, int)> _pixelAt(WidgetTester tester, Offset offset) async {
  final boundary = _key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  final data = await tester.runAsync(() async {
    final image = await boundary.toImage();
    final bytes = await image.toByteData(format: ui.ImageByteFormat.rawStraightRgba);
    return (bytes!, image.width);
  });
  final (bytes, width) = data!;
  final i = (offset.dy.round() * width + offset.dx.round()) * 4;
  return (bytes.getUint8(i), bytes.getUint8(i + 1), bytes.getUint8(i + 2), bytes.getUint8(i + 3));
}

void main() {
  testWidgets('fills with the given color', (tester) async {
    await tester.pumpWidget(_frame(const SFIcon(SFIcons.sf_circle_fill, fontSize: 64, color: Color(0xFFE5484D))));
    expect(_dominant(await _pixels(tester)), _rgba(0xE5, 0x48, 0x4D, 0xFF));
  });

  testWidgets('uses IconTheme color when color is null', (tester) async {
    await tester.pumpWidget(_frame(
      const SFIcon(SFIcons.sf_circle_fill, fontSize: 64),
      theme: const IconThemeData(color: Color(0xFF30A46C)),
    ));
    expect(_dominant(await _pixels(tester)), _rgba(0x30, 0xA4, 0x6C, 0xFF));
  });

  testWidgets('applies IconTheme opacity', (tester) async {
    await tester.pumpWidget(_frame(
      const SFIcon(SFIcons.sf_circle_fill, fontSize: 64),
      theme: const IconThemeData(color: Color(0xFF0090FF), opacity: 0.5),
    ));
    final (r, g, b, a) = await _pixelAt(tester, const Offset(39, 38));
    // ±1: the image stores premultiplied alpha.
    expect(r, closeTo(0x00, 1));
    expect(g, closeTo(0x90, 1));
    expect(b, closeTo(0xFF, 1));
    expect(a, closeTo(128, 1));
  });

  testWidgets('translucent colors have one alpha, even where contours overlap', (tester) async {
    // checkmark.circle.fill: the check is a hole cut by overlapping contours.
    await tester.pumpWidget(_frame(const SFIcon(
      SFIcons.sf_checkmark_seal_fill,
      fontSize: 64,
      color: Color(0x80000000),
    )));
    final counts = await _pixels(tester);
    final alphas = counts.keys.map((rgba) => rgba & 0xFF).where((a) => a > 0x80).toSet();
    expect(alphas, isEmpty, reason: 'no pixel may be darker than the color itself');
  });

  testWidgets('works under ShaderMask gradients', (tester) async {
    await tester.pumpWidget(_frame(ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => const LinearGradient(
        colors: [Color(0xFFFF0000), Color(0xFF0000FF)],
      ).createShader(rect),
      child: const SFIcon(SFIcons.sf_square_fill, fontSize: 64),
    )));
    final size = tester.getSize(find.byType(SFIcon));
    final left = await _pixelAt(tester, Offset(size.width * 0.2, size.height * 0.5));
    final right = await _pixelAt(tester, Offset(size.width * 0.8, size.height * 0.5));
    expect(left.$1, greaterThan(left.$3), reason: 'left side is red');
    expect(right.$3, greaterThan(right.$1), reason: 'right side is blue');
  });

  testWidgets('repaints when only the color changes', (tester) async {
    await tester.pumpWidget(_frame(const SFIcon(SFIcons.sf_circle_fill, fontSize: 64, color: Color(0xFFFF0000))));
    final box = tester.renderObject<RenderBox>(find.byType(SFIcon));
    await tester.pumpWidget(_frame(const SFIcon(SFIcons.sf_circle_fill, fontSize: 64, color: Color(0xFF00FF00))));
    expect(tester.renderObject<RenderBox>(find.byType(SFIcon)), same(box));
    expect(_dominant(await _pixels(tester)), _rgba(0x00, 0xFF, 0x00, 0xFF));
  });

  testWidgets('shadows use their own color', (tester) async {
    await tester.pumpWidget(_frame(const Padding(
      padding: EdgeInsets.all(16),
      child: SFIcon(
        SFIcons.sf_circle_fill,
        fontSize: 64,
        color: Color(0xFFFFFFFF),
        shadows: [Shadow(color: Color(0xFF0000FF), offset: Offset(8, 8))],
      ),
    )));
    final counts = await _pixels(tester);
    expect(counts[_rgba(0xFF, 0xFF, 0xFF, 0xFF)], greaterThan(0));
    expect(counts[_rgba(0x00, 0x00, 0xFF, 0xFF)], greaterThan(0));
  });
}

import 'package:flutter/widgets.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter_test/flutter_test.dart';

import 'all_icons.g.dart';

Widget _wrap(Widget child, {double textScale = 1}) => MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(textScale)),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: IconTheme(
          data: const IconThemeData(color: Color(0xFF000000)),
          child: Align(alignment: Alignment.topLeft, child: child),
        ),
      ),
    );

void main() {
  testWidgets('every symbol lays out and paints', (tester) async {
    final icons = allIcons.values.toList();
    for (var i = 0; i < icons.length; i += 500) {
      final chunk = icons.skip(i).take(500).toList();
      await tester.pumpWidget(_wrap(Wrap(children: [
        for (final icon in chunk)
          for (final weight in [FontWeight.w100, FontWeight.w400, FontWeight.w900])
            SFIcon(icon, fontSize: 12, fontWeight: weight),
      ])));
      for (final box in tester.renderObjectList<RenderBox>(find.byType(SFIcon))) {
        expect(box.size.width, greaterThan(0));
        expect(box.size.height, greaterThan(0));
      }
    }
  });

  testWidgets('layout matches the font-based icon of 1.x', (tester) async {
    // Width, height and top under Baseline(100), measured from the
    // Text-based SFIcon and the font that 1.x bundled.
    const expected = <(IconData, double, double, double, double)>[
      (SFIcons.sf_heart, 11, 13.40625, 13, 89.5263671875),
      (SFIcons.sf_heart, 17, 20.71875, 20, 83.8134765625),
      (SFIcons.sf_heart, 24, 29.25, 29, 77.1484375),
      (SFIcons.sf_heart, 40, 48.75, 48, 61.9140625),
      (SFIcons.sf_square_and_arrow_up, 11, 12.27294921875, 13, 89.5263671875),
      (SFIcons.sf_square_and_arrow_up, 17, 18.96728515625, 20, 83.8134765625),
      (SFIcons.sf_square_and_arrow_up, 24, 26.77734375, 29, 77.1484375),
      (SFIcons.sf_square_and_arrow_up, 40, 44.62890625, 48, 61.9140625),
      (SFIcons.sf_person_3_fill, 11, 22.98828125, 13, 89.5263671875),
      (SFIcons.sf_person_3_fill, 17, 35.52734375, 20, 83.8134765625),
      (SFIcons.sf_person_3_fill, 24, 50.15625, 29, 77.1484375),
      (SFIcons.sf_person_3_fill, 40, 83.59375, 48, 61.9140625),
    ];
    for (final (icon, size, width, height, top) in expected) {
      await tester.pumpWidget(_wrap(Baseline(
        baseline: 100,
        baselineType: TextBaseline.alphabetic,
        child: SFIcon(icon, fontSize: size),
      )));
      final rect = tester.getRect(find.byType(SFIcon));
      expect(rect.width, moreOrLessEquals(width, epsilon: 0.01));
      expect(rect.height, moreOrLessEquals(height, epsilon: 0.01));
      expect(rect.top, moreOrLessEquals(top, epsilon: 0.01));
    }
  });

  testWidgets('scales with the text scaler like Text', (tester) async {
    await tester.pumpWidget(_wrap(const SFIcon(SFIcons.sf_heart, fontSize: 20)));
    final normal = tester.getSize(find.byType(SFIcon));
    await tester.pumpWidget(_wrap(const SFIcon(SFIcons.sf_heart, fontSize: 20), textScale: 2));
    final scaled = tester.getSize(find.byType(SFIcon));
    expect(scaled.height, moreOrLessEquals(normal.height * 2));
  });

  testWidgets('bolder weights are wider, like the real font', (tester) async {
    double width(FontWeight weight) {
      return tester.getSize(find.byType(SFIcon)).width;
    }

    await tester.pumpWidget(_wrap(const SFIcon(SFIcons.sf_heart, fontSize: 40, fontWeight: FontWeight.w100)));
    final light = width(FontWeight.w100);
    await tester.pumpWidget(_wrap(const SFIcon(SFIcons.sf_heart, fontSize: 40, fontWeight: FontWeight.w900)));
    final black = width(FontWeight.w900);
    expect(black, greaterThan(light));
  });

  testWidgets('uses semanticsLabel', (tester) async {
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(_wrap(const SFIcon(SFIcons.sf_heart, semanticsLabel: 'Favorite')));
    expect(find.bySemanticsLabel('Favorite'), findsOneWidget);
    handle.dispose();
  });

  testWidgets('other IconData falls back to its font', (tester) async {
    const other = IconData(0xe000, fontFamily: 'SomeIcons');
    await tester.pumpWidget(_wrap(const SFIcon(other)));
    final text = tester.widget<Text>(find.byType(Text));
    expect(text.style!.fontFamily, 'SomeIcons');
  });
}

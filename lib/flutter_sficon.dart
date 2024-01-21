library flutter_sficon;

import 'package:flutter/widgets.dart';

/// SFIcon is a widget that displays an SF Symbol.
/// It is a wrapper around Text widget.
/// It takes an IconData as input and displays the corresponding SF Symbol.
/// Optional parameters: fontSize, fontWeight, color, shadows, textDirection and semanticsLabel.
class SFIcon extends StatelessWidget {
  const SFIcon(
    this.icon, {
    Key? key,
    this.fontSize = 24,
    this.fontWeight = FontWeight.normal,
    this.color = const Color(0xFF000000),
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
    return Text(
      String.fromCharCode(icon.codePoint),
      textDirection: textDirection,
      semanticsLabel: semanticsLabel,
      style: TextStyle(
        fontFamily: 'sficons',
        package: 'flutter_sficon',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        shadows: shadows,
      ),
    );
  }
}

/// SFIcons contains all the SF Symbols as static IconData.
/// This aproach is used to enable tree shaking.
/// Naming convention for SF Symbols is as follows:
/// 1. SF Symbol name is prefixed with 'sf_'.
/// 2. Dots are replaced with underscores.
/// Examples:
/// — SF Symbol 0.circle is named as sf_0_circle.
/// — SF Symbol heart.fill is named as sf_heart_fill.
@staticIconProvider
class SFIcons {
  /// IconData for SF Symbol 0.circle
  static const IconData sf_0_circle = IconData(0x100038);

  /// IconData for SF Symbol 00.circle
  static const IconData sf_00_circle = IconData(0x1004EB);

  /// IconData for SF Symbol 0.circle.fill
  static const IconData sf_0_circle_fill = IconData(0x100039);

  /// IconData for SF Symbol 00.circle.fill
  static const IconData sf_00_circle_fill = IconData(0x10050A);

  /// IconData for SF Symbol 0.square
  static const IconData sf_0_square = IconData(0x1000C8);

  /// IconData for SF Symbol 00.square
  static const IconData sf_00_square = IconData(0x100529);

  /// IconData for SF Symbol 0.square.fill
  static const IconData sf_0_square_fill = IconData(0x1000C9);

  /// IconData for SF Symbol 00.square.fill
  static const IconData sf_00_square_fill = IconData(0x100548);

  /// IconData for SF Symbol 1.brakesignal
  static const IconData sf_1_brakesignal = IconData(0x1017C4);

  /// IconData for SF Symbol 1.circle
  static const IconData sf_1_circle = IconData(0x10003A);

  /// IconData for SF Symbol 01.circle
  static const IconData sf_01_circle = IconData(0x1004EC);

  /// IconData for SF Symbol 1.circle.fill
  static const IconData sf_1_circle_fill = IconData(0x10003B);

  /// IconData for SF Symbol 01.circle.fill
  static const IconData sf_01_circle_fill = IconData(0x10050B);

  /// IconData for SF Symbol 1.lane
  static const IconData sf_1_lane = IconData(0x1017D0);

  /// IconData for SF Symbol 1.magnifyingglass
  static const IconData sf_1_magnifyingglass = IconData(0x1002AE);

  /// IconData for SF Symbol 1.square
  static const IconData sf_1_square = IconData(0x1000CA);

  /// IconData for SF Symbol 01.square
  static const IconData sf_01_square = IconData(0x10052A);

  /// IconData for SF Symbol 1.square.fill
  static const IconData sf_1_square_fill = IconData(0x1000CB);

  /// IconData for SF Symbol 01.square.fill
  static const IconData sf_01_square_fill = IconData(0x100549);

  /// IconData for SF Symbol 2.brakesignal
  static const IconData sf_2_brakesignal = IconData(0x1017C5);

  /// IconData for SF Symbol 2.circle
  static const IconData sf_2_circle = IconData(0x10003C);

  /// IconData for SF Symbol 02.circle
  static const IconData sf_02_circle = IconData(0x1004ED);

  /// IconData for SF Symbol 2.circle.fill
  static const IconData sf_2_circle_fill = IconData(0x10003D);

  /// IconData for SF Symbol 02.circle.fill
  static const IconData sf_02_circle_fill = IconData(0x10050C);

  /// IconData for SF Symbol 2.lane
  static const IconData sf_2_lane = IconData(0x1017D1);

  /// IconData for SF Symbol 2.square
  static const IconData sf_2_square = IconData(0x1000CC);

  /// IconData for SF Symbol 02.square
  static const IconData sf_02_square = IconData(0x10052B);

  /// IconData for SF Symbol 2.square.fill
  static const IconData sf_2_square_fill = IconData(0x1000CD);

  /// IconData for SF Symbol 02.square.fill
  static const IconData sf_02_square_fill = IconData(0x10054A);

  /// IconData for SF Symbol 2h
  static const IconData sf_2h = IconData(0x10195A);

  /// IconData for SF Symbol 2h.circle
  static const IconData sf_2h_circle = IconData(0x10195E);

  /// IconData for SF Symbol 2h.circle.fill
  static const IconData sf_2h_circle_fill = IconData(0x10195F);

  /// IconData for SF Symbol 3.circle
  static const IconData sf_3_circle = IconData(0x10003E);

  /// IconData for SF Symbol 03.circle
  static const IconData sf_03_circle = IconData(0x1004EE);

  /// IconData for SF Symbol 3.circle.fill
  static const IconData sf_3_circle_fill = IconData(0x10003F);

  /// IconData for SF Symbol 03.circle.fill
  static const IconData sf_03_circle_fill = IconData(0x10050D);

  /// IconData for SF Symbol 3.lane
  static const IconData sf_3_lane = IconData(0x1017D2);

  /// IconData for SF Symbol 3.square
  static const IconData sf_3_square = IconData(0x1000CE);

  /// IconData for SF Symbol 03.square
  static const IconData sf_03_square = IconData(0x10052C);

  /// IconData for SF Symbol 3.square.fill
  static const IconData sf_3_square_fill = IconData(0x1000CF);

  /// IconData for SF Symbol 03.square.fill
  static const IconData sf_03_square_fill = IconData(0x10054B);

  /// IconData for SF Symbol 4.alt.circle
  static const IconData sf_4_alt_circle = IconData(0x100617);

  /// IconData for SF Symbol 4.alt.circle.fill
  static const IconData sf_4_alt_circle_fill = IconData(0x100618);

  /// IconData for SF Symbol 4.alt.square
  static const IconData sf_4_alt_square = IconData(0x100619);

  /// IconData for SF Symbol 4.alt.square.fill
  static const IconData sf_4_alt_square_fill = IconData(0x10061A);

  /// IconData for SF Symbol 4.circle
  static const IconData sf_4_circle = IconData(0x100040);

  /// IconData for SF Symbol 04.circle
  static const IconData sf_04_circle = IconData(0x1004EF);

  /// IconData for SF Symbol 4.circle.fill
  static const IconData sf_4_circle_fill = IconData(0x100041);

  /// IconData for SF Symbol 04.circle.fill
  static const IconData sf_04_circle_fill = IconData(0x10050E);

  /// IconData for SF Symbol 4.lane
  static const IconData sf_4_lane = IconData(0x1017D3);

  /// IconData for SF Symbol 4.square
  static const IconData sf_4_square = IconData(0x1000D0);

  /// IconData for SF Symbol 04.square
  static const IconData sf_04_square = IconData(0x10052D);

  /// IconData for SF Symbol 4.square.fill
  static const IconData sf_4_square_fill = IconData(0x1000D1);

  /// IconData for SF Symbol 04.square.fill
  static const IconData sf_04_square_fill = IconData(0x10054C);

  /// IconData for SF Symbol 4a
  static const IconData sf_4a = IconData(0x10195D);

  /// IconData for SF Symbol 4a.circle
  static const IconData sf_4a_circle = IconData(0x101964);

  /// IconData for SF Symbol 4a.circle.fill
  static const IconData sf_4a_circle_fill = IconData(0x101965);

  /// IconData for SF Symbol 4h
  static const IconData sf_4h = IconData(0x10195B);

  /// IconData for SF Symbol 4h.circle
  static const IconData sf_4h_circle = IconData(0x101960);

  /// IconData for SF Symbol 4h.circle.fill
  static const IconData sf_4h_circle_fill = IconData(0x101961);

  /// IconData for SF Symbol 4k.tv
  static const IconData sf_4k_tv = IconData(0x1009BD);

  /// IconData for SF Symbol 4k.tv.fill
  static const IconData sf_4k_tv_fill = IconData(0x1009BE);

  /// IconData for SF Symbol 4l
  static const IconData sf_4l = IconData(0x10195C);

  /// IconData for SF Symbol 4l.circle
  static const IconData sf_4l_circle = IconData(0x101962);

  /// IconData for SF Symbol 4l.circle.fill
  static const IconData sf_4l_circle_fill = IconData(0x101963);

  /// IconData for SF Symbol 5.circle
  static const IconData sf_5_circle = IconData(0x100042);

  /// IconData for SF Symbol 05.circle
  static const IconData sf_05_circle = IconData(0x1004F0);

  /// IconData for SF Symbol 5.circle.fill
  static const IconData sf_5_circle_fill = IconData(0x100043);

  /// IconData for SF Symbol 05.circle.fill
  static const IconData sf_05_circle_fill = IconData(0x10050F);

  /// IconData for SF Symbol 5.lane
  static const IconData sf_5_lane = IconData(0x1017D4);

  /// IconData for SF Symbol 5.square
  static const IconData sf_5_square = IconData(0x1000D2);

  /// IconData for SF Symbol 05.square
  static const IconData sf_05_square = IconData(0x10052E);

  /// IconData for SF Symbol 5.square.fill
  static const IconData sf_5_square_fill = IconData(0x1000D3);

  /// IconData for SF Symbol 05.square.fill
  static const IconData sf_05_square_fill = IconData(0x10054D);

  /// IconData for SF Symbol 6.alt.circle
  static const IconData sf_6_alt_circle = IconData(0x100471);

  /// IconData for SF Symbol 6.alt.circle.fill
  static const IconData sf_6_alt_circle_fill = IconData(0x100472);

  /// IconData for SF Symbol 6.alt.square
  static const IconData sf_6_alt_square = IconData(0x100475);

  /// IconData for SF Symbol 6.alt.square.fill
  static const IconData sf_6_alt_square_fill = IconData(0x100476);

  /// IconData for SF Symbol 6.circle
  static const IconData sf_6_circle = IconData(0x100044);

  /// IconData for SF Symbol 06.circle
  static const IconData sf_06_circle = IconData(0x1004F1);

  /// IconData for SF Symbol 6.circle.fill
  static const IconData sf_6_circle_fill = IconData(0x100045);

  /// IconData for SF Symbol 06.circle.fill
  static const IconData sf_06_circle_fill = IconData(0x100510);

  /// IconData for SF Symbol 6.lane
  static const IconData sf_6_lane = IconData(0x1017D5);

  /// IconData for SF Symbol 6.square
  static const IconData sf_6_square = IconData(0x1000D4);

  /// IconData for SF Symbol 06.square
  static const IconData sf_06_square = IconData(0x10052F);

  /// IconData for SF Symbol 6.square.fill
  static const IconData sf_6_square_fill = IconData(0x1000D5);

  /// IconData for SF Symbol 06.square.fill
  static const IconData sf_06_square_fill = IconData(0x10054E);

  /// IconData for SF Symbol 7.circle
  static const IconData sf_7_circle = IconData(0x100046);

  /// IconData for SF Symbol 07.circle
  static const IconData sf_07_circle = IconData(0x1004F2);

  /// IconData for SF Symbol 7.circle.fill
  static const IconData sf_7_circle_fill = IconData(0x100047);

  /// IconData for SF Symbol 07.circle.fill
  static const IconData sf_07_circle_fill = IconData(0x100511);

  /// IconData for SF Symbol 7.lane
  static const IconData sf_7_lane = IconData(0x1017D6);

  /// IconData for SF Symbol 7.square
  static const IconData sf_7_square = IconData(0x1000D6);

  /// IconData for SF Symbol 07.square
  static const IconData sf_07_square = IconData(0x100530);

  /// IconData for SF Symbol 7.square.fill
  static const IconData sf_7_square_fill = IconData(0x1000D7);

  /// IconData for SF Symbol 07.square.fill
  static const IconData sf_07_square_fill = IconData(0x10054F);

  /// IconData for SF Symbol 8.circle
  static const IconData sf_8_circle = IconData(0x100048);

  /// IconData for SF Symbol 08.circle
  static const IconData sf_08_circle = IconData(0x1004F3);

  /// IconData for SF Symbol 8.circle.fill
  static const IconData sf_8_circle_fill = IconData(0x100049);

  /// IconData for SF Symbol 08.circle.fill
  static const IconData sf_08_circle_fill = IconData(0x100512);

  /// IconData for SF Symbol 8.lane
  static const IconData sf_8_lane = IconData(0x1017D7);

  /// IconData for SF Symbol 8.square
  static const IconData sf_8_square = IconData(0x1000D8);

  /// IconData for SF Symbol 08.square
  static const IconData sf_08_square = IconData(0x100531);

  /// IconData for SF Symbol 8.square.fill
  static const IconData sf_8_square_fill = IconData(0x1000D9);

  /// IconData for SF Symbol 08.square.fill
  static const IconData sf_08_square_fill = IconData(0x100550);

  /// IconData for SF Symbol 9.alt.circle
  static const IconData sf_9_alt_circle = IconData(0x100473);

  /// IconData for SF Symbol 9.alt.circle.fill
  static const IconData sf_9_alt_circle_fill = IconData(0x100474);

  /// IconData for SF Symbol 9.alt.square
  static const IconData sf_9_alt_square = IconData(0x100477);

  /// IconData for SF Symbol 9.alt.square.fill
  static const IconData sf_9_alt_square_fill = IconData(0x100478);

  /// IconData for SF Symbol 9.circle
  static const IconData sf_9_circle = IconData(0x10004A);

  /// IconData for SF Symbol 09.circle
  static const IconData sf_09_circle = IconData(0x1004F4);

  /// IconData for SF Symbol 9.circle.fill
  static const IconData sf_9_circle_fill = IconData(0x10004B);

  /// IconData for SF Symbol 09.circle.fill
  static const IconData sf_09_circle_fill = IconData(0x100513);

  /// IconData for SF Symbol 9.lane
  static const IconData sf_9_lane = IconData(0x1017D8);

  /// IconData for SF Symbol 9.square
  static const IconData sf_9_square = IconData(0x1000DA);

  /// IconData for SF Symbol 09.square
  static const IconData sf_09_square = IconData(0x100532);

  /// IconData for SF Symbol 9.square.fill
  static const IconData sf_9_square_fill = IconData(0x1000DB);

  /// IconData for SF Symbol 09.square.fill
  static const IconData sf_09_square_fill = IconData(0x100551);

  /// IconData for SF Symbol 10.circle
  static const IconData sf_10_circle = IconData(0x1004F5);

  /// IconData for SF Symbol 10.circle.fill
  static const IconData sf_10_circle_fill = IconData(0x100514);

  /// IconData for SF Symbol 10.lane
  static const IconData sf_10_lane = IconData(0x1017D9);

  /// IconData for SF Symbol 10.square
  static const IconData sf_10_square = IconData(0x100533);

  /// IconData for SF Symbol 10.square.fill
  static const IconData sf_10_square_fill = IconData(0x100552);

  /// IconData for SF Symbol 11.circle
  static const IconData sf_11_circle = IconData(0x1004F6);

  /// IconData for SF Symbol 11.circle.fill
  static const IconData sf_11_circle_fill = IconData(0x100515);

  /// IconData for SF Symbol 11.lane
  static const IconData sf_11_lane = IconData(0x1017DA);

  /// IconData for SF Symbol 11.square
  static const IconData sf_11_square = IconData(0x100534);

  /// IconData for SF Symbol 11.square.fill
  static const IconData sf_11_square_fill = IconData(0x100553);

  /// IconData for SF Symbol 12.circle
  static const IconData sf_12_circle = IconData(0x1004F7);

  /// IconData for SF Symbol 12.circle.fill
  static const IconData sf_12_circle_fill = IconData(0x100516);

  /// IconData for SF Symbol 12.lane
  static const IconData sf_12_lane = IconData(0x1017DB);

  /// IconData for SF Symbol 12.square
  static const IconData sf_12_square = IconData(0x100535);

  /// IconData for SF Symbol 12.square.fill
  static const IconData sf_12_square_fill = IconData(0x100554);

  /// IconData for SF Symbol 13.circle
  static const IconData sf_13_circle = IconData(0x1004F8);

  /// IconData for SF Symbol 13.circle.fill
  static const IconData sf_13_circle_fill = IconData(0x100517);

  /// IconData for SF Symbol 13.square
  static const IconData sf_13_square = IconData(0x100536);

  /// IconData for SF Symbol 13.square.fill
  static const IconData sf_13_square_fill = IconData(0x100555);

  /// IconData for SF Symbol 14.circle
  static const IconData sf_14_circle = IconData(0x1004F9);

  /// IconData for SF Symbol 14.circle.fill
  static const IconData sf_14_circle_fill = IconData(0x100518);

  /// IconData for SF Symbol 14.square
  static const IconData sf_14_square = IconData(0x100537);

  /// IconData for SF Symbol 14.square.fill
  static const IconData sf_14_square_fill = IconData(0x100556);

  /// IconData for SF Symbol 15.circle
  static const IconData sf_15_circle = IconData(0x1004FA);

  /// IconData for SF Symbol 15.circle.fill
  static const IconData sf_15_circle_fill = IconData(0x100519);

  /// IconData for SF Symbol 15.square
  static const IconData sf_15_square = IconData(0x100538);

  /// IconData for SF Symbol 15.square.fill
  static const IconData sf_15_square_fill = IconData(0x100557);

  /// IconData for SF Symbol 16.circle
  static const IconData sf_16_circle = IconData(0x1004FB);

  /// IconData for SF Symbol 16.circle.fill
  static const IconData sf_16_circle_fill = IconData(0x10051A);

  /// IconData for SF Symbol 16.square
  static const IconData sf_16_square = IconData(0x100539);

  /// IconData for SF Symbol 16.square.fill
  static const IconData sf_16_square_fill = IconData(0x100558);

  /// IconData for SF Symbol 17.circle
  static const IconData sf_17_circle = IconData(0x1004FC);

  /// IconData for SF Symbol 17.circle.fill
  static const IconData sf_17_circle_fill = IconData(0x10051B);

  /// IconData for SF Symbol 17.square
  static const IconData sf_17_square = IconData(0x10053A);

  /// IconData for SF Symbol 17.square.fill
  static const IconData sf_17_square_fill = IconData(0x100559);

  /// IconData for SF Symbol 18.circle
  static const IconData sf_18_circle = IconData(0x1004FD);

  /// IconData for SF Symbol 18.circle.fill
  static const IconData sf_18_circle_fill = IconData(0x10051C);

  /// IconData for SF Symbol 18.square
  static const IconData sf_18_square = IconData(0x10053B);

  /// IconData for SF Symbol 18.square.fill
  static const IconData sf_18_square_fill = IconData(0x10055A);

  /// IconData for SF Symbol 19.circle
  static const IconData sf_19_circle = IconData(0x1004FE);

  /// IconData for SF Symbol 19.circle.fill
  static const IconData sf_19_circle_fill = IconData(0x10051D);

  /// IconData for SF Symbol 19.square
  static const IconData sf_19_square = IconData(0x10053C);

  /// IconData for SF Symbol 19.square.fill
  static const IconData sf_19_square_fill = IconData(0x10055B);

  /// IconData for SF Symbol 20.circle
  static const IconData sf_20_circle = IconData(0x1004FF);

  /// IconData for SF Symbol 20.circle.fill
  static const IconData sf_20_circle_fill = IconData(0x10051E);

  /// IconData for SF Symbol 20.square
  static const IconData sf_20_square = IconData(0x10053D);

  /// IconData for SF Symbol 20.square.fill
  static const IconData sf_20_square_fill = IconData(0x10055C);

  /// IconData for SF Symbol 21.circle
  static const IconData sf_21_circle = IconData(0x100500);

  /// IconData for SF Symbol 21.circle.fill
  static const IconData sf_21_circle_fill = IconData(0x10051F);

  /// IconData for SF Symbol 21.square
  static const IconData sf_21_square = IconData(0x10053E);

  /// IconData for SF Symbol 21.square.fill
  static const IconData sf_21_square_fill = IconData(0x10055D);

  /// IconData for SF Symbol 22.circle
  static const IconData sf_22_circle = IconData(0x100501);

  /// IconData for SF Symbol 22.circle.fill
  static const IconData sf_22_circle_fill = IconData(0x100520);

  /// IconData for SF Symbol 22.square
  static const IconData sf_22_square = IconData(0x10053F);

  /// IconData for SF Symbol 22.square.fill
  static const IconData sf_22_square_fill = IconData(0x10055E);

  /// IconData for SF Symbol 23.circle
  static const IconData sf_23_circle = IconData(0x100502);

  /// IconData for SF Symbol 23.circle.fill
  static const IconData sf_23_circle_fill = IconData(0x100521);

  /// IconData for SF Symbol 23.square
  static const IconData sf_23_square = IconData(0x100540);

  /// IconData for SF Symbol 23.square.fill
  static const IconData sf_23_square_fill = IconData(0x10055F);

  /// IconData for SF Symbol 24.circle
  static const IconData sf_24_circle = IconData(0x100503);

  /// IconData for SF Symbol 24.circle.fill
  static const IconData sf_24_circle_fill = IconData(0x100522);

  /// IconData for SF Symbol 24.square
  static const IconData sf_24_square = IconData(0x100541);

  /// IconData for SF Symbol 24.square.fill
  static const IconData sf_24_square_fill = IconData(0x100560);

  /// IconData for SF Symbol 25.circle
  static const IconData sf_25_circle = IconData(0x100504);

  /// IconData for SF Symbol 25.circle.fill
  static const IconData sf_25_circle_fill = IconData(0x100523);

  /// IconData for SF Symbol 25.square
  static const IconData sf_25_square = IconData(0x100542);

  /// IconData for SF Symbol 25.square.fill
  static const IconData sf_25_square_fill = IconData(0x100561);

  /// IconData for SF Symbol 26.circle
  static const IconData sf_26_circle = IconData(0x100505);

  /// IconData for SF Symbol 26.circle.fill
  static const IconData sf_26_circle_fill = IconData(0x100524);

  /// IconData for SF Symbol 26.square
  static const IconData sf_26_square = IconData(0x100543);

  /// IconData for SF Symbol 26.square.fill
  static const IconData sf_26_square_fill = IconData(0x100562);

  /// IconData for SF Symbol 27.circle
  static const IconData sf_27_circle = IconData(0x100506);

  /// IconData for SF Symbol 27.circle.fill
  static const IconData sf_27_circle_fill = IconData(0x100525);

  /// IconData for SF Symbol 27.square
  static const IconData sf_27_square = IconData(0x100544);

  /// IconData for SF Symbol 27.square.fill
  static const IconData sf_27_square_fill = IconData(0x100563);

  /// IconData for SF Symbol 28.circle
  static const IconData sf_28_circle = IconData(0x100507);

  /// IconData for SF Symbol 28.circle.fill
  static const IconData sf_28_circle_fill = IconData(0x100526);

  /// IconData for SF Symbol 28.square
  static const IconData sf_28_square = IconData(0x100545);

  /// IconData for SF Symbol 28.square.fill
  static const IconData sf_28_square_fill = IconData(0x100564);

  /// IconData for SF Symbol 29.circle
  static const IconData sf_29_circle = IconData(0x100508);

  /// IconData for SF Symbol 29.circle.fill
  static const IconData sf_29_circle_fill = IconData(0x100527);

  /// IconData for SF Symbol 29.square
  static const IconData sf_29_square = IconData(0x100546);

  /// IconData for SF Symbol 29.square.fill
  static const IconData sf_29_square_fill = IconData(0x100565);

  /// IconData for SF Symbol 30.circle
  static const IconData sf_30_circle = IconData(0x100509);

  /// IconData for SF Symbol 30.circle.fill
  static const IconData sf_30_circle_fill = IconData(0x100528);

  /// IconData for SF Symbol 30.square
  static const IconData sf_30_square = IconData(0x100547);

  /// IconData for SF Symbol 30.square.fill
  static const IconData sf_30_square_fill = IconData(0x100566);

  /// IconData for SF Symbol 31.circle
  static const IconData sf_31_circle = IconData(0x100620);

  /// IconData for SF Symbol 31.circle.fill
  static const IconData sf_31_circle_fill = IconData(0x100621);

  /// IconData for SF Symbol 31.square
  static const IconData sf_31_square = IconData(0x100622);

  /// IconData for SF Symbol 31.square.fill
  static const IconData sf_31_square_fill = IconData(0x100623);

  /// IconData for SF Symbol 32.circle
  static const IconData sf_32_circle = IconData(0x100697);

  /// IconData for SF Symbol 32.circle.fill
  static const IconData sf_32_circle_fill = IconData(0x100698);

  /// IconData for SF Symbol 32.square
  static const IconData sf_32_square = IconData(0x1006BD);

  /// IconData for SF Symbol 32.square.fill
  static const IconData sf_32_square_fill = IconData(0x1006BE);

  /// IconData for SF Symbol 33.circle
  static const IconData sf_33_circle = IconData(0x100699);

  /// IconData for SF Symbol 33.circle.fill
  static const IconData sf_33_circle_fill = IconData(0x10069A);

  /// IconData for SF Symbol 33.square
  static const IconData sf_33_square = IconData(0x1006BF);

  /// IconData for SF Symbol 33.square.fill
  static const IconData sf_33_square_fill = IconData(0x1006C0);

  /// IconData for SF Symbol 34.circle
  static const IconData sf_34_circle = IconData(0x10069B);

  /// IconData for SF Symbol 34.circle.fill
  static const IconData sf_34_circle_fill = IconData(0x10069C);

  /// IconData for SF Symbol 34.square
  static const IconData sf_34_square = IconData(0x1006C1);

  /// IconData for SF Symbol 34.square.fill
  static const IconData sf_34_square_fill = IconData(0x1006C2);

  /// IconData for SF Symbol 35.circle
  static const IconData sf_35_circle = IconData(0x10069D);

  /// IconData for SF Symbol 35.circle.fill
  static const IconData sf_35_circle_fill = IconData(0x10069E);

  /// IconData for SF Symbol 35.square
  static const IconData sf_35_square = IconData(0x1006C3);

  /// IconData for SF Symbol 35.square.fill
  static const IconData sf_35_square_fill = IconData(0x1006C4);

  /// IconData for SF Symbol 36.circle
  static const IconData sf_36_circle = IconData(0x10069F);

  /// IconData for SF Symbol 36.circle.fill
  static const IconData sf_36_circle_fill = IconData(0x1006A0);

  /// IconData for SF Symbol 36.square
  static const IconData sf_36_square = IconData(0x1006C5);

  /// IconData for SF Symbol 36.square.fill
  static const IconData sf_36_square_fill = IconData(0x1006C6);

  /// IconData for SF Symbol 37.circle
  static const IconData sf_37_circle = IconData(0x1006A1);

  /// IconData for SF Symbol 37.circle.fill
  static const IconData sf_37_circle_fill = IconData(0x1006A2);

  /// IconData for SF Symbol 37.square
  static const IconData sf_37_square = IconData(0x1006C7);

  /// IconData for SF Symbol 37.square.fill
  static const IconData sf_37_square_fill = IconData(0x1006C8);

  /// IconData for SF Symbol 38.circle
  static const IconData sf_38_circle = IconData(0x1006A3);

  /// IconData for SF Symbol 38.circle.fill
  static const IconData sf_38_circle_fill = IconData(0x1006A4);

  /// IconData for SF Symbol 38.square
  static const IconData sf_38_square = IconData(0x1006C9);

  /// IconData for SF Symbol 38.square.fill
  static const IconData sf_38_square_fill = IconData(0x1006CA);

  /// IconData for SF Symbol 39.circle
  static const IconData sf_39_circle = IconData(0x1006A5);

  /// IconData for SF Symbol 39.circle.fill
  static const IconData sf_39_circle_fill = IconData(0x1006A6);

  /// IconData for SF Symbol 39.square
  static const IconData sf_39_square = IconData(0x1006CB);

  /// IconData for SF Symbol 39.square.fill
  static const IconData sf_39_square_fill = IconData(0x1006CC);

  /// IconData for SF Symbol 40.circle
  static const IconData sf_40_circle = IconData(0x1006A7);

  /// IconData for SF Symbol 40.circle.fill
  static const IconData sf_40_circle_fill = IconData(0x1006A8);

  /// IconData for SF Symbol 40.square
  static const IconData sf_40_square = IconData(0x1006CD);

  /// IconData for SF Symbol 40.square.fill
  static const IconData sf_40_square_fill = IconData(0x1006CE);

  /// IconData for SF Symbol 41.circle
  static const IconData sf_41_circle = IconData(0x1006A9);

  /// IconData for SF Symbol 41.circle.fill
  static const IconData sf_41_circle_fill = IconData(0x1006AA);

  /// IconData for SF Symbol 41.square
  static const IconData sf_41_square = IconData(0x1006CF);

  /// IconData for SF Symbol 41.square.fill
  static const IconData sf_41_square_fill = IconData(0x1006D0);

  /// IconData for SF Symbol 42.circle
  static const IconData sf_42_circle = IconData(0x1006AB);

  /// IconData for SF Symbol 42.circle.fill
  static const IconData sf_42_circle_fill = IconData(0x1006AC);

  /// IconData for SF Symbol 42.square
  static const IconData sf_42_square = IconData(0x1006D1);

  /// IconData for SF Symbol 42.square.fill
  static const IconData sf_42_square_fill = IconData(0x1006D2);

  /// IconData for SF Symbol 43.circle
  static const IconData sf_43_circle = IconData(0x1006AD);

  /// IconData for SF Symbol 43.circle.fill
  static const IconData sf_43_circle_fill = IconData(0x1006AE);

  /// IconData for SF Symbol 43.square
  static const IconData sf_43_square = IconData(0x1006D3);

  /// IconData for SF Symbol 43.square.fill
  static const IconData sf_43_square_fill = IconData(0x1006D4);

  /// IconData for SF Symbol 44.circle
  static const IconData sf_44_circle = IconData(0x1006AF);

  /// IconData for SF Symbol 44.circle.fill
  static const IconData sf_44_circle_fill = IconData(0x1006B0);

  /// IconData for SF Symbol 44.square
  static const IconData sf_44_square = IconData(0x1006D5);

  /// IconData for SF Symbol 44.square.fill
  static const IconData sf_44_square_fill = IconData(0x1006D6);

  /// IconData for SF Symbol 45.circle
  static const IconData sf_45_circle = IconData(0x1006B1);

  /// IconData for SF Symbol 45.circle.fill
  static const IconData sf_45_circle_fill = IconData(0x1006B2);

  /// IconData for SF Symbol 45.square
  static const IconData sf_45_square = IconData(0x1006D7);

  /// IconData for SF Symbol 45.square.fill
  static const IconData sf_45_square_fill = IconData(0x1006D8);

  /// IconData for SF Symbol 46.circle
  static const IconData sf_46_circle = IconData(0x1006B3);

  /// IconData for SF Symbol 46.circle.fill
  static const IconData sf_46_circle_fill = IconData(0x1006B4);

  /// IconData for SF Symbol 46.square
  static const IconData sf_46_square = IconData(0x1006D9);

  /// IconData for SF Symbol 46.square.fill
  static const IconData sf_46_square_fill = IconData(0x1006DA);

  /// IconData for SF Symbol 47.circle
  static const IconData sf_47_circle = IconData(0x1006B5);

  /// IconData for SF Symbol 47.circle.fill
  static const IconData sf_47_circle_fill = IconData(0x1006B6);

  /// IconData for SF Symbol 47.square
  static const IconData sf_47_square = IconData(0x1006DB);

  /// IconData for SF Symbol 47.square.fill
  static const IconData sf_47_square_fill = IconData(0x1006DC);

  /// IconData for SF Symbol 48.circle
  static const IconData sf_48_circle = IconData(0x1006B7);

  /// IconData for SF Symbol 48.circle.fill
  static const IconData sf_48_circle_fill = IconData(0x1006B8);

  /// IconData for SF Symbol 48.square
  static const IconData sf_48_square = IconData(0x1006DD);

  /// IconData for SF Symbol 48.square.fill
  static const IconData sf_48_square_fill = IconData(0x1006DE);

  /// IconData for SF Symbol 49.circle
  static const IconData sf_49_circle = IconData(0x1006B9);

  /// IconData for SF Symbol 49.circle.fill
  static const IconData sf_49_circle_fill = IconData(0x1006BA);

  /// IconData for SF Symbol 49.square
  static const IconData sf_49_square = IconData(0x1006DF);

  /// IconData for SF Symbol 49.square.fill
  static const IconData sf_49_square_fill = IconData(0x1006E0);

  /// IconData for SF Symbol 50.circle
  static const IconData sf_50_circle = IconData(0x1006BB);

  /// IconData for SF Symbol 50.circle.fill
  static const IconData sf_50_circle_fill = IconData(0x1006BC);

  /// IconData for SF Symbol 50.square
  static const IconData sf_50_square = IconData(0x1006E1);

  /// IconData for SF Symbol 50.square.fill
  static const IconData sf_50_square_fill = IconData(0x1006E2);

  /// IconData for SF Symbol 123.rectangle
  static const IconData sf_123_rectangle = IconData(0x1010B7);

  /// IconData for SF Symbol 123.rectangle.fill
  static const IconData sf_123_rectangle_fill = IconData(0x1010B8);

  /// IconData for SF Symbol a.circle
  static const IconData sf_a_circle = IconData(0x100004);

  /// IconData for SF Symbol a.circle.fill
  static const IconData sf_a_circle_fill = IconData(0x100005);

  /// IconData for SF Symbol a.square
  static const IconData sf_a_square = IconData(0x100094);

  /// IconData for SF Symbol a.square.fill
  static const IconData sf_a_square_fill = IconData(0x100095);

  /// IconData for SF Symbol abc
  static const IconData sf_abc = IconData(0x10094A);

  /// IconData for SF Symbol abs
  static const IconData sf_abs = IconData(0x1018B7);

  /// IconData for SF Symbol abs.brakesignal
  static const IconData sf_abs_brakesignal = IconData(0x101034);

  /// IconData for SF Symbol abs.brakesignal.slash
  static const IconData sf_abs_brakesignal_slash = IconData(0x1017C6);

  /// IconData for SF Symbol abs.circle
  static const IconData sf_abs_circle = IconData(0x1018B8);

  /// IconData for SF Symbol abs.circle.fill
  static const IconData sf_abs_circle_fill = IconData(0x1018B9);

  /// IconData for SF Symbol accessibility
  static const IconData sf_accessibility = IconData(0x10057E);

  /// IconData for SF Symbol accessibility.badge.arrow.up.right
  static const IconData sf_accessibility_badge_arrow_up_right =
      IconData(0x100B93);

  /// IconData for SF Symbol accessibility.fill
  static const IconData sf_accessibility_fill = IconData(0x10057F);

  /// IconData for SF Symbol air.conditioner.horizontal
  static const IconData sf_air_conditioner_horizontal = IconData(0x1014ED);

  /// IconData for SF Symbol air.conditioner.horizontal.fill
  static const IconData sf_air_conditioner_horizontal_fill = IconData(0x1014EE);

  /// IconData for SF Symbol air.conditioner.vertical
  static const IconData sf_air_conditioner_vertical = IconData(0x1014EB);

  /// IconData for SF Symbol air.conditioner.vertical.fill
  static const IconData sf_air_conditioner_vertical_fill = IconData(0x1014EC);

  /// IconData for SF Symbol air.purifier
  static const IconData sf_air_purifier = IconData(0x1014E5);

  /// IconData for SF Symbol air.purifier.fill
  static const IconData sf_air_purifier_fill = IconData(0x1014E6);

  /// IconData for SF Symbol airplane
  static const IconData sf_airplane = IconData(0x100453);

  /// IconData for SF Symbol airplane.arrival
  static const IconData sf_airplane_arrival = IconData(0x100DEF);

  /// IconData for SF Symbol airplane.circle
  static const IconData sf_airplane_circle = IconData(0x1004B8);

  /// IconData for SF Symbol airplane.circle.fill
  static const IconData sf_airplane_circle_fill = IconData(0x1004B9);

  /// IconData for SF Symbol airplane.departure
  static const IconData sf_airplane_departure = IconData(0x100DF0);

  /// IconData for SF Symbol airplayaudio
  static const IconData sf_airplayaudio = IconData(0x100462);

  /// IconData for SF Symbol airplayaudio.badge.exclamationmark
  static const IconData sf_airplayaudio_badge_exclamationmark =
      IconData(0x100C6B);

  /// IconData for SF Symbol airplayaudio.circle
  static const IconData sf_airplayaudio_circle = IconData(0x100FA7);

  /// IconData for SF Symbol airplayaudio.circle.fill
  static const IconData sf_airplayaudio_circle_fill = IconData(0x100FA8);

  /// IconData for SF Symbol airplayvideo
  static const IconData sf_airplayvideo = IconData(0x100461);

  /// IconData for SF Symbol airplayvideo.badge.exclamationmark
  static const IconData sf_airplayvideo_badge_exclamationmark =
      IconData(0x100C6A);

  /// IconData for SF Symbol airplayvideo.circle
  static const IconData sf_airplayvideo_circle = IconData(0x100F91);

  /// IconData for SF Symbol airplayvideo.circle.fill
  static const IconData sf_airplayvideo_circle_fill = IconData(0x100F92);

  /// IconData for SF Symbol airpod.gen3.left
  static const IconData sf_airpod_gen3_left = IconData(0x101123);

  /// IconData for SF Symbol airpod.gen3.right
  static const IconData sf_airpod_gen3_right = IconData(0x101122);

  /// IconData for SF Symbol airpod.left
  static const IconData sf_airpod_left = IconData(0x100C8C);

  /// IconData for SF Symbol airpod.right
  static const IconData sf_airpod_right = IconData(0x100C8B);

  /// IconData for SF Symbol airpodpro.left
  static const IconData sf_airpodpro_left = IconData(0x100C8E);

  /// IconData for SF Symbol airpodpro.right
  static const IconData sf_airpodpro_right = IconData(0x100C8D);

  /// IconData for SF Symbol airpods
  static const IconData sf_airpods = IconData(0x1007E5);

  /// IconData for SF Symbol airpods.chargingcase
  static const IconData sf_airpods_chargingcase = IconData(0x100E67);

  /// IconData for SF Symbol airpods.chargingcase.fill
  static const IconData sf_airpods_chargingcase_fill = IconData(0x100E68);

  /// IconData for SF Symbol airpods.chargingcase.wireless
  static const IconData sf_airpods_chargingcase_wireless = IconData(0x100E69);

  /// IconData for SF Symbol airpods.chargingcase.wireless.fill
  static const IconData sf_airpods_chargingcase_wireless_fill =
      IconData(0x100E6A);

  /// IconData for SF Symbol airpods.gen3
  static const IconData sf_airpods_gen3 = IconData(0x101121);

  /// IconData for SF Symbol airpods.gen3.chargingcase.wireless
  static const IconData sf_airpods_gen3_chargingcase_wireless =
      IconData(0x101150);

  /// IconData for SF Symbol airpods.gen3.chargingcase.wireless.fill
  static const IconData sf_airpods_gen3_chargingcase_wireless_fill =
      IconData(0x101151);

  /// IconData for SF Symbol airpodsmax
  static const IconData sf_airpodsmax = IconData(0x100EB9);

  /// IconData for SF Symbol airpodspro
  static const IconData sf_airpodspro = IconData(0x100AB7);

  /// IconData for SF Symbol airpodspro.chargingcase.wireless
  static const IconData sf_airpodspro_chargingcase_wireless =
      IconData(0x100E6B);

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.fill
  static const IconData sf_airpodspro_chargingcase_wireless_fill =
      IconData(0x100E6C);

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.radiowaves.left.and.right
  static const IconData
      sf_airpodspro_chargingcase_wireless_radiowaves_left_and_right =
      IconData(0x101502);

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.radiowaves.left.and.right.fill
  static const IconData
      sf_airpodspro_chargingcase_wireless_radiowaves_left_and_right_fill =
      IconData(0x101503);

  /// IconData for SF Symbol airport.express
  static const IconData sf_airport_express = IconData(0x1009AF);

  /// IconData for SF Symbol airport.extreme
  static const IconData sf_airport_extreme = IconData(0x10045D);

  /// IconData for SF Symbol airport.extreme.tower
  static const IconData sf_airport_extreme_tower = IconData(0x1009B0);

  /// IconData for SF Symbol airtag
  static const IconData sf_airtag = IconData(0x10113E);

  /// IconData for SF Symbol airtag.fill
  static const IconData sf_airtag_fill = IconData(0x10113F);

  /// IconData for SF Symbol airtag.radiowaves.forward
  static const IconData sf_airtag_radiowaves_forward = IconData(0x10113C);

  /// IconData for SF Symbol airtag.radiowaves.forward.fill
  static const IconData sf_airtag_radiowaves_forward_fill = IconData(0x10113D);

  /// IconData for SF Symbol alarm
  static const IconData sf_alarm = IconData(0x10042D);

  /// IconData for SF Symbol alarm.fill
  static const IconData sf_alarm_fill = IconData(0x10042E);

  /// IconData for SF Symbol alarm.waves.left.and.right
  static const IconData sf_alarm_waves_left_and_right = IconData(0x1015C0);

  /// IconData for SF Symbol alarm.waves.left.and.right.fill
  static const IconData sf_alarm_waves_left_and_right_fill = IconData(0x1015C1);

  /// IconData for SF Symbol align.horizontal.center
  static const IconData sf_align_horizontal_center = IconData(0x100A49);

  /// IconData for SF Symbol align.horizontal.center.fill
  static const IconData sf_align_horizontal_center_fill = IconData(0x100957);

  /// IconData for SF Symbol align.horizontal.left
  static const IconData sf_align_horizontal_left = IconData(0x100A48);

  /// IconData for SF Symbol align.horizontal.left.fill
  static const IconData sf_align_horizontal_left_fill = IconData(0x100956);

  /// IconData for SF Symbol align.horizontal.right
  static const IconData sf_align_horizontal_right = IconData(0x100A4A);

  /// IconData for SF Symbol align.horizontal.right.fill
  static const IconData sf_align_horizontal_right_fill = IconData(0x100958);

  /// IconData for SF Symbol align.vertical.bottom
  static const IconData sf_align_vertical_bottom = IconData(0x100A4D);

  /// IconData for SF Symbol align.vertical.bottom.fill
  static const IconData sf_align_vertical_bottom_fill = IconData(0x10095B);

  /// IconData for SF Symbol align.vertical.center
  static const IconData sf_align_vertical_center = IconData(0x100A4C);

  /// IconData for SF Symbol align.vertical.center.fill
  static const IconData sf_align_vertical_center_fill = IconData(0x10095A);

  /// IconData for SF Symbol align.vertical.top
  static const IconData sf_align_vertical_top = IconData(0x100A4B);

  /// IconData for SF Symbol align.vertical.top.fill
  static const IconData sf_align_vertical_top_fill = IconData(0x100959);

  /// IconData for SF Symbol allergens
  static const IconData sf_allergens = IconData(0x100B2D);

  /// IconData for SF Symbol allergens.fill
  static const IconData sf_allergens_fill = IconData(0x101486);

  /// IconData for SF Symbol alt
  static const IconData sf_alt = IconData(0x100196);

  /// IconData for SF Symbol alternatingcurrent
  static const IconData sf_alternatingcurrent = IconData(0x1011AD);

  /// IconData for SF Symbol amplifier
  static const IconData sf_amplifier = IconData(0x1009F0);

  /// IconData for SF Symbol angle
  static const IconData sf_angle = IconData(0x101461);

  /// IconData for SF Symbol ant
  static const IconData sf_ant = IconData(0x10031A);

  /// IconData for SF Symbol ant.circle
  static const IconData sf_ant_circle = IconData(0x10031C);

  /// IconData for SF Symbol ant.circle.fill
  static const IconData sf_ant_circle_fill = IconData(0x10031D);

  /// IconData for SF Symbol ant.fill
  static const IconData sf_ant_fill = IconData(0x10031B);

  /// IconData for SF Symbol antenna.radiowaves.left.and.right
  static const IconData sf_antenna_radiowaves_left_and_right =
      IconData(0x100580);

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.circle
  static const IconData sf_antenna_radiowaves_left_and_right_circle =
      IconData(0x100DC8);

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.circle.fill
  static const IconData sf_antenna_radiowaves_left_and_right_circle_fill =
      IconData(0x100DC9);

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.slash
  static const IconData sf_antenna_radiowaves_left_and_right_slash =
      IconData(0x101152);

  /// IconData for SF Symbol app
  static const IconData sf_app = IconData(0x10044B);

  /// IconData for SF Symbol app.badge
  static const IconData sf_app_badge = IconData(0x10044F);

  /// IconData for SF Symbol app.badge.checkmark
  static const IconData sf_app_badge_checkmark = IconData(0x1010A0);

  /// IconData for SF Symbol app.badge.checkmark.fill
  static const IconData sf_app_badge_checkmark_fill = IconData(0x1010A1);

  /// IconData for SF Symbol app.badge.fill
  static const IconData sf_app_badge_fill = IconData(0x100450);

  /// IconData for SF Symbol app.connected.to.app.below.fill
  static const IconData sf_app_connected_to_app_below_fill = IconData(0x101018);

  /// IconData for SF Symbol app.dashed
  static const IconData sf_app_dashed = IconData(0x100FEB);

  /// IconData for SF Symbol app.fill
  static const IconData sf_app_fill = IconData(0x10044C);

  /// IconData for SF Symbol app.gift
  static const IconData sf_app_gift = IconData(0x100451);

  /// IconData for SF Symbol app.gift.fill
  static const IconData sf_app_gift_fill = IconData(0x100452);

  /// IconData for SF Symbol appclip
  static const IconData sf_appclip = IconData(0x100B68);

  /// IconData for SF Symbol apple.logo
  static const IconData sf_apple_logo = IconData(0x1008FA);

  /// IconData for SF Symbol apple.terminal
  static const IconData sf_apple_terminal = IconData(0x100A7C);

  /// IconData for SF Symbol apple.terminal.fill
  static const IconData sf_apple_terminal_fill = IconData(0x100A8F);

  /// IconData for SF Symbol apple.terminal.on.rectangle
  static const IconData sf_apple_terminal_on_rectangle = IconData(0x101E5B);

  /// IconData for SF Symbol apple.terminal.on.rectangle.fill
  static const IconData sf_apple_terminal_on_rectangle_fill =
      IconData(0x101E5C);

  /// IconData for SF Symbol applepencil
  static const IconData sf_applepencil = IconData(0x100EAE);

  /// IconData for SF Symbol applepencil.adapter.usb.c
  static const IconData sf_applepencil_adapter_usb_c = IconData(0x101C12);

  /// IconData for SF Symbol applepencil.adapter.usb.c.fill
  static const IconData sf_applepencil_adapter_usb_c_fill = IconData(0x101C13);

  /// IconData for SF Symbol applepencil.and.scribble
  static const IconData sf_applepencil_and_scribble = IconData(0x101911);

  /// IconData for SF Symbol applepencil.gen1
  static const IconData sf_applepencil_gen1 = IconData(0x101C24);

  /// IconData for SF Symbol applepencil.gen2
  static const IconData sf_applepencil_gen2 = IconData(0x101C25);

  /// IconData for SF Symbol applepencil.tip
  static const IconData sf_applepencil_tip = IconData(0x101913);

  /// IconData for SF Symbol applescript
  static const IconData sf_applescript = IconData(0x10092D);

  /// IconData for SF Symbol applescript.fill
  static const IconData sf_applescript_fill = IconData(0x10092E);

  /// IconData for SF Symbol appletv
  static const IconData sf_appletv = IconData(0x100A2B);

  /// IconData for SF Symbol appletv.fill
  static const IconData sf_appletv_fill = IconData(0x100874);

  /// IconData for SF Symbol appletvremote.gen1
  static const IconData sf_appletvremote_gen1 = IconData(0x100F29);

  /// IconData for SF Symbol appletvremote.gen1.fill
  static const IconData sf_appletvremote_gen1_fill = IconData(0x100F2A);

  /// IconData for SF Symbol appletvremote.gen2
  static const IconData sf_appletvremote_gen2 = IconData(0x100F2B);

  /// IconData for SF Symbol appletvremote.gen2.fill
  static const IconData sf_appletvremote_gen2_fill = IconData(0x100F2C);

  /// IconData for SF Symbol appletvremote.gen3
  static const IconData sf_appletvremote_gen3 = IconData(0x100769);

  /// IconData for SF Symbol appletvremote.gen3.fill
  static const IconData sf_appletvremote_gen3_fill = IconData(0x10076A);

  /// IconData for SF Symbol appletvremote.gen4
  static const IconData sf_appletvremote_gen4 = IconData(0x100F27);

  /// IconData for SF Symbol appletvremote.gen4.fill
  static const IconData sf_appletvremote_gen4_fill = IconData(0x100F28);

  /// IconData for SF Symbol applewatch
  static const IconData sf_applewatch = IconData(0x1007E4);

  /// IconData for SF Symbol applewatch.and.arrow.forward
  static const IconData sf_applewatch_and_arrow_forward = IconData(0x102105);

  /// IconData for SF Symbol applewatch.case.inset.filled
  static const IconData sf_applewatch_case_inset_filled = IconData(0x100D2A);

  /// IconData for SF Symbol applewatch.radiowaves.left.and.right
  static const IconData sf_applewatch_radiowaves_left_and_right =
      IconData(0x1008B7);

  /// IconData for SF Symbol applewatch.side.right
  static const IconData sf_applewatch_side_right = IconData(0x100E0E);

  /// IconData for SF Symbol applewatch.slash
  static const IconData sf_applewatch_slash = IconData(0x100A36);

  /// IconData for SF Symbol applewatch.watchface
  static const IconData sf_applewatch_watchface = IconData(0x100ACB);

  /// IconData for SF Symbol apps.ipad
  static const IconData sf_apps_ipad = IconData(0x100B95);

  /// IconData for SF Symbol apps.ipad.landscape
  static const IconData sf_apps_ipad_landscape = IconData(0x100B96);

  /// IconData for SF Symbol apps.iphone
  static const IconData sf_apps_iphone = IconData(0x1007DE);

  /// IconData for SF Symbol apps.iphone.badge.plus
  static const IconData sf_apps_iphone_badge_plus = IconData(0x100BD6);

  /// IconData for SF Symbol apps.iphone.landscape
  static const IconData sf_apps_iphone_landscape = IconData(0x100B94);

  /// IconData for SF Symbol appwindow.swipe.rectangle
  static const IconData sf_appwindow_swipe_rectangle = IconData(0x101EFB);

  /// IconData for SF Symbol aqi.high
  static const IconData sf_aqi_high = IconData(0x100D40);

  /// IconData for SF Symbol aqi.low
  static const IconData sf_aqi_low = IconData(0x100D3E);

  /// IconData for SF Symbol aqi.medium
  static const IconData sf_aqi_medium = IconData(0x100D3F);

  /// IconData for SF Symbol arcade.stick
  static const IconData sf_arcade_stick = IconData(0x102062);

  /// IconData for SF Symbol arcade.stick.and.arrow.down
  static const IconData sf_arcade_stick_and_arrow_down = IconData(0x102068);

  /// IconData for SF Symbol arcade.stick.and.arrow.left
  static const IconData sf_arcade_stick_and_arrow_left = IconData(0x102064);

  /// IconData for SF Symbol arcade.stick.and.arrow.left.and.arrow.right
  static const IconData sf_arcade_stick_and_arrow_left_and_arrow_right =
      IconData(0x102063);

  /// IconData for SF Symbol arcade.stick.and.arrow.right
  static const IconData sf_arcade_stick_and_arrow_right = IconData(0x102065);

  /// IconData for SF Symbol arcade.stick.and.arrow.up
  static const IconData sf_arcade_stick_and_arrow_up = IconData(0x102067);

  /// IconData for SF Symbol arcade.stick.and.arrow.up.and.arrow.down
  static const IconData sf_arcade_stick_and_arrow_up_and_arrow_down =
      IconData(0x102066);

  /// IconData for SF Symbol arcade.stick.console
  static const IconData sf_arcade_stick_console = IconData(0x102060);

  /// IconData for SF Symbol arcade.stick.console.fill
  static const IconData sf_arcade_stick_console_fill = IconData(0x102061);

  /// IconData for SF Symbol archivebox
  static const IconData sf_archivebox = IconData(0x10022D);

  /// IconData for SF Symbol archivebox.circle
  static const IconData sf_archivebox_circle = IconData(0x10022F);

  /// IconData for SF Symbol archivebox.circle.fill
  static const IconData sf_archivebox_circle_fill = IconData(0x100230);

  /// IconData for SF Symbol archivebox.fill
  static const IconData sf_archivebox_fill = IconData(0x10022E);

  /// IconData for SF Symbol arkit
  static const IconData sf_arkit = IconData(0x100638);

  /// IconData for SF Symbol arkit.badge.xmark
  static const IconData sf_arkit_badge_xmark = IconData(0x101012);

  /// IconData for SF Symbol arrow.2.squarepath
  static const IconData sf_arrow_2_squarepath = IconData(0x10014C);

  /// IconData for SF Symbol arrow.3.trianglepath
  static const IconData sf_arrow_3_trianglepath = IconData(0x10065B);

  /// IconData for SF Symbol arrow.backward
  static const IconData sf_arrow_backward = IconData(0x100C0C);

  /// IconData for SF Symbol arrow.backward.circle
  static const IconData sf_arrow_backward_circle = IconData(0x100C0D);

  /// IconData for SF Symbol arrow.backward.circle.fill
  static const IconData sf_arrow_backward_circle_fill = IconData(0x100C0E);

  /// IconData for SF Symbol arrow.backward.square
  static const IconData sf_arrow_backward_square = IconData(0x100C0F);

  /// IconData for SF Symbol arrow.backward.square.fill
  static const IconData sf_arrow_backward_square_fill = IconData(0x100C10);

  /// IconData for SF Symbol arrow.backward.to.line
  static const IconData sf_arrow_backward_to_line = IconData(0x10108A);

  /// IconData for SF Symbol arrow.backward.to.line.circle
  static const IconData sf_arrow_backward_to_line_circle = IconData(0x10108C);

  /// IconData for SF Symbol arrow.backward.to.line.circle.fill
  static const IconData sf_arrow_backward_to_line_circle_fill =
      IconData(0x10108D);

  /// IconData for SF Symbol arrow.backward.to.line.square
  static const IconData sf_arrow_backward_to_line_square = IconData(0x102155);

  /// IconData for SF Symbol arrow.backward.to.line.square.fill
  static const IconData sf_arrow_backward_to_line_square_fill =
      IconData(0x102156);

  /// IconData for SF Symbol arrow.circlepath
  static const IconData sf_arrow_circlepath = IconData(0x101E60);

  /// IconData for SF Symbol arrow.clockwise
  static const IconData sf_arrow_clockwise = IconData(0x100148);

  /// IconData for SF Symbol arrow.clockwise.circle
  static const IconData sf_arrow_clockwise_circle = IconData(0x100681);

  /// IconData for SF Symbol arrow.clockwise.circle.fill
  static const IconData sf_arrow_clockwise_circle_fill = IconData(0x100682);

  /// IconData for SF Symbol arrow.clockwise.heart
  static const IconData sf_arrow_clockwise_heart = IconData(0x1009E1);

  /// IconData for SF Symbol arrow.clockwise.heart.fill
  static const IconData sf_arrow_clockwise_heart_fill = IconData(0x1009E2);

  /// IconData for SF Symbol arrow.clockwise.icloud
  static const IconData sf_arrow_clockwise_icloud = IconData(0x100677);

  /// IconData for SF Symbol arrow.clockwise.icloud.fill
  static const IconData sf_arrow_clockwise_icloud_fill = IconData(0x100678);

  /// IconData for SF Symbol arrow.clockwise.square
  static const IconData sf_arrow_clockwise_square = IconData(0x10215B);

  /// IconData for SF Symbol arrow.clockwise.square.fill
  static const IconData sf_arrow_clockwise_square_fill = IconData(0x10215C);

  /// IconData for SF Symbol arrow.counterclockwise
  static const IconData sf_arrow_counterclockwise = IconData(0x100149);

  /// IconData for SF Symbol arrow.counterclockwise.circle
  static const IconData sf_arrow_counterclockwise_circle = IconData(0x100683);

  /// IconData for SF Symbol arrow.counterclockwise.circle.fill
  static const IconData sf_arrow_counterclockwise_circle_fill =
      IconData(0x100684);

  /// IconData for SF Symbol arrow.counterclockwise.icloud
  static const IconData sf_arrow_counterclockwise_icloud = IconData(0x100679);

  /// IconData for SF Symbol arrow.counterclockwise.icloud.fill
  static const IconData sf_arrow_counterclockwise_icloud_fill =
      IconData(0x10067A);

  /// IconData for SF Symbol arrow.counterclockwise.square
  static const IconData sf_arrow_counterclockwise_square = IconData(0x10215F);

  /// IconData for SF Symbol arrow.counterclockwise.square.fill
  static const IconData sf_arrow_counterclockwise_square_fill =
      IconData(0x102160);

  /// IconData for SF Symbol arrow.down
  static const IconData sf_arrow_down = IconData(0x100129);

  /// IconData for SF Symbol arrow.down.and.line.horizontal.and.arrow.up
  static const IconData sf_arrow_down_and_line_horizontal_and_arrow_up =
      IconData(0x10068D);

  /// IconData for SF Symbol arrow.down.app
  static const IconData sf_arrow_down_app = IconData(0x100BF4);

  /// IconData for SF Symbol arrow.down.app.fill
  static const IconData sf_arrow_down_app_fill = IconData(0x100BF5);

  /// IconData for SF Symbol arrow.down.applewatch
  static const IconData sf_arrow_down_applewatch = IconData(0x102118);

  /// IconData for SF Symbol arrow.down.backward
  static const IconData sf_arrow_down_backward = IconData(0x100C43);

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward
  static const IconData sf_arrow_down_backward_and_arrow_up_forward =
      IconData(0x102122);

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.circle
  static const IconData sf_arrow_down_backward_and_arrow_up_forward_circle =
      IconData(0x102123);

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.circle.fill
  static const IconData
      sf_arrow_down_backward_and_arrow_up_forward_circle_fill =
      IconData(0x102124);

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.square
  static const IconData sf_arrow_down_backward_and_arrow_up_forward_square =
      IconData(0x102145);

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.square.fill
  static const IconData
      sf_arrow_down_backward_and_arrow_up_forward_square_fill =
      IconData(0x102146);

  /// IconData for SF Symbol arrow.down.backward.circle
  static const IconData sf_arrow_down_backward_circle = IconData(0x100C44);

  /// IconData for SF Symbol arrow.down.backward.circle.fill
  static const IconData sf_arrow_down_backward_circle_fill = IconData(0x100C45);

  /// IconData for SF Symbol arrow.down.backward.square
  static const IconData sf_arrow_down_backward_square = IconData(0x100C46);

  /// IconData for SF Symbol arrow.down.backward.square.fill
  static const IconData sf_arrow_down_backward_square_fill = IconData(0x100C47);

  /// IconData for SF Symbol arrow.down.backward.toptrailing.rectangle
  static const IconData sf_arrow_down_backward_toptrailing_rectangle =
      IconData(0x101EFF);

  /// IconData for SF Symbol arrow.down.backward.toptrailing.rectangle.fill
  static const IconData sf_arrow_down_backward_toptrailing_rectangle_fill =
      IconData(0x101F00);

  /// IconData for SF Symbol arrow.down.circle
  static const IconData sf_arrow_down_circle = IconData(0x100078);

  /// IconData for SF Symbol arrow.down.circle.dotted
  static const IconData sf_arrow_down_circle_dotted = IconData(0x101E5F);

  /// IconData for SF Symbol arrow.down.circle.fill
  static const IconData sf_arrow_down_circle_fill = IconData(0x100079);

  /// IconData for SF Symbol arrow.down.doc
  static const IconData sf_arrow_down_doc = IconData(0x10023D);

  /// IconData for SF Symbol arrow.down.doc.fill
  static const IconData sf_arrow_down_doc_fill = IconData(0x10023E);

  /// IconData for SF Symbol arrow.down.forward
  static const IconData sf_arrow_down_forward = IconData(0x100C48);

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward
  static const IconData sf_arrow_down_forward_and_arrow_up_backward =
      IconData(0x100C7B);

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.circle
  static const IconData sf_arrow_down_forward_and_arrow_up_backward_circle =
      IconData(0x100C7C);

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.circle.fill
  static const IconData
      sf_arrow_down_forward_and_arrow_up_backward_circle_fill =
      IconData(0x100C7D);

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.square
  static const IconData sf_arrow_down_forward_and_arrow_up_backward_square =
      IconData(0x102149);

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.square.fill
  static const IconData
      sf_arrow_down_forward_and_arrow_up_backward_square_fill =
      IconData(0x10214A);

  /// IconData for SF Symbol arrow.down.forward.circle
  static const IconData sf_arrow_down_forward_circle = IconData(0x100C49);

  /// IconData for SF Symbol arrow.down.forward.circle.fill
  static const IconData sf_arrow_down_forward_circle_fill = IconData(0x100C4A);

  /// IconData for SF Symbol arrow.down.forward.square
  static const IconData sf_arrow_down_forward_square = IconData(0x100C4B);

  /// IconData for SF Symbol arrow.down.forward.square.fill
  static const IconData sf_arrow_down_forward_square_fill = IconData(0x100C4C);

  /// IconData for SF Symbol arrow.down.forward.topleading.rectangle
  static const IconData sf_arrow_down_forward_topleading_rectangle =
      IconData(0x101F0B);

  /// IconData for SF Symbol arrow.down.forward.topleading.rectangle.fill
  static const IconData sf_arrow_down_forward_topleading_rectangle_fill =
      IconData(0x101F0C);

  /// IconData for SF Symbol arrow.down.heart
  static const IconData sf_arrow_down_heart = IconData(0x100C97);

  /// IconData for SF Symbol arrow.down.heart.fill
  static const IconData sf_arrow_down_heart_fill = IconData(0x100C98);

  /// IconData for SF Symbol arrow.down.left
  static const IconData sf_arrow_down_left = IconData(0x100130);

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right
  static const IconData sf_arrow_down_left_and_arrow_up_right =
      IconData(0x10211D);

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.circle
  static const IconData sf_arrow_down_left_and_arrow_up_right_circle =
      IconData(0x10211E);

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.circle.fill
  static const IconData sf_arrow_down_left_and_arrow_up_right_circle_fill =
      IconData(0x10211F);

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.square
  static const IconData sf_arrow_down_left_and_arrow_up_right_square =
      IconData(0x102143);

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.square.fill
  static const IconData sf_arrow_down_left_and_arrow_up_right_square_fill =
      IconData(0x102144);

  /// IconData for SF Symbol arrow.down.left.arrow.up.right
  static const IconData sf_arrow_down_left_arrow_up_right = IconData(0x101F67);

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.circle
  static const IconData sf_arrow_down_left_arrow_up_right_circle =
      IconData(0x101F68);

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.circle.fill
  static const IconData sf_arrow_down_left_arrow_up_right_circle_fill =
      IconData(0x101F69);

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.square
  static const IconData sf_arrow_down_left_arrow_up_right_square =
      IconData(0x101F6A);

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.square.fill
  static const IconData sf_arrow_down_left_arrow_up_right_square_fill =
      IconData(0x101F6B);

  /// IconData for SF Symbol arrow.down.left.circle
  static const IconData sf_arrow_down_left_circle = IconData(0x100086);

  /// IconData for SF Symbol arrow.down.left.circle.fill
  static const IconData sf_arrow_down_left_circle_fill = IconData(0x100087);

  /// IconData for SF Symbol arrow.down.left.square
  static const IconData sf_arrow_down_left_square = IconData(0x100116);

  /// IconData for SF Symbol arrow.down.left.square.fill
  static const IconData sf_arrow_down_left_square_fill = IconData(0x100117);

  /// IconData for SF Symbol arrow.down.left.topright.rectangle
  static const IconData sf_arrow_down_left_topright_rectangle =
      IconData(0x101EFD);

  /// IconData for SF Symbol arrow.down.left.topright.rectangle.fill
  static const IconData sf_arrow_down_left_topright_rectangle_fill =
      IconData(0x101EFE);

  /// IconData for SF Symbol arrow.down.left.video
  static const IconData sf_arrow_down_left_video = IconData(0x100351);

  /// IconData for SF Symbol arrow.down.left.video.fill
  static const IconData sf_arrow_down_left_video_fill = IconData(0x100352);

  /// IconData for SF Symbol arrow.down.message
  static const IconData sf_arrow_down_message = IconData(0x10149E);

  /// IconData for SF Symbol arrow.down.message.fill
  static const IconData sf_arrow_down_message_fill = IconData(0x10149F);

  /// IconData for SF Symbol arrow.down.right
  static const IconData sf_arrow_down_right = IconData(0x100131);

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left
  static const IconData sf_arrow_down_right_and_arrow_up_left =
      IconData(0x10014B);

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.circle
  static const IconData sf_arrow_down_right_and_arrow_up_left_circle =
      IconData(0x100ADE);

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.circle.fill
  static const IconData sf_arrow_down_right_and_arrow_up_left_circle_fill =
      IconData(0x100ADF);

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.square
  static const IconData sf_arrow_down_right_and_arrow_up_left_square =
      IconData(0x102147);

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.square.fill
  static const IconData sf_arrow_down_right_and_arrow_up_left_square_fill =
      IconData(0x102148);

  /// IconData for SF Symbol arrow.down.right.circle
  static const IconData sf_arrow_down_right_circle = IconData(0x100088);

  /// IconData for SF Symbol arrow.down.right.circle.fill
  static const IconData sf_arrow_down_right_circle_fill = IconData(0x100089);

  /// IconData for SF Symbol arrow.down.right.square
  static const IconData sf_arrow_down_right_square = IconData(0x100118);

  /// IconData for SF Symbol arrow.down.right.square.fill
  static const IconData sf_arrow_down_right_square_fill = IconData(0x100119);

  /// IconData for SF Symbol arrow.down.right.topleft.rectangle
  static const IconData sf_arrow_down_right_topleft_rectangle =
      IconData(0x101F09);

  /// IconData for SF Symbol arrow.down.right.topleft.rectangle.fill
  static const IconData sf_arrow_down_right_topleft_rectangle_fill =
      IconData(0x101F0A);

  /// IconData for SF Symbol arrow.down.square
  static const IconData sf_arrow_down_square = IconData(0x100108);

  /// IconData for SF Symbol arrow.down.square.fill
  static const IconData sf_arrow_down_square_fill = IconData(0x100109);

  /// IconData for SF Symbol arrow.down.to.line
  static const IconData sf_arrow_down_to_line = IconData(0x100140);

  /// IconData for SF Symbol arrow.down.to.line.circle
  static const IconData sf_arrow_down_to_line_circle = IconData(0x1004C8);

  /// IconData for SF Symbol arrow.down.to.line.circle.fill
  static const IconData sf_arrow_down_to_line_circle_fill = IconData(0x1004C9);

  /// IconData for SF Symbol arrow.down.to.line.compact
  static const IconData sf_arrow_down_to_line_compact = IconData(0x100144);

  /// IconData for SF Symbol arrow.down.to.line.square
  static const IconData sf_arrow_down_to_line_square = IconData(0x102151);

  /// IconData for SF Symbol arrow.down.to.line.square.fill
  static const IconData sf_arrow_down_to_line_square_fill = IconData(0x102152);

  /// IconData for SF Symbol arrow.forward
  static const IconData sf_arrow_forward = IconData(0x100C11);

  /// IconData for SF Symbol arrow.forward.circle
  static const IconData sf_arrow_forward_circle = IconData(0x100C12);

  /// IconData for SF Symbol arrow.forward.circle.fill
  static const IconData sf_arrow_forward_circle_fill = IconData(0x100C13);

  /// IconData for SF Symbol arrow.forward.square
  static const IconData sf_arrow_forward_square = IconData(0x100C14);

  /// IconData for SF Symbol arrow.forward.square.fill
  static const IconData sf_arrow_forward_square_fill = IconData(0x100C15);

  /// IconData for SF Symbol arrow.forward.to.line
  static const IconData sf_arrow_forward_to_line = IconData(0x10108E);

  /// IconData for SF Symbol arrow.forward.to.line.circle
  static const IconData sf_arrow_forward_to_line_circle = IconData(0x101090);

  /// IconData for SF Symbol arrow.forward.to.line.circle.fill
  static const IconData sf_arrow_forward_to_line_circle_fill =
      IconData(0x101091);

  /// IconData for SF Symbol arrow.forward.to.line.square
  static const IconData sf_arrow_forward_to_line_square = IconData(0x102159);

  /// IconData for SF Symbol arrow.forward.to.line.square.fill
  static const IconData sf_arrow_forward_to_line_square_fill =
      IconData(0x10215A);

  /// IconData for SF Symbol arrow.left
  static const IconData sf_arrow_left = IconData(0x10012A);

  /// IconData for SF Symbol arrow.left.and.line.vertical.and.arrow.right
  static const IconData sf_arrow_left_and_line_vertical_and_arrow_right =
      IconData(0x10068B);

  /// IconData for SF Symbol arrow.left.and.right
  static const IconData sf_arrow_left_and_right = IconData(0x10013E);

  /// IconData for SF Symbol arrow.left.and.right.circle
  static const IconData sf_arrow_left_and_right_circle = IconData(0x10047E);

  /// IconData for SF Symbol arrow.left.and.right.circle.fill
  static const IconData sf_arrow_left_and_right_circle_fill =
      IconData(0x10047F);

  /// IconData for SF Symbol arrow.left.and.right.righttriangle.left.righttriangle.right
  static const IconData
      sf_arrow_left_and_right_righttriangle_left_righttriangle_right =
      IconData(0x100792);

  /// IconData for SF Symbol arrow.left.and.right.righttriangle.left.righttriangle.right.fill
  static const IconData
      sf_arrow_left_and_right_righttriangle_left_righttriangle_right_fill =
      IconData(0x100793);

  /// IconData for SF Symbol arrow.left.and.right.square
  static const IconData sf_arrow_left_and_right_square = IconData(0x100480);

  /// IconData for SF Symbol arrow.left.and.right.square.fill
  static const IconData sf_arrow_left_and_right_square_fill =
      IconData(0x100481);

  /// IconData for SF Symbol arrow.left.and.right.text.vertical
  static const IconData sf_arrow_left_and_right_text_vertical =
      IconData(0x1015AD);

  /// IconData for SF Symbol arrow.left.arrow.right
  static const IconData sf_arrow_left_arrow_right = IconData(0x10012D);

  /// IconData for SF Symbol arrow.left.arrow.right.circle
  static const IconData sf_arrow_left_arrow_right_circle = IconData(0x100080);

  /// IconData for SF Symbol arrow.left.arrow.right.circle.fill
  static const IconData sf_arrow_left_arrow_right_circle_fill =
      IconData(0x100081);

  /// IconData for SF Symbol arrow.left.arrow.right.square
  static const IconData sf_arrow_left_arrow_right_square = IconData(0x100110);

  /// IconData for SF Symbol arrow.left.arrow.right.square.fill
  static const IconData sf_arrow_left_arrow_right_square_fill =
      IconData(0x100111);

  /// IconData for SF Symbol arrow.left.circle
  static const IconData sf_arrow_left_circle = IconData(0x10007A);

  /// IconData for SF Symbol arrow.left.circle.fill
  static const IconData sf_arrow_left_circle_fill = IconData(0x10007B);

  /// IconData for SF Symbol arrow.left.square
  static const IconData sf_arrow_left_square = IconData(0x10010A);

  /// IconData for SF Symbol arrow.left.square.fill
  static const IconData sf_arrow_left_square_fill = IconData(0x10010B);

  /// IconData for SF Symbol arrow.left.to.line
  static const IconData sf_arrow_left_to_line = IconData(0x100141);

  /// IconData for SF Symbol arrow.left.to.line.circle
  static const IconData sf_arrow_left_to_line_circle = IconData(0x1004CA);

  /// IconData for SF Symbol arrow.left.to.line.circle.fill
  static const IconData sf_arrow_left_to_line_circle_fill = IconData(0x1004CB);

  /// IconData for SF Symbol arrow.left.to.line.compact
  static const IconData sf_arrow_left_to_line_compact = IconData(0x100145);

  /// IconData for SF Symbol arrow.left.to.line.square
  static const IconData sf_arrow_left_to_line_square = IconData(0x102153);

  /// IconData for SF Symbol arrow.left.to.line.square.fill
  static const IconData sf_arrow_left_to_line_square_fill = IconData(0x102154);

  /// IconData for SF Symbol arrow.rectanglepath
  static const IconData sf_arrow_rectanglepath = IconData(0x1008C1);

  /// IconData for SF Symbol arrow.right
  static const IconData sf_arrow_right = IconData(0x10012B);

  /// IconData for SF Symbol arrow.right.and.line.vertical.and.arrow.left
  static const IconData sf_arrow_right_and_line_vertical_and_arrow_left =
      IconData(0x10068C);

  /// IconData for SF Symbol arrow.right.circle
  static const IconData sf_arrow_right_circle = IconData(0x10007C);

  /// IconData for SF Symbol arrow.right.circle.fill
  static const IconData sf_arrow_right_circle_fill = IconData(0x10007D);

  /// IconData for SF Symbol arrow.right.doc.on.clipboard
  static const IconData sf_arrow_right_doc_on_clipboard = IconData(0x100AF5);

  /// IconData for SF Symbol arrow.right.square
  static const IconData sf_arrow_right_square = IconData(0x10010C);

  /// IconData for SF Symbol arrow.right.square.fill
  static const IconData sf_arrow_right_square_fill = IconData(0x10010D);

  /// IconData for SF Symbol arrow.right.to.line
  static const IconData sf_arrow_right_to_line = IconData(0x100142);

  /// IconData for SF Symbol arrow.right.to.line.circle
  static const IconData sf_arrow_right_to_line_circle = IconData(0x1004CC);

  /// IconData for SF Symbol arrow.right.to.line.circle.fill
  static const IconData sf_arrow_right_to_line_circle_fill = IconData(0x1004CD);

  /// IconData for SF Symbol arrow.right.to.line.compact
  static const IconData sf_arrow_right_to_line_compact = IconData(0x100146);

  /// IconData for SF Symbol arrow.right.to.line.square
  static const IconData sf_arrow_right_to_line_square = IconData(0x102157);

  /// IconData for SF Symbol arrow.right.to.line.square.fill
  static const IconData sf_arrow_right_to_line_square_fill = IconData(0x102158);

  /// IconData for SF Symbol arrow.triangle.2.circlepath
  static const IconData sf_arrow_triangle_2_circlepath = IconData(0x1002AF);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.camera
  static const IconData sf_arrow_triangle_2_circlepath_camera =
      IconData(0x100322);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.camera.fill
  static const IconData sf_arrow_triangle_2_circlepath_camera_fill =
      IconData(0x100323);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.circle
  static const IconData sf_arrow_triangle_2_circlepath_circle =
      IconData(0x10058A);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.circle.fill
  static const IconData sf_arrow_triangle_2_circlepath_circle_fill =
      IconData(0x10058B);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.doc.on.clipboard
  static const IconData sf_arrow_triangle_2_circlepath_doc_on_clipboard =
      IconData(0x100AF7);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.icloud
  static const IconData sf_arrow_triangle_2_circlepath_icloud =
      IconData(0x10218D);

  /// IconData for SF Symbol arrow.triangle.2.circlepath.icloud.fill
  static const IconData sf_arrow_triangle_2_circlepath_icloud_fill =
      IconData(0x10218E);

  /// IconData for SF Symbol arrow.triangle.branch
  static const IconData sf_arrow_triangle_branch = IconData(0x100660);

  /// IconData for SF Symbol arrow.triangle.capsulepath
  static const IconData sf_arrow_triangle_capsulepath = IconData(0x100916);

  /// IconData for SF Symbol arrow.triangle.merge
  static const IconData sf_arrow_triangle_merge = IconData(0x100584);

  /// IconData for SF Symbol arrow.triangle.pull
  static const IconData sf_arrow_triangle_pull = IconData(0x100661);

  /// IconData for SF Symbol arrow.triangle.swap
  static const IconData sf_arrow_triangle_swap = IconData(0x100585);

  /// IconData for SF Symbol arrow.triangle.turn.up.right.circle
  static const IconData sf_arrow_triangle_turn_up_right_circle =
      IconData(0x1007F7);

  /// IconData for SF Symbol arrow.triangle.turn.up.right.circle.fill
  static const IconData sf_arrow_triangle_turn_up_right_circle_fill =
      IconData(0x1007F8);

  /// IconData for SF Symbol arrow.triangle.turn.up.right.diamond
  static const IconData sf_arrow_triangle_turn_up_right_diamond =
      IconData(0x10065E);

  /// IconData for SF Symbol arrow.triangle.turn.up.right.diamond.fill
  static const IconData sf_arrow_triangle_turn_up_right_diamond_fill =
      IconData(0x10065F);

  /// IconData for SF Symbol arrow.turn.down.left
  static const IconData sf_arrow_turn_down_left = IconData(0x100134);

  /// IconData for SF Symbol arrow.turn.down.right
  static const IconData sf_arrow_turn_down_right = IconData(0x100135);

  /// IconData for SF Symbol arrow.turn.left.down
  static const IconData sf_arrow_turn_left_down = IconData(0x100137);

  /// IconData for SF Symbol arrow.turn.left.up
  static const IconData sf_arrow_turn_left_up = IconData(0x100136);

  /// IconData for SF Symbol arrow.turn.right.down
  static const IconData sf_arrow_turn_right_down = IconData(0x100133);

  /// IconData for SF Symbol arrow.turn.right.up
  static const IconData sf_arrow_turn_right_up = IconData(0x100132);

  /// IconData for SF Symbol arrow.turn.up.forward.iphone
  static const IconData sf_arrow_turn_up_forward_iphone = IconData(0x100B2B);

  /// IconData for SF Symbol arrow.turn.up.forward.iphone.fill
  static const IconData sf_arrow_turn_up_forward_iphone_fill =
      IconData(0x100B2C);

  /// IconData for SF Symbol arrow.turn.up.left
  static const IconData sf_arrow_turn_up_left = IconData(0x100138);

  /// IconData for SF Symbol arrow.turn.up.right
  static const IconData sf_arrow_turn_up_right = IconData(0x100139);

  /// IconData for SF Symbol arrow.up
  static const IconData sf_arrow_up = IconData(0x100128);

  /// IconData for SF Symbol arrow.up.and.down
  static const IconData sf_arrow_up_and_down = IconData(0x100479);

  /// IconData for SF Symbol arrow.up.and.down.and.arrow.left.and.right
  static const IconData sf_arrow_up_and_down_and_arrow_left_and_right =
      IconData(0x1009D0);

  /// IconData for SF Symbol arrow.up.and.down.and.sparkles
  static const IconData sf_arrow_up_and_down_and_sparkles = IconData(0x10148F);

  /// IconData for SF Symbol arrow.up.and.down.circle
  static const IconData sf_arrow_up_and_down_circle = IconData(0x10047A);

  /// IconData for SF Symbol arrow.up.and.down.circle.fill
  static const IconData sf_arrow_up_and_down_circle_fill = IconData(0x10047B);

  /// IconData for SF Symbol arrow.up.and.down.righttriangle.up.righttriangle.down
  static const IconData
      sf_arrow_up_and_down_righttriangle_up_righttriangle_down =
      IconData(0x1007E8);

  /// IconData for SF Symbol arrow.up.and.down.righttriangle.up.righttriangle.down.fill
  static const IconData
      sf_arrow_up_and_down_righttriangle_up_righttriangle_down_fill =
      IconData(0x1007E9);

  /// IconData for SF Symbol arrow.up.and.down.square
  static const IconData sf_arrow_up_and_down_square = IconData(0x10047C);

  /// IconData for SF Symbol arrow.up.and.down.square.fill
  static const IconData sf_arrow_up_and_down_square_fill = IconData(0x10047D);

  /// IconData for SF Symbol arrow.up.and.down.text.horizontal
  static const IconData sf_arrow_up_and_down_text_horizontal =
      IconData(0x100D6C);

  /// IconData for SF Symbol arrow.up.and.line.horizontal.and.arrow.down
  static const IconData sf_arrow_up_and_line_horizontal_and_arrow_down =
      IconData(0x10068E);

  /// IconData for SF Symbol arrow.up.and.person.rectangle.portrait
  static const IconData sf_arrow_up_and_person_rectangle_portrait =
      IconData(0x100AA8);

  /// IconData for SF Symbol arrow.up.and.person.rectangle.turn.left
  static const IconData sf_arrow_up_and_person_rectangle_turn_left =
      IconData(0x100AAA);

  /// IconData for SF Symbol arrow.up.and.person.rectangle.turn.right
  static const IconData sf_arrow_up_and_person_rectangle_turn_right =
      IconData(0x100AA9);

  /// IconData for SF Symbol arrow.up.arrow.down
  static const IconData sf_arrow_up_arrow_down = IconData(0x10012C);

  /// IconData for SF Symbol arrow.up.arrow.down.circle
  static const IconData sf_arrow_up_arrow_down_circle = IconData(0x10007E);

  /// IconData for SF Symbol arrow.up.arrow.down.circle.fill
  static const IconData sf_arrow_up_arrow_down_circle_fill = IconData(0x10007F);

  /// IconData for SF Symbol arrow.up.arrow.down.square
  static const IconData sf_arrow_up_arrow_down_square = IconData(0x10010E);

  /// IconData for SF Symbol arrow.up.arrow.down.square.fill
  static const IconData sf_arrow_up_arrow_down_square_fill = IconData(0x10010F);

  /// IconData for SF Symbol arrow.up.backward
  static const IconData sf_arrow_up_backward = IconData(0x100C39);

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward
  static const IconData sf_arrow_up_backward_and_arrow_down_forward =
      IconData(0x100C76);

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.circle
  static const IconData sf_arrow_up_backward_and_arrow_down_forward_circle =
      IconData(0x100C77);

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.circle.fill
  static const IconData
      sf_arrow_up_backward_and_arrow_down_forward_circle_fill =
      IconData(0x100C78);

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.square
  static const IconData sf_arrow_up_backward_and_arrow_down_forward_square =
      IconData(0x102141);

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.square.fill
  static const IconData
      sf_arrow_up_backward_and_arrow_down_forward_square_fill =
      IconData(0x102142);

  /// IconData for SF Symbol arrow.up.backward.bottomtrailing.rectangle
  static const IconData sf_arrow_up_backward_bottomtrailing_rectangle =
      IconData(0x101F03);

  /// IconData for SF Symbol arrow.up.backward.bottomtrailing.rectangle.fill
  static const IconData sf_arrow_up_backward_bottomtrailing_rectangle_fill =
      IconData(0x101F04);

  /// IconData for SF Symbol arrow.up.backward.circle
  static const IconData sf_arrow_up_backward_circle = IconData(0x100C3A);

  /// IconData for SF Symbol arrow.up.backward.circle.fill
  static const IconData sf_arrow_up_backward_circle_fill = IconData(0x100C3B);

  /// IconData for SF Symbol arrow.up.backward.square
  static const IconData sf_arrow_up_backward_square = IconData(0x100C3C);

  /// IconData for SF Symbol arrow.up.backward.square.fill
  static const IconData sf_arrow_up_backward_square_fill = IconData(0x100C3D);

  /// IconData for SF Symbol arrow.up.bin
  static const IconData sf_arrow_up_bin = IconData(0x100235);

  /// IconData for SF Symbol arrow.up.bin.fill
  static const IconData sf_arrow_up_bin_fill = IconData(0x100236);

  /// IconData for SF Symbol arrow.up.circle
  static const IconData sf_arrow_up_circle = IconData(0x100076);

  /// IconData for SF Symbol arrow.up.circle.badge.clock
  static const IconData sf_arrow_up_circle_badge_clock = IconData(0x1013B3);

  /// IconData for SF Symbol arrow.up.circle.fill
  static const IconData sf_arrow_up_circle_fill = IconData(0x100077);

  /// IconData for SF Symbol arrow.up.doc
  static const IconData sf_arrow_up_doc = IconData(0x10023B);

  /// IconData for SF Symbol arrow.up.doc.fill
  static const IconData sf_arrow_up_doc_fill = IconData(0x10023C);

  /// IconData for SF Symbol arrow.up.doc.on.clipboard
  static const IconData sf_arrow_up_doc_on_clipboard = IconData(0x100AF6);

  /// IconData for SF Symbol arrow.up.forward
  static const IconData sf_arrow_up_forward = IconData(0x100C3E);

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward
  static const IconData sf_arrow_up_forward_and_arrow_down_backward =
      IconData(0x10212C);

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.circle
  static const IconData sf_arrow_up_forward_and_arrow_down_backward_circle =
      IconData(0x10212D);

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.circle.fill
  static const IconData
      sf_arrow_up_forward_and_arrow_down_backward_circle_fill =
      IconData(0x10212E);

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.square
  static const IconData sf_arrow_up_forward_and_arrow_down_backward_square =
      IconData(0x10214D);

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.square.fill
  static const IconData
      sf_arrow_up_forward_and_arrow_down_backward_square_fill =
      IconData(0x10214E);

  /// IconData for SF Symbol arrow.up.forward.app
  static const IconData sf_arrow_up_forward_app = IconData(0x100BB5);

  /// IconData for SF Symbol arrow.up.forward.app.fill
  static const IconData sf_arrow_up_forward_app_fill = IconData(0x100BB6);

  /// IconData for SF Symbol arrow.up.forward.bottomleading.rectangle
  static const IconData sf_arrow_up_forward_bottomleading_rectangle =
      IconData(0x101F07);

  /// IconData for SF Symbol arrow.up.forward.bottomleading.rectangle.fill
  static const IconData sf_arrow_up_forward_bottomleading_rectangle_fill =
      IconData(0x101F08);

  /// IconData for SF Symbol arrow.up.forward.circle
  static const IconData sf_arrow_up_forward_circle = IconData(0x100C3F);

  /// IconData for SF Symbol arrow.up.forward.circle.fill
  static const IconData sf_arrow_up_forward_circle_fill = IconData(0x100C40);

  /// IconData for SF Symbol arrow.up.forward.square
  static const IconData sf_arrow_up_forward_square = IconData(0x100C41);

  /// IconData for SF Symbol arrow.up.forward.square.fill
  static const IconData sf_arrow_up_forward_square_fill = IconData(0x100C42);

  /// IconData for SF Symbol arrow.up.heart
  static const IconData sf_arrow_up_heart = IconData(0x100C95);

  /// IconData for SF Symbol arrow.up.heart.fill
  static const IconData sf_arrow_up_heart_fill = IconData(0x100C96);

  /// IconData for SF Symbol arrow.up.left
  static const IconData sf_arrow_up_left = IconData(0x10012E);

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right
  static const IconData sf_arrow_up_left_and_arrow_down_right =
      IconData(0x10014A);

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.circle
  static const IconData sf_arrow_up_left_and_arrow_down_right_circle =
      IconData(0x1009DB);

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.circle.fill
  static const IconData sf_arrow_up_left_and_arrow_down_right_circle_fill =
      IconData(0x1009DC);

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.square
  static const IconData sf_arrow_up_left_and_arrow_down_right_square =
      IconData(0x10213F);

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.square.fill
  static const IconData sf_arrow_up_left_and_arrow_down_right_square_fill =
      IconData(0x102140);

  /// IconData for SF Symbol arrow.up.left.and.down.right.and.arrow.up.right.and.down.left
  static const IconData
      sf_arrow_up_left_and_down_right_and_arrow_up_right_and_down_left =
      IconData(0x100B11);

  /// IconData for SF Symbol arrow.up.left.and.down.right.magnifyingglass
  static const IconData sf_arrow_up_left_and_down_right_magnifyingglass =
      IconData(0x100969);

  /// IconData for SF Symbol arrow.up.left.arrow.down.right
  static const IconData sf_arrow_up_left_arrow_down_right = IconData(0x101F92);

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.circle
  static const IconData sf_arrow_up_left_arrow_down_right_circle =
      IconData(0x101F93);

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.circle.fill
  static const IconData sf_arrow_up_left_arrow_down_right_circle_fill =
      IconData(0x101F94);

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.square
  static const IconData sf_arrow_up_left_arrow_down_right_square =
      IconData(0x101F95);

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.square.fill
  static const IconData sf_arrow_up_left_arrow_down_right_square_fill =
      IconData(0x101F96);

  /// IconData for SF Symbol arrow.up.left.bottomright.rectangle
  static const IconData sf_arrow_up_left_bottomright_rectangle =
      IconData(0x101F01);

  /// IconData for SF Symbol arrow.up.left.bottomright.rectangle.fill
  static const IconData sf_arrow_up_left_bottomright_rectangle_fill =
      IconData(0x101F02);

  /// IconData for SF Symbol arrow.up.left.circle
  static const IconData sf_arrow_up_left_circle = IconData(0x100082);

  /// IconData for SF Symbol arrow.up.left.circle.fill
  static const IconData sf_arrow_up_left_circle_fill = IconData(0x100083);

  /// IconData for SF Symbol arrow.up.left.square
  static const IconData sf_arrow_up_left_square = IconData(0x100112);

  /// IconData for SF Symbol arrow.up.left.square.fill
  static const IconData sf_arrow_up_left_square_fill = IconData(0x100113);

  /// IconData for SF Symbol arrow.up.message
  static const IconData sf_arrow_up_message = IconData(0x100703);

  /// IconData for SF Symbol arrow.up.message.fill
  static const IconData sf_arrow_up_message_fill = IconData(0x100704);

  /// IconData for SF Symbol arrow.up.right
  static const IconData sf_arrow_up_right = IconData(0x10012F);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left
  static const IconData sf_arrow_up_right_and_arrow_down_left =
      IconData(0x102127);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.circle
  static const IconData sf_arrow_up_right_and_arrow_down_left_circle =
      IconData(0x102128);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.circle.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_circle_fill =
      IconData(0x102129);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.rectangle
  static const IconData sf_arrow_up_right_and_arrow_down_left_rectangle =
      IconData(0x1008BF);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.rectangle.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_rectangle_fill =
      IconData(0x1008C0);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.square
  static const IconData sf_arrow_up_right_and_arrow_down_left_square =
      IconData(0x10214B);

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.square.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_square_fill =
      IconData(0x10214C);

  /// IconData for SF Symbol arrow.up.right.bottomleft.rectangle
  static const IconData sf_arrow_up_right_bottomleft_rectangle =
      IconData(0x101F05);

  /// IconData for SF Symbol arrow.up.right.bottomleft.rectangle.fill
  static const IconData sf_arrow_up_right_bottomleft_rectangle_fill =
      IconData(0x101F06);

  /// IconData for SF Symbol arrow.up.right.circle
  static const IconData sf_arrow_up_right_circle = IconData(0x100084);

  /// IconData for SF Symbol arrow.up.right.circle.fill
  static const IconData sf_arrow_up_right_circle_fill = IconData(0x100085);

  /// IconData for SF Symbol arrow.up.right.square
  static const IconData sf_arrow_up_right_square = IconData(0x100114);

  /// IconData for SF Symbol arrow.up.right.square.fill
  static const IconData sf_arrow_up_right_square_fill = IconData(0x100115);

  /// IconData for SF Symbol arrow.up.right.video
  static const IconData sf_arrow_up_right_video = IconData(0x10034F);

  /// IconData for SF Symbol arrow.up.right.video.fill
  static const IconData sf_arrow_up_right_video_fill = IconData(0x100350);

  /// IconData for SF Symbol arrow.up.square
  static const IconData sf_arrow_up_square = IconData(0x100106);

  /// IconData for SF Symbol arrow.up.square.fill
  static const IconData sf_arrow_up_square_fill = IconData(0x100107);

  /// IconData for SF Symbol arrow.up.to.line
  static const IconData sf_arrow_up_to_line = IconData(0x10013F);

  /// IconData for SF Symbol arrow.up.to.line.circle
  static const IconData sf_arrow_up_to_line_circle = IconData(0x1004C6);

  /// IconData for SF Symbol arrow.up.to.line.circle.fill
  static const IconData sf_arrow_up_to_line_circle_fill = IconData(0x1004C7);

  /// IconData for SF Symbol arrow.up.to.line.compact
  static const IconData sf_arrow_up_to_line_compact = IconData(0x100143);

  /// IconData for SF Symbol arrow.up.to.line.square
  static const IconData sf_arrow_up_to_line_square = IconData(0x10214F);

  /// IconData for SF Symbol arrow.up.to.line.square.fill
  static const IconData sf_arrow_up_to_line_square_fill = IconData(0x102150);

  /// IconData for SF Symbol arrow.up.trash
  static const IconData sf_arrow_up_trash = IconData(0x1018C8);

  /// IconData for SF Symbol arrow.up.trash.fill
  static const IconData sf_arrow_up_trash_fill = IconData(0x1018C9);

  /// IconData for SF Symbol arrow.uturn.backward
  static const IconData sf_arrow_uturn_backward = IconData(0x100C4D);

  /// IconData for SF Symbol arrow.uturn.backward.circle
  static const IconData sf_arrow_uturn_backward_circle = IconData(0x100C4E);

  /// IconData for SF Symbol arrow.uturn.backward.circle.badge.ellipsis
  static const IconData sf_arrow_uturn_backward_circle_badge_ellipsis =
      IconData(0x100C50);

  /// IconData for SF Symbol arrow.uturn.backward.circle.fill
  static const IconData sf_arrow_uturn_backward_circle_fill =
      IconData(0x100C4F);

  /// IconData for SF Symbol arrow.uturn.backward.square
  static const IconData sf_arrow_uturn_backward_square = IconData(0x100C51);

  /// IconData for SF Symbol arrow.uturn.backward.square.fill
  static const IconData sf_arrow_uturn_backward_square_fill =
      IconData(0x100C52);

  /// IconData for SF Symbol arrow.uturn.down
  static const IconData sf_arrow_uturn_down = IconData(0x10013B);

  /// IconData for SF Symbol arrow.uturn.down.circle
  static const IconData sf_arrow_uturn_down_circle = IconData(0x10008C);

  /// IconData for SF Symbol arrow.uturn.down.circle.fill
  static const IconData sf_arrow_uturn_down_circle_fill = IconData(0x10008D);

  /// IconData for SF Symbol arrow.uturn.down.square
  static const IconData sf_arrow_uturn_down_square = IconData(0x10011C);

  /// IconData for SF Symbol arrow.uturn.down.square.fill
  static const IconData sf_arrow_uturn_down_square_fill = IconData(0x10011D);

  /// IconData for SF Symbol arrow.uturn.forward
  static const IconData sf_arrow_uturn_forward = IconData(0x100C53);

  /// IconData for SF Symbol arrow.uturn.forward.circle
  static const IconData sf_arrow_uturn_forward_circle = IconData(0x100C54);

  /// IconData for SF Symbol arrow.uturn.forward.circle.fill
  static const IconData sf_arrow_uturn_forward_circle_fill = IconData(0x100C55);

  /// IconData for SF Symbol arrow.uturn.forward.square
  static const IconData sf_arrow_uturn_forward_square = IconData(0x100C56);

  /// IconData for SF Symbol arrow.uturn.forward.square.fill
  static const IconData sf_arrow_uturn_forward_square_fill = IconData(0x100C57);

  /// IconData for SF Symbol arrow.uturn.left
  static const IconData sf_arrow_uturn_left = IconData(0x10013C);

  /// IconData for SF Symbol arrow.uturn.left.circle
  static const IconData sf_arrow_uturn_left_circle = IconData(0x10008E);

  /// IconData for SF Symbol arrow.uturn.left.circle.badge.ellipsis
  static const IconData sf_arrow_uturn_left_circle_badge_ellipsis =
      IconData(0x1007B8);

  /// IconData for SF Symbol arrow.uturn.left.circle.fill
  static const IconData sf_arrow_uturn_left_circle_fill = IconData(0x10008F);

  /// IconData for SF Symbol arrow.uturn.left.square
  static const IconData sf_arrow_uturn_left_square = IconData(0x10011E);

  /// IconData for SF Symbol arrow.uturn.left.square.fill
  static const IconData sf_arrow_uturn_left_square_fill = IconData(0x10011F);

  /// IconData for SF Symbol arrow.uturn.right
  static const IconData sf_arrow_uturn_right = IconData(0x10013D);

  /// IconData for SF Symbol arrow.uturn.right.circle
  static const IconData sf_arrow_uturn_right_circle = IconData(0x100090);

  /// IconData for SF Symbol arrow.uturn.right.circle.fill
  static const IconData sf_arrow_uturn_right_circle_fill = IconData(0x100091);

  /// IconData for SF Symbol arrow.uturn.right.square
  static const IconData sf_arrow_uturn_right_square = IconData(0x100120);

  /// IconData for SF Symbol arrow.uturn.right.square.fill
  static const IconData sf_arrow_uturn_right_square_fill = IconData(0x100121);

  /// IconData for SF Symbol arrow.uturn.up
  static const IconData sf_arrow_uturn_up = IconData(0x10013A);

  /// IconData for SF Symbol arrow.uturn.up.circle
  static const IconData sf_arrow_uturn_up_circle = IconData(0x10008A);

  /// IconData for SF Symbol arrow.uturn.up.circle.fill
  static const IconData sf_arrow_uturn_up_circle_fill = IconData(0x10008B);

  /// IconData for SF Symbol arrow.uturn.up.square
  static const IconData sf_arrow_uturn_up_square = IconData(0x10011A);

  /// IconData for SF Symbol arrow.uturn.up.square.fill
  static const IconData sf_arrow_uturn_up_square_fill = IconData(0x10011B);

  /// IconData for SF Symbol arrowkeys
  static const IconData sf_arrowkeys = IconData(0x101FB0);

  /// IconData for SF Symbol arrowkeys.down.filled
  static const IconData sf_arrowkeys_down_filled = IconData(0x101FB3);

  /// IconData for SF Symbol arrowkeys.fill
  static const IconData sf_arrowkeys_fill = IconData(0x101FB1);

  /// IconData for SF Symbol arrowkeys.left.filled
  static const IconData sf_arrowkeys_left_filled = IconData(0x101FB4);

  /// IconData for SF Symbol arrowkeys.right.filled
  static const IconData sf_arrowkeys_right_filled = IconData(0x101FB5);

  /// IconData for SF Symbol arrowkeys.up.filled
  static const IconData sf_arrowkeys_up_filled = IconData(0x101FB2);

  /// IconData for SF Symbol arrowshape.backward
  static const IconData sf_arrowshape_backward = IconData(0x101248);

  /// IconData for SF Symbol arrowshape.backward.circle
  static const IconData sf_arrowshape_backward_circle = IconData(0x101FA2);

  /// IconData for SF Symbol arrowshape.backward.circle.fill
  static const IconData sf_arrowshape_backward_circle_fill = IconData(0x101FA3);

  /// IconData for SF Symbol arrowshape.backward.fill
  static const IconData sf_arrowshape_backward_fill = IconData(0x101249);

  /// IconData for SF Symbol arrowshape.bounce.forward
  static const IconData sf_arrowshape_bounce_forward = IconData(0x100C28);

  /// IconData for SF Symbol arrowshape.bounce.forward.fill
  static const IconData sf_arrowshape_bounce_forward_fill = IconData(0x100C29);

  /// IconData for SF Symbol arrowshape.bounce.right
  static const IconData sf_arrowshape_bounce_right = IconData(0x100259);

  /// IconData for SF Symbol arrowshape.bounce.right.fill
  static const IconData sf_arrowshape_bounce_right_fill = IconData(0x100491);

  /// IconData for SF Symbol arrowshape.down
  static const IconData sf_arrowshape_down = IconData(0x101FAC);

  /// IconData for SF Symbol arrowshape.down.circle
  static const IconData sf_arrowshape_down_circle = IconData(0x101FAE);

  /// IconData for SF Symbol arrowshape.down.circle.fill
  static const IconData sf_arrowshape_down_circle_fill = IconData(0x101FAF);

  /// IconData for SF Symbol arrowshape.down.fill
  static const IconData sf_arrowshape_down_fill = IconData(0x101FAD);

  /// IconData for SF Symbol arrowshape.forward
  static const IconData sf_arrowshape_forward = IconData(0x101246);

  /// IconData for SF Symbol arrowshape.forward.circle
  static const IconData sf_arrowshape_forward_circle = IconData(0x101FA6);

  /// IconData for SF Symbol arrowshape.forward.circle.fill
  static const IconData sf_arrowshape_forward_circle_fill = IconData(0x101FA7);

  /// IconData for SF Symbol arrowshape.forward.fill
  static const IconData sf_arrowshape_forward_fill = IconData(0x101247);

  /// IconData for SF Symbol arrowshape.left
  static const IconData sf_arrowshape_left = IconData(0x101244);

  /// IconData for SF Symbol arrowshape.left.arrowshape.right
  static const IconData sf_arrowshape_left_arrowshape_right =
      IconData(0x10127E);

  /// IconData for SF Symbol arrowshape.left.arrowshape.right.fill
  static const IconData sf_arrowshape_left_arrowshape_right_fill =
      IconData(0x10127F);

  /// IconData for SF Symbol arrowshape.left.circle
  static const IconData sf_arrowshape_left_circle = IconData(0x101FA0);

  /// IconData for SF Symbol arrowshape.left.circle.fill
  static const IconData sf_arrowshape_left_circle_fill = IconData(0x101FA1);

  /// IconData for SF Symbol arrowshape.left.fill
  static const IconData sf_arrowshape_left_fill = IconData(0x101245);

  /// IconData for SF Symbol arrowshape.right
  static const IconData sf_arrowshape_right = IconData(0x101242);

  /// IconData for SF Symbol arrowshape.right.circle
  static const IconData sf_arrowshape_right_circle = IconData(0x101FA4);

  /// IconData for SF Symbol arrowshape.right.circle.fill
  static const IconData sf_arrowshape_right_circle_fill = IconData(0x101FA5);

  /// IconData for SF Symbol arrowshape.right.fill
  static const IconData sf_arrowshape_right_fill = IconData(0x101243);

  /// IconData for SF Symbol arrowshape.turn.up.backward
  static const IconData sf_arrowshape_turn_up_backward = IconData(0x100C1A);

  /// IconData for SF Symbol arrowshape.turn.up.backward.2
  static const IconData sf_arrowshape_turn_up_backward_2 = IconData(0x100C22);

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.circle
  static const IconData sf_arrowshape_turn_up_backward_2_circle =
      IconData(0x100C24);

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.circle.fill
  static const IconData sf_arrowshape_turn_up_backward_2_circle_fill =
      IconData(0x100C25);

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.fill
  static const IconData sf_arrowshape_turn_up_backward_2_fill =
      IconData(0x100C23);

  /// IconData for SF Symbol arrowshape.turn.up.backward.badge.clock
  static const IconData sf_arrowshape_turn_up_backward_badge_clock =
      IconData(0x1013B1);

  /// IconData for SF Symbol arrowshape.turn.up.backward.badge.clock.fill
  static const IconData sf_arrowshape_turn_up_backward_badge_clock_fill =
      IconData(0x1015BE);

  /// IconData for SF Symbol arrowshape.turn.up.backward.circle
  static const IconData sf_arrowshape_turn_up_backward_circle =
      IconData(0x100C1C);

  /// IconData for SF Symbol arrowshape.turn.up.backward.circle.fill
  static const IconData sf_arrowshape_turn_up_backward_circle_fill =
      IconData(0x100C1D);

  /// IconData for SF Symbol arrowshape.turn.up.backward.fill
  static const IconData sf_arrowshape_turn_up_backward_fill =
      IconData(0x100C1B);

  /// IconData for SF Symbol arrowshape.turn.up.forward
  static const IconData sf_arrowshape_turn_up_forward = IconData(0x100C1E);

  /// IconData for SF Symbol arrowshape.turn.up.forward.circle
  static const IconData sf_arrowshape_turn_up_forward_circle =
      IconData(0x100C20);

  /// IconData for SF Symbol arrowshape.turn.up.forward.circle.fill
  static const IconData sf_arrowshape_turn_up_forward_circle_fill =
      IconData(0x100C21);

  /// IconData for SF Symbol arrowshape.turn.up.forward.fill
  static const IconData sf_arrowshape_turn_up_forward_fill = IconData(0x100C1F);

  /// IconData for SF Symbol arrowshape.turn.up.left
  static const IconData sf_arrowshape_turn_up_left = IconData(0x10024C);

  /// IconData for SF Symbol arrowshape.turn.up.left.2
  static const IconData sf_arrowshape_turn_up_left_2 = IconData(0x100254);

  /// IconData for SF Symbol arrowshape.turn.up.left.2.circle
  static const IconData sf_arrowshape_turn_up_left_2_circle =
      IconData(0x100256);

  /// IconData for SF Symbol arrowshape.turn.up.left.2.circle.fill
  static const IconData sf_arrowshape_turn_up_left_2_circle_fill =
      IconData(0x100257);

  /// IconData for SF Symbol arrowshape.turn.up.left.2.fill
  static const IconData sf_arrowshape_turn_up_left_2_fill = IconData(0x100255);

  /// IconData for SF Symbol arrowshape.turn.up.left.circle
  static const IconData sf_arrowshape_turn_up_left_circle = IconData(0x10024E);

  /// IconData for SF Symbol arrowshape.turn.up.left.circle.fill
  static const IconData sf_arrowshape_turn_up_left_circle_fill =
      IconData(0x10024F);

  /// IconData for SF Symbol arrowshape.turn.up.left.fill
  static const IconData sf_arrowshape_turn_up_left_fill = IconData(0x10024D);

  /// IconData for SF Symbol arrowshape.turn.up.right
  static const IconData sf_arrowshape_turn_up_right = IconData(0x100250);

  /// IconData for SF Symbol arrowshape.turn.up.right.circle
  static const IconData sf_arrowshape_turn_up_right_circle = IconData(0x100252);

  /// IconData for SF Symbol arrowshape.turn.up.right.circle.fill
  static const IconData sf_arrowshape_turn_up_right_circle_fill =
      IconData(0x100253);

  /// IconData for SF Symbol arrowshape.turn.up.right.fill
  static const IconData sf_arrowshape_turn_up_right_fill = IconData(0x100251);

  /// IconData for SF Symbol arrowshape.up
  static const IconData sf_arrowshape_up = IconData(0x101FA8);

  /// IconData for SF Symbol arrowshape.up.circle
  static const IconData sf_arrowshape_up_circle = IconData(0x101FAA);

  /// IconData for SF Symbol arrowshape.up.circle.fill
  static const IconData sf_arrowshape_up_circle_fill = IconData(0x101FAB);

  /// IconData for SF Symbol arrowshape.up.fill
  static const IconData sf_arrowshape_up_fill = IconData(0x101FA9);

  /// IconData for SF Symbol arrowshape.zigzag.forward
  static const IconData sf_arrowshape_zigzag_forward = IconData(0x100C26);

  /// IconData for SF Symbol arrowshape.zigzag.forward.fill
  static const IconData sf_arrowshape_zigzag_forward_fill = IconData(0x100C27);

  /// IconData for SF Symbol arrowshape.zigzag.right
  static const IconData sf_arrowshape_zigzag_right = IconData(0x100258);

  /// IconData for SF Symbol arrowshape.zigzag.right.fill
  static const IconData sf_arrowshape_zigzag_right_fill = IconData(0x100490);

  /// IconData for SF Symbol arrowtriangle.backward
  static const IconData sf_arrowtriangle_backward = IconData(0x100C00);

  /// IconData for SF Symbol arrowtriangle.backward.circle
  static const IconData sf_arrowtriangle_backward_circle = IconData(0x100C02);

  /// IconData for SF Symbol arrowtriangle.backward.circle.fill
  static const IconData sf_arrowtriangle_backward_circle_fill =
      IconData(0x100C03);

  /// IconData for SF Symbol arrowtriangle.backward.fill
  static const IconData sf_arrowtriangle_backward_fill = IconData(0x100C01);

  /// IconData for SF Symbol arrowtriangle.backward.square
  static const IconData sf_arrowtriangle_backward_square = IconData(0x100C04);

  /// IconData for SF Symbol arrowtriangle.backward.square.fill
  static const IconData sf_arrowtriangle_backward_square_fill =
      IconData(0x100C05);

  /// IconData for SF Symbol arrowtriangle.down
  static const IconData sf_arrowtriangle_down = IconData(0x1004C3);

  /// IconData for SF Symbol arrowtriangle.down.circle
  static const IconData sf_arrowtriangle_down_circle = IconData(0x100068);

  /// IconData for SF Symbol arrowtriangle.down.circle.fill
  static const IconData sf_arrowtriangle_down_circle_fill = IconData(0x100069);

  /// IconData for SF Symbol arrowtriangle.down.fill
  static const IconData sf_arrowtriangle_down_fill = IconData(0x100125);

  /// IconData for SF Symbol arrowtriangle.down.square
  static const IconData sf_arrowtriangle_down_square = IconData(0x1000F8);

  /// IconData for SF Symbol arrowtriangle.down.square.fill
  static const IconData sf_arrowtriangle_down_square_fill = IconData(0x1000F9);

  /// IconData for SF Symbol arrowtriangle.forward
  static const IconData sf_arrowtriangle_forward = IconData(0x100C06);

  /// IconData for SF Symbol arrowtriangle.forward.circle
  static const IconData sf_arrowtriangle_forward_circle = IconData(0x100C08);

  /// IconData for SF Symbol arrowtriangle.forward.circle.fill
  static const IconData sf_arrowtriangle_forward_circle_fill =
      IconData(0x100C09);

  /// IconData for SF Symbol arrowtriangle.forward.fill
  static const IconData sf_arrowtriangle_forward_fill = IconData(0x100C07);

  /// IconData for SF Symbol arrowtriangle.forward.square
  static const IconData sf_arrowtriangle_forward_square = IconData(0x100C0A);

  /// IconData for SF Symbol arrowtriangle.forward.square.fill
  static const IconData sf_arrowtriangle_forward_square_fill =
      IconData(0x100C0B);

  /// IconData for SF Symbol arrowtriangle.left
  static const IconData sf_arrowtriangle_left = IconData(0x1004C4);

  /// IconData for SF Symbol arrowtriangle.left.and.line.vertical.and.arrowtriangle.right
  static const IconData
      sf_arrowtriangle_left_and_line_vertical_and_arrowtriangle_right =
      IconData(0x100809);

  /// IconData for SF Symbol arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill
  static const IconData
      sf_arrowtriangle_left_and_line_vertical_and_arrowtriangle_right_fill =
      IconData(0x1007E6);

  /// IconData for SF Symbol arrowtriangle.left.circle
  static const IconData sf_arrowtriangle_left_circle = IconData(0x10006A);

  /// IconData for SF Symbol arrowtriangle.left.circle.fill
  static const IconData sf_arrowtriangle_left_circle_fill = IconData(0x10006B);

  /// IconData for SF Symbol arrowtriangle.left.fill
  static const IconData sf_arrowtriangle_left_fill = IconData(0x100126);

  /// IconData for SF Symbol arrowtriangle.left.square
  static const IconData sf_arrowtriangle_left_square = IconData(0x1000FA);

  /// IconData for SF Symbol arrowtriangle.left.square.fill
  static const IconData sf_arrowtriangle_left_square_fill = IconData(0x1000FB);

  /// IconData for SF Symbol arrowtriangle.right
  static const IconData sf_arrowtriangle_right = IconData(0x1004C5);

  /// IconData for SF Symbol arrowtriangle.right.and.line.vertical.and.arrowtriangle.left
  static const IconData
      sf_arrowtriangle_right_and_line_vertical_and_arrowtriangle_left =
      IconData(0x10080A);

  /// IconData for SF Symbol arrowtriangle.right.and.line.vertical.and.arrowtriangle.left.fill
  static const IconData
      sf_arrowtriangle_right_and_line_vertical_and_arrowtriangle_left_fill =
      IconData(0x1007E7);

  /// IconData for SF Symbol arrowtriangle.right.circle
  static const IconData sf_arrowtriangle_right_circle = IconData(0x10006C);

  /// IconData for SF Symbol arrowtriangle.right.circle.fill
  static const IconData sf_arrowtriangle_right_circle_fill = IconData(0x10006D);

  /// IconData for SF Symbol arrowtriangle.right.fill
  static const IconData sf_arrowtriangle_right_fill = IconData(0x100127);

  /// IconData for SF Symbol arrowtriangle.right.square
  static const IconData sf_arrowtriangle_right_square = IconData(0x1000FC);

  /// IconData for SF Symbol arrowtriangle.right.square.fill
  static const IconData sf_arrowtriangle_right_square_fill = IconData(0x1000FD);

  /// IconData for SF Symbol arrowtriangle.up
  static const IconData sf_arrowtriangle_up = IconData(0x1004C2);

  /// IconData for SF Symbol arrowtriangle.up.arrowtriangle.down.window.left
  static const IconData sf_arrowtriangle_up_arrowtriangle_down_window_left =
      IconData(0x10129D);

  /// IconData for SF Symbol arrowtriangle.up.arrowtriangle.down.window.right
  static const IconData sf_arrowtriangle_up_arrowtriangle_down_window_right =
      IconData(0x10125D);

  /// IconData for SF Symbol arrowtriangle.up.circle
  static const IconData sf_arrowtriangle_up_circle = IconData(0x100066);

  /// IconData for SF Symbol arrowtriangle.up.circle.fill
  static const IconData sf_arrowtriangle_up_circle_fill = IconData(0x100067);

  /// IconData for SF Symbol arrowtriangle.up.fill
  static const IconData sf_arrowtriangle_up_fill = IconData(0x100124);

  /// IconData for SF Symbol arrowtriangle.up.square
  static const IconData sf_arrowtriangle_up_square = IconData(0x1000F6);

  /// IconData for SF Symbol arrowtriangle.up.square.fill
  static const IconData sf_arrowtriangle_up_square_fill = IconData(0x1000F7);

  /// IconData for SF Symbol aspectratio
  static const IconData sf_aspectratio = IconData(0x100796);

  /// IconData for SF Symbol aspectratio.fill
  static const IconData sf_aspectratio_fill = IconData(0x10078F);

  /// IconData for SF Symbol asterisk
  static const IconData sf_asterisk = IconData(0x100E13);

  /// IconData for SF Symbol asterisk.circle
  static const IconData sf_asterisk_circle = IconData(0x10056C);

  /// IconData for SF Symbol asterisk.circle.fill
  static const IconData sf_asterisk_circle_fill = IconData(0x10056D);

  /// IconData for SF Symbol at
  static const IconData sf_at = IconData(0x100177);

  /// IconData for SF Symbol at.badge.minus
  static const IconData sf_at_badge_minus = IconData(0x100179);

  /// IconData for SF Symbol at.badge.plus
  static const IconData sf_at_badge_plus = IconData(0x100178);

  /// IconData for SF Symbol at.circle
  static const IconData sf_at_circle = IconData(0x100890);

  /// IconData for SF Symbol at.circle.fill
  static const IconData sf_at_circle_fill = IconData(0x100891);

  /// IconData for SF Symbol atom
  static const IconData sf_atom = IconData(0x100B1A);

  /// IconData for SF Symbol australiandollarsign
  static const IconData sf_australiandollarsign = IconData(0x101F8D);

  /// IconData for SF Symbol australiandollarsign.arrow.circlepath
  static const IconData sf_australiandollarsign_arrow_circlepath =
      IconData(0x102239);

  /// IconData for SF Symbol australiandollarsign.circle
  static const IconData sf_australiandollarsign_circle = IconData(0x100BA0);

  /// IconData for SF Symbol australiandollarsign.circle.fill
  static const IconData sf_australiandollarsign_circle_fill =
      IconData(0x100BA1);

  /// IconData for SF Symbol australiandollarsign.square
  static const IconData sf_australiandollarsign_square = IconData(0x100BA2);

  /// IconData for SF Symbol australiandollarsign.square.fill
  static const IconData sf_australiandollarsign_square_fill =
      IconData(0x100BA3);

  /// IconData for SF Symbol australsign
  static const IconData sf_australsign = IconData(0x101450);

  /// IconData for SF Symbol australsign.arrow.circlepath
  static const IconData sf_australsign_arrow_circlepath = IconData(0x102223);

  /// IconData for SF Symbol australsign.circle
  static const IconData sf_australsign_circle = IconData(0x1005B9);

  /// IconData for SF Symbol australsign.circle.fill
  static const IconData sf_australsign_circle_fill = IconData(0x1005BA);

  /// IconData for SF Symbol australsign.square
  static const IconData sf_australsign_square = IconData(0x1005F9);

  /// IconData for SF Symbol australsign.square.fill
  static const IconData sf_australsign_square_fill = IconData(0x1005FA);

  /// IconData for SF Symbol automatic.brakesignal
  static const IconData sf_automatic_brakesignal = IconData(0x1017C1);

  /// IconData for SF Symbol automatic.headlight.high.beam
  static const IconData sf_automatic_headlight_high_beam = IconData(0x1018A7);

  /// IconData for SF Symbol automatic.headlight.high.beam.fill
  static const IconData sf_automatic_headlight_high_beam_fill =
      IconData(0x1018A8);

  /// IconData for SF Symbol automatic.headlight.low.beam
  static const IconData sf_automatic_headlight_low_beam = IconData(0x1018A9);

  /// IconData for SF Symbol automatic.headlight.low.beam.fill
  static const IconData sf_automatic_headlight_low_beam_fill =
      IconData(0x1018AA);

  /// IconData for SF Symbol autostartstop
  static const IconData sf_autostartstop = IconData(0x101262);

  /// IconData for SF Symbol autostartstop.slash
  static const IconData sf_autostartstop_slash = IconData(0x101263);

  /// IconData for SF Symbol autostartstop.trianglebadge.exclamationmark
  static const IconData sf_autostartstop_trianglebadge_exclamationmark =
      IconData(0x101280);

  /// IconData for SF Symbol av.remote
  static const IconData sf_av_remote = IconData(0x1014FA);

  /// IconData for SF Symbol av.remote.fill
  static const IconData sf_av_remote_fill = IconData(0x1014FB);

  /// IconData for SF Symbol axle.2
  static const IconData sf_axle_2 = IconData(0x10189A);

  /// IconData for SF Symbol axle.2.driveshaft.disengaged
  static const IconData sf_axle_2_driveshaft_disengaged = IconData(0x101824);

  /// IconData for SF Symbol axle.2.front.and.rear.engaged
  static const IconData sf_axle_2_front_and_rear_engaged = IconData(0x101821);

  /// IconData for SF Symbol axle.2.front.disengaged
  static const IconData sf_axle_2_front_disengaged = IconData(0x101822);

  /// IconData for SF Symbol axle.2.front.engaged
  static const IconData sf_axle_2_front_engaged = IconData(0x10181F);

  /// IconData for SF Symbol axle.2.rear.disengaged
  static const IconData sf_axle_2_rear_disengaged = IconData(0x101823);

  /// IconData for SF Symbol axle.2.rear.engaged
  static const IconData sf_axle_2_rear_engaged = IconData(0x101820);

  /// IconData for SF Symbol axle.2.rear.lock
  static const IconData sf_axle_2_rear_lock = IconData(0x101828);

  /// IconData for SF Symbol b.circle
  static const IconData sf_b_circle = IconData(0x100006);

  /// IconData for SF Symbol b.circle.fill
  static const IconData sf_b_circle_fill = IconData(0x100007);

  /// IconData for SF Symbol b.square
  static const IconData sf_b_square = IconData(0x100096);

  /// IconData for SF Symbol b.square.fill
  static const IconData sf_b_square_fill = IconData(0x100097);

  /// IconData for SF Symbol backpack
  static const IconData sf_backpack = IconData(0x1012F9);

  /// IconData for SF Symbol backpack.circle
  static const IconData sf_backpack_circle = IconData(0x10177A);

  /// IconData for SF Symbol backpack.circle.fill
  static const IconData sf_backpack_circle_fill = IconData(0x10177B);

  /// IconData for SF Symbol backpack.fill
  static const IconData sf_backpack_fill = IconData(0x1012FA);

  /// IconData for SF Symbol backward
  static const IconData sf_backward = IconData(0x100289);

  /// IconData for SF Symbol backward.circle
  static const IconData sf_backward_circle = IconData(0x100E83);

  /// IconData for SF Symbol backward.circle.fill
  static const IconData sf_backward_circle_fill = IconData(0x100E84);

  /// IconData for SF Symbol backward.end
  static const IconData sf_backward_end = IconData(0x10028D);

  /// IconData for SF Symbol backward.end.alt
  static const IconData sf_backward_end_alt = IconData(0x100291);

  /// IconData for SF Symbol backward.end.alt.fill
  static const IconData sf_backward_end_alt_fill = IconData(0x100292);

  /// IconData for SF Symbol backward.end.circle
  static const IconData sf_backward_end_circle = IconData(0x1012EE);

  /// IconData for SF Symbol backward.end.circle.fill
  static const IconData sf_backward_end_circle_fill = IconData(0x1012EF);

  /// IconData for SF Symbol backward.end.fill
  static const IconData sf_backward_end_fill = IconData(0x10028E);

  /// IconData for SF Symbol backward.fill
  static const IconData sf_backward_fill = IconData(0x10028A);

  /// IconData for SF Symbol backward.frame
  static const IconData sf_backward_frame = IconData(0x100A68);

  /// IconData for SF Symbol backward.frame.fill
  static const IconData sf_backward_frame_fill = IconData(0x100A69);

  /// IconData for SF Symbol badge.plus.radiowaves.forward
  static const IconData sf_badge_plus_radiowaves_forward = IconData(0x100C2E);

  /// IconData for SF Symbol badge.plus.radiowaves.right
  static const IconData sf_badge_plus_radiowaves_right = IconData(0x1002AA);

  /// IconData for SF Symbol bag
  static const IconData sf_bag = IconData(0x100363);

  /// IconData for SF Symbol bag.badge.minus
  static const IconData sf_bag_badge_minus = IconData(0x100367);

  /// IconData for SF Symbol bag.badge.plus
  static const IconData sf_bag_badge_plus = IconData(0x100365);

  /// IconData for SF Symbol bag.badge.questionmark
  static const IconData sf_bag_badge_questionmark = IconData(0x1016A2);

  /// IconData for SF Symbol bag.circle
  static const IconData sf_bag_circle = IconData(0x1004AB);

  /// IconData for SF Symbol bag.circle.fill
  static const IconData sf_bag_circle_fill = IconData(0x1004AC);

  /// IconData for SF Symbol bag.fill
  static const IconData sf_bag_fill = IconData(0x100364);

  /// IconData for SF Symbol bag.fill.badge.minus
  static const IconData sf_bag_fill_badge_minus = IconData(0x100368);

  /// IconData for SF Symbol bag.fill.badge.plus
  static const IconData sf_bag_fill_badge_plus = IconData(0x100366);

  /// IconData for SF Symbol bag.fill.badge.questionmark
  static const IconData sf_bag_fill_badge_questionmark = IconData(0x1016A3);

  /// IconData for SF Symbol bahtsign
  static const IconData sf_bahtsign = IconData(0x10145C);

  /// IconData for SF Symbol bahtsign.arrow.circlepath
  static const IconData sf_bahtsign_arrow_circlepath = IconData(0x10222F);

  /// IconData for SF Symbol bahtsign.circle
  static const IconData sf_bahtsign_circle = IconData(0x1005D1);

  /// IconData for SF Symbol bahtsign.circle.fill
  static const IconData sf_bahtsign_circle_fill = IconData(0x1005D2);

  /// IconData for SF Symbol bahtsign.square
  static const IconData sf_bahtsign_square = IconData(0x100611);

  /// IconData for SF Symbol bahtsign.square.fill
  static const IconData sf_bahtsign_square_fill = IconData(0x100612);

  /// IconData for SF Symbol balloon
  static const IconData sf_balloon = IconData(0x10150E);

  /// IconData for SF Symbol balloon.2
  static const IconData sf_balloon_2 = IconData(0x1014F7);

  /// IconData for SF Symbol balloon.2.fill
  static const IconData sf_balloon_2_fill = IconData(0x1014F8);

  /// IconData for SF Symbol balloon.fill
  static const IconData sf_balloon_fill = IconData(0x10150F);

  /// IconData for SF Symbol bandage
  static const IconData sf_bandage = IconData(0x100393);

  /// IconData for SF Symbol bandage.fill
  static const IconData sf_bandage_fill = IconData(0x100394);

  /// IconData for SF Symbol banknote
  static const IconData sf_banknote = IconData(0x100B7F);

  /// IconData for SF Symbol banknote.fill
  static const IconData sf_banknote_fill = IconData(0x100B80);

  /// IconData for SF Symbol barcode
  static const IconData sf_barcode = IconData(0x100631);

  /// IconData for SF Symbol barcode.viewfinder
  static const IconData sf_barcode_viewfinder = IconData(0x1003BA);

  /// IconData for SF Symbol barometer
  static const IconData sf_barometer = IconData(0x100B27);

  /// IconData for SF Symbol baseball
  static const IconData sf_baseball = IconData(0x100875);

  /// IconData for SF Symbol baseball.circle
  static const IconData sf_baseball_circle = IconData(0x1016BB);

  /// IconData for SF Symbol baseball.circle.fill
  static const IconData sf_baseball_circle_fill = IconData(0x1016BC);

  /// IconData for SF Symbol baseball.diamond.bases
  static const IconData sf_baseball_diamond_bases = IconData(0x101460);

  /// IconData for SF Symbol baseball.fill
  static const IconData sf_baseball_fill = IconData(0x100876);

  /// IconData for SF Symbol basket
  static const IconData sf_basket = IconData(0x10158A);

  /// IconData for SF Symbol basket.fill
  static const IconData sf_basket_fill = IconData(0x10158B);

  /// IconData for SF Symbol basketball
  static const IconData sf_basketball = IconData(0x1015C9);

  /// IconData for SF Symbol basketball.circle
  static const IconData sf_basketball_circle = IconData(0x1016BD);

  /// IconData for SF Symbol basketball.circle.fill
  static const IconData sf_basketball_circle_fill = IconData(0x1016BE);

  /// IconData for SF Symbol basketball.fill
  static const IconData sf_basketball_fill = IconData(0x1015CA);

  /// IconData for SF Symbol bathtub
  static const IconData sf_bathtub = IconData(0x10143C);

  /// IconData for SF Symbol bathtub.fill
  static const IconData sf_bathtub_fill = IconData(0x10143D);

  /// IconData for SF Symbol battery.0percent
  static const IconData sf_battery_0percent = IconData(0x1006EA);

  /// IconData for SF Symbol battery.25percent
  static const IconData sf_battery_25percent = IconData(0x1006E9);

  /// IconData for SF Symbol battery.50percent
  static const IconData sf_battery_50percent = IconData(0x100EB6);

  /// IconData for SF Symbol battery.75percent
  static const IconData sf_battery_75percent = IconData(0x100EB8);

  /// IconData for SF Symbol battery.100percent
  static const IconData sf_battery_100percent = IconData(0x1006E8);

  /// IconData for SF Symbol battery.100percent.bolt
  static const IconData sf_battery_100percent_bolt = IconData(0x10088B);

  /// IconData for SF Symbol battery.100percent.circle
  static const IconData sf_battery_100percent_circle = IconData(0x101054);

  /// IconData for SF Symbol battery.100percent.circle.fill
  static const IconData sf_battery_100percent_circle_fill = IconData(0x101055);

  /// IconData for SF Symbol batteryblock
  static const IconData sf_batteryblock = IconData(0x101837);

  /// IconData for SF Symbol batteryblock.fill
  static const IconData sf_batteryblock_fill = IconData(0x101838);

  /// IconData for SF Symbol batteryblock.slash
  static const IconData sf_batteryblock_slash = IconData(0x101835);

  /// IconData for SF Symbol batteryblock.slash.fill
  static const IconData sf_batteryblock_slash_fill = IconData(0x101836);

  /// IconData for SF Symbol beach.umbrella
  static const IconData sf_beach_umbrella = IconData(0x1012F8);

  /// IconData for SF Symbol beach.umbrella.fill
  static const IconData sf_beach_umbrella_fill = IconData(0x1012FB);

  /// IconData for SF Symbol beats.earphones
  static const IconData sf_beats_earphones = IconData(0x100E92);

  /// IconData for SF Symbol beats.fitpro
  static const IconData sf_beats_fitpro = IconData(0x10115E);

  /// IconData for SF Symbol beats.fitpro.chargingcase
  static const IconData sf_beats_fitpro_chargingcase = IconData(0x101161);

  /// IconData for SF Symbol beats.fitpro.chargingcase.fill
  static const IconData sf_beats_fitpro_chargingcase_fill = IconData(0x101162);

  /// IconData for SF Symbol beats.fitpro.left
  static const IconData sf_beats_fitpro_left = IconData(0x10115F);

  /// IconData for SF Symbol beats.fitpro.right
  static const IconData sf_beats_fitpro_right = IconData(0x101160);

  /// IconData for SF Symbol beats.headphones
  static const IconData sf_beats_headphones = IconData(0x100EAD);

  /// IconData for SF Symbol beats.powerbeats
  static const IconData sf_beats_powerbeats = IconData(0x100ED4);

  /// IconData for SF Symbol beats.powerbeats.left
  static const IconData sf_beats_powerbeats_left = IconData(0x101C3C);

  /// IconData for SF Symbol beats.powerbeats.right
  static const IconData sf_beats_powerbeats_right = IconData(0x100ED5);

  /// IconData for SF Symbol beats.powerbeats3
  static const IconData sf_beats_powerbeats3 = IconData(0x100EAF);

  /// IconData for SF Symbol beats.powerbeats3.left
  static const IconData sf_beats_powerbeats3_left = IconData(0x101C3E);

  /// IconData for SF Symbol beats.powerbeats3.right
  static const IconData sf_beats_powerbeats3_right = IconData(0x101C3D);

  /// IconData for SF Symbol beats.powerbeatspro
  static const IconData sf_beats_powerbeatspro = IconData(0x100E6D);

  /// IconData for SF Symbol beats.powerbeatspro.chargingcase
  static const IconData sf_beats_powerbeatspro_chargingcase =
      IconData(0x100E70);

  /// IconData for SF Symbol beats.powerbeatspro.chargingcase.fill
  static const IconData sf_beats_powerbeatspro_chargingcase_fill =
      IconData(0x100E71);

  /// IconData for SF Symbol beats.powerbeatspro.left
  static const IconData sf_beats_powerbeatspro_left = IconData(0x100E6F);

  /// IconData for SF Symbol beats.powerbeatspro.right
  static const IconData sf_beats_powerbeatspro_right = IconData(0x100E6E);

  /// IconData for SF Symbol beats.studiobud.left
  static const IconData sf_beats_studiobud_left = IconData(0x100FA3);

  /// IconData for SF Symbol beats.studiobud.right
  static const IconData sf_beats_studiobud_right = IconData(0x100FA4);

  /// IconData for SF Symbol beats.studiobuds
  static const IconData sf_beats_studiobuds = IconData(0x100FA2);

  /// IconData for SF Symbol beats.studiobuds.chargingcase
  static const IconData sf_beats_studiobuds_chargingcase = IconData(0x100FA5);

  /// IconData for SF Symbol beats.studiobuds.chargingcase.fill
  static const IconData sf_beats_studiobuds_chargingcase_fill =
      IconData(0x100FA6);

  /// IconData for SF Symbol beats.studiobudsplus
  static const IconData sf_beats_studiobudsplus = IconData(0x101E73);

  /// IconData for SF Symbol beats.studiobudsplus.chargingcase
  static const IconData sf_beats_studiobudsplus_chargingcase =
      IconData(0x101E76);

  /// IconData for SF Symbol beats.studiobudsplus.chargingcase.fill
  static const IconData sf_beats_studiobudsplus_chargingcase_fill =
      IconData(0x101E77);

  /// IconData for SF Symbol beats.studiobudsplus.left
  static const IconData sf_beats_studiobudsplus_left = IconData(0x101E74);

  /// IconData for SF Symbol beats.studiobudsplus.right
  static const IconData sf_beats_studiobudsplus_right = IconData(0x101E75);

  /// IconData for SF Symbol bed.double
  static const IconData sf_bed_double = IconData(0x100669);

  /// IconData for SF Symbol bed.double.circle
  static const IconData sf_bed_double_circle = IconData(0x10104F);

  /// IconData for SF Symbol bed.double.circle.fill
  static const IconData sf_bed_double_circle_fill = IconData(0x101050);

  /// IconData for SF Symbol bed.double.fill
  static const IconData sf_bed_double_fill = IconData(0x10066A);

  /// IconData for SF Symbol bell
  static const IconData sf_bell = IconData(0x1002D9);

  /// IconData for SF Symbol bell.and.waves.left.and.right
  static const IconData sf_bell_and_waves_left_and_right = IconData(0x101124);

  /// IconData for SF Symbol bell.and.waves.left.and.right.fill
  static const IconData sf_bell_and_waves_left_and_right_fill =
      IconData(0x101120);

  /// IconData for SF Symbol bell.badge
  static const IconData sf_bell_badge = IconData(0x100756);

  /// IconData for SF Symbol bell.badge.circle
  static const IconData sf_bell_badge_circle = IconData(0x100C37);

  /// IconData for SF Symbol bell.badge.circle.fill
  static const IconData sf_bell_badge_circle_fill = IconData(0x100C38);

  /// IconData for SF Symbol bell.badge.fill
  static const IconData sf_bell_badge_fill = IconData(0x100757);

  /// IconData for SF Symbol bell.badge.slash
  static const IconData sf_bell_badge_slash = IconData(0x102131);

  /// IconData for SF Symbol bell.badge.slash.fill
  static const IconData sf_bell_badge_slash_fill = IconData(0x102132);

  /// IconData for SF Symbol bell.badge.waveform
  static const IconData sf_bell_badge_waveform = IconData(0x100EFF);

  /// IconData for SF Symbol bell.badge.waveform.fill
  static const IconData sf_bell_badge_waveform_fill = IconData(0x100F00);

  /// IconData for SF Symbol bell.circle
  static const IconData sf_bell_circle = IconData(0x1002DB);

  /// IconData for SF Symbol bell.circle.fill
  static const IconData sf_bell_circle_fill = IconData(0x1002DC);

  /// IconData for SF Symbol bell.fill
  static const IconData sf_bell_fill = IconData(0x1002DA);

  /// IconData for SF Symbol bell.slash
  static const IconData sf_bell_slash = IconData(0x1002DD);

  /// IconData for SF Symbol bell.slash.circle
  static const IconData sf_bell_slash_circle = IconData(0x1002DF);

  /// IconData for SF Symbol bell.slash.circle.fill
  static const IconData sf_bell_slash_circle_fill = IconData(0x1002E0);

  /// IconData for SF Symbol bell.slash.fill
  static const IconData sf_bell_slash_fill = IconData(0x1002DE);

  /// IconData for SF Symbol bell.square
  static const IconData sf_bell_square = IconData(0x100F37);

  /// IconData for SF Symbol bell.square.fill
  static const IconData sf_bell_square_fill = IconData(0x100F38);

  /// IconData for SF Symbol bicycle
  static const IconData sf_bicycle = IconData(0x100865);

  /// IconData for SF Symbol bicycle.circle
  static const IconData sf_bicycle_circle = IconData(0x100C6C);

  /// IconData for SF Symbol bicycle.circle.fill
  static const IconData sf_bicycle_circle_fill = IconData(0x100C6D);

  /// IconData for SF Symbol binoculars
  static const IconData sf_binoculars = IconData(0x10080D);

  /// IconData for SF Symbol binoculars.circle
  static const IconData sf_binoculars_circle = IconData(0x1018D9);

  /// IconData for SF Symbol binoculars.circle.fill
  static const IconData sf_binoculars_circle_fill = IconData(0x1018DA);

  /// IconData for SF Symbol binoculars.fill
  static const IconData sf_binoculars_fill = IconData(0x10080E);

  /// IconData for SF Symbol bird
  static const IconData sf_bird = IconData(0x1015DF);

  /// IconData for SF Symbol bird.circle
  static const IconData sf_bird_circle = IconData(0x101F19);

  /// IconData for SF Symbol bird.circle.fill
  static const IconData sf_bird_circle_fill = IconData(0x101F1A);

  /// IconData for SF Symbol bird.fill
  static const IconData sf_bird_fill = IconData(0x1015E0);

  /// IconData for SF Symbol birthday.cake
  static const IconData sf_birthday_cake = IconData(0x1015A9);

  /// IconData for SF Symbol birthday.cake.fill
  static const IconData sf_birthday_cake_fill = IconData(0x1015AA);

  /// IconData for SF Symbol bitcoinsign
  static const IconData sf_bitcoinsign = IconData(0x10145E);

  /// IconData for SF Symbol bitcoinsign.arrow.circlepath
  static const IconData sf_bitcoinsign_arrow_circlepath = IconData(0x102231);

  /// IconData for SF Symbol bitcoinsign.circle
  static const IconData sf_bitcoinsign_circle = IconData(0x1005D5);

  /// IconData for SF Symbol bitcoinsign.circle.fill
  static const IconData sf_bitcoinsign_circle_fill = IconData(0x1005D6);

  /// IconData for SF Symbol bitcoinsign.square
  static const IconData sf_bitcoinsign_square = IconData(0x100615);

  /// IconData for SF Symbol bitcoinsign.square.fill
  static const IconData sf_bitcoinsign_square_fill = IconData(0x100616);

  /// IconData for SF Symbol blinds.horizontal.closed
  static const IconData sf_blinds_horizontal_closed = IconData(0x101476);

  /// IconData for SF Symbol blinds.horizontal.open
  static const IconData sf_blinds_horizontal_open = IconData(0x101475);

  /// IconData for SF Symbol blinds.vertical.closed
  static const IconData sf_blinds_vertical_closed = IconData(0x101474);

  /// IconData for SF Symbol blinds.vertical.open
  static const IconData sf_blinds_vertical_open = IconData(0x101473);

  /// IconData for SF Symbol bold
  static const IconData sf_bold = IconData(0x100153);

  /// IconData for SF Symbol bold.italic.underline
  static const IconData sf_bold_italic_underline = IconData(0x100157);

  /// IconData for SF Symbol bold.underline
  static const IconData sf_bold_underline = IconData(0x100158);

  /// IconData for SF Symbol bolt
  static const IconData sf_bolt = IconData(0x1002E5);

  /// IconData for SF Symbol bolt.badge.automatic
  static const IconData sf_bolt_badge_automatic = IconData(0x100633);

  /// IconData for SF Symbol bolt.badge.automatic.fill
  static const IconData sf_bolt_badge_automatic_fill = IconData(0x100634);

  /// IconData for SF Symbol bolt.badge.checkmark
  static const IconData sf_bolt_badge_checkmark = IconData(0x101E0F);

  /// IconData for SF Symbol bolt.badge.checkmark.fill
  static const IconData sf_bolt_badge_checkmark_fill = IconData(0x101E11);

  /// IconData for SF Symbol bolt.badge.clock
  static const IconData sf_bolt_badge_clock = IconData(0x101413);

  /// IconData for SF Symbol bolt.badge.clock.fill
  static const IconData sf_bolt_badge_clock_fill = IconData(0x101414);

  /// IconData for SF Symbol bolt.badge.xmark
  static const IconData sf_bolt_badge_xmark = IconData(0x101E13);

  /// IconData for SF Symbol bolt.badge.xmark.fill
  static const IconData sf_bolt_badge_xmark_fill = IconData(0x101E15);

  /// IconData for SF Symbol bolt.batteryblock
  static const IconData sf_bolt_batteryblock = IconData(0x100AEE);

  /// IconData for SF Symbol bolt.batteryblock.fill
  static const IconData sf_bolt_batteryblock_fill = IconData(0x100AEF);

  /// IconData for SF Symbol bolt.brakesignal
  static const IconData sf_bolt_brakesignal = IconData(0x101289);

  /// IconData for SF Symbol bolt.car
  static const IconData sf_bolt_car = IconData(0x10085E);

  /// IconData for SF Symbol bolt.car.circle
  static const IconData sf_bolt_car_circle = IconData(0x101132);

  /// IconData for SF Symbol bolt.car.circle.fill
  static const IconData sf_bolt_car_circle_fill = IconData(0x101133);

  /// IconData for SF Symbol bolt.car.fill
  static const IconData sf_bolt_car_fill = IconData(0x100743);

  /// IconData for SF Symbol bolt.circle
  static const IconData sf_bolt_circle = IconData(0x1002E7);

  /// IconData for SF Symbol bolt.circle.fill
  static const IconData sf_bolt_circle_fill = IconData(0x1002E8);

  /// IconData for SF Symbol bolt.fill
  static const IconData sf_bolt_fill = IconData(0x1002E6);

  /// IconData for SF Symbol bolt.heart
  static const IconData sf_bolt_heart = IconData(0x1007BD);

  /// IconData for SF Symbol bolt.heart.fill
  static const IconData sf_bolt_heart_fill = IconData(0x1006E5);

  /// IconData for SF Symbol bolt.horizontal
  static const IconData sf_bolt_horizontal = IconData(0x100497);

  /// IconData for SF Symbol bolt.horizontal.circle
  static const IconData sf_bolt_horizontal_circle = IconData(0x100499);

  /// IconData for SF Symbol bolt.horizontal.circle.fill
  static const IconData sf_bolt_horizontal_circle_fill = IconData(0x10049A);

  /// IconData for SF Symbol bolt.horizontal.fill
  static const IconData sf_bolt_horizontal_fill = IconData(0x100498);

  /// IconData for SF Symbol bolt.horizontal.icloud
  static const IconData sf_bolt_horizontal_icloud = IconData(0x10063F);

  /// IconData for SF Symbol bolt.horizontal.icloud.fill
  static const IconData sf_bolt_horizontal_icloud_fill = IconData(0x100640);

  /// IconData for SF Symbol bolt.ring.closed
  static const IconData sf_bolt_ring_closed = IconData(0x101258);

  /// IconData for SF Symbol bolt.shield
  static const IconData sf_bolt_shield = IconData(0x1010D7);

  /// IconData for SF Symbol bolt.shield.fill
  static const IconData sf_bolt_shield_fill = IconData(0x1010D8);

  /// IconData for SF Symbol bolt.slash
  static const IconData sf_bolt_slash = IconData(0x1002E9);

  /// IconData for SF Symbol bolt.slash.circle
  static const IconData sf_bolt_slash_circle = IconData(0x1002EB);

  /// IconData for SF Symbol bolt.slash.circle.fill
  static const IconData sf_bolt_slash_circle_fill = IconData(0x1002EC);

  /// IconData for SF Symbol bolt.slash.fill
  static const IconData sf_bolt_slash_fill = IconData(0x1002EA);

  /// IconData for SF Symbol bolt.square
  static const IconData sf_bolt_square = IconData(0x100F35);

  /// IconData for SF Symbol bolt.square.fill
  static const IconData sf_bolt_square_fill = IconData(0x100F36);

  /// IconData for SF Symbol bolt.trianglebadge.exclamationmark
  static const IconData sf_bolt_trianglebadge_exclamationmark =
      IconData(0x101771);

  /// IconData for SF Symbol bolt.trianglebadge.exclamationmark.fill
  static const IconData sf_bolt_trianglebadge_exclamationmark_fill =
      IconData(0x101772);

  /// IconData for SF Symbol bonjour
  static const IconData sf_bonjour = IconData(0x100960);

  /// IconData for SF Symbol book
  static const IconData sf_book = IconData(0x10025A);

  /// IconData for SF Symbol book.and.wrench
  static const IconData sf_book_and_wrench = IconData(0x10197D);

  /// IconData for SF Symbol book.and.wrench.fill
  static const IconData sf_book_and_wrench_fill = IconData(0x101C38);

  /// IconData for SF Symbol book.circle
  static const IconData sf_book_circle = IconData(0x10025C);

  /// IconData for SF Symbol book.circle.fill
  static const IconData sf_book_circle_fill = IconData(0x10025D);

  /// IconData for SF Symbol book.closed
  static const IconData sf_book_closed = IconData(0x10091E);

  /// IconData for SF Symbol book.closed.circle
  static const IconData sf_book_closed_circle = IconData(0x1011E3);

  /// IconData for SF Symbol book.closed.circle.fill
  static const IconData sf_book_closed_circle_fill = IconData(0x1011E4);

  /// IconData for SF Symbol book.closed.fill
  static const IconData sf_book_closed_fill = IconData(0x10091F);

  /// IconData for SF Symbol book.fill
  static const IconData sf_book_fill = IconData(0x10025B);

  /// IconData for SF Symbol book.pages
  static const IconData sf_book_pages = IconData(0x10173E);

  /// IconData for SF Symbol book.pages.fill
  static const IconData sf_book_pages_fill = IconData(0x10173F);

  /// IconData for SF Symbol bookmark
  static const IconData sf_bookmark = IconData(0x10025E);

  /// IconData for SF Symbol bookmark.circle
  static const IconData sf_bookmark_circle = IconData(0x100260);

  /// IconData for SF Symbol bookmark.circle.fill
  static const IconData sf_bookmark_circle_fill = IconData(0x100261);

  /// IconData for SF Symbol bookmark.fill
  static const IconData sf_bookmark_fill = IconData(0x10025F);

  /// IconData for SF Symbol bookmark.slash
  static const IconData sf_bookmark_slash = IconData(0x1007CD);

  /// IconData for SF Symbol bookmark.slash.fill
  static const IconData sf_bookmark_slash_fill = IconData(0x1007CE);

  /// IconData for SF Symbol bookmark.square
  static const IconData sf_bookmark_square = IconData(0x100F39);

  /// IconData for SF Symbol bookmark.square.fill
  static const IconData sf_bookmark_square_fill = IconData(0x100F3A);

  /// IconData for SF Symbol books.vertical
  static const IconData sf_books_vertical = IconData(0x100B12);

  /// IconData for SF Symbol books.vertical.circle
  static const IconData sf_books_vertical_circle = IconData(0x1011BC);

  /// IconData for SF Symbol books.vertical.circle.fill
  static const IconData sf_books_vertical_circle_fill = IconData(0x1011BD);

  /// IconData for SF Symbol books.vertical.fill
  static const IconData sf_books_vertical_fill = IconData(0x100B13);

  /// IconData for SF Symbol brain
  static const IconData sf_brain = IconData(0x100BD0);

  /// IconData for SF Symbol brain.fill
  static const IconData sf_brain_fill = IconData(0x102087);

  /// IconData for SF Symbol brain.filled.head.profile
  static const IconData sf_brain_filled_head_profile = IconData(0x1020C8);

  /// IconData for SF Symbol brain.head.profile
  static const IconData sf_brain_head_profile = IconData(0x100BCF);

  /// IconData for SF Symbol brain.head.profile.fill
  static const IconData sf_brain_head_profile_fill = IconData(0x102086);

  /// IconData for SF Symbol brakesignal
  static const IconData sf_brakesignal = IconData(0x100FBE);

  /// IconData for SF Symbol brakesignal.dashed
  static const IconData sf_brakesignal_dashed = IconData(0x101037);

  /// IconData for SF Symbol brazilianrealsign
  static const IconData sf_brazilianrealsign = IconData(0x10145F);

  /// IconData for SF Symbol brazilianrealsign.arrow.circlepath
  static const IconData sf_brazilianrealsign_arrow_circlepath =
      IconData(0x102232);

  /// IconData for SF Symbol brazilianrealsign.circle
  static const IconData sf_brazilianrealsign_circle = IconData(0x100BB0);

  /// IconData for SF Symbol brazilianrealsign.circle.fill
  static const IconData sf_brazilianrealsign_circle_fill = IconData(0x100BB1);

  /// IconData for SF Symbol brazilianrealsign.square
  static const IconData sf_brazilianrealsign_square = IconData(0x100BB2);

  /// IconData for SF Symbol brazilianrealsign.square.fill
  static const IconData sf_brazilianrealsign_square_fill = IconData(0x100BB3);

  /// IconData for SF Symbol briefcase
  static const IconData sf_briefcase = IconData(0x10039C);

  /// IconData for SF Symbol briefcase.circle
  static const IconData sf_briefcase_circle = IconData(0x100DE1);

  /// IconData for SF Symbol briefcase.circle.fill
  static const IconData sf_briefcase_circle_fill = IconData(0x100DE2);

  /// IconData for SF Symbol briefcase.fill
  static const IconData sf_briefcase_fill = IconData(0x10039D);

  /// IconData for SF Symbol bubble
  static const IconData sf_bubble = IconData(0x102139);

  /// IconData for SF Symbol bubble.circle
  static const IconData sf_bubble_circle = IconData(0x10213B);

  /// IconData for SF Symbol bubble.circle.fill
  static const IconData sf_bubble_circle_fill = IconData(0x10213C);

  /// IconData for SF Symbol bubble.fill
  static const IconData sf_bubble_fill = IconData(0x10213A);

  /// IconData for SF Symbol bubble.left
  static const IconData sf_bubble_left = IconData(0x10032A);

  /// IconData for SF Symbol bubble.left.and.bubble.right
  static const IconData sf_bubble_left_and_bubble_right = IconData(0x1004A4);

  /// IconData for SF Symbol bubble.left.and.bubble.right.fill
  static const IconData sf_bubble_left_and_bubble_right_fill =
      IconData(0x100632);

  /// IconData for SF Symbol bubble.left.and.exclamationmark.bubble.right
  static const IconData sf_bubble_left_and_exclamationmark_bubble_right =
      IconData(0x1010D2);

  /// IconData for SF Symbol bubble.left.and.exclamationmark.bubble.right.fill
  static const IconData sf_bubble_left_and_exclamationmark_bubble_right_fill =
      IconData(0x1010D3);

  /// IconData for SF Symbol bubble.left.and.text.bubble.right
  static const IconData sf_bubble_left_and_text_bubble_right =
      IconData(0x1020E7);

  /// IconData for SF Symbol bubble.left.and.text.bubble.right.fill
  static const IconData sf_bubble_left_and_text_bubble_right_fill =
      IconData(0x1020E8);

  /// IconData for SF Symbol bubble.left.circle
  static const IconData sf_bubble_left_circle = IconData(0x1011D0);

  /// IconData for SF Symbol bubble.left.circle.fill
  static const IconData sf_bubble_left_circle_fill = IconData(0x1011D1);

  /// IconData for SF Symbol bubble.left.fill
  static const IconData sf_bubble_left_fill = IconData(0x10032B);

  /// IconData for SF Symbol bubble.middle.bottom
  static const IconData sf_bubble_middle_bottom = IconData(0x100338);

  /// IconData for SF Symbol bubble.middle.bottom.fill
  static const IconData sf_bubble_middle_bottom_fill = IconData(0x100339);

  /// IconData for SF Symbol bubble.middle.top
  static const IconData sf_bubble_middle_top = IconData(0x10033C);

  /// IconData for SF Symbol bubble.middle.top.fill
  static const IconData sf_bubble_middle_top_fill = IconData(0x10033D);

  /// IconData for SF Symbol bubble.right
  static const IconData sf_bubble_right = IconData(0x100328);

  /// IconData for SF Symbol bubble.right.circle
  static const IconData sf_bubble_right_circle = IconData(0x1011CE);

  /// IconData for SF Symbol bubble.right.circle.fill
  static const IconData sf_bubble_right_circle_fill = IconData(0x1011CF);

  /// IconData for SF Symbol bubble.right.fill
  static const IconData sf_bubble_right_fill = IconData(0x100329);

  /// IconData for SF Symbol bubbles.and.sparkles
  static const IconData sf_bubbles_and_sparkles = IconData(0x101489);

  /// IconData for SF Symbol bubbles.and.sparkles.fill
  static const IconData sf_bubbles_and_sparkles_fill = IconData(0x10148A);

  /// IconData for SF Symbol building
  static const IconData sf_building = IconData(0x100B85);

  /// IconData for SF Symbol building.2
  static const IconData sf_building_2 = IconData(0x100752);

  /// IconData for SF Symbol building.2.crop.circle
  static const IconData sf_building_2_crop_circle = IconData(0x100754);

  /// IconData for SF Symbol building.2.crop.circle.fill
  static const IconData sf_building_2_crop_circle_fill = IconData(0x100755);

  /// IconData for SF Symbol building.2.fill
  static const IconData sf_building_2_fill = IconData(0x100753);

  /// IconData for SF Symbol building.columns
  static const IconData sf_building_columns = IconData(0x100928);

  /// IconData for SF Symbol building.columns.circle
  static const IconData sf_building_columns_circle = IconData(0x1011C6);

  /// IconData for SF Symbol building.columns.circle.fill
  static const IconData sf_building_columns_circle_fill = IconData(0x1011C7);

  /// IconData for SF Symbol building.columns.fill
  static const IconData sf_building_columns_fill = IconData(0x100929);

  /// IconData for SF Symbol building.fill
  static const IconData sf_building_fill = IconData(0x100B86);

  /// IconData for SF Symbol burn
  static const IconData sf_burn = IconData(0x1004DC);

  /// IconData for SF Symbol burst
  static const IconData sf_burst = IconData(0x100442);

  /// IconData for SF Symbol burst.fill
  static const IconData sf_burst_fill = IconData(0x10061E);

  /// IconData for SF Symbol bus
  static const IconData sf_bus = IconData(0x100748);

  /// IconData for SF Symbol bus.doubledecker
  static const IconData sf_bus_doubledecker = IconData(0x10071B);

  /// IconData for SF Symbol bus.doubledecker.fill
  static const IconData sf_bus_doubledecker_fill = IconData(0x10071C);

  /// IconData for SF Symbol bus.fill
  static const IconData sf_bus_fill = IconData(0x100749);

  /// IconData for SF Symbol button.angledbottom.horizontal.left
  static const IconData sf_button_angledbottom_horizontal_left =
      IconData(0x101E05);

  /// IconData for SF Symbol button.angledbottom.horizontal.left.fill
  static const IconData sf_button_angledbottom_horizontal_left_fill =
      IconData(0x101E06);

  /// IconData for SF Symbol button.angledbottom.horizontal.right
  static const IconData sf_button_angledbottom_horizontal_right =
      IconData(0x101E03);

  /// IconData for SF Symbol button.angledbottom.horizontal.right.fill
  static const IconData sf_button_angledbottom_horizontal_right_fill =
      IconData(0x101E04);

  /// IconData for SF Symbol button.angledtop.vertical.left
  static const IconData sf_button_angledtop_vertical_left = IconData(0x101DEF);

  /// IconData for SF Symbol button.angledtop.vertical.left.fill
  static const IconData sf_button_angledtop_vertical_left_fill =
      IconData(0x101DF0);

  /// IconData for SF Symbol button.angledtop.vertical.right
  static const IconData sf_button_angledtop_vertical_right = IconData(0x101DF1);

  /// IconData for SF Symbol button.angledtop.vertical.right.fill
  static const IconData sf_button_angledtop_vertical_right_fill =
      IconData(0x101DF2);

  /// IconData for SF Symbol button.horizontal
  static const IconData sf_button_horizontal = IconData(0x101E1E);

  /// IconData for SF Symbol button.horizontal.fill
  static const IconData sf_button_horizontal_fill = IconData(0x101E1F);

  /// IconData for SF Symbol button.horizontal.top.press
  static const IconData sf_button_horizontal_top_press = IconData(0x10206B);

  /// IconData for SF Symbol button.horizontal.top.press.fill
  static const IconData sf_button_horizontal_top_press_fill =
      IconData(0x10206C);

  /// IconData for SF Symbol button.programmable
  static const IconData sf_button_programmable = IconData(0x1013F0);

  /// IconData for SF Symbol button.programmable.square
  static const IconData sf_button_programmable_square = IconData(0x1013E4);

  /// IconData for SF Symbol button.programmable.square.fill
  static const IconData sf_button_programmable_square_fill = IconData(0x1013E5);

  /// IconData for SF Symbol button.roundedbottom.horizontal
  static const IconData sf_button_roundedbottom_horizontal = IconData(0x100A7A);

  /// IconData for SF Symbol button.roundedbottom.horizontal.fill
  static const IconData sf_button_roundedbottom_horizontal_fill =
      IconData(0x100A7B);

  /// IconData for SF Symbol button.roundedtop.horizontal
  static const IconData sf_button_roundedtop_horizontal = IconData(0x100A78);

  /// IconData for SF Symbol button.roundedtop.horizontal.fill
  static const IconData sf_button_roundedtop_horizontal_fill =
      IconData(0x100A79);

  /// IconData for SF Symbol button.vertical.left.press
  static const IconData sf_button_vertical_left_press = IconData(0x102089);

  /// IconData for SF Symbol button.vertical.left.press.fill
  static const IconData sf_button_vertical_left_press_fill = IconData(0x10208A);

  /// IconData for SF Symbol button.vertical.right.press
  static const IconData sf_button_vertical_right_press = IconData(0x102069);

  /// IconData for SF Symbol button.vertical.right.press.fill
  static const IconData sf_button_vertical_right_press_fill =
      IconData(0x10206A);

  /// IconData for SF Symbol c.circle
  static const IconData sf_c_circle = IconData(0x100008);

  /// IconData for SF Symbol c.circle.fill
  static const IconData sf_c_circle_fill = IconData(0x100009);

  /// IconData for SF Symbol c.square
  static const IconData sf_c_square = IconData(0x100098);

  /// IconData for SF Symbol c.square.fill
  static const IconData sf_c_square_fill = IconData(0x100099);

  /// IconData for SF Symbol cabinet
  static const IconData sf_cabinet = IconData(0x10142E);

  /// IconData for SF Symbol cabinet.fill
  static const IconData sf_cabinet_fill = IconData(0x10142F);

  /// IconData for SF Symbol cable.coaxial
  static const IconData sf_cable_coaxial = IconData(0x101292);

  /// IconData for SF Symbol cable.connector
  static const IconData sf_cable_connector = IconData(0x100EA6);

  /// IconData for SF Symbol cable.connector.horizontal
  static const IconData sf_cable_connector_horizontal = IconData(0x100D1E);

  /// IconData for SF Symbol cable.connector.slash
  static const IconData sf_cable_connector_slash = IconData(0x1021E5);

  /// IconData for SF Symbol cablecar
  static const IconData sf_cablecar = IconData(0x100DF6);

  /// IconData for SF Symbol cablecar.fill
  static const IconData sf_cablecar_fill = IconData(0x100DF7);

  /// IconData for SF Symbol calendar
  static const IconData sf_calendar = IconData(0x100249);

  /// IconData for SF Symbol calendar.badge.checkmark
  static const IconData sf_calendar_badge_checkmark = IconData(0x101EE7);

  /// IconData for SF Symbol calendar.badge.clock
  static const IconData sf_calendar_badge_clock = IconData(0x1009DE);

  /// IconData for SF Symbol calendar.badge.exclamationmark
  static const IconData sf_calendar_badge_exclamationmark = IconData(0x100B9D);

  /// IconData for SF Symbol calendar.badge.minus
  static const IconData sf_calendar_badge_minus = IconData(0x10024B);

  /// IconData for SF Symbol calendar.badge.plus
  static const IconData sf_calendar_badge_plus = IconData(0x10024A);

  /// IconData for SF Symbol calendar.circle
  static const IconData sf_calendar_circle = IconData(0x10048E);

  /// IconData for SF Symbol calendar.circle.fill
  static const IconData sf_calendar_circle_fill = IconData(0x10048F);

  /// IconData for SF Symbol calendar.day.timeline.leading
  static const IconData sf_calendar_day_timeline_leading = IconData(0x101043);

  /// IconData for SF Symbol calendar.day.timeline.left
  static const IconData sf_calendar_day_timeline_left = IconData(0x100EE4);

  /// IconData for SF Symbol calendar.day.timeline.right
  static const IconData sf_calendar_day_timeline_right = IconData(0x100EE3);

  /// IconData for SF Symbol calendar.day.timeline.trailing
  static const IconData sf_calendar_day_timeline_trailing = IconData(0x101042);

  /// IconData for SF Symbol camera
  static const IconData sf_camera = IconData(0x10031E);

  /// IconData for SF Symbol camera.aperture
  static const IconData sf_camera_aperture = IconData(0x100A3A);

  /// IconData for SF Symbol camera.badge.clock
  static const IconData sf_camera_badge_clock = IconData(0x101925);

  /// IconData for SF Symbol camera.badge.clock.fill
  static const IconData sf_camera_badge_clock_fill = IconData(0x101926);

  /// IconData for SF Symbol camera.badge.ellipsis
  static const IconData sf_camera_badge_ellipsis = IconData(0x100897);

  /// IconData for SF Symbol camera.badge.ellipsis.fill
  static const IconData sf_camera_badge_ellipsis_fill = IconData(0x100898);

  /// IconData for SF Symbol camera.circle
  static const IconData sf_camera_circle = IconData(0x100320);

  /// IconData for SF Symbol camera.circle.fill
  static const IconData sf_camera_circle_fill = IconData(0x100321);

  /// IconData for SF Symbol camera.fill
  static const IconData sf_camera_fill = IconData(0x10031F);

  /// IconData for SF Symbol camera.filters
  static const IconData sf_camera_filters = IconData(0x1007D7);

  /// IconData for SF Symbol camera.macro
  static const IconData sf_camera_macro = IconData(0x101082);

  /// IconData for SF Symbol camera.macro.circle
  static const IconData sf_camera_macro_circle = IconData(0x101083);

  /// IconData for SF Symbol camera.macro.circle.fill
  static const IconData sf_camera_macro_circle_fill = IconData(0x101084);

  /// IconData for SF Symbol camera.metering.center.weighted
  static const IconData sf_camera_metering_center_weighted = IconData(0x1008AA);

  /// IconData for SF Symbol camera.metering.center.weighted.average
  static const IconData sf_camera_metering_center_weighted_average =
      IconData(0x1007B2);

  /// IconData for SF Symbol camera.metering.matrix
  static const IconData sf_camera_metering_matrix = IconData(0x1008AB);

  /// IconData for SF Symbol camera.metering.multispot
  static const IconData sf_camera_metering_multispot = IconData(0x1008AC);

  /// IconData for SF Symbol camera.metering.none
  static const IconData sf_camera_metering_none = IconData(0x1008AD);

  /// IconData for SF Symbol camera.metering.partial
  static const IconData sf_camera_metering_partial = IconData(0x1008AE);

  /// IconData for SF Symbol camera.metering.spot
  static const IconData sf_camera_metering_spot = IconData(0x1008AF);

  /// IconData for SF Symbol camera.metering.unknown
  static const IconData sf_camera_metering_unknown = IconData(0x1008B0);

  /// IconData for SF Symbol camera.on.rectangle
  static const IconData sf_camera_on_rectangle = IconData(0x100741);

  /// IconData for SF Symbol camera.on.rectangle.fill
  static const IconData sf_camera_on_rectangle_fill = IconData(0x100742);

  /// IconData for SF Symbol camera.shutter.button
  static const IconData sf_camera_shutter_button = IconData(0x100E7A);

  /// IconData for SF Symbol camera.shutter.button.fill
  static const IconData sf_camera_shutter_button_fill = IconData(0x100E7B);

  /// IconData for SF Symbol camera.viewfinder
  static const IconData sf_camera_viewfinder = IconData(0x1003BC);

  /// IconData for SF Symbol candybarphone
  static const IconData sf_candybarphone = IconData(0x100AB3);

  /// IconData for SF Symbol capslock
  static const IconData sf_capslock = IconData(0x1001A1);

  /// IconData for SF Symbol capslock.fill
  static const IconData sf_capslock_fill = IconData(0x1001A2);

  /// IconData for SF Symbol capsule
  static const IconData sf_capsule = IconData(0x100776);

  /// IconData for SF Symbol capsule.bottomhalf.filled
  static const IconData sf_capsule_bottomhalf_filled = IconData(0x100FF6);

  /// IconData for SF Symbol capsule.fill
  static const IconData sf_capsule_fill = IconData(0x100777);

  /// IconData for SF Symbol capsule.inset.filled
  static const IconData sf_capsule_inset_filled = IconData(0x100F9A);

  /// IconData for SF Symbol capsule.lefthalf.filled
  static const IconData sf_capsule_lefthalf_filled = IconData(0x100FF3);

  /// IconData for SF Symbol capsule.portrait
  static const IconData sf_capsule_portrait = IconData(0x1009F6);

  /// IconData for SF Symbol capsule.portrait.bottomhalf.filled
  static const IconData sf_capsule_portrait_bottomhalf_filled =
      IconData(0x100FFA);

  /// IconData for SF Symbol capsule.portrait.fill
  static const IconData sf_capsule_portrait_fill = IconData(0x1009F7);

  /// IconData for SF Symbol capsule.portrait.inset.filled
  static const IconData sf_capsule_portrait_inset_filled = IconData(0x100F9B);

  /// IconData for SF Symbol capsule.portrait.lefthalf.filled
  static const IconData sf_capsule_portrait_lefthalf_filled =
      IconData(0x100FF7);

  /// IconData for SF Symbol capsule.portrait.righthalf.filled
  static const IconData sf_capsule_portrait_righthalf_filled =
      IconData(0x100FF8);

  /// IconData for SF Symbol capsule.portrait.tophalf.filled
  static const IconData sf_capsule_portrait_tophalf_filled = IconData(0x100FF9);

  /// IconData for SF Symbol capsule.righthalf.filled
  static const IconData sf_capsule_righthalf_filled = IconData(0x100FF4);

  /// IconData for SF Symbol capsule.tophalf.filled
  static const IconData sf_capsule_tophalf_filled = IconData(0x100FF5);

  /// IconData for SF Symbol captions.bubble
  static const IconData sf_captions_bubble = IconData(0x100334);

  /// IconData for SF Symbol captions.bubble.fill
  static const IconData sf_captions_bubble_fill = IconData(0x100335);

  /// IconData for SF Symbol car
  static const IconData sf_car = IconData(0x100658);

  /// IconData for SF Symbol car.2
  static const IconData sf_car_2 = IconData(0x100744);

  /// IconData for SF Symbol car.2.fill
  static const IconData sf_car_2_fill = IconData(0x100745);

  /// IconData for SF Symbol car.circle
  static const IconData sf_car_circle = IconData(0x100B6F);

  /// IconData for SF Symbol car.circle.fill
  static const IconData sf_car_circle_fill = IconData(0x100B70);

  /// IconData for SF Symbol car.ferry
  static const IconData sf_car_ferry = IconData(0x100E0C);

  /// IconData for SF Symbol car.ferry.fill
  static const IconData sf_car_ferry_fill = IconData(0x100E0D);

  /// IconData for SF Symbol car.fill
  static const IconData sf_car_fill = IconData(0x100659);

  /// IconData for SF Symbol car.front.waves.down
  static const IconData sf_car_front_waves_down = IconData(0x102109);

  /// IconData for SF Symbol car.front.waves.down.fill
  static const IconData sf_car_front_waves_down_fill = IconData(0x10210A);

  /// IconData for SF Symbol car.front.waves.up
  static const IconData sf_car_front_waves_up = IconData(0x1018B1);

  /// IconData for SF Symbol car.front.waves.up.fill
  static const IconData sf_car_front_waves_up_fill = IconData(0x1018B2);

  /// IconData for SF Symbol car.rear
  static const IconData sf_car_rear = IconData(0x100F5B);

  /// IconData for SF Symbol car.rear.and.collision.road.lane
  static const IconData sf_car_rear_and_collision_road_lane =
      IconData(0x1018E9);

  /// IconData for SF Symbol car.rear.and.collision.road.lane.slash
  static const IconData sf_car_rear_and_collision_road_lane_slash =
      IconData(0x1018EA);

  /// IconData for SF Symbol car.rear.and.tire.marks
  static const IconData sf_car_rear_and_tire_marks = IconData(0x100FC8);

  /// IconData for SF Symbol car.rear.and.tire.marks.slash
  static const IconData sf_car_rear_and_tire_marks_slash = IconData(0x1018A6);

  /// IconData for SF Symbol car.rear.fill
  static const IconData sf_car_rear_fill = IconData(0x100F5C);

  /// IconData for SF Symbol car.rear.road.lane
  static const IconData sf_car_rear_road_lane = IconData(0x10157F);

  /// IconData for SF Symbol car.rear.road.lane.dashed
  static const IconData sf_car_rear_road_lane_dashed = IconData(0x101578);

  /// IconData for SF Symbol car.rear.waves.up
  static const IconData sf_car_rear_waves_up = IconData(0x10159D);

  /// IconData for SF Symbol car.rear.waves.up.fill
  static const IconData sf_car_rear_waves_up_fill = IconData(0x10159E);

  /// IconData for SF Symbol car.side
  static const IconData sf_car_side = IconData(0x1013B7);

  /// IconData for SF Symbol car.side.air.circulate
  static const IconData sf_car_side_air_circulate = IconData(0x10126C);

  /// IconData for SF Symbol car.side.air.circulate.fill
  static const IconData sf_car_side_air_circulate_fill = IconData(0x10126D);

  /// IconData for SF Symbol car.side.air.fresh
  static const IconData sf_car_side_air_fresh = IconData(0x10126E);

  /// IconData for SF Symbol car.side.air.fresh.fill
  static const IconData sf_car_side_air_fresh_fill = IconData(0x10126F);

  /// IconData for SF Symbol car.side.and.exclamationmark
  static const IconData sf_car_side_and_exclamationmark = IconData(0x10126A);

  /// IconData for SF Symbol car.side.and.exclamationmark.fill
  static const IconData sf_car_side_and_exclamationmark_fill =
      IconData(0x101805);

  /// IconData for SF Symbol car.side.arrowtriangle.down
  static const IconData sf_car_side_arrowtriangle_down = IconData(0x10180B);

  /// IconData for SF Symbol car.side.arrowtriangle.down.fill
  static const IconData sf_car_side_arrowtriangle_down_fill =
      IconData(0x10180C);

  /// IconData for SF Symbol car.side.arrowtriangle.up
  static const IconData sf_car_side_arrowtriangle_up = IconData(0x101809);

  /// IconData for SF Symbol car.side.arrowtriangle.up.arrowtriangle.down
  static const IconData sf_car_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101807);

  /// IconData for SF Symbol car.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData sf_car_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x101808);

  /// IconData for SF Symbol car.side.arrowtriangle.up.fill
  static const IconData sf_car_side_arrowtriangle_up_fill = IconData(0x10180A);

  /// IconData for SF Symbol car.side.fill
  static const IconData sf_car_side_fill = IconData(0x1013B8);

  /// IconData for SF Symbol car.side.front.open
  static const IconData sf_car_side_front_open = IconData(0x101264);

  /// IconData for SF Symbol car.side.front.open.fill
  static const IconData sf_car_side_front_open_fill = IconData(0x101265);

  /// IconData for SF Symbol car.side.hill.down
  static const IconData sf_car_side_hill_down = IconData(0x10194E);

  /// IconData for SF Symbol car.side.hill.down.fill
  static const IconData sf_car_side_hill_down_fill = IconData(0x10194F);

  /// IconData for SF Symbol car.side.hill.up
  static const IconData sf_car_side_hill_up = IconData(0x10190D);

  /// IconData for SF Symbol car.side.hill.up.fill
  static const IconData sf_car_side_hill_up_fill = IconData(0x10190E);

  /// IconData for SF Symbol car.side.lock
  static const IconData sf_car_side_lock = IconData(0x1018F9);

  /// IconData for SF Symbol car.side.lock.fill
  static const IconData sf_car_side_lock_fill = IconData(0x1018FA);

  /// IconData for SF Symbol car.side.lock.open
  static const IconData sf_car_side_lock_open = IconData(0x1018FB);

  /// IconData for SF Symbol car.side.lock.open.fill
  static const IconData sf_car_side_lock_open_fill = IconData(0x1018FC);

  /// IconData for SF Symbol car.side.rear.and.collision.and.car.side.front
  static const IconData sf_car_side_rear_and_collision_and_car_side_front =
      IconData(0x101D74);

  /// IconData for SF Symbol car.side.rear.and.collision.and.car.side.front.slash
  static const IconData
      sf_car_side_rear_and_collision_and_car_side_front_slash =
      IconData(0x101D75);

  /// IconData for SF Symbol car.side.rear.and.exclamationmark.and.car.side.front
  static const IconData
      sf_car_side_rear_and_exclamationmark_and_car_side_front =
      IconData(0x101D78);

  /// IconData for SF Symbol car.side.rear.and.wave.3.and.car.side.front
  static const IconData sf_car_side_rear_and_wave_3_and_car_side_front =
      IconData(0x101D77);

  /// IconData for SF Symbol car.side.rear.open
  static const IconData sf_car_side_rear_open = IconData(0x101266);

  /// IconData for SF Symbol car.side.rear.open.fill
  static const IconData sf_car_side_rear_open_fill = IconData(0x101267);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_and_rear_right_open =
      IconData(0x101010);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_and_rear_right_open_fill =
      IconData(0x101011);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_open =
      IconData(0x10185C);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_open_fill =
      IconData(0x10185D);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_right_open =
      IconData(0x10185E);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_right_open_fill =
      IconData(0x10185F);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.open
  static const IconData sf_car_top_door_front_left_and_front_right_open =
      IconData(0x101850);

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.open.fill
  static const IconData sf_car_top_door_front_left_and_front_right_open_fill =
      IconData(0x101851);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_rear_left_and_rear_right_open =
      IconData(0x101860);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_rear_left_and_rear_right_open_fill =
      IconData(0x101861);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.open
  static const IconData sf_car_top_door_front_left_and_rear_left_open =
      IconData(0x101854);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.open.fill
  static const IconData sf_car_top_door_front_left_and_rear_left_open_fill =
      IconData(0x101855);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.right.open
  static const IconData sf_car_top_door_front_left_and_rear_right_open =
      IconData(0x101858);

  /// IconData for SF Symbol car.top.door.front.left.and.rear.right.open.fill
  static const IconData sf_car_top_door_front_left_and_rear_right_open_fill =
      IconData(0x101859);

  /// IconData for SF Symbol car.top.door.front.left.open
  static const IconData sf_car_top_door_front_left_open = IconData(0x100FC2);

  /// IconData for SF Symbol car.top.door.front.left.open.fill
  static const IconData sf_car_top_door_front_left_open_fill =
      IconData(0x100FC3);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_right_and_rear_left_and_rear_right_open =
      IconData(0x101862);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_right_and_rear_left_and_rear_right_open_fill =
      IconData(0x101863);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.open
  static const IconData sf_car_top_door_front_right_and_rear_left_open =
      IconData(0x10185A);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.open.fill
  static const IconData sf_car_top_door_front_right_and_rear_left_open_fill =
      IconData(0x10185B);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.right.open
  static const IconData sf_car_top_door_front_right_and_rear_right_open =
      IconData(0x101856);

  /// IconData for SF Symbol car.top.door.front.right.and.rear.right.open.fill
  static const IconData sf_car_top_door_front_right_and_rear_right_open_fill =
      IconData(0x101857);

  /// IconData for SF Symbol car.top.door.front.right.open
  static const IconData sf_car_top_door_front_right_open = IconData(0x10184A);

  /// IconData for SF Symbol car.top.door.front.right.open.fill
  static const IconData sf_car_top_door_front_right_open_fill =
      IconData(0x10184B);

  /// IconData for SF Symbol car.top.door.rear.left.and.rear.right.open
  static const IconData sf_car_top_door_rear_left_and_rear_right_open =
      IconData(0x101852);

  /// IconData for SF Symbol car.top.door.rear.left.and.rear.right.open.fill
  static const IconData sf_car_top_door_rear_left_and_rear_right_open_fill =
      IconData(0x101853);

  /// IconData for SF Symbol car.top.door.rear.left.open
  static const IconData sf_car_top_door_rear_left_open = IconData(0x10184C);

  /// IconData for SF Symbol car.top.door.rear.left.open.fill
  static const IconData sf_car_top_door_rear_left_open_fill =
      IconData(0x10184D);

  /// IconData for SF Symbol car.top.door.rear.right.open
  static const IconData sf_car_top_door_rear_right_open = IconData(0x10184E);

  /// IconData for SF Symbol car.top.door.rear.right.open.fill
  static const IconData sf_car_top_door_rear_right_open_fill =
      IconData(0x10184F);

  /// IconData for SF Symbol car.top.door.sliding.left.open
  static const IconData sf_car_top_door_sliding_left_open = IconData(0x101D79);

  /// IconData for SF Symbol car.top.door.sliding.left.open.fill
  static const IconData sf_car_top_door_sliding_left_open_fill =
      IconData(0x101D7A);

  /// IconData for SF Symbol car.top.door.sliding.right.open
  static const IconData sf_car_top_door_sliding_right_open = IconData(0x101D7B);

  /// IconData for SF Symbol car.top.door.sliding.right.open.fill
  static const IconData sf_car_top_door_sliding_right_open_fill =
      IconData(0x101D7C);

  /// IconData for SF Symbol car.top.frontleft.arrowtriangle
  static const IconData sf_car_top_frontleft_arrowtriangle = IconData(0x10209B);

  /// IconData for SF Symbol car.top.frontleft.arrowtriangle.fill
  static const IconData sf_car_top_frontleft_arrowtriangle_fill =
      IconData(0x10209C);

  /// IconData for SF Symbol car.top.frontright.arrowtriangle
  static const IconData sf_car_top_frontright_arrowtriangle =
      IconData(0x10209D);

  /// IconData for SF Symbol car.top.frontright.arrowtriangle.fill
  static const IconData sf_car_top_frontright_arrowtriangle_fill =
      IconData(0x10209E);

  /// IconData for SF Symbol car.top.lane.dashed.arrowtriangle.inward
  static const IconData sf_car_top_lane_dashed_arrowtriangle_inward =
      IconData(0x10157E);

  /// IconData for SF Symbol car.top.lane.dashed.arrowtriangle.inward.fill
  static const IconData sf_car_top_lane_dashed_arrowtriangle_inward_fill =
      IconData(0x101583);

  /// IconData for SF Symbol car.top.lane.dashed.badge.steeringwheel
  static const IconData sf_car_top_lane_dashed_badge_steeringwheel =
      IconData(0x101584);

  /// IconData for SF Symbol car.top.lane.dashed.badge.steeringwheel.fill
  static const IconData sf_car_top_lane_dashed_badge_steeringwheel_fill =
      IconData(0x101585);

  /// IconData for SF Symbol car.top.lane.dashed.departure.left
  static const IconData sf_car_top_lane_dashed_departure_left =
      IconData(0x1018AF);

  /// IconData for SF Symbol car.top.lane.dashed.departure.left.fill
  static const IconData sf_car_top_lane_dashed_departure_left_fill =
      IconData(0x1018B0);

  /// IconData for SF Symbol car.top.lane.dashed.departure.right
  static const IconData sf_car_top_lane_dashed_departure_right =
      IconData(0x10157C);

  /// IconData for SF Symbol car.top.lane.dashed.departure.right.fill
  static const IconData sf_car_top_lane_dashed_departure_right_fill =
      IconData(0x10157D);

  /// IconData for SF Symbol car.top.radiowaves.front
  static const IconData sf_car_top_radiowaves_front = IconData(0x1015B5);

  /// IconData for SF Symbol car.top.radiowaves.front.fill
  static const IconData sf_car_top_radiowaves_front_fill = IconData(0x1015B9);

  /// IconData for SF Symbol car.top.radiowaves.rear
  static const IconData sf_car_top_radiowaves_rear = IconData(0x1015B6);

  /// IconData for SF Symbol car.top.radiowaves.rear.fill
  static const IconData sf_car_top_radiowaves_rear_fill = IconData(0x1015BA);

  /// IconData for SF Symbol car.top.radiowaves.rear.left
  static const IconData sf_car_top_radiowaves_rear_left = IconData(0x1015B4);

  /// IconData for SF Symbol car.top.radiowaves.rear.left.and.rear.right
  static const IconData sf_car_top_radiowaves_rear_left_and_rear_right =
      IconData(0x1018A0);

  /// IconData for SF Symbol car.top.radiowaves.rear.left.and.rear.right.fill
  static const IconData sf_car_top_radiowaves_rear_left_and_rear_right_fill =
      IconData(0x1018A1);

  /// IconData for SF Symbol car.top.radiowaves.rear.left.fill
  static const IconData sf_car_top_radiowaves_rear_left_fill =
      IconData(0x1015B8);

  /// IconData for SF Symbol car.top.radiowaves.rear.right
  static const IconData sf_car_top_radiowaves_rear_right = IconData(0x1015B3);

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.exclamationmark
  static const IconData sf_car_top_radiowaves_rear_right_badge_exclamationmark =
      IconData(0x1018A4);

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.exclamationmark.fill
  static const IconData
      sf_car_top_radiowaves_rear_right_badge_exclamationmark_fill =
      IconData(0x1018A5);

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.xmark
  static const IconData sf_car_top_radiowaves_rear_right_badge_xmark =
      IconData(0x1018A2);

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.xmark.fill
  static const IconData sf_car_top_radiowaves_rear_right_badge_xmark_fill =
      IconData(0x1018A3);

  /// IconData for SF Symbol car.top.radiowaves.rear.right.fill
  static const IconData sf_car_top_radiowaves_rear_right_fill =
      IconData(0x1015B7);

  /// IconData for SF Symbol car.top.rearleft.arrowtriangle
  static const IconData sf_car_top_rearleft_arrowtriangle = IconData(0x102091);

  /// IconData for SF Symbol car.top.rearleft.arrowtriangle.fill
  static const IconData sf_car_top_rearleft_arrowtriangle_fill =
      IconData(0x102092);

  /// IconData for SF Symbol car.top.rearright.arrowtriangle
  static const IconData sf_car_top_rearright_arrowtriangle = IconData(0x102093);

  /// IconData for SF Symbol car.top.rearright.arrowtriangle.fill
  static const IconData sf_car_top_rearright_arrowtriangle_fill =
      IconData(0x102094);

  /// IconData for SF Symbol car.window.left
  static const IconData sf_car_window_left = IconData(0x10129C);

  /// IconData for SF Symbol car.window.left.badge.exclamationmark
  static const IconData sf_car_window_left_badge_exclamationmark =
      IconData(0x1012A0);

  /// IconData for SF Symbol car.window.left.badge.xmark
  static const IconData sf_car_window_left_badge_xmark = IconData(0x1012A3);

  /// IconData for SF Symbol car.window.left.exclamationmark
  static const IconData sf_car_window_left_exclamationmark = IconData(0x10129E);

  /// IconData for SF Symbol car.window.left.xmark
  static const IconData sf_car_window_left_xmark = IconData(0x1012A1);

  /// IconData for SF Symbol car.window.right
  static const IconData sf_car_window_right = IconData(0x10125C);

  /// IconData for SF Symbol car.window.right.badge.exclamationmark
  static const IconData sf_car_window_right_badge_exclamationmark =
      IconData(0x10125F);

  /// IconData for SF Symbol car.window.right.badge.xmark
  static const IconData sf_car_window_right_badge_xmark = IconData(0x101261);

  /// IconData for SF Symbol car.window.right.exclamationmark
  static const IconData sf_car_window_right_exclamationmark =
      IconData(0x10125E);

  /// IconData for SF Symbol car.window.right.xmark
  static const IconData sf_car_window_right_xmark = IconData(0x10129A);

  /// IconData for SF Symbol carbon.dioxide.cloud
  static const IconData sf_carbon_dioxide_cloud = IconData(0x1014B8);

  /// IconData for SF Symbol carbon.dioxide.cloud.fill
  static const IconData sf_carbon_dioxide_cloud_fill = IconData(0x1014B9);

  /// IconData for SF Symbol carbon.monoxide.cloud
  static const IconData sf_carbon_monoxide_cloud = IconData(0x1014B6);

  /// IconData for SF Symbol carbon.monoxide.cloud.fill
  static const IconData sf_carbon_monoxide_cloud_fill = IconData(0x1014B7);

  /// IconData for SF Symbol carrot
  static const IconData sf_carrot = IconData(0x10158E);

  /// IconData for SF Symbol carrot.fill
  static const IconData sf_carrot_fill = IconData(0x10158F);

  /// IconData for SF Symbol carseat.left
  static const IconData sf_carseat_left = IconData(0x101994);

  /// IconData for SF Symbol carseat.left.1
  static const IconData sf_carseat_left_1 = IconData(0x10159F);

  /// IconData for SF Symbol carseat.left.1.fill
  static const IconData sf_carseat_left_1_fill = IconData(0x1015A0);

  /// IconData for SF Symbol carseat.left.2
  static const IconData sf_carseat_left_2 = IconData(0x1015A1);

  /// IconData for SF Symbol carseat.left.2.fill
  static const IconData sf_carseat_left_2_fill = IconData(0x1015A2);

  /// IconData for SF Symbol carseat.left.3
  static const IconData sf_carseat_left_3 = IconData(0x1015A3);

  /// IconData for SF Symbol carseat.left.3.fill
  static const IconData sf_carseat_left_3_fill = IconData(0x1015A4);

  /// IconData for SF Symbol carseat.left.and.heat.waves
  static const IconData sf_carseat_left_and_heat_waves = IconData(0x1012CD);

  /// IconData for SF Symbol carseat.left.and.heat.waves.fill
  static const IconData sf_carseat_left_and_heat_waves_fill =
      IconData(0x1012CE);

  /// IconData for SF Symbol carseat.left.backrest.up.and.down
  static const IconData sf_carseat_left_backrest_up_and_down =
      IconData(0x10198C);

  /// IconData for SF Symbol carseat.left.backrest.up.and.down.fill
  static const IconData sf_carseat_left_backrest_up_and_down_fill =
      IconData(0x10198D);

  /// IconData for SF Symbol carseat.left.fan
  static const IconData sf_carseat_left_fan = IconData(0x1012D1);

  /// IconData for SF Symbol carseat.left.fan.fill
  static const IconData sf_carseat_left_fan_fill = IconData(0x1012D2);

  /// IconData for SF Symbol carseat.left.fill
  static const IconData sf_carseat_left_fill = IconData(0x101995);

  /// IconData for SF Symbol carseat.left.forward.and.backward
  static const IconData sf_carseat_left_forward_and_backward =
      IconData(0x101988);

  /// IconData for SF Symbol carseat.left.forward.and.backward.fill
  static const IconData sf_carseat_left_forward_and_backward_fill =
      IconData(0x101989);

  /// IconData for SF Symbol carseat.left.massage
  static const IconData sf_carseat_left_massage = IconData(0x101D7D);

  /// IconData for SF Symbol carseat.left.massage.fill
  static const IconData sf_carseat_left_massage_fill = IconData(0x101D7E);

  /// IconData for SF Symbol carseat.left.up.and.down
  static const IconData sf_carseat_left_up_and_down = IconData(0x101990);

  /// IconData for SF Symbol carseat.left.up.and.down.fill
  static const IconData sf_carseat_left_up_and_down_fill = IconData(0x101991);

  /// IconData for SF Symbol carseat.right
  static const IconData sf_carseat_right = IconData(0x101996);

  /// IconData for SF Symbol carseat.right.1
  static const IconData sf_carseat_right_1 = IconData(0x1012D5);

  /// IconData for SF Symbol carseat.right.1.fill
  static const IconData sf_carseat_right_1_fill = IconData(0x1012D6);

  /// IconData for SF Symbol carseat.right.2
  static const IconData sf_carseat_right_2 = IconData(0x1012D7);

  /// IconData for SF Symbol carseat.right.2.fill
  static const IconData sf_carseat_right_2_fill = IconData(0x1012D8);

  /// IconData for SF Symbol carseat.right.3
  static const IconData sf_carseat_right_3 = IconData(0x1012D9);

  /// IconData for SF Symbol carseat.right.3.fill
  static const IconData sf_carseat_right_3_fill = IconData(0x1012DA);

  /// IconData for SF Symbol carseat.right.and.heat.waves
  static const IconData sf_carseat_right_and_heat_waves = IconData(0x1012CF);

  /// IconData for SF Symbol carseat.right.and.heat.waves.fill
  static const IconData sf_carseat_right_and_heat_waves_fill =
      IconData(0x1012D0);

  /// IconData for SF Symbol carseat.right.backrest.up.and.down
  static const IconData sf_carseat_right_backrest_up_and_down =
      IconData(0x10198E);

  /// IconData for SF Symbol carseat.right.backrest.up.and.down.fill
  static const IconData sf_carseat_right_backrest_up_and_down_fill =
      IconData(0x10198F);

  /// IconData for SF Symbol carseat.right.fan
  static const IconData sf_carseat_right_fan = IconData(0x1012D3);

  /// IconData for SF Symbol carseat.right.fan.fill
  static const IconData sf_carseat_right_fan_fill = IconData(0x1012D4);

  /// IconData for SF Symbol carseat.right.fill
  static const IconData sf_carseat_right_fill = IconData(0x101997);

  /// IconData for SF Symbol carseat.right.forward.and.backward
  static const IconData sf_carseat_right_forward_and_backward =
      IconData(0x10198A);

  /// IconData for SF Symbol carseat.right.forward.and.backward.fill
  static const IconData sf_carseat_right_forward_and_backward_fill =
      IconData(0x10198B);

  /// IconData for SF Symbol carseat.right.massage
  static const IconData sf_carseat_right_massage = IconData(0x101D7F);

  /// IconData for SF Symbol carseat.right.massage.fill
  static const IconData sf_carseat_right_massage_fill = IconData(0x101D80);

  /// IconData for SF Symbol carseat.right.up.and.down
  static const IconData sf_carseat_right_up_and_down = IconData(0x101992);

  /// IconData for SF Symbol carseat.right.up.and.down.fill
  static const IconData sf_carseat_right_up_and_down_fill = IconData(0x101993);

  /// IconData for SF Symbol cart
  static const IconData sf_cart = IconData(0x100369);

  /// IconData for SF Symbol cart.badge.minus
  static const IconData sf_cart_badge_minus = IconData(0x10036D);

  /// IconData for SF Symbol cart.badge.plus
  static const IconData sf_cart_badge_plus = IconData(0x10036B);

  /// IconData for SF Symbol cart.badge.questionmark
  static const IconData sf_cart_badge_questionmark = IconData(0x1016A6);

  /// IconData for SF Symbol cart.circle
  static const IconData sf_cart_circle = IconData(0x1004AD);

  /// IconData for SF Symbol cart.circle.fill
  static const IconData sf_cart_circle_fill = IconData(0x1004AE);

  /// IconData for SF Symbol cart.fill
  static const IconData sf_cart_fill = IconData(0x10036A);

  /// IconData for SF Symbol cart.fill.badge.minus
  static const IconData sf_cart_fill_badge_minus = IconData(0x10036E);

  /// IconData for SF Symbol cart.fill.badge.plus
  static const IconData sf_cart_fill_badge_plus = IconData(0x10036C);

  /// IconData for SF Symbol cart.fill.badge.questionmark
  static const IconData sf_cart_fill_badge_questionmark = IconData(0x1016A7);

  /// IconData for SF Symbol case
  static const IconData sf_case = IconData(0x100BE1);

  /// IconData for SF Symbol case.fill
  static const IconData sf_case_fill = IconData(0x100BE2);

  /// IconData for SF Symbol cat
  static const IconData sf_cat = IconData(0x10207E);

  /// IconData for SF Symbol cat.circle
  static const IconData sf_cat_circle = IconData(0x102080);

  /// IconData for SF Symbol cat.circle.fill
  static const IconData sf_cat_circle_fill = IconData(0x102081);

  /// IconData for SF Symbol cat.fill
  static const IconData sf_cat_fill = IconData(0x10207F);

  /// IconData for SF Symbol cedisign
  static const IconData sf_cedisign = IconData(0x101455);

  /// IconData for SF Symbol cedisign.arrow.circlepath
  static const IconData sf_cedisign_arrow_circlepath = IconData(0x102228);

  /// IconData for SF Symbol cedisign.circle
  static const IconData sf_cedisign_circle = IconData(0x1005C3);

  /// IconData for SF Symbol cedisign.circle.fill
  static const IconData sf_cedisign_circle_fill = IconData(0x1005C4);

  /// IconData for SF Symbol cedisign.square
  static const IconData sf_cedisign_square = IconData(0x100603);

  /// IconData for SF Symbol cedisign.square.fill
  static const IconData sf_cedisign_square_fill = IconData(0x100604);

  /// IconData for SF Symbol cellularbars
  static const IconData sf_cellularbars = IconData(0x100B67);

  /// IconData for SF Symbol centsign
  static const IconData sf_centsign = IconData(0x101440);

  /// IconData for SF Symbol centsign.arrow.circlepath
  static const IconData sf_centsign_arrow_circlepath = IconData(0x102213);

  /// IconData for SF Symbol centsign.circle
  static const IconData sf_centsign_circle = IconData(0x100599);

  /// IconData for SF Symbol centsign.circle.fill
  static const IconData sf_centsign_circle_fill = IconData(0x10059A);

  /// IconData for SF Symbol centsign.square
  static const IconData sf_centsign_square = IconData(0x1005D9);

  /// IconData for SF Symbol centsign.square.fill
  static const IconData sf_centsign_square_fill = IconData(0x1005DA);

  /// IconData for SF Symbol chair
  static const IconData sf_chair = IconData(0x101436);

  /// IconData for SF Symbol chair.fill
  static const IconData sf_chair_fill = IconData(0x101437);

  /// IconData for SF Symbol chair.lounge
  static const IconData sf_chair_lounge = IconData(0x101434);

  /// IconData for SF Symbol chair.lounge.fill
  static const IconData sf_chair_lounge_fill = IconData(0x101435);

  /// IconData for SF Symbol chandelier
  static const IconData sf_chandelier = IconData(0x101326);

  /// IconData for SF Symbol chandelier.fill
  static const IconData sf_chandelier_fill = IconData(0x1013D3);

  /// IconData for SF Symbol character
  static const IconData sf_character = IconData(0x10014F);

  /// IconData for SF Symbol character.book.closed
  static const IconData sf_character_book_closed = IconData(0x100AD5);

  /// IconData for SF Symbol character.book.closed.fill
  static const IconData sf_character_book_closed_fill = IconData(0x100AD6);

  /// IconData for SF Symbol character.bubble
  static const IconData sf_character_bubble = IconData(0x100330);

  /// IconData for SF Symbol character.bubble.fill
  static const IconData sf_character_bubble_fill = IconData(0x100331);

  /// IconData for SF Symbol character.cursor.ibeam
  static const IconData sf_character_cursor_ibeam = IconData(0x10016B);

  /// IconData for SF Symbol character.duployan
  static const IconData sf_character_duployan = IconData(0x1014D6);

  /// IconData for SF Symbol character.magnify
  static const IconData sf_character_magnify = IconData(0x10090D);

  /// IconData for SF Symbol character.phonetic
  static const IconData sf_character_phonetic = IconData(0x1014D5);

  /// IconData for SF Symbol character.sutton
  static const IconData sf_character_sutton = IconData(0x1014D7);

  /// IconData for SF Symbol character.textbox
  static const IconData sf_character_textbox = IconData(0x100176);

  /// IconData for SF Symbol chart.bar
  static const IconData sf_chart_bar = IconData(0x10043E);

  /// IconData for SF Symbol chart.bar.doc.horizontal
  static const IconData sf_chart_bar_doc_horizontal = IconData(0x10095C);

  /// IconData for SF Symbol chart.bar.doc.horizontal.fill
  static const IconData sf_chart_bar_doc_horizontal_fill = IconData(0x10098C);

  /// IconData for SF Symbol chart.bar.fill
  static const IconData sf_chart_bar_fill = IconData(0x10043F);

  /// IconData for SF Symbol chart.bar.xaxis
  static const IconData sf_chart_bar_xaxis = IconData(0x1008C9);

  /// IconData for SF Symbol chart.bar.xaxis.ascending
  static const IconData sf_chart_bar_xaxis_ascending = IconData(0x10218F);

  /// IconData for SF Symbol chart.bar.xaxis.ascending.badge.clock
  static const IconData sf_chart_bar_xaxis_ascending_badge_clock =
      IconData(0x102190);

  /// IconData for SF Symbol chart.dots.scatter
  static const IconData sf_chart_dots_scatter = IconData(0x1018C3);

  /// IconData for SF Symbol chart.line.downtrend.xyaxis
  static const IconData sf_chart_line_downtrend_xyaxis = IconData(0x101633);

  /// IconData for SF Symbol chart.line.downtrend.xyaxis.circle
  static const IconData sf_chart_line_downtrend_xyaxis_circle =
      IconData(0x101634);

  /// IconData for SF Symbol chart.line.downtrend.xyaxis.circle.fill
  static const IconData sf_chart_line_downtrend_xyaxis_circle_fill =
      IconData(0x101635);

  /// IconData for SF Symbol chart.line.flattrend.xyaxis
  static const IconData sf_chart_line_flattrend_xyaxis = IconData(0x101636);

  /// IconData for SF Symbol chart.line.flattrend.xyaxis.circle
  static const IconData sf_chart_line_flattrend_xyaxis_circle =
      IconData(0x101637);

  /// IconData for SF Symbol chart.line.flattrend.xyaxis.circle.fill
  static const IconData sf_chart_line_flattrend_xyaxis_circle_fill =
      IconData(0x101638);

  /// IconData for SF Symbol chart.line.uptrend.xyaxis
  static const IconData sf_chart_line_uptrend_xyaxis = IconData(0x100441);

  /// IconData for SF Symbol chart.line.uptrend.xyaxis.circle
  static const IconData sf_chart_line_uptrend_xyaxis_circle =
      IconData(0x100D1A);

  /// IconData for SF Symbol chart.line.uptrend.xyaxis.circle.fill
  static const IconData sf_chart_line_uptrend_xyaxis_circle_fill =
      IconData(0x100D1B);

  /// IconData for SF Symbol chart.pie
  static const IconData sf_chart_pie = IconData(0x100440);

  /// IconData for SF Symbol chart.pie.fill
  static const IconData sf_chart_pie_fill = IconData(0x10070B);

  /// IconData for SF Symbol chart.xyaxis.line
  static const IconData sf_chart_xyaxis_line = IconData(0x1010A5);

  /// IconData for SF Symbol checklist
  static const IconData sf_checklist = IconData(0x100DFE);

  /// IconData for SF Symbol checklist.checked
  static const IconData sf_checklist_checked = IconData(0x101655);

  /// IconData for SF Symbol checklist.unchecked
  static const IconData sf_checklist_unchecked = IconData(0x101660);

  /// IconData for SF Symbol checkmark
  static const IconData sf_checkmark = IconData(0x100185);

  /// IconData for SF Symbol checkmark.applewatch
  static const IconData sf_checkmark_applewatch = IconData(0x102117);

  /// IconData for SF Symbol checkmark.bubble
  static const IconData sf_checkmark_bubble = IconData(0x100FCB);

  /// IconData for SF Symbol checkmark.bubble.fill
  static const IconData sf_checkmark_bubble_fill = IconData(0x100FCC);

  /// IconData for SF Symbol checkmark.circle
  static const IconData sf_checkmark_circle = IconData(0x100062);

  /// IconData for SF Symbol checkmark.circle.badge.questionmark
  static const IconData sf_checkmark_circle_badge_questionmark =
      IconData(0x10171E);

  /// IconData for SF Symbol checkmark.circle.badge.questionmark.fill
  static const IconData sf_checkmark_circle_badge_questionmark_fill =
      IconData(0x10171F);

  /// IconData for SF Symbol checkmark.circle.badge.xmark
  static const IconData sf_checkmark_circle_badge_xmark = IconData(0x101722);

  /// IconData for SF Symbol checkmark.circle.badge.xmark.fill
  static const IconData sf_checkmark_circle_badge_xmark_fill =
      IconData(0x101723);

  /// IconData for SF Symbol checkmark.circle.fill
  static const IconData sf_checkmark_circle_fill = IconData(0x100063);

  /// IconData for SF Symbol checkmark.circle.trianglebadge.exclamationmark
  static const IconData sf_checkmark_circle_trianglebadge_exclamationmark =
      IconData(0x1010CE);

  /// IconData for SF Symbol checkmark.diamond
  static const IconData sf_checkmark_diamond = IconData(0x10105A);

  /// IconData for SF Symbol checkmark.diamond.fill
  static const IconData sf_checkmark_diamond_fill = IconData(0x10105B);

  /// IconData for SF Symbol checkmark.gobackward
  static const IconData sf_checkmark_gobackward = IconData(0x1018DB);

  /// IconData for SF Symbol checkmark.icloud
  static const IconData sf_checkmark_icloud = IconData(0x100893);

  /// IconData for SF Symbol checkmark.icloud.fill
  static const IconData sf_checkmark_icloud_fill = IconData(0x100894);

  /// IconData for SF Symbol checkmark.message
  static const IconData sf_checkmark_message = IconData(0x101415);

  /// IconData for SF Symbol checkmark.message.fill
  static const IconData sf_checkmark_message_fill = IconData(0x101416);

  /// IconData for SF Symbol checkmark.rectangle
  static const IconData sf_checkmark_rectangle = IconData(0x1003CB);

  /// IconData for SF Symbol checkmark.rectangle.fill
  static const IconData sf_checkmark_rectangle_fill = IconData(0x1003CC);

  /// IconData for SF Symbol checkmark.rectangle.portrait
  static const IconData sf_checkmark_rectangle_portrait = IconData(0x10086E);

  /// IconData for SF Symbol checkmark.rectangle.portrait.fill
  static const IconData sf_checkmark_rectangle_portrait_fill =
      IconData(0x10086F);

  /// IconData for SF Symbol checkmark.rectangle.stack
  static const IconData sf_checkmark_rectangle_stack = IconData(0x1020BC);

  /// IconData for SF Symbol checkmark.rectangle.stack.fill
  static const IconData sf_checkmark_rectangle_stack_fill = IconData(0x1020BD);

  /// IconData for SF Symbol checkmark.seal
  static const IconData sf_checkmark_seal = IconData(0x1001FA);

  /// IconData for SF Symbol checkmark.seal.fill
  static const IconData sf_checkmark_seal_fill = IconData(0x1001FB);

  /// IconData for SF Symbol checkmark.shield
  static const IconData sf_checkmark_shield = IconData(0x10079B);

  /// IconData for SF Symbol checkmark.shield.fill
  static const IconData sf_checkmark_shield_fill = IconData(0x10079C);

  /// IconData for SF Symbol checkmark.square
  static const IconData sf_checkmark_square = IconData(0x1000F2);

  /// IconData for SF Symbol checkmark.square.fill
  static const IconData sf_checkmark_square_fill = IconData(0x1000F3);

  /// IconData for SF Symbol chevron.backward
  static const IconData sf_chevron_backward = IconData(0x100BF6);

  /// IconData for SF Symbol chevron.backward.2
  static const IconData sf_chevron_backward_2 = IconData(0x100C2A);

  /// IconData for SF Symbol chevron.backward.circle
  static const IconData sf_chevron_backward_circle = IconData(0x100BF7);

  /// IconData for SF Symbol chevron.backward.circle.fill
  static const IconData sf_chevron_backward_circle_fill = IconData(0x100BF8);

  /// IconData for SF Symbol chevron.backward.square
  static const IconData sf_chevron_backward_square = IconData(0x100BF9);

  /// IconData for SF Symbol chevron.backward.square.fill
  static const IconData sf_chevron_backward_square_fill = IconData(0x100BFA);

  /// IconData for SF Symbol chevron.backward.to.line
  static const IconData sf_chevron_backward_to_line = IconData(0x101344);

  /// IconData for SF Symbol chevron.compact.backward
  static const IconData sf_chevron_compact_backward = IconData(0x10224F);

  /// IconData for SF Symbol chevron.compact.down
  static const IconData sf_chevron_compact_down = IconData(0x100191);

  /// IconData for SF Symbol chevron.compact.forward
  static const IconData sf_chevron_compact_forward = IconData(0x102250);

  /// IconData for SF Symbol chevron.compact.left
  static const IconData sf_chevron_compact_left = IconData(0x100192);

  /// IconData for SF Symbol chevron.compact.right
  static const IconData sf_chevron_compact_right = IconData(0x100193);

  /// IconData for SF Symbol chevron.compact.up
  static const IconData sf_chevron_compact_up = IconData(0x100190);

  /// IconData for SF Symbol chevron.down
  static const IconData sf_chevron_down = IconData(0x100188);

  /// IconData for SF Symbol chevron.down.circle
  static const IconData sf_chevron_down_circle = IconData(0x100070);

  /// IconData for SF Symbol chevron.down.circle.fill
  static const IconData sf_chevron_down_circle_fill = IconData(0x100071);

  /// IconData for SF Symbol chevron.down.square
  static const IconData sf_chevron_down_square = IconData(0x100100);

  /// IconData for SF Symbol chevron.down.square.fill
  static const IconData sf_chevron_down_square_fill = IconData(0x100101);

  /// IconData for SF Symbol chevron.forward
  static const IconData sf_chevron_forward = IconData(0x100BFB);

  /// IconData for SF Symbol chevron.forward.2
  static const IconData sf_chevron_forward_2 = IconData(0x100C2B);

  /// IconData for SF Symbol chevron.forward.circle
  static const IconData sf_chevron_forward_circle = IconData(0x100BFC);

  /// IconData for SF Symbol chevron.forward.circle.fill
  static const IconData sf_chevron_forward_circle_fill = IconData(0x100BFD);

  /// IconData for SF Symbol chevron.forward.square
  static const IconData sf_chevron_forward_square = IconData(0x100BFE);

  /// IconData for SF Symbol chevron.forward.square.fill
  static const IconData sf_chevron_forward_square_fill = IconData(0x100BFF);

  /// IconData for SF Symbol chevron.forward.to.line
  static const IconData sf_chevron_forward_to_line = IconData(0x101345);

  /// IconData for SF Symbol chevron.left
  static const IconData sf_chevron_left = IconData(0x100189);

  /// IconData for SF Symbol chevron.left.2
  static const IconData sf_chevron_left_2 = IconData(0x10018B);

  /// IconData for SF Symbol chevron.left.circle
  static const IconData sf_chevron_left_circle = IconData(0x100072);

  /// IconData for SF Symbol chevron.left.circle.fill
  static const IconData sf_chevron_left_circle_fill = IconData(0x100073);

  /// IconData for SF Symbol chevron.left.forwardslash.chevron.right
  static const IconData sf_chevron_left_forwardslash_chevron_right =
      IconData(0x10065A);

  /// IconData for SF Symbol chevron.left.square
  static const IconData sf_chevron_left_square = IconData(0x100102);

  /// IconData for SF Symbol chevron.left.square.fill
  static const IconData sf_chevron_left_square_fill = IconData(0x100103);

  /// IconData for SF Symbol chevron.left.to.line
  static const IconData sf_chevron_left_to_line = IconData(0x101342);

  /// IconData for SF Symbol chevron.right
  static const IconData sf_chevron_right = IconData(0x10018A);

  /// IconData for SF Symbol chevron.right.2
  static const IconData sf_chevron_right_2 = IconData(0x10018C);

  /// IconData for SF Symbol chevron.right.circle
  static const IconData sf_chevron_right_circle = IconData(0x100074);

  /// IconData for SF Symbol chevron.right.circle.fill
  static const IconData sf_chevron_right_circle_fill = IconData(0x100075);

  /// IconData for SF Symbol chevron.right.square
  static const IconData sf_chevron_right_square = IconData(0x100104);

  /// IconData for SF Symbol chevron.right.square.fill
  static const IconData sf_chevron_right_square_fill = IconData(0x100105);

  /// IconData for SF Symbol chevron.right.to.line
  static const IconData sf_chevron_right_to_line = IconData(0x101343);

  /// IconData for SF Symbol chevron.up
  static const IconData sf_chevron_up = IconData(0x100187);

  /// IconData for SF Symbol chevron.up.chevron.down
  static const IconData sf_chevron_up_chevron_down = IconData(0x10018F);

  /// IconData for SF Symbol chevron.up.circle
  static const IconData sf_chevron_up_circle = IconData(0x10006E);

  /// IconData for SF Symbol chevron.up.circle.fill
  static const IconData sf_chevron_up_circle_fill = IconData(0x10006F);

  /// IconData for SF Symbol chevron.up.square
  static const IconData sf_chevron_up_square = IconData(0x1000FE);

  /// IconData for SF Symbol chevron.up.square.fill
  static const IconData sf_chevron_up_square_fill = IconData(0x1000FF);

  /// IconData for SF Symbol chineseyuanrenminbisign
  static const IconData sf_chineseyuanrenminbisign = IconData(0x101E91);

  /// IconData for SF Symbol chineseyuanrenminbisign.arrow.circlepath
  static const IconData sf_chineseyuanrenminbisign_arrow_circlepath =
      IconData(0x102233);

  /// IconData for SF Symbol chineseyuanrenminbisign.circle
  static const IconData sf_chineseyuanrenminbisign_circle = IconData(0x100BE3);

  /// IconData for SF Symbol chineseyuanrenminbisign.circle.fill
  static const IconData sf_chineseyuanrenminbisign_circle_fill =
      IconData(0x100BE4);

  /// IconData for SF Symbol chineseyuanrenminbisign.square
  static const IconData sf_chineseyuanrenminbisign_square = IconData(0x100BE5);

  /// IconData for SF Symbol chineseyuanrenminbisign.square.fill
  static const IconData sf_chineseyuanrenminbisign_square_fill =
      IconData(0x100BE6);

  /// IconData for SF Symbol circle
  static const IconData sf_circle = IconData(0x100000);

  /// IconData for SF Symbol circle.and.line.horizontal
  static const IconData sf_circle_and_line_horizontal = IconData(0x10080C);

  /// IconData for SF Symbol circle.and.line.horizontal.fill
  static const IconData sf_circle_and_line_horizontal_fill = IconData(0x10078D);

  /// IconData for SF Symbol circle.badge.checkmark
  static const IconData sf_circle_badge_checkmark = IconData(0x102002);

  /// IconData for SF Symbol circle.badge.checkmark.fill
  static const IconData sf_circle_badge_checkmark_fill = IconData(0x102003);

  /// IconData for SF Symbol circle.badge.exclamationmark
  static const IconData sf_circle_badge_exclamationmark = IconData(0x102054);

  /// IconData for SF Symbol circle.badge.exclamationmark.fill
  static const IconData sf_circle_badge_exclamationmark_fill =
      IconData(0x102055);

  /// IconData for SF Symbol circle.badge.minus
  static const IconData sf_circle_badge_minus = IconData(0x102044);

  /// IconData for SF Symbol circle.badge.minus.fill
  static const IconData sf_circle_badge_minus_fill = IconData(0x102045);

  /// IconData for SF Symbol circle.badge.plus
  static const IconData sf_circle_badge_plus = IconData(0x102040);

  /// IconData for SF Symbol circle.badge.plus.fill
  static const IconData sf_circle_badge_plus_fill = IconData(0x102041);

  /// IconData for SF Symbol circle.badge.questionmark
  static const IconData sf_circle_badge_questionmark = IconData(0x10204C);

  /// IconData for SF Symbol circle.badge.questionmark.fill
  static const IconData sf_circle_badge_questionmark_fill = IconData(0x10204D);

  /// IconData for SF Symbol circle.badge.xmark
  static const IconData sf_circle_badge_xmark = IconData(0x102048);

  /// IconData for SF Symbol circle.badge.xmark.fill
  static const IconData sf_circle_badge_xmark_fill = IconData(0x102049);

  /// IconData for SF Symbol circle.bottomhalf.filled
  static const IconData sf_circle_bottomhalf_filled = IconData(0x100A96);

  /// IconData for SF Symbol circle.bottomhalf.filled.inverse
  static const IconData sf_circle_bottomhalf_filled_inverse =
      IconData(0x101E70);

  /// IconData for SF Symbol circle.bottomrighthalf.checkered
  static const IconData sf_circle_bottomrighthalf_checkered =
      IconData(0x101E68);

  /// IconData for SF Symbol circle.circle
  static const IconData sf_circle_circle = IconData(0x100A01);

  /// IconData for SF Symbol circle.circle.fill
  static const IconData sf_circle_circle_fill = IconData(0x100A02);

  /// IconData for SF Symbol circle.dashed
  static const IconData sf_circle_dashed = IconData(0x1004DE);

  /// IconData for SF Symbol circle.dashed.inset.filled
  static const IconData sf_circle_dashed_inset_filled = IconData(0x1009D2);

  /// IconData for SF Symbol circle.dashed.rectangle
  static const IconData sf_circle_dashed_rectangle = IconData(0x10166A);

  /// IconData for SF Symbol circle.dotted
  static const IconData sf_circle_dotted = IconData(0x101143);

  /// IconData for SF Symbol circle.dotted.and.circle
  static const IconData sf_circle_dotted_and_circle = IconData(0x101295);

  /// IconData for SF Symbol circle.dotted.circle
  static const IconData sf_circle_dotted_circle = IconData(0x101E67);

  /// IconData for SF Symbol circle.dotted.circle.fill
  static const IconData sf_circle_dotted_circle_fill = IconData(0x101DDF);

  /// IconData for SF Symbol circle.fill
  static const IconData sf_circle_fill = IconData(0x100001);

  /// IconData for SF Symbol circle.filled.ipad
  static const IconData sf_circle_filled_ipad = IconData(0x1020FB);

  /// IconData for SF Symbol circle.filled.ipad.fill
  static const IconData sf_circle_filled_ipad_fill = IconData(0x1020FC);

  /// IconData for SF Symbol circle.filled.ipad.landscape
  static const IconData sf_circle_filled_ipad_landscape = IconData(0x1020FD);

  /// IconData for SF Symbol circle.filled.ipad.landscape.fill
  static const IconData sf_circle_filled_ipad_landscape_fill =
      IconData(0x1020FE);

  /// IconData for SF Symbol circle.filled.iphone
  static const IconData sf_circle_filled_iphone = IconData(0x1020EF);

  /// IconData for SF Symbol circle.filled.iphone.fill
  static const IconData sf_circle_filled_iphone_fill = IconData(0x1020F0);

  /// IconData for SF Symbol circle.filled.pattern.diagonalline.rectangle
  static const IconData sf_circle_filled_pattern_diagonalline_rectangle =
      IconData(0x10166F);

  /// IconData for SF Symbol circle.grid.2x1
  static const IconData sf_circle_grid_2x1 = IconData(0x100E87);

  /// IconData for SF Symbol circle.grid.2x1.fill
  static const IconData sf_circle_grid_2x1_fill = IconData(0x100E88);

  /// IconData for SF Symbol circle.grid.2x1.left.filled
  static const IconData sf_circle_grid_2x1_left_filled = IconData(0x100E89);

  /// IconData for SF Symbol circle.grid.2x1.right.filled
  static const IconData sf_circle_grid_2x1_right_filled = IconData(0x100E8A);

  /// IconData for SF Symbol circle.grid.2x2
  static const IconData sf_circle_grid_2x2 = IconData(0x1007BE);

  /// IconData for SF Symbol circle.grid.2x2.fill
  static const IconData sf_circle_grid_2x2_fill = IconData(0x1007BF);

  /// IconData for SF Symbol circle.grid.3x3
  static const IconData sf_circle_grid_3x3 = IconData(0x1001F8);

  /// IconData for SF Symbol circle.grid.3x3.circle
  static const IconData sf_circle_grid_3x3_circle = IconData(0x100EB2);

  /// IconData for SF Symbol circle.grid.3x3.circle.fill
  static const IconData sf_circle_grid_3x3_circle_fill = IconData(0x100EB3);

  /// IconData for SF Symbol circle.grid.3x3.fill
  static const IconData sf_circle_grid_3x3_fill = IconData(0x1001F9);

  /// IconData for SF Symbol circle.grid.cross
  static const IconData sf_circle_grid_cross = IconData(0x1009F8);

  /// IconData for SF Symbol circle.grid.cross.down.filled
  static const IconData sf_circle_grid_cross_down_filled = IconData(0x100A47);

  /// IconData for SF Symbol circle.grid.cross.fill
  static const IconData sf_circle_grid_cross_fill = IconData(0x1009F9);

  /// IconData for SF Symbol circle.grid.cross.left.filled
  static const IconData sf_circle_grid_cross_left_filled = IconData(0x100A44);

  /// IconData for SF Symbol circle.grid.cross.right.filled
  static const IconData sf_circle_grid_cross_right_filled = IconData(0x100A46);

  /// IconData for SF Symbol circle.grid.cross.up.filled
  static const IconData sf_circle_grid_cross_up_filled = IconData(0x100A45);

  /// IconData for SF Symbol circle.hexagongrid
  static const IconData sf_circle_hexagongrid = IconData(0x100662);

  /// IconData for SF Symbol circle.hexagongrid.circle
  static const IconData sf_circle_hexagongrid_circle = IconData(0x100DD9);

  /// IconData for SF Symbol circle.hexagongrid.circle.fill
  static const IconData sf_circle_hexagongrid_circle_fill = IconData(0x100DDA);

  /// IconData for SF Symbol circle.hexagongrid.fill
  static const IconData sf_circle_hexagongrid_fill = IconData(0x100663);

  /// IconData for SF Symbol circle.hexagonpath
  static const IconData sf_circle_hexagonpath = IconData(0x100B0E);

  /// IconData for SF Symbol circle.hexagonpath.fill
  static const IconData sf_circle_hexagonpath_fill = IconData(0x100B0F);

  /// IconData for SF Symbol circle.inset.filled
  static const IconData sf_circle_inset_filled = IconData(0x10075C);

  /// IconData for SF Symbol circle.lefthalf.filled
  static const IconData sf_circle_lefthalf_filled = IconData(0x100002);

  /// IconData for SF Symbol circle.lefthalf.filled.inverse
  static const IconData sf_circle_lefthalf_filled_inverse = IconData(0x101E6D);

  /// IconData for SF Symbol circle.lefthalf.filled.righthalf.striped.horizontal
  static const IconData sf_circle_lefthalf_filled_righthalf_striped_horizontal =
      IconData(0x101E63);

  /// IconData for SF Symbol circle.lefthalf.filled.righthalf.striped.horizontal.inverse
  static const IconData
      sf_circle_lefthalf_filled_righthalf_striped_horizontal_inverse =
      IconData(0x101E64);

  /// IconData for SF Symbol circle.lefthalf.striped.horizontal
  static const IconData sf_circle_lefthalf_striped_horizontal =
      IconData(0x101E65);

  /// IconData for SF Symbol circle.lefthalf.striped.horizontal.inverse
  static const IconData sf_circle_lefthalf_striped_horizontal_inverse =
      IconData(0x101E66);

  /// IconData for SF Symbol circle.rectangle.dashed
  static const IconData sf_circle_rectangle_dashed = IconData(0x10166B);

  /// IconData for SF Symbol circle.rectangle.filled.pattern.diagonalline
  static const IconData sf_circle_rectangle_filled_pattern_diagonalline =
      IconData(0x10166D);

  /// IconData for SF Symbol circle.righthalf.filled
  static const IconData sf_circle_righthalf_filled = IconData(0x100003);

  /// IconData for SF Symbol circle.righthalf.filled.inverse
  static const IconData sf_circle_righthalf_filled_inverse = IconData(0x101E6E);

  /// IconData for SF Symbol circle.slash
  static const IconData sf_circle_slash = IconData(0x100EC3);

  /// IconData for SF Symbol circle.slash.fill
  static const IconData sf_circle_slash_fill = IconData(0x100EC4);

  /// IconData for SF Symbol circle.square
  static const IconData sf_circle_square = IconData(0x1009FA);

  /// IconData for SF Symbol circle.square.fill
  static const IconData sf_circle_square_fill = IconData(0x1009FB);

  /// IconData for SF Symbol circle.tophalf.filled
  static const IconData sf_circle_tophalf_filled = IconData(0x100A97);

  /// IconData for SF Symbol circle.tophalf.filled.inverse
  static const IconData sf_circle_tophalf_filled_inverse = IconData(0x101E6F);

  /// IconData for SF Symbol circlebadge
  static const IconData sf_circlebadge = IconData(0x1009D9);

  /// IconData for SF Symbol circlebadge.2
  static const IconData sf_circlebadge_2 = IconData(0x100AF2);

  /// IconData for SF Symbol circlebadge.2.fill
  static const IconData sf_circlebadge_2_fill = IconData(0x1008FD);

  /// IconData for SF Symbol circlebadge.fill
  static const IconData sf_circlebadge_fill = IconData(0x10071E);

  /// IconData for SF Symbol clear
  static const IconData sf_clear = IconData(0x100199);

  /// IconData for SF Symbol clear.fill
  static const IconData sf_clear_fill = IconData(0x10019A);

  /// IconData for SF Symbol clipboard
  static const IconData sf_clipboard = IconData(0x1007F9);

  /// IconData for SF Symbol clipboard.fill
  static const IconData sf_clipboard_fill = IconData(0x1007FA);

  /// IconData for SF Symbol clock
  static const IconData sf_clock = IconData(0x10042B);

  /// IconData for SF Symbol clock.arrow.2.circlepath
  static const IconData sf_clock_arrow_2_circlepath = IconData(0x100BDB);

  /// IconData for SF Symbol clock.arrow.circlepath
  static const IconData sf_clock_arrow_circlepath = IconData(0x1008D4);

  /// IconData for SF Symbol clock.badge
  static const IconData sf_clock_badge = IconData(0x10165C);

  /// IconData for SF Symbol clock.badge.checkmark
  static const IconData sf_clock_badge_checkmark = IconData(0x100E74);

  /// IconData for SF Symbol clock.badge.checkmark.fill
  static const IconData sf_clock_badge_checkmark_fill = IconData(0x100E75);

  /// IconData for SF Symbol clock.badge.exclamationmark
  static const IconData sf_clock_badge_exclamationmark = IconData(0x100E76);

  /// IconData for SF Symbol clock.badge.exclamationmark.fill
  static const IconData sf_clock_badge_exclamationmark_fill =
      IconData(0x100E77);

  /// IconData for SF Symbol clock.badge.fill
  static const IconData sf_clock_badge_fill = IconData(0x10165D);

  /// IconData for SF Symbol clock.badge.questionmark
  static const IconData sf_clock_badge_questionmark = IconData(0x101731);

  /// IconData for SF Symbol clock.badge.questionmark.fill
  static const IconData sf_clock_badge_questionmark_fill = IconData(0x101732);

  /// IconData for SF Symbol clock.badge.xmark
  static const IconData sf_clock_badge_xmark = IconData(0x101712);

  /// IconData for SF Symbol clock.badge.xmark.fill
  static const IconData sf_clock_badge_xmark_fill = IconData(0x101713);

  /// IconData for SF Symbol clock.circle
  static const IconData sf_clock_circle = IconData(0x1011B8);

  /// IconData for SF Symbol clock.circle.fill
  static const IconData sf_clock_circle_fill = IconData(0x1011B9);

  /// IconData for SF Symbol clock.fill
  static const IconData sf_clock_fill = IconData(0x10042C);

  /// IconData for SF Symbol cloud
  static const IconData sf_cloud = IconData(0x1001C2);

  /// IconData for SF Symbol cloud.bolt
  static const IconData sf_cloud_bolt = IconData(0x1001D2);

  /// IconData for SF Symbol cloud.bolt.circle
  static const IconData sf_cloud_bolt_circle = IconData(0x1016DD);

  /// IconData for SF Symbol cloud.bolt.circle.fill
  static const IconData sf_cloud_bolt_circle_fill = IconData(0x1016DE);

  /// IconData for SF Symbol cloud.bolt.fill
  static const IconData sf_cloud_bolt_fill = IconData(0x1001D3);

  /// IconData for SF Symbol cloud.bolt.rain
  static const IconData sf_cloud_bolt_rain = IconData(0x1001DE);

  /// IconData for SF Symbol cloud.bolt.rain.circle
  static const IconData sf_cloud_bolt_rain_circle = IconData(0x1016DF);

  /// IconData for SF Symbol cloud.bolt.rain.circle.fill
  static const IconData sf_cloud_bolt_rain_circle_fill = IconData(0x1016E0);

  /// IconData for SF Symbol cloud.bolt.rain.fill
  static const IconData sf_cloud_bolt_rain_fill = IconData(0x1001DF);

  /// IconData for SF Symbol cloud.circle
  static const IconData sf_cloud_circle = IconData(0x1016CD);

  /// IconData for SF Symbol cloud.circle.fill
  static const IconData sf_cloud_circle_fill = IconData(0x1016CE);

  /// IconData for SF Symbol cloud.drizzle
  static const IconData sf_cloud_drizzle = IconData(0x1001C4);

  /// IconData for SF Symbol cloud.drizzle.circle
  static const IconData sf_cloud_drizzle_circle = IconData(0x1016CF);

  /// IconData for SF Symbol cloud.drizzle.circle.fill
  static const IconData sf_cloud_drizzle_circle_fill = IconData(0x1016D0);

  /// IconData for SF Symbol cloud.drizzle.fill
  static const IconData sf_cloud_drizzle_fill = IconData(0x1001C5);

  /// IconData for SF Symbol cloud.fill
  static const IconData sf_cloud_fill = IconData(0x1001C3);

  /// IconData for SF Symbol cloud.fog
  static const IconData sf_cloud_fog = IconData(0x1001CA);

  /// IconData for SF Symbol cloud.fog.circle
  static const IconData sf_cloud_fog_circle = IconData(0x1016D5);

  /// IconData for SF Symbol cloud.fog.circle.fill
  static const IconData sf_cloud_fog_circle_fill = IconData(0x1016D6);

  /// IconData for SF Symbol cloud.fog.fill
  static const IconData sf_cloud_fog_fill = IconData(0x1001CB);

  /// IconData for SF Symbol cloud.hail
  static const IconData sf_cloud_hail = IconData(0x1001CC);

  /// IconData for SF Symbol cloud.hail.circle
  static const IconData sf_cloud_hail_circle = IconData(0x1016D7);

  /// IconData for SF Symbol cloud.hail.circle.fill
  static const IconData sf_cloud_hail_circle_fill = IconData(0x1016D8);

  /// IconData for SF Symbol cloud.hail.fill
  static const IconData sf_cloud_hail_fill = IconData(0x1001CD);

  /// IconData for SF Symbol cloud.heavyrain
  static const IconData sf_cloud_heavyrain = IconData(0x1001C8);

  /// IconData for SF Symbol cloud.heavyrain.circle
  static const IconData sf_cloud_heavyrain_circle = IconData(0x1016D3);

  /// IconData for SF Symbol cloud.heavyrain.circle.fill
  static const IconData sf_cloud_heavyrain_circle_fill = IconData(0x1016D4);

  /// IconData for SF Symbol cloud.heavyrain.fill
  static const IconData sf_cloud_heavyrain_fill = IconData(0x1001C9);

  /// IconData for SF Symbol cloud.moon
  static const IconData sf_cloud_moon = IconData(0x1001DA);

  /// IconData for SF Symbol cloud.moon.bolt
  static const IconData sf_cloud_moon_bolt = IconData(0x1001E0);

  /// IconData for SF Symbol cloud.moon.bolt.circle
  static const IconData sf_cloud_moon_bolt_circle = IconData(0x1016EB);

  /// IconData for SF Symbol cloud.moon.bolt.circle.fill
  static const IconData sf_cloud_moon_bolt_circle_fill = IconData(0x1016EC);

  /// IconData for SF Symbol cloud.moon.bolt.fill
  static const IconData sf_cloud_moon_bolt_fill = IconData(0x1001E1);

  /// IconData for SF Symbol cloud.moon.circle
  static const IconData sf_cloud_moon_circle = IconData(0x1016E7);

  /// IconData for SF Symbol cloud.moon.circle.fill
  static const IconData sf_cloud_moon_circle_fill = IconData(0x1016E8);

  /// IconData for SF Symbol cloud.moon.fill
  static const IconData sf_cloud_moon_fill = IconData(0x1001DB);

  /// IconData for SF Symbol cloud.moon.rain
  static const IconData sf_cloud_moon_rain = IconData(0x1001DC);

  /// IconData for SF Symbol cloud.moon.rain.circle
  static const IconData sf_cloud_moon_rain_circle = IconData(0x1016E9);

  /// IconData for SF Symbol cloud.moon.rain.circle.fill
  static const IconData sf_cloud_moon_rain_circle_fill = IconData(0x1016EA);

  /// IconData for SF Symbol cloud.moon.rain.fill
  static const IconData sf_cloud_moon_rain_fill = IconData(0x1001DD);

  /// IconData for SF Symbol cloud.rain
  static const IconData sf_cloud_rain = IconData(0x1001C6);

  /// IconData for SF Symbol cloud.rain.circle
  static const IconData sf_cloud_rain_circle = IconData(0x1016D1);

  /// IconData for SF Symbol cloud.rain.circle.fill
  static const IconData sf_cloud_rain_circle_fill = IconData(0x1016D2);

  /// IconData for SF Symbol cloud.rain.fill
  static const IconData sf_cloud_rain_fill = IconData(0x1001C7);

  /// IconData for SF Symbol cloud.rainbow.half
  static const IconData sf_cloud_rainbow_half = IconData(0x101DDE);

  /// IconData for SF Symbol cloud.rainbow.half.fill
  static const IconData sf_cloud_rainbow_half_fill = IconData(0x101DE0);

  /// IconData for SF Symbol cloud.sleet
  static const IconData sf_cloud_sleet = IconData(0x1001D0);

  /// IconData for SF Symbol cloud.sleet.circle
  static const IconData sf_cloud_sleet_circle = IconData(0x1016DB);

  /// IconData for SF Symbol cloud.sleet.circle.fill
  static const IconData sf_cloud_sleet_circle_fill = IconData(0x1016DC);

  /// IconData for SF Symbol cloud.sleet.fill
  static const IconData sf_cloud_sleet_fill = IconData(0x1001D1);

  /// IconData for SF Symbol cloud.snow
  static const IconData sf_cloud_snow = IconData(0x1001CE);

  /// IconData for SF Symbol cloud.snow.circle
  static const IconData sf_cloud_snow_circle = IconData(0x1016D9);

  /// IconData for SF Symbol cloud.snow.circle.fill
  static const IconData sf_cloud_snow_circle_fill = IconData(0x1016DA);

  /// IconData for SF Symbol cloud.snow.fill
  static const IconData sf_cloud_snow_fill = IconData(0x1001CF);

  /// IconData for SF Symbol cloud.sun
  static const IconData sf_cloud_sun = IconData(0x1001D4);

  /// IconData for SF Symbol cloud.sun.bolt
  static const IconData sf_cloud_sun_bolt = IconData(0x1001D8);

  /// IconData for SF Symbol cloud.sun.bolt.circle
  static const IconData sf_cloud_sun_bolt_circle = IconData(0x1016E5);

  /// IconData for SF Symbol cloud.sun.bolt.circle.fill
  static const IconData sf_cloud_sun_bolt_circle_fill = IconData(0x1016E6);

  /// IconData for SF Symbol cloud.sun.bolt.fill
  static const IconData sf_cloud_sun_bolt_fill = IconData(0x1001D9);

  /// IconData for SF Symbol cloud.sun.circle
  static const IconData sf_cloud_sun_circle = IconData(0x1016E1);

  /// IconData for SF Symbol cloud.sun.circle.fill
  static const IconData sf_cloud_sun_circle_fill = IconData(0x1016E2);

  /// IconData for SF Symbol cloud.sun.fill
  static const IconData sf_cloud_sun_fill = IconData(0x1001D5);

  /// IconData for SF Symbol cloud.sun.rain
  static const IconData sf_cloud_sun_rain = IconData(0x1001D6);

  /// IconData for SF Symbol cloud.sun.rain.circle
  static const IconData sf_cloud_sun_rain_circle = IconData(0x1016E3);

  /// IconData for SF Symbol cloud.sun.rain.circle.fill
  static const IconData sf_cloud_sun_rain_circle_fill = IconData(0x1016E4);

  /// IconData for SF Symbol cloud.sun.rain.fill
  static const IconData sf_cloud_sun_rain_fill = IconData(0x1001D7);

  /// IconData for SF Symbol coloncurrencysign
  static const IconData sf_coloncurrencysign = IconData(0x101454);

  /// IconData for SF Symbol coloncurrencysign.arrow.circlepath
  static const IconData sf_coloncurrencysign_arrow_circlepath =
      IconData(0x102227);

  /// IconData for SF Symbol coloncurrencysign.circle
  static const IconData sf_coloncurrencysign_circle = IconData(0x1005C1);

  /// IconData for SF Symbol coloncurrencysign.circle.fill
  static const IconData sf_coloncurrencysign_circle_fill = IconData(0x1005C2);

  /// IconData for SF Symbol coloncurrencysign.square
  static const IconData sf_coloncurrencysign_square = IconData(0x100601);

  /// IconData for SF Symbol coloncurrencysign.square.fill
  static const IconData sf_coloncurrencysign_square_fill = IconData(0x100602);

  /// IconData for SF Symbol comb
  static const IconData sf_comb = IconData(0x100988);

  /// IconData for SF Symbol comb.fill
  static const IconData sf_comb_fill = IconData(0x100989);

  /// IconData for SF Symbol command
  static const IconData sf_command = IconData(0x100194);

  /// IconData for SF Symbol command.circle
  static const IconData sf_command_circle = IconData(0x100A7F);

  /// IconData for SF Symbol command.circle.fill
  static const IconData sf_command_circle_fill = IconData(0x100A80);

  /// IconData for SF Symbol command.square
  static const IconData sf_command_square = IconData(0x100A81);

  /// IconData for SF Symbol command.square.fill
  static const IconData sf_command_square_fill = IconData(0x100A82);

  /// IconData for SF Symbol compass.drawing
  static const IconData sf_compass_drawing = IconData(0x101517);

  /// IconData for SF Symbol computermouse
  static const IconData sf_computermouse = IconData(0x100EA3);

  /// IconData for SF Symbol computermouse.fill
  static const IconData sf_computermouse_fill = IconData(0x100EA4);

  /// IconData for SF Symbol cone
  static const IconData sf_cone = IconData(0x100CC7);

  /// IconData for SF Symbol cone.fill
  static const IconData sf_cone_fill = IconData(0x100CC8);

  /// IconData for SF Symbol contact.sensor
  static const IconData sf_contact_sensor = IconData(0x1014BA);

  /// IconData for SF Symbol contact.sensor.fill
  static const IconData sf_contact_sensor_fill = IconData(0x1014BB);

  /// IconData for SF Symbol contextualmenu.and.cursorarrow
  static const IconData sf_contextualmenu_and_cursorarrow = IconData(0x100B48);

  /// IconData for SF Symbol control
  static const IconData sf_control = IconData(0x10018D);

  /// IconData for SF Symbol cooktop
  static const IconData sf_cooktop = IconData(0x101560);

  /// IconData for SF Symbol cooktop.fill
  static const IconData sf_cooktop_fill = IconData(0x101561);

  /// IconData for SF Symbol cpu
  static const IconData sf_cpu = IconData(0x100AE5);

  /// IconData for SF Symbol cpu.fill
  static const IconData sf_cpu_fill = IconData(0x1009D3);

  /// IconData for SF Symbol creditcard
  static const IconData sf_creditcard = IconData(0x10036F);

  /// IconData for SF Symbol creditcard.and.123
  static const IconData sf_creditcard_and_123 = IconData(0x1010A8);

  /// IconData for SF Symbol creditcard.circle
  static const IconData sf_creditcard_circle = IconData(0x1004AF);

  /// IconData for SF Symbol creditcard.circle.fill
  static const IconData sf_creditcard_circle_fill = IconData(0x1004B0);

  /// IconData for SF Symbol creditcard.fill
  static const IconData sf_creditcard_fill = IconData(0x100370);

  /// IconData for SF Symbol creditcard.trianglebadge.exclamationmark
  static const IconData sf_creditcard_trianglebadge_exclamationmark =
      IconData(0x10112D);

  /// IconData for SF Symbol creditcard.trianglebadge.exclamationmark.fill
  static const IconData sf_creditcard_trianglebadge_exclamationmark_fill =
      IconData(0x1018D0);

  /// IconData for SF Symbol creditcard.viewfinder
  static const IconData sf_creditcard_viewfinder = IconData(0x101514);

  /// IconData for SF Symbol cricket.ball
  static const IconData sf_cricket_ball = IconData(0x101701);

  /// IconData for SF Symbol cricket.ball.circle
  static const IconData sf_cricket_ball_circle = IconData(0x101703);

  /// IconData for SF Symbol cricket.ball.circle.fill
  static const IconData sf_cricket_ball_circle_fill = IconData(0x101704);

  /// IconData for SF Symbol cricket.ball.fill
  static const IconData sf_cricket_ball_fill = IconData(0x101702);

  /// IconData for SF Symbol crop
  static const IconData sf_crop = IconData(0x100373);

  /// IconData for SF Symbol crop.rotate
  static const IconData sf_crop_rotate = IconData(0x100374);

  /// IconData for SF Symbol cross
  static const IconData sf_cross = IconData(0x1008DC);

  /// IconData for SF Symbol cross.case
  static const IconData sf_cross_case = IconData(0x100BD9);

  /// IconData for SF Symbol cross.case.circle
  static const IconData sf_cross_case_circle = IconData(0x10177E);

  /// IconData for SF Symbol cross.case.circle.fill
  static const IconData sf_cross_case_circle_fill = IconData(0x10177F);

  /// IconData for SF Symbol cross.case.fill
  static const IconData sf_cross_case_fill = IconData(0x100BDA);

  /// IconData for SF Symbol cross.circle
  static const IconData sf_cross_circle = IconData(0x1008DE);

  /// IconData for SF Symbol cross.circle.fill
  static const IconData sf_cross_circle_fill = IconData(0x1008DF);

  /// IconData for SF Symbol cross.fill
  static const IconData sf_cross_fill = IconData(0x1008DD);

  /// IconData for SF Symbol cross.vial
  static const IconData sf_cross_vial = IconData(0x100F18);

  /// IconData for SF Symbol cross.vial.fill
  static const IconData sf_cross_vial_fill = IconData(0x100F19);

  /// IconData for SF Symbol crown
  static const IconData sf_crown = IconData(0x100985);

  /// IconData for SF Symbol crown.fill
  static const IconData sf_crown_fill = IconData(0x100986);

  /// IconData for SF Symbol cruzeirosign
  static const IconData sf_cruzeirosign = IconData(0x101456);

  /// IconData for SF Symbol cruzeirosign.arrow.circlepath
  static const IconData sf_cruzeirosign_arrow_circlepath = IconData(0x102229);

  /// IconData for SF Symbol cruzeirosign.circle
  static const IconData sf_cruzeirosign_circle = IconData(0x1005C5);

  /// IconData for SF Symbol cruzeirosign.circle.fill
  static const IconData sf_cruzeirosign_circle_fill = IconData(0x1005C6);

  /// IconData for SF Symbol cruzeirosign.square
  static const IconData sf_cruzeirosign_square = IconData(0x100605);

  /// IconData for SF Symbol cruzeirosign.square.fill
  static const IconData sf_cruzeirosign_square_fill = IconData(0x100606);

  /// IconData for SF Symbol cube
  static const IconData sf_cube = IconData(0x100418);

  /// IconData for SF Symbol cube.fill
  static const IconData sf_cube_fill = IconData(0x100419);

  /// IconData for SF Symbol cube.transparent
  static const IconData sf_cube_transparent = IconData(0x100B28);

  /// IconData for SF Symbol cube.transparent.fill
  static const IconData sf_cube_transparent_fill = IconData(0x100CF4);

  /// IconData for SF Symbol cup.and.saucer
  static const IconData sf_cup_and_saucer = IconData(0x100E18);

  /// IconData for SF Symbol cup.and.saucer.fill
  static const IconData sf_cup_and_saucer_fill = IconData(0x100E19);

  /// IconData for SF Symbol curlybraces
  static const IconData sf_curlybraces = IconData(0x100845);

  /// IconData for SF Symbol curlybraces.square
  static const IconData sf_curlybraces_square = IconData(0x100918);

  /// IconData for SF Symbol curlybraces.square.fill
  static const IconData sf_curlybraces_square_fill = IconData(0x100919);

  /// IconData for SF Symbol cursorarrow
  static const IconData sf_cursorarrow = IconData(0x100ACC);

  /// IconData for SF Symbol cursorarrow.and.square.on.square.dashed
  static const IconData sf_cursorarrow_and_square_on_square_dashed =
      IconData(0x100B90);

  /// IconData for SF Symbol cursorarrow.click
  static const IconData sf_cursorarrow_click = IconData(0x100B46);

  /// IconData for SF Symbol cursorarrow.click.2
  static const IconData sf_cursorarrow_click_2 = IconData(0x100B47);

  /// IconData for SF Symbol cursorarrow.click.badge.clock
  static const IconData sf_cursorarrow_click_badge_clock = IconData(0x100BB4);

  /// IconData for SF Symbol cursorarrow.motionlines
  static const IconData sf_cursorarrow_motionlines = IconData(0x1008E0);

  /// IconData for SF Symbol cursorarrow.motionlines.click
  static const IconData sf_cursorarrow_motionlines_click = IconData(0x1008E1);

  /// IconData for SF Symbol cursorarrow.rays
  static const IconData sf_cursorarrow_rays = IconData(0x1001F0);

  /// IconData for SF Symbol cursorarrow.slash
  static const IconData sf_cursorarrow_slash = IconData(0x101DC1);

  /// IconData for SF Symbol cursorarrow.slash.square
  static const IconData sf_cursorarrow_slash_square = IconData(0x101DC2);

  /// IconData for SF Symbol cursorarrow.slash.square.fill
  static const IconData sf_cursorarrow_slash_square_fill = IconData(0x101DC3);

  /// IconData for SF Symbol cursorarrow.square
  static const IconData sf_cursorarrow_square = IconData(0x100B45);

  /// IconData for SF Symbol cursorarrow.square.fill
  static const IconData sf_cursorarrow_square_fill = IconData(0x101680);

  /// IconData for SF Symbol curtains.closed
  static const IconData sf_curtains_closed = IconData(0x101478);

  /// IconData for SF Symbol curtains.open
  static const IconData sf_curtains_open = IconData(0x101477);

  /// IconData for SF Symbol cylinder
  static const IconData sf_cylinder = IconData(0x100CC3);

  /// IconData for SF Symbol cylinder.fill
  static const IconData sf_cylinder_fill = IconData(0x100CC4);

  /// IconData for SF Symbol cylinder.split.1x2
  static const IconData sf_cylinder_split_1x2 = IconData(0x100853);

  /// IconData for SF Symbol cylinder.split.1x2.fill
  static const IconData sf_cylinder_split_1x2_fill = IconData(0x100854);

  /// IconData for SF Symbol d.circle
  static const IconData sf_d_circle = IconData(0x10000A);

  /// IconData for SF Symbol d.circle.fill
  static const IconData sf_d_circle_fill = IconData(0x10000B);

  /// IconData for SF Symbol d.square
  static const IconData sf_d_square = IconData(0x10009A);

  /// IconData for SF Symbol d.square.fill
  static const IconData sf_d_square_fill = IconData(0x10009B);

  /// IconData for SF Symbol danishkronesign
  static const IconData sf_danishkronesign = IconData(0x10192E);

  /// IconData for SF Symbol danishkronesign.arrow.circlepath
  static const IconData sf_danishkronesign_arrow_circlepath =
      IconData(0x102237);

  /// IconData for SF Symbol danishkronesign.circle
  static const IconData sf_danishkronesign_circle = IconData(0x100BAC);

  /// IconData for SF Symbol danishkronesign.circle.fill
  static const IconData sf_danishkronesign_circle_fill = IconData(0x100BAD);

  /// IconData for SF Symbol danishkronesign.square
  static const IconData sf_danishkronesign_square = IconData(0x100BAE);

  /// IconData for SF Symbol danishkronesign.square.fill
  static const IconData sf_danishkronesign_square_fill = IconData(0x100BAF);

  /// IconData for SF Symbol decrease.indent
  static const IconData sf_decrease_indent = IconData(0x1002F6);

  /// IconData for SF Symbol decrease.quotelevel
  static const IconData sf_decrease_quotelevel = IconData(0x10077F);

  /// IconData for SF Symbol dehumidifier
  static const IconData sf_dehumidifier = IconData(0x1014E7);

  /// IconData for SF Symbol dehumidifier.fill
  static const IconData sf_dehumidifier_fill = IconData(0x1014E8);

  /// IconData for SF Symbol delete.backward
  static const IconData sf_delete_backward = IconData(0x101088);

  /// IconData for SF Symbol delete.backward.fill
  static const IconData sf_delete_backward_fill = IconData(0x101089);

  /// IconData for SF Symbol delete.forward
  static const IconData sf_delete_forward = IconData(0x101092);

  /// IconData for SF Symbol delete.forward.fill
  static const IconData sf_delete_forward_fill = IconData(0x101093);

  /// IconData for SF Symbol delete.left
  static const IconData sf_delete_left = IconData(0x10019B);

  /// IconData for SF Symbol delete.left.fill
  static const IconData sf_delete_left_fill = IconData(0x10019C);

  /// IconData for SF Symbol delete.right
  static const IconData sf_delete_right = IconData(0x100197);

  /// IconData for SF Symbol delete.right.fill
  static const IconData sf_delete_right_fill = IconData(0x100198);

  /// IconData for SF Symbol deskclock
  static const IconData sf_deskclock = IconData(0x100851);

  /// IconData for SF Symbol deskclock.fill
  static const IconData sf_deskclock_fill = IconData(0x100852);

  /// IconData for SF Symbol desktopcomputer
  static const IconData sf_desktopcomputer = IconData(0x100657);

  /// IconData for SF Symbol desktopcomputer.and.arrow.down
  static const IconData sf_desktopcomputer_and_arrow_down = IconData(0x100DBE);

  /// IconData for SF Symbol desktopcomputer.trianglebadge.exclamationmark
  static const IconData sf_desktopcomputer_trianglebadge_exclamationmark =
      IconData(0x1010C3);

  /// IconData for SF Symbol deskview
  static const IconData sf_deskview = IconData(0x101663);

  /// IconData for SF Symbol deskview.fill
  static const IconData sf_deskview_fill = IconData(0x101664);

  /// IconData for SF Symbol dial.high
  static const IconData sf_dial_high = IconData(0x100A90);

  /// IconData for SF Symbol dial.high.fill
  static const IconData sf_dial_high_fill = IconData(0x100A91);

  /// IconData for SF Symbol dial.low
  static const IconData sf_dial_low = IconData(0x10037A);

  /// IconData for SF Symbol dial.low.fill
  static const IconData sf_dial_low_fill = IconData(0x10037B);

  /// IconData for SF Symbol dial.medium
  static const IconData sf_dial_medium = IconData(0x1013B4);

  /// IconData for SF Symbol dial.medium.fill
  static const IconData sf_dial_medium_fill = IconData(0x1013B5);

  /// IconData for SF Symbol diamond
  static const IconData sf_diamond = IconData(0x1007C8);

  /// IconData for SF Symbol diamond.bottomhalf.filled
  static const IconData sf_diamond_bottomhalf_filled = IconData(0x101006);

  /// IconData for SF Symbol diamond.circle
  static const IconData sf_diamond_circle = IconData(0x1011E1);

  /// IconData for SF Symbol diamond.circle.fill
  static const IconData sf_diamond_circle_fill = IconData(0x1011E2);

  /// IconData for SF Symbol diamond.fill
  static const IconData sf_diamond_fill = IconData(0x1007C9);

  /// IconData for SF Symbol diamond.inset.filled
  static const IconData sf_diamond_inset_filled = IconData(0x100F97);

  /// IconData for SF Symbol diamond.lefthalf.filled
  static const IconData sf_diamond_lefthalf_filled = IconData(0x101003);

  /// IconData for SF Symbol diamond.righthalf.filled
  static const IconData sf_diamond_righthalf_filled = IconData(0x101004);

  /// IconData for SF Symbol diamond.tophalf.filled
  static const IconData sf_diamond_tophalf_filled = IconData(0x101005);

  /// IconData for SF Symbol dice
  static const IconData sf_dice = IconData(0x100EB4);

  /// IconData for SF Symbol dice.fill
  static const IconData sf_dice_fill = IconData(0x100EB5);

  /// IconData for SF Symbol die.face.1
  static const IconData sf_die_face_1 = IconData(0x1009E3);

  /// IconData for SF Symbol die.face.1.fill
  static const IconData sf_die_face_1_fill = IconData(0x1009E4);

  /// IconData for SF Symbol die.face.2
  static const IconData sf_die_face_2 = IconData(0x1009E5);

  /// IconData for SF Symbol die.face.2.fill
  static const IconData sf_die_face_2_fill = IconData(0x1009E6);

  /// IconData for SF Symbol die.face.3
  static const IconData sf_die_face_3 = IconData(0x1009E7);

  /// IconData for SF Symbol die.face.3.fill
  static const IconData sf_die_face_3_fill = IconData(0x1009E8);

  /// IconData for SF Symbol die.face.4
  static const IconData sf_die_face_4 = IconData(0x1009E9);

  /// IconData for SF Symbol die.face.4.fill
  static const IconData sf_die_face_4_fill = IconData(0x1009EA);

  /// IconData for SF Symbol die.face.5
  static const IconData sf_die_face_5 = IconData(0x1009EB);

  /// IconData for SF Symbol die.face.5.fill
  static const IconData sf_die_face_5_fill = IconData(0x1009EC);

  /// IconData for SF Symbol die.face.6
  static const IconData sf_die_face_6 = IconData(0x1009ED);

  /// IconData for SF Symbol die.face.6.fill
  static const IconData sf_die_face_6_fill = IconData(0x1009EE);

  /// IconData for SF Symbol digitalcrown.arrow.clockwise
  static const IconData sf_digitalcrown_arrow_clockwise = IconData(0x100ED6);

  /// IconData for SF Symbol digitalcrown.arrow.clockwise.fill
  static const IconData sf_digitalcrown_arrow_clockwise_fill =
      IconData(0x100ED7);

  /// IconData for SF Symbol digitalcrown.arrow.counterclockwise
  static const IconData sf_digitalcrown_arrow_counterclockwise =
      IconData(0x100ED8);

  /// IconData for SF Symbol digitalcrown.arrow.counterclockwise.fill
  static const IconData sf_digitalcrown_arrow_counterclockwise_fill =
      IconData(0x100ED9);

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.clockwise
  static const IconData sf_digitalcrown_horizontal_arrow_clockwise =
      IconData(0x100EF1);

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.clockwise.fill
  static const IconData sf_digitalcrown_horizontal_arrow_clockwise_fill =
      IconData(0x100EF2);

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.counterclockwise
  static const IconData sf_digitalcrown_horizontal_arrow_counterclockwise =
      IconData(0x100EF3);

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.counterclockwise.fill
  static const IconData sf_digitalcrown_horizontal_arrow_counterclockwise_fill =
      IconData(0x100EF4);

  /// IconData for SF Symbol digitalcrown.horizontal.press
  static const IconData sf_digitalcrown_horizontal_press = IconData(0x100D23);

  /// IconData for SF Symbol digitalcrown.horizontal.press.fill
  static const IconData sf_digitalcrown_horizontal_press_fill =
      IconData(0x100D24);

  /// IconData for SF Symbol digitalcrown.press
  static const IconData sf_digitalcrown_press = IconData(0x100D21);

  /// IconData for SF Symbol digitalcrown.press.fill
  static const IconData sf_digitalcrown_press_fill = IconData(0x100D22);

  /// IconData for SF Symbol directcurrent
  static const IconData sf_directcurrent = IconData(0x100BDD);

  /// IconData for SF Symbol dishwasher
  static const IconData sf_dishwasher = IconData(0x101422);

  /// IconData for SF Symbol dishwasher.circle
  static const IconData sf_dishwasher_circle = IconData(0x101FD6);

  /// IconData for SF Symbol dishwasher.circle.fill
  static const IconData sf_dishwasher_circle_fill = IconData(0x101FD7);

  /// IconData for SF Symbol dishwasher.fill
  static const IconData sf_dishwasher_fill = IconData(0x101423);

  /// IconData for SF Symbol display
  static const IconData sf_display = IconData(0x1008B9);

  /// IconData for SF Symbol display.2
  static const IconData sf_display_2 = IconData(0x100A27);

  /// IconData for SF Symbol display.and.arrow.down
  static const IconData sf_display_and_arrow_down = IconData(0x100DBD);

  /// IconData for SF Symbol display.trianglebadge.exclamationmark
  static const IconData sf_display_trianglebadge_exclamationmark =
      IconData(0x100A26);

  /// IconData for SF Symbol distribute.horizontal.center
  static const IconData sf_distribute_horizontal_center = IconData(0x10160A);

  /// IconData for SF Symbol distribute.horizontal.center.fill
  static const IconData sf_distribute_horizontal_center_fill =
      IconData(0x10160B);

  /// IconData for SF Symbol distribute.horizontal.left
  static const IconData sf_distribute_horizontal_left = IconData(0x101608);

  /// IconData for SF Symbol distribute.horizontal.left.fill
  static const IconData sf_distribute_horizontal_left_fill = IconData(0x101609);

  /// IconData for SF Symbol distribute.horizontal.right
  static const IconData sf_distribute_horizontal_right = IconData(0x10160C);

  /// IconData for SF Symbol distribute.horizontal.right.fill
  static const IconData sf_distribute_horizontal_right_fill =
      IconData(0x10160D);

  /// IconData for SF Symbol distribute.vertical.bottom
  static const IconData sf_distribute_vertical_bottom = IconData(0x101606);

  /// IconData for SF Symbol distribute.vertical.bottom.fill
  static const IconData sf_distribute_vertical_bottom_fill = IconData(0x101607);

  /// IconData for SF Symbol distribute.vertical.center
  static const IconData sf_distribute_vertical_center = IconData(0x101604);

  /// IconData for SF Symbol distribute.vertical.center.fill
  static const IconData sf_distribute_vertical_center_fill = IconData(0x101605);

  /// IconData for SF Symbol distribute.vertical.top
  static const IconData sf_distribute_vertical_top = IconData(0x101602);

  /// IconData for SF Symbol distribute.vertical.top.fill
  static const IconData sf_distribute_vertical_top_fill = IconData(0x101603);

  /// IconData for SF Symbol divide
  static const IconData sf_divide = IconData(0x10017F);

  /// IconData for SF Symbol divide.circle
  static const IconData sf_divide_circle = IconData(0x100052);

  /// IconData for SF Symbol divide.circle.fill
  static const IconData sf_divide_circle_fill = IconData(0x100053);

  /// IconData for SF Symbol divide.square
  static const IconData sf_divide_square = IconData(0x1000E2);

  /// IconData for SF Symbol divide.square.fill
  static const IconData sf_divide_square_fill = IconData(0x1000E3);

  /// IconData for SF Symbol doc
  static const IconData sf_doc = IconData(0x100237);

  /// IconData for SF Symbol doc.append
  static const IconData sf_doc_append = IconData(0x100247);

  /// IconData for SF Symbol doc.append.fill
  static const IconData sf_doc_append_fill = IconData(0x10098B);

  /// IconData for SF Symbol doc.badge.arrow.up
  static const IconData sf_doc_badge_arrow_up = IconData(0x101661);

  /// IconData for SF Symbol doc.badge.arrow.up.fill
  static const IconData sf_doc_badge_arrow_up_fill = IconData(0x101662);

  /// IconData for SF Symbol doc.badge.clock
  static const IconData sf_doc_badge_clock = IconData(0x100AFE);

  /// IconData for SF Symbol doc.badge.clock.fill
  static const IconData sf_doc_badge_clock_fill = IconData(0x100AFF);

  /// IconData for SF Symbol doc.badge.ellipsis
  static const IconData sf_doc_badge_ellipsis = IconData(0x100A74);

  /// IconData for SF Symbol doc.badge.gearshape
  static const IconData sf_doc_badge_gearshape = IconData(0x100A5A);

  /// IconData for SF Symbol doc.badge.gearshape.fill
  static const IconData sf_doc_badge_gearshape_fill = IconData(0x100A5B);

  /// IconData for SF Symbol doc.badge.plus
  static const IconData sf_doc_badge_plus = IconData(0x1008D7);

  /// IconData for SF Symbol doc.circle
  static const IconData sf_doc_circle = IconData(0x100239);

  /// IconData for SF Symbol doc.circle.fill
  static const IconData sf_doc_circle_fill = IconData(0x10023A);

  /// IconData for SF Symbol doc.fill
  static const IconData sf_doc_fill = IconData(0x100238);

  /// IconData for SF Symbol doc.fill.badge.ellipsis
  static const IconData sf_doc_fill_badge_ellipsis = IconData(0x100A75);

  /// IconData for SF Symbol doc.fill.badge.plus
  static const IconData sf_doc_fill_badge_plus = IconData(0x1008D8);

  /// IconData for SF Symbol doc.on.clipboard
  static const IconData sf_doc_on_clipboard = IconData(0x100243);

  /// IconData for SF Symbol doc.on.clipboard.fill
  static const IconData sf_doc_on_clipboard_fill = IconData(0x100244);

  /// IconData for SF Symbol doc.on.doc
  static const IconData sf_doc_on_doc = IconData(0x100241);

  /// IconData for SF Symbol doc.on.doc.fill
  static const IconData sf_doc_on_doc_fill = IconData(0x100242);

  /// IconData for SF Symbol doc.plaintext
  static const IconData sf_doc_plaintext = IconData(0x100246);

  /// IconData for SF Symbol doc.plaintext.fill
  static const IconData sf_doc_plaintext_fill = IconData(0x100968);

  /// IconData for SF Symbol doc.questionmark
  static const IconData sf_doc_questionmark = IconData(0x1021F2);

  /// IconData for SF Symbol doc.questionmark.fill
  static const IconData sf_doc_questionmark_fill = IconData(0x1021F3);

  /// IconData for SF Symbol doc.richtext
  static const IconData sf_doc_richtext = IconData(0x100245);

  /// IconData for SF Symbol doc.richtext.fill
  static const IconData sf_doc_richtext_fill = IconData(0x10098A);

  /// IconData for SF Symbol doc.text
  static const IconData sf_doc_text = IconData(0x10023F);

  /// IconData for SF Symbol doc.text.below.ecg
  static const IconData sf_doc_text_below_ecg = IconData(0x100CFC);

  /// IconData for SF Symbol doc.text.below.ecg.fill
  static const IconData sf_doc_text_below_ecg_fill = IconData(0x100CFD);

  /// IconData for SF Symbol doc.text.fill
  static const IconData sf_doc_text_fill = IconData(0x100240);

  /// IconData for SF Symbol doc.text.image
  static const IconData sf_doc_text_image = IconData(0x100A7D);

  /// IconData for SF Symbol doc.text.image.fill
  static const IconData sf_doc_text_image_fill = IconData(0x100A7E);

  /// IconData for SF Symbol doc.text.magnifyingglass
  static const IconData sf_doc_text_magnifyingglass = IconData(0x100579);

  /// IconData for SF Symbol doc.viewfinder
  static const IconData sf_doc_viewfinder = IconData(0x1003BE);

  /// IconData for SF Symbol doc.viewfinder.fill
  static const IconData sf_doc_viewfinder_fill = IconData(0x100862);

  /// IconData for SF Symbol doc.zipper
  static const IconData sf_doc_zipper = IconData(0x100927);

  /// IconData for SF Symbol dock.arrow.down.rectangle
  static const IconData sf_dock_arrow_down_rectangle = IconData(0x1008FF);

  /// IconData for SF Symbol dock.arrow.up.rectangle
  static const IconData sf_dock_arrow_up_rectangle = IconData(0x1008FE);

  /// IconData for SF Symbol dock.rectangle
  static const IconData sf_dock_rectangle = IconData(0x1003DE);

  /// IconData for SF Symbol dog
  static const IconData sf_dog = IconData(0x102006);

  /// IconData for SF Symbol dog.circle
  static const IconData sf_dog_circle = IconData(0x10203E);

  /// IconData for SF Symbol dog.circle.fill
  static const IconData sf_dog_circle_fill = IconData(0x10203F);

  /// IconData for SF Symbol dog.fill
  static const IconData sf_dog_fill = IconData(0x102007);

  /// IconData for SF Symbol dollarsign
  static const IconData sf_dollarsign = IconData(0x1013A2);

  /// IconData for SF Symbol dollarsign.arrow.circlepath
  static const IconData sf_dollarsign_arrow_circlepath = IconData(0x1013A3);

  /// IconData for SF Symbol dollarsign.circle
  static const IconData sf_dollarsign_circle = IconData(0x100597);

  /// IconData for SF Symbol dollarsign.circle.fill
  static const IconData sf_dollarsign_circle_fill = IconData(0x100598);

  /// IconData for SF Symbol dollarsign.square
  static const IconData sf_dollarsign_square = IconData(0x1005D7);

  /// IconData for SF Symbol dollarsign.square.fill
  static const IconData sf_dollarsign_square_fill = IconData(0x1005D8);

  /// IconData for SF Symbol dongsign
  static const IconData sf_dongsign = IconData(0x101448);

  /// IconData for SF Symbol dongsign.arrow.circlepath
  static const IconData sf_dongsign_arrow_circlepath = IconData(0x10221B);

  /// IconData for SF Symbol dongsign.circle
  static const IconData sf_dongsign_circle = IconData(0x1005A9);

  /// IconData for SF Symbol dongsign.circle.fill
  static const IconData sf_dongsign_circle_fill = IconData(0x1005AA);

  /// IconData for SF Symbol dongsign.square
  static const IconData sf_dongsign_square = IconData(0x1005E9);

  /// IconData for SF Symbol dongsign.square.fill
  static const IconData sf_dongsign_square_fill = IconData(0x1005EA);

  /// IconData for SF Symbol door.french.closed
  static const IconData sf_door_french_closed = IconData(0x1013E7);

  /// IconData for SF Symbol door.french.open
  static const IconData sf_door_french_open = IconData(0x1013E6);

  /// IconData for SF Symbol door.garage.closed
  static const IconData sf_door_garage_closed = IconData(0x1013E1);

  /// IconData for SF Symbol door.garage.closed.trianglebadge.exclamationmark
  static const IconData sf_door_garage_closed_trianglebadge_exclamationmark =
      IconData(0x101621);

  /// IconData for SF Symbol door.garage.double.bay.closed
  static const IconData sf_door_garage_double_bay_closed = IconData(0x1013ED);

  /// IconData for SF Symbol door.garage.double.bay.closed.trianglebadge.exclamationmark
  static const IconData
      sf_door_garage_double_bay_closed_trianglebadge_exclamationmark =
      IconData(0x101623);

  /// IconData for SF Symbol door.garage.double.bay.open
  static const IconData sf_door_garage_double_bay_open = IconData(0x1013EC);

  /// IconData for SF Symbol door.garage.double.bay.open.trianglebadge.exclamationmark
  static const IconData
      sf_door_garage_double_bay_open_trianglebadge_exclamationmark =
      IconData(0x101622);

  /// IconData for SF Symbol door.garage.open
  static const IconData sf_door_garage_open = IconData(0x1013E0);

  /// IconData for SF Symbol door.garage.open.trianglebadge.exclamationmark
  static const IconData sf_door_garage_open_trianglebadge_exclamationmark =
      IconData(0x101620);

  /// IconData for SF Symbol door.left.hand.closed
  static const IconData sf_door_left_hand_closed = IconData(0x1013DD);

  /// IconData for SF Symbol door.left.hand.open
  static const IconData sf_door_left_hand_open = IconData(0x1013DC);

  /// IconData for SF Symbol door.right.hand.closed
  static const IconData sf_door_right_hand_closed = IconData(0x1013E9);

  /// IconData for SF Symbol door.right.hand.open
  static const IconData sf_door_right_hand_open = IconData(0x1013E8);

  /// IconData for SF Symbol door.sliding.left.hand.closed
  static const IconData sf_door_sliding_left_hand_closed = IconData(0x1013DF);

  /// IconData for SF Symbol door.sliding.left.hand.open
  static const IconData sf_door_sliding_left_hand_open = IconData(0x1013DE);

  /// IconData for SF Symbol door.sliding.right.hand.closed
  static const IconData sf_door_sliding_right_hand_closed = IconData(0x1013EB);

  /// IconData for SF Symbol door.sliding.right.hand.open
  static const IconData sf_door_sliding_right_hand_open = IconData(0x1013EA);

  /// IconData for SF Symbol dot.arrowtriangles.up.right.down.left.circle
  static const IconData sf_dot_arrowtriangles_up_right_down_left_circle =
      IconData(0x10076F);

  /// IconData for SF Symbol dot.circle.and.cursorarrow
  static const IconData sf_dot_circle_and_cursorarrow = IconData(0x100ACD);

  /// IconData for SF Symbol dot.circle.and.hand.point.up.left.fill
  static const IconData sf_dot_circle_and_hand_point_up_left_fill =
      IconData(0x100EAA);

  /// IconData for SF Symbol dot.circle.viewfinder
  static const IconData sf_dot_circle_viewfinder = IconData(0x1011DE);

  /// IconData for SF Symbol dot.radiowaves.forward
  static const IconData sf_dot_radiowaves_forward = IconData(0x100C2D);

  /// IconData for SF Symbol dot.radiowaves.left.and.right
  static const IconData sf_dot_radiowaves_left_and_right = IconData(0x100319);

  /// IconData for SF Symbol dot.radiowaves.right
  static const IconData sf_dot_radiowaves_right = IconData(0x100592);

  /// IconData for SF Symbol dot.radiowaves.up.forward
  static const IconData sf_dot_radiowaves_up_forward = IconData(0x100F17);

  /// IconData for SF Symbol dot.scope
  static const IconData sf_dot_scope = IconData(0x1021CF);

  /// IconData for SF Symbol dot.scope.display
  static const IconData sf_dot_scope_display = IconData(0x1021CC);

  /// IconData for SF Symbol dot.scope.laptopcomputer
  static const IconData sf_dot_scope_laptopcomputer = IconData(0x101FCD);

  /// IconData for SF Symbol dot.square
  static const IconData sf_dot_square = IconData(0x100574);

  /// IconData for SF Symbol dot.square.fill
  static const IconData sf_dot_square_fill = IconData(0x100575);

  /// IconData for SF Symbol dot.squareshape
  static const IconData sf_dot_squareshape = IconData(0x100AB5);

  /// IconData for SF Symbol dot.squareshape.fill
  static const IconData sf_dot_squareshape_fill = IconData(0x100AB6);

  /// IconData for SF Symbol dot.squareshape.split.2x2
  static const IconData sf_dot_squareshape_split_2x2 = IconData(0x100B8B);

  /// IconData for SF Symbol dot.viewfinder
  static const IconData sf_dot_viewfinder = IconData(0x1011DD);

  /// IconData for SF Symbol dots.and.line.vertical.and.cursorarrow.rectangle
  static const IconData sf_dots_and_line_vertical_and_cursorarrow_rectangle =
      IconData(0x101462);

  /// IconData for SF Symbol dpad
  static const IconData sf_dpad = IconData(0x100A32);

  /// IconData for SF Symbol dpad.down.filled
  static const IconData sf_dpad_down_filled = IconData(0x100A00);

  /// IconData for SF Symbol dpad.fill
  static const IconData sf_dpad_fill = IconData(0x1009FC);

  /// IconData for SF Symbol dpad.left.filled
  static const IconData sf_dpad_left_filled = IconData(0x1009FD);

  /// IconData for SF Symbol dpad.right.filled
  static const IconData sf_dpad_right_filled = IconData(0x1009FF);

  /// IconData for SF Symbol dpad.up.filled
  static const IconData sf_dpad_up_filled = IconData(0x1009FE);

  /// IconData for SF Symbol drop
  static const IconData sf_drop = IconData(0x100811);

  /// IconData for SF Symbol drop.circle
  static const IconData sf_drop_circle = IconData(0x1011CA);

  /// IconData for SF Symbol drop.circle.fill
  static const IconData sf_drop_circle_fill = IconData(0x1011CB);

  /// IconData for SF Symbol drop.degreesign
  static const IconData sf_drop_degreesign = IconData(0x10162F);

  /// IconData for SF Symbol drop.degreesign.fill
  static const IconData sf_drop_degreesign_fill = IconData(0x101630);

  /// IconData for SF Symbol drop.degreesign.slash
  static const IconData sf_drop_degreesign_slash = IconData(0x101682);

  /// IconData for SF Symbol drop.degreesign.slash.fill
  static const IconData sf_drop_degreesign_slash_fill = IconData(0x101683);

  /// IconData for SF Symbol drop.fill
  static const IconData sf_drop_fill = IconData(0x100812);

  /// IconData for SF Symbol drop.halffull
  static const IconData sf_drop_halffull = IconData(0x101E61);

  /// IconData for SF Symbol drop.keypad.rectangle
  static const IconData sf_drop_keypad_rectangle = IconData(0x1014C0);

  /// IconData for SF Symbol drop.keypad.rectangle.fill
  static const IconData sf_drop_keypad_rectangle_fill = IconData(0x1014C1);

  /// IconData for SF Symbol drop.transmission
  static const IconData sf_drop_transmission = IconData(0x101908);

  /// IconData for SF Symbol drop.triangle
  static const IconData sf_drop_triangle = IconData(0x100200);

  /// IconData for SF Symbol drop.triangle.fill
  static const IconData sf_drop_triangle_fill = IconData(0x100201);

  /// IconData for SF Symbol dryer
  static const IconData sf_dryer = IconData(0x101592);

  /// IconData for SF Symbol dryer.circle
  static const IconData sf_dryer_circle = IconData(0x101FD2);

  /// IconData for SF Symbol dryer.circle.fill
  static const IconData sf_dryer_circle_fill = IconData(0x101FD3);

  /// IconData for SF Symbol dryer.fill
  static const IconData sf_dryer_fill = IconData(0x101593);

  /// IconData for SF Symbol dumbbell
  static const IconData sf_dumbbell = IconData(0x10158C);

  /// IconData for SF Symbol dumbbell.fill
  static const IconData sf_dumbbell_fill = IconData(0x10158D);

  /// IconData for SF Symbol e.circle
  static const IconData sf_e_circle = IconData(0x10000C);

  /// IconData for SF Symbol e.circle.fill
  static const IconData sf_e_circle_fill = IconData(0x10000D);

  /// IconData for SF Symbol e.square
  static const IconData sf_e_square = IconData(0x10009C);

  /// IconData for SF Symbol e.square.fill
  static const IconData sf_e_square_fill = IconData(0x10009D);

  /// IconData for SF Symbol ear
  static const IconData sf_ear = IconData(0x100723);

  /// IconData for SF Symbol ear.badge.checkmark
  static const IconData sf_ear_badge_checkmark = IconData(0x1009BF);

  /// IconData for SF Symbol ear.badge.waveform
  static const IconData sf_ear_badge_waveform = IconData(0x100D63);

  /// IconData for SF Symbol ear.fill
  static const IconData sf_ear_fill = IconData(0x100787);

  /// IconData for SF Symbol ear.trianglebadge.exclamationmark
  static const IconData sf_ear_trianglebadge_exclamationmark =
      IconData(0x1009C1);

  /// IconData for SF Symbol earbuds
  static const IconData sf_earbuds = IconData(0x100E38);

  /// IconData for SF Symbol earbuds.case
  static const IconData sf_earbuds_case = IconData(0x100E65);

  /// IconData for SF Symbol earbuds.case.fill
  static const IconData sf_earbuds_case_fill = IconData(0x100E66);

  /// IconData for SF Symbol earpods
  static const IconData sf_earpods = IconData(0x100826);

  /// IconData for SF Symbol eject
  static const IconData sf_eject = IconData(0x1001A5);

  /// IconData for SF Symbol eject.circle
  static const IconData sf_eject_circle = IconData(0x1008A1);

  /// IconData for SF Symbol eject.circle.fill
  static const IconData sf_eject_circle_fill = IconData(0x1008A2);

  /// IconData for SF Symbol eject.fill
  static const IconData sf_eject_fill = IconData(0x1001A6);

  /// IconData for SF Symbol ellipsis
  static const IconData sf_ellipsis = IconData(0x100360);

  /// IconData for SF Symbol ellipsis.bubble
  static const IconData sf_ellipsis_bubble = IconData(0x10057A);

  /// IconData for SF Symbol ellipsis.bubble.fill
  static const IconData sf_ellipsis_bubble_fill = IconData(0x10057B);

  /// IconData for SF Symbol ellipsis.circle
  static const IconData sf_ellipsis_circle = IconData(0x100361);

  /// IconData for SF Symbol ellipsis.circle.fill
  static const IconData sf_ellipsis_circle_fill = IconData(0x100362);

  /// IconData for SF Symbol ellipsis.curlybraces
  static const IconData sf_ellipsis_curlybraces = IconData(0x1011F5);

  /// IconData for SF Symbol ellipsis.message
  static const IconData sf_ellipsis_message = IconData(0x101498);

  /// IconData for SF Symbol ellipsis.message.fill
  static const IconData sf_ellipsis_message_fill = IconData(0x101499);

  /// IconData for SF Symbol ellipsis.rectangle
  static const IconData sf_ellipsis_rectangle = IconData(0x100829);

  /// IconData for SF Symbol ellipsis.rectangle.fill
  static const IconData sf_ellipsis_rectangle_fill = IconData(0x10082A);

  /// IconData for SF Symbol ellipsis.vertical.bubble
  static const IconData sf_ellipsis_vertical_bubble = IconData(0x10105F);

  /// IconData for SF Symbol ellipsis.vertical.bubble.fill
  static const IconData sf_ellipsis_vertical_bubble_fill = IconData(0x101060);

  /// IconData for SF Symbol ellipsis.viewfinder
  static const IconData sf_ellipsis_viewfinder = IconData(0x10188F);

  /// IconData for SF Symbol engine.combustion
  static const IconData sf_engine_combustion = IconData(0x100FB0);

  /// IconData for SF Symbol engine.combustion.badge.exclamationmark
  static const IconData sf_engine_combustion_badge_exclamationmark =
      IconData(0x1012A6);

  /// IconData for SF Symbol engine.combustion.badge.exclamationmark.fill
  static const IconData sf_engine_combustion_badge_exclamationmark_fill =
      IconData(0x1012A7);

  /// IconData for SF Symbol engine.combustion.fill
  static const IconData sf_engine_combustion_fill = IconData(0x100FB1);

  /// IconData for SF Symbol entry.lever.keypad
  static const IconData sf_entry_lever_keypad = IconData(0x1014B4);

  /// IconData for SF Symbol entry.lever.keypad.fill
  static const IconData sf_entry_lever_keypad_fill = IconData(0x1014B5);

  /// IconData for SF Symbol entry.lever.keypad.trianglebadge.exclamationmark
  static const IconData sf_entry_lever_keypad_trianglebadge_exclamationmark =
      IconData(0x10164F);

  /// IconData for SF Symbol entry.lever.keypad.trianglebadge.exclamationmark.fill
  static const IconData
      sf_entry_lever_keypad_trianglebadge_exclamationmark_fill =
      IconData(0x101650);

  /// IconData for SF Symbol envelope
  static const IconData sf_envelope = IconData(0x100355);

  /// IconData for SF Symbol envelope.arrow.triangle.branch
  static const IconData sf_envelope_arrow_triangle_branch = IconData(0x100997);

  /// IconData for SF Symbol envelope.arrow.triangle.branch.fill
  static const IconData sf_envelope_arrow_triangle_branch_fill =
      IconData(0x100998);

  /// IconData for SF Symbol envelope.badge
  static const IconData sf_envelope_badge = IconData(0x10035B);

  /// IconData for SF Symbol envelope.badge.fill
  static const IconData sf_envelope_badge_fill = IconData(0x10035C);

  /// IconData for SF Symbol envelope.badge.person.crop
  static const IconData sf_envelope_badge_person_crop = IconData(0x101DFB);

  /// IconData for SF Symbol envelope.badge.person.crop.fill
  static const IconData sf_envelope_badge_person_crop_fill = IconData(0x101DFD);

  /// IconData for SF Symbol envelope.badge.shield.half.filled
  static const IconData sf_envelope_badge_shield_half_filled =
      IconData(0x100AD9);

  /// IconData for SF Symbol envelope.badge.shield.half.filled.fill
  static const IconData sf_envelope_badge_shield_half_filled_fill =
      IconData(0x100ADA);

  /// IconData for SF Symbol envelope.circle
  static const IconData sf_envelope_circle = IconData(0x100357);

  /// IconData for SF Symbol envelope.circle.fill
  static const IconData sf_envelope_circle_fill = IconData(0x100358);

  /// IconData for SF Symbol envelope.fill
  static const IconData sf_envelope_fill = IconData(0x100356);

  /// IconData for SF Symbol envelope.open
  static const IconData sf_envelope_open = IconData(0x100359);

  /// IconData for SF Symbol envelope.open.badge.clock
  static const IconData sf_envelope_open_badge_clock = IconData(0x1013A7);

  /// IconData for SF Symbol envelope.open.fill
  static const IconData sf_envelope_open_fill = IconData(0x10035A);

  /// IconData for SF Symbol equal
  static const IconData sf_equal = IconData(0x100180);

  /// IconData for SF Symbol equal.circle
  static const IconData sf_equal_circle = IconData(0x100054);

  /// IconData for SF Symbol equal.circle.fill
  static const IconData sf_equal_circle_fill = IconData(0x100055);

  /// IconData for SF Symbol equal.square
  static const IconData sf_equal_square = IconData(0x1000E4);

  /// IconData for SF Symbol equal.square.fill
  static const IconData sf_equal_square_fill = IconData(0x1000E5);

  /// IconData for SF Symbol eraser
  static const IconData sf_eraser = IconData(0x101740);

  /// IconData for SF Symbol eraser.fill
  static const IconData sf_eraser_fill = IconData(0x101741);

  /// IconData for SF Symbol eraser.line.dashed
  static const IconData sf_eraser_line_dashed = IconData(0x10169C);

  /// IconData for SF Symbol eraser.line.dashed.fill
  static const IconData sf_eraser_line_dashed_fill = IconData(0x10169D);

  /// IconData for SF Symbol escape
  static const IconData sf_escape = IconData(0x1001A7);

  /// IconData for SF Symbol esim
  static const IconData sf_esim = IconData(0x100CB5);

  /// IconData for SF Symbol esim.fill
  static const IconData sf_esim_fill = IconData(0x100CB6);

  /// IconData for SF Symbol eurosign
  static const IconData sf_eurosign = IconData(0x101447);

  /// IconData for SF Symbol eurosign.arrow.circlepath
  static const IconData sf_eurosign_arrow_circlepath = IconData(0x10221A);

  /// IconData for SF Symbol eurosign.circle
  static const IconData sf_eurosign_circle = IconData(0x1005A7);

  /// IconData for SF Symbol eurosign.circle.fill
  static const IconData sf_eurosign_circle_fill = IconData(0x1005A8);

  /// IconData for SF Symbol eurosign.square
  static const IconData sf_eurosign_square = IconData(0x1005E7);

  /// IconData for SF Symbol eurosign.square.fill
  static const IconData sf_eurosign_square_fill = IconData(0x1005E8);

  /// IconData for SF Symbol eurozonesign
  static const IconData sf_eurozonesign = IconData(0x101934);

  /// IconData for SF Symbol eurozonesign.arrow.circlepath
  static const IconData sf_eurozonesign_arrow_circlepath = IconData(0x102238);

  /// IconData for SF Symbol eurozonesign.circle
  static const IconData sf_eurozonesign_circle = IconData(0x101935);

  /// IconData for SF Symbol eurozonesign.circle.fill
  static const IconData sf_eurozonesign_circle_fill = IconData(0x101936);

  /// IconData for SF Symbol eurozonesign.square
  static const IconData sf_eurozonesign_square = IconData(0x101937);

  /// IconData for SF Symbol eurozonesign.square.fill
  static const IconData sf_eurozonesign_square_fill = IconData(0x101938);

  /// IconData for SF Symbol ev.charger
  static const IconData sf_ev_charger = IconData(0x1012A8);

  /// IconData for SF Symbol ev.charger.arrowtriangle.left
  static const IconData sf_ev_charger_arrowtriangle_left = IconData(0x101C2A);

  /// IconData for SF Symbol ev.charger.arrowtriangle.left.fill
  static const IconData sf_ev_charger_arrowtriangle_left_fill =
      IconData(0x101C2B);

  /// IconData for SF Symbol ev.charger.arrowtriangle.right
  static const IconData sf_ev_charger_arrowtriangle_right = IconData(0x101C32);

  /// IconData for SF Symbol ev.charger.arrowtriangle.right.fill
  static const IconData sf_ev_charger_arrowtriangle_right_fill =
      IconData(0x101C33);

  /// IconData for SF Symbol ev.charger.exclamationmark
  static const IconData sf_ev_charger_exclamationmark = IconData(0x101C36);

  /// IconData for SF Symbol ev.charger.exclamationmark.fill
  static const IconData sf_ev_charger_exclamationmark_fill = IconData(0x101C37);

  /// IconData for SF Symbol ev.charger.fill
  static const IconData sf_ev_charger_fill = IconData(0x1012A9);

  /// IconData for SF Symbol ev.charger.slash
  static const IconData sf_ev_charger_slash = IconData(0x101C26);

  /// IconData for SF Symbol ev.charger.slash.fill
  static const IconData sf_ev_charger_slash_fill = IconData(0x101C27);

  /// IconData for SF Symbol ev.plug.ac.gb.t
  static const IconData sf_ev_plug_ac_gb_t = IconData(0x101EB0);

  /// IconData for SF Symbol ev.plug.ac.gb.t.fill
  static const IconData sf_ev_plug_ac_gb_t_fill = IconData(0x101EB1);

  /// IconData for SF Symbol ev.plug.ac.type.1
  static const IconData sf_ev_plug_ac_type_1 = IconData(0x101EAC);

  /// IconData for SF Symbol ev.plug.ac.type.1.fill
  static const IconData sf_ev_plug_ac_type_1_fill = IconData(0x101EAD);

  /// IconData for SF Symbol ev.plug.ac.type.2
  static const IconData sf_ev_plug_ac_type_2 = IconData(0x101EAE);

  /// IconData for SF Symbol ev.plug.ac.type.2.fill
  static const IconData sf_ev_plug_ac_type_2_fill = IconData(0x101EAF);

  /// IconData for SF Symbol ev.plug.dc.ccs1
  static const IconData sf_ev_plug_dc_ccs1 = IconData(0x101EB2);

  /// IconData for SF Symbol ev.plug.dc.ccs1.fill
  static const IconData sf_ev_plug_dc_ccs1_fill = IconData(0x101EB3);

  /// IconData for SF Symbol ev.plug.dc.ccs2
  static const IconData sf_ev_plug_dc_ccs2 = IconData(0x101EB4);

  /// IconData for SF Symbol ev.plug.dc.ccs2.fill
  static const IconData sf_ev_plug_dc_ccs2_fill = IconData(0x101EB5);

  /// IconData for SF Symbol ev.plug.dc.chademo
  static const IconData sf_ev_plug_dc_chademo = IconData(0x101EB6);

  /// IconData for SF Symbol ev.plug.dc.chademo.fill
  static const IconData sf_ev_plug_dc_chademo_fill = IconData(0x101EB7);

  /// IconData for SF Symbol ev.plug.dc.gb.t
  static const IconData sf_ev_plug_dc_gb_t = IconData(0x101EB8);

  /// IconData for SF Symbol ev.plug.dc.gb.t.fill
  static const IconData sf_ev_plug_dc_gb_t_fill = IconData(0x101EB9);

  /// IconData for SF Symbol ev.plug.dc.nacs
  static const IconData sf_ev_plug_dc_nacs = IconData(0x101EBA);

  /// IconData for SF Symbol ev.plug.dc.nacs.fill
  static const IconData sf_ev_plug_dc_nacs_fill = IconData(0x101EBB);

  /// IconData for SF Symbol exclamationmark
  static const IconData sf_exclamationmark = IconData(0x10014E);

  /// IconData for SF Symbol exclamationmark.2
  static const IconData sf_exclamationmark_2 = IconData(0x100892);

  /// IconData for SF Symbol exclamationmark.3
  static const IconData sf_exclamationmark_3 = IconData(0x1008F4);

  /// IconData for SF Symbol exclamationmark.applewatch
  static const IconData sf_exclamationmark_applewatch = IconData(0x100D44);

  /// IconData for SF Symbol exclamationmark.arrow.circlepath
  static const IconData sf_exclamationmark_arrow_circlepath =
      IconData(0x100C68);

  /// IconData for SF Symbol exclamationmark.arrow.triangle.2.circlepath
  static const IconData sf_exclamationmark_arrow_triangle_2_circlepath =
      IconData(0x1008A4);

  /// IconData for SF Symbol exclamationmark.brakesignal
  static const IconData sf_exclamationmark_brakesignal = IconData(0x100FBF);

  /// IconData for SF Symbol exclamationmark.bubble
  static const IconData sf_exclamationmark_bubble = IconData(0x10032C);

  /// IconData for SF Symbol exclamationmark.bubble.circle
  static const IconData sf_exclamationmark_bubble_circle = IconData(0x1011B6);

  /// IconData for SF Symbol exclamationmark.bubble.circle.fill
  static const IconData sf_exclamationmark_bubble_circle_fill =
      IconData(0x1011B7);

  /// IconData for SF Symbol exclamationmark.bubble.fill
  static const IconData sf_exclamationmark_bubble_fill = IconData(0x10032D);

  /// IconData for SF Symbol exclamationmark.circle
  static const IconData sf_exclamationmark_circle = IconData(0x10005E);

  /// IconData for SF Symbol exclamationmark.circle.fill
  static const IconData sf_exclamationmark_circle_fill = IconData(0x10005F);

  /// IconData for SF Symbol exclamationmark.icloud
  static const IconData sf_exclamationmark_icloud = IconData(0x100311);

  /// IconData for SF Symbol exclamationmark.icloud.fill
  static const IconData sf_exclamationmark_icloud_fill = IconData(0x100312);

  /// IconData for SF Symbol exclamationmark.lock
  static const IconData sf_exclamationmark_lock = IconData(0x101665);

  /// IconData for SF Symbol exclamationmark.lock.fill
  static const IconData sf_exclamationmark_lock_fill = IconData(0x101666);

  /// IconData for SF Symbol exclamationmark.magnifyingglass
  static const IconData sf_exclamationmark_magnifyingglass = IconData(0x102202);

  /// IconData for SF Symbol exclamationmark.octagon
  static const IconData sf_exclamationmark_octagon = IconData(0x10062F);

  /// IconData for SF Symbol exclamationmark.octagon.fill
  static const IconData sf_exclamationmark_octagon_fill = IconData(0x100630);

  /// IconData for SF Symbol exclamationmark.questionmark
  static const IconData sf_exclamationmark_questionmark = IconData(0x101463);

  /// IconData for SF Symbol exclamationmark.shield
  static const IconData sf_exclamationmark_shield = IconData(0x10079F);

  /// IconData for SF Symbol exclamationmark.shield.fill
  static const IconData sf_exclamationmark_shield_fill = IconData(0x1007A0);

  /// IconData for SF Symbol exclamationmark.square
  static const IconData sf_exclamationmark_square = IconData(0x1000EE);

  /// IconData for SF Symbol exclamationmark.square.fill
  static const IconData sf_exclamationmark_square_fill = IconData(0x1000EF);

  /// IconData for SF Symbol exclamationmark.tirepressure
  static const IconData sf_exclamationmark_tirepressure = IconData(0x101013);

  /// IconData for SF Symbol exclamationmark.transmission
  static const IconData sf_exclamationmark_transmission = IconData(0x100FC1);

  /// IconData for SF Symbol exclamationmark.triangle
  static const IconData sf_exclamationmark_triangle = IconData(0x1001FE);

  /// IconData for SF Symbol exclamationmark.triangle.fill
  static const IconData sf_exclamationmark_triangle_fill = IconData(0x1001FF);

  /// IconData for SF Symbol exclamationmark.warninglight
  static const IconData sf_exclamationmark_warninglight = IconData(0x10102E);

  /// IconData for SF Symbol exclamationmark.warninglight.fill
  static const IconData sf_exclamationmark_warninglight_fill =
      IconData(0x10102F);

  /// IconData for SF Symbol externaldrive
  static const IconData sf_externaldrive = IconData(0x100902);

  /// IconData for SF Symbol externaldrive.badge.checkmark
  static const IconData sf_externaldrive_badge_checkmark = IconData(0x100A50);

  /// IconData for SF Symbol externaldrive.badge.exclamationmark
  static const IconData sf_externaldrive_badge_exclamationmark =
      IconData(0x101625);

  /// IconData for SF Symbol externaldrive.badge.icloud
  static const IconData sf_externaldrive_badge_icloud = IconData(0x100AB9);

  /// IconData for SF Symbol externaldrive.badge.minus
  static const IconData sf_externaldrive_badge_minus = IconData(0x100A4F);

  /// IconData for SF Symbol externaldrive.badge.person.crop
  static const IconData sf_externaldrive_badge_person_crop = IconData(0x100A6C);

  /// IconData for SF Symbol externaldrive.badge.plus
  static const IconData sf_externaldrive_badge_plus = IconData(0x100A4E);

  /// IconData for SF Symbol externaldrive.badge.questionmark
  static const IconData sf_externaldrive_badge_questionmark =
      IconData(0x100B5F);

  /// IconData for SF Symbol externaldrive.badge.timemachine
  static const IconData sf_externaldrive_badge_timemachine = IconData(0x10091C);

  /// IconData for SF Symbol externaldrive.badge.wifi
  static const IconData sf_externaldrive_badge_wifi = IconData(0x100A6E);

  /// IconData for SF Symbol externaldrive.badge.xmark
  static const IconData sf_externaldrive_badge_xmark = IconData(0x100A51);

  /// IconData for SF Symbol externaldrive.connected.to.line.below
  static const IconData sf_externaldrive_connected_to_line_below =
      IconData(0x100A24);

  /// IconData for SF Symbol externaldrive.connected.to.line.below.fill
  static const IconData sf_externaldrive_connected_to_line_below_fill =
      IconData(0x100A25);

  /// IconData for SF Symbol externaldrive.fill
  static const IconData sf_externaldrive_fill = IconData(0x100903);

  /// IconData for SF Symbol externaldrive.fill.badge.checkmark
  static const IconData sf_externaldrive_fill_badge_checkmark =
      IconData(0x100A54);

  /// IconData for SF Symbol externaldrive.fill.badge.exclamationmark
  static const IconData sf_externaldrive_fill_badge_exclamationmark =
      IconData(0x101626);

  /// IconData for SF Symbol externaldrive.fill.badge.icloud
  static const IconData sf_externaldrive_fill_badge_icloud = IconData(0x100ABA);

  /// IconData for SF Symbol externaldrive.fill.badge.minus
  static const IconData sf_externaldrive_fill_badge_minus = IconData(0x100A53);

  /// IconData for SF Symbol externaldrive.fill.badge.person.crop
  static const IconData sf_externaldrive_fill_badge_person_crop =
      IconData(0x100A6D);

  /// IconData for SF Symbol externaldrive.fill.badge.plus
  static const IconData sf_externaldrive_fill_badge_plus = IconData(0x100A52);

  /// IconData for SF Symbol externaldrive.fill.badge.questionmark
  static const IconData sf_externaldrive_fill_badge_questionmark =
      IconData(0x100B60);

  /// IconData for SF Symbol externaldrive.fill.badge.timemachine
  static const IconData sf_externaldrive_fill_badge_timemachine =
      IconData(0x10091D);

  /// IconData for SF Symbol externaldrive.fill.badge.wifi
  static const IconData sf_externaldrive_fill_badge_wifi = IconData(0x100A6F);

  /// IconData for SF Symbol externaldrive.fill.badge.xmark
  static const IconData sf_externaldrive_fill_badge_xmark = IconData(0x100A55);

  /// IconData for SF Symbol externaldrive.fill.trianglebadge.exclamationmark
  static const IconData sf_externaldrive_fill_trianglebadge_exclamationmark =
      IconData(0x101628);

  /// IconData for SF Symbol externaldrive.trianglebadge.exclamationmark
  static const IconData sf_externaldrive_trianglebadge_exclamationmark =
      IconData(0x101627);

  /// IconData for SF Symbol eye
  static const IconData sf_eye = IconData(0x1002ED);

  /// IconData for SF Symbol eye.circle
  static const IconData sf_eye_circle = IconData(0x1006FF);

  /// IconData for SF Symbol eye.circle.fill
  static const IconData sf_eye_circle_fill = IconData(0x100700);

  /// IconData for SF Symbol eye.fill
  static const IconData sf_eye_fill = IconData(0x1002EE);

  /// IconData for SF Symbol eye.slash
  static const IconData sf_eye_slash = IconData(0x1002EF);

  /// IconData for SF Symbol eye.slash.circle
  static const IconData sf_eye_slash_circle = IconData(0x100701);

  /// IconData for SF Symbol eye.slash.circle.fill
  static const IconData sf_eye_slash_circle_fill = IconData(0x100702);

  /// IconData for SF Symbol eye.slash.fill
  static const IconData sf_eye_slash_fill = IconData(0x1002F0);

  /// IconData for SF Symbol eye.square
  static const IconData sf_eye_square = IconData(0x100F47);

  /// IconData for SF Symbol eye.square.fill
  static const IconData sf_eye_square_fill = IconData(0x100F48);

  /// IconData for SF Symbol eye.trianglebadge.exclamationmark
  static const IconData sf_eye_trianglebadge_exclamationmark =
      IconData(0x101094);

  /// IconData for SF Symbol eye.trianglebadge.exclamationmark.fill
  static const IconData sf_eye_trianglebadge_exclamationmark_fill =
      IconData(0x101095);

  /// IconData for SF Symbol eyebrow
  static const IconData sf_eyebrow = IconData(0x1009AD);

  /// IconData for SF Symbol eyedropper
  static const IconData sf_eyedropper = IconData(0x100397);

  /// IconData for SF Symbol eyedropper.full
  static const IconData sf_eyedropper_full = IconData(0x100399);

  /// IconData for SF Symbol eyedropper.halffull
  static const IconData sf_eyedropper_halffull = IconData(0x100398);

  /// IconData for SF Symbol eyeglasses
  static const IconData sf_eyeglasses = IconData(0x100586);

  /// IconData for SF Symbol eyeglasses.slash
  static const IconData sf_eyeglasses_slash = IconData(0x102036);

  /// IconData for SF Symbol eyes
  static const IconData sf_eyes = IconData(0x1009A7);

  /// IconData for SF Symbol eyes.inverse
  static const IconData sf_eyes_inverse = IconData(0x100A2D);

  /// IconData for SF Symbol f.circle
  static const IconData sf_f_circle = IconData(0x10000E);

  /// IconData for SF Symbol f.circle.fill
  static const IconData sf_f_circle_fill = IconData(0x10000F);

  /// IconData for SF Symbol f.cursive
  static const IconData sf_f_cursive = IconData(0x10016D);

  /// IconData for SF Symbol f.cursive.circle
  static const IconData sf_f_cursive_circle = IconData(0x100767);

  /// IconData for SF Symbol f.cursive.circle.fill
  static const IconData sf_f_cursive_circle_fill = IconData(0x100768);

  /// IconData for SF Symbol f.square
  static const IconData sf_f_square = IconData(0x10009E);

  /// IconData for SF Symbol f.square.fill
  static const IconData sf_f_square_fill = IconData(0x10009F);

  /// IconData for SF Symbol face.dashed
  static const IconData sf_face_dashed = IconData(0x100967);

  /// IconData for SF Symbol face.dashed.fill
  static const IconData sf_face_dashed_fill = IconData(0x100A38);

  /// IconData for SF Symbol face.smiling
  static const IconData sf_face_smiling = IconData(0x1003B8);

  /// IconData for SF Symbol face.smiling.inverse
  static const IconData sf_face_smiling_inverse = IconData(0x10064C);

  /// IconData for SF Symbol faceid
  static const IconData sf_faceid = IconData(0x1003BD);

  /// IconData for SF Symbol facemask
  static const IconData sf_facemask = IconData(0x1010CC);

  /// IconData for SF Symbol facemask.fill
  static const IconData sf_facemask_fill = IconData(0x1010CD);

  /// IconData for SF Symbol fan
  static const IconData sf_fan = IconData(0x10104B);

  /// IconData for SF Symbol fan.and.light.ceiling
  static const IconData sf_fan_and_light_ceiling = IconData(0x10131C);

  /// IconData for SF Symbol fan.and.light.ceiling.fill
  static const IconData sf_fan_and_light_ceiling_fill = IconData(0x1013BA);

  /// IconData for SF Symbol fan.badge.automatic
  static const IconData sf_fan_badge_automatic = IconData(0x101C89);

  /// IconData for SF Symbol fan.badge.automatic.fill
  static const IconData sf_fan_badge_automatic_fill = IconData(0x101C8A);

  /// IconData for SF Symbol fan.ceiling
  static const IconData sf_fan_ceiling = IconData(0x10131B);

  /// IconData for SF Symbol fan.ceiling.fill
  static const IconData sf_fan_ceiling_fill = IconData(0x1013B9);

  /// IconData for SF Symbol fan.desk
  static const IconData sf_fan_desk = IconData(0x101319);

  /// IconData for SF Symbol fan.desk.fill
  static const IconData sf_fan_desk_fill = IconData(0x10149A);

  /// IconData for SF Symbol fan.fill
  static const IconData sf_fan_fill = IconData(0x10104C);

  /// IconData for SF Symbol fan.floor
  static const IconData sf_fan_floor = IconData(0x10131A);

  /// IconData for SF Symbol fan.floor.fill
  static const IconData sf_fan_floor_fill = IconData(0x10149B);

  /// IconData for SF Symbol fan.oscillation
  static const IconData sf_fan_oscillation = IconData(0x101504);

  /// IconData for SF Symbol fan.oscillation.fill
  static const IconData sf_fan_oscillation_fill = IconData(0x101505);

  /// IconData for SF Symbol fan.slash
  static const IconData sf_fan_slash = IconData(0x10175A);

  /// IconData for SF Symbol fan.slash.fill
  static const IconData sf_fan_slash_fill = IconData(0x10175B);

  /// IconData for SF Symbol faxmachine
  static const IconData sf_faxmachine = IconData(0x100A8C);

  /// IconData for SF Symbol faxmachine.fill
  static const IconData sf_faxmachine_fill = IconData(0x100A8D);

  /// IconData for SF Symbol ferry
  static const IconData sf_ferry = IconData(0x100E05);

  /// IconData for SF Symbol ferry.fill
  static const IconData sf_ferry_fill = IconData(0x100E06);

  /// IconData for SF Symbol fibrechannel
  static const IconData sf_fibrechannel = IconData(0x100962);

  /// IconData for SF Symbol field.of.view.ultrawide
  static const IconData sf_field_of_view_ultrawide = IconData(0x101FFC);

  /// IconData for SF Symbol field.of.view.ultrawide.fill
  static const IconData sf_field_of_view_ultrawide_fill = IconData(0x101FFD);

  /// IconData for SF Symbol field.of.view.wide
  static const IconData sf_field_of_view_wide = IconData(0x101FFE);

  /// IconData for SF Symbol field.of.view.wide.fill
  static const IconData sf_field_of_view_wide_fill = IconData(0x101FFF);

  /// IconData for SF Symbol figure
  static const IconData sf_figure = IconData(0x10057D);

  /// IconData for SF Symbol figure.2
  static const IconData sf_figure_2 = IconData(0x100637);

  /// IconData for SF Symbol figure.2.and.child.holdinghands
  static const IconData sf_figure_2_and_child_holdinghands = IconData(0x1015C7);

  /// IconData for SF Symbol figure.2.arms.open
  static const IconData sf_figure_2_arms_open = IconData(0x1015C6);

  /// IconData for SF Symbol figure.2.circle
  static const IconData sf_figure_2_circle = IconData(0x100E7D);

  /// IconData for SF Symbol figure.2.circle.fill
  static const IconData sf_figure_2_circle_fill = IconData(0x100E7E);

  /// IconData for SF Symbol figure.american.football
  static const IconData sf_figure_american_football = IconData(0x101490);

  /// IconData for SF Symbol figure.and.child.holdinghands
  static const IconData sf_figure_and_child_holdinghands = IconData(0x101601);

  /// IconData for SF Symbol figure.archery
  static const IconData sf_figure_archery = IconData(0x101491);

  /// IconData for SF Symbol figure.arms.open
  static const IconData sf_figure_arms_open = IconData(0x1015C5);

  /// IconData for SF Symbol figure.australian.football
  static const IconData sf_figure_australian_football = IconData(0x101492);

  /// IconData for SF Symbol figure.badminton
  static const IconData sf_figure_badminton = IconData(0x101519);

  /// IconData for SF Symbol figure.barre
  static const IconData sf_figure_barre = IconData(0x10130F);

  /// IconData for SF Symbol figure.baseball
  static const IconData sf_figure_baseball = IconData(0x10151A);

  /// IconData for SF Symbol figure.basketball
  static const IconData sf_figure_basketball = IconData(0x10151B);

  /// IconData for SF Symbol figure.bowling
  static const IconData sf_figure_bowling = IconData(0x10151C);

  /// IconData for SF Symbol figure.boxing
  static const IconData sf_figure_boxing = IconData(0x10151D);

  /// IconData for SF Symbol figure.child
  static const IconData sf_figure_child = IconData(0x1018FD);

  /// IconData for SF Symbol figure.child.and.lock
  static const IconData sf_figure_child_and_lock = IconData(0x10197E);

  /// IconData for SF Symbol figure.child.and.lock.fill
  static const IconData sf_figure_child_and_lock_fill = IconData(0x10197F);

  /// IconData for SF Symbol figure.child.and.lock.open
  static const IconData sf_figure_child_and_lock_open = IconData(0x101980);

  /// IconData for SF Symbol figure.child.and.lock.open.fill
  static const IconData sf_figure_child_and_lock_open_fill = IconData(0x101981);

  /// IconData for SF Symbol figure.child.circle
  static const IconData sf_figure_child_circle = IconData(0x1018FE);

  /// IconData for SF Symbol figure.child.circle.fill
  static const IconData sf_figure_child_circle_fill = IconData(0x1018FF);

  /// IconData for SF Symbol figure.climbing
  static const IconData sf_figure_climbing = IconData(0x10151E);

  /// IconData for SF Symbol figure.cooldown
  static const IconData sf_figure_cooldown = IconData(0x10151F);

  /// IconData for SF Symbol figure.core.training
  static const IconData sf_figure_core_training = IconData(0x101310);

  /// IconData for SF Symbol figure.cricket
  static const IconData sf_figure_cricket = IconData(0x101520);

  /// IconData for SF Symbol figure.cross.training
  static const IconData sf_figure_cross_training = IconData(0x101311);

  /// IconData for SF Symbol figure.curling
  static const IconData sf_figure_curling = IconData(0x101522);

  /// IconData for SF Symbol figure.dance
  static const IconData sf_figure_dance = IconData(0x101312);

  /// IconData for SF Symbol figure.disc.sports
  static const IconData sf_figure_disc_sports = IconData(0x101523);

  /// IconData for SF Symbol figure.dress.line.vertical.figure
  static const IconData sf_figure_dress_line_vertical_figure =
      IconData(0x101642);

  /// IconData for SF Symbol figure.elliptical
  static const IconData sf_figure_elliptical = IconData(0x10130C);

  /// IconData for SF Symbol figure.equestrian.sports
  static const IconData sf_figure_equestrian_sports = IconData(0x101525);

  /// IconData for SF Symbol figure.fall
  static const IconData sf_figure_fall = IconData(0x100D6E);

  /// IconData for SF Symbol figure.fall.circle
  static const IconData sf_figure_fall_circle = IconData(0x100D6F);

  /// IconData for SF Symbol figure.fall.circle.fill
  static const IconData sf_figure_fall_circle_fill = IconData(0x100D70);

  /// IconData for SF Symbol figure.fencing
  static const IconData sf_figure_fencing = IconData(0x101526);

  /// IconData for SF Symbol figure.fishing
  static const IconData sf_figure_fishing = IconData(0x101527);

  /// IconData for SF Symbol figure.flexibility
  static const IconData sf_figure_flexibility = IconData(0x101551);

  /// IconData for SF Symbol figure.golf
  static const IconData sf_figure_golf = IconData(0x101529);

  /// IconData for SF Symbol figure.gymnastics
  static const IconData sf_figure_gymnastics = IconData(0x10152A);

  /// IconData for SF Symbol figure.hand.cycling
  static const IconData sf_figure_hand_cycling = IconData(0x10152B);

  /// IconData for SF Symbol figure.handball
  static const IconData sf_figure_handball = IconData(0x10152C);

  /// IconData for SF Symbol figure.highintensity.intervaltraining
  static const IconData sf_figure_highintensity_intervaltraining =
      IconData(0x10130E);

  /// IconData for SF Symbol figure.hiking
  static const IconData sf_figure_hiking = IconData(0x10152D);

  /// IconData for SF Symbol figure.hockey
  static const IconData sf_figure_hockey = IconData(0x10152E);

  /// IconData for SF Symbol figure.hunting
  static const IconData sf_figure_hunting = IconData(0x10152F);

  /// IconData for SF Symbol figure.indoor.cycle
  static const IconData sf_figure_indoor_cycle = IconData(0x10130A);

  /// IconData for SF Symbol figure.jumprope
  static const IconData sf_figure_jumprope = IconData(0x101530);

  /// IconData for SF Symbol figure.kickboxing
  static const IconData sf_figure_kickboxing = IconData(0x101531);

  /// IconData for SF Symbol figure.lacrosse
  static const IconData sf_figure_lacrosse = IconData(0x101532);

  /// IconData for SF Symbol figure.martial.arts
  static const IconData sf_figure_martial_arts = IconData(0x101533);

  /// IconData for SF Symbol figure.mind.and.body
  static const IconData sf_figure_mind_and_body = IconData(0x101534);

  /// IconData for SF Symbol figure.mixed.cardio
  static const IconData sf_figure_mixed_cardio = IconData(0x101535);

  /// IconData for SF Symbol figure.open.water.swim
  static const IconData sf_figure_open_water_swim = IconData(0x101307);

  /// IconData for SF Symbol figure.outdoor.cycle
  static const IconData sf_figure_outdoor_cycle = IconData(0x101309);

  /// IconData for SF Symbol figure.pickleball
  static const IconData sf_figure_pickleball = IconData(0x101537);

  /// IconData for SF Symbol figure.pilates
  static const IconData sf_figure_pilates = IconData(0x101313);

  /// IconData for SF Symbol figure.play
  static const IconData sf_figure_play = IconData(0x101538);

  /// IconData for SF Symbol figure.pool.swim
  static const IconData sf_figure_pool_swim = IconData(0x101306);

  /// IconData for SF Symbol figure.racquetball
  static const IconData sf_figure_racquetball = IconData(0x101539);

  /// IconData for SF Symbol figure.roll
  static const IconData sf_figure_roll = IconData(0x101211);

  /// IconData for SF Symbol figure.roll.runningpace
  static const IconData sf_figure_roll_runningpace = IconData(0x101308);

  /// IconData for SF Symbol figure.rolling
  static const IconData sf_figure_rolling = IconData(0x10153A);

  /// IconData for SF Symbol figure.rower
  static const IconData sf_figure_rower = IconData(0x10130B);

  /// IconData for SF Symbol figure.rugby
  static const IconData sf_figure_rugby = IconData(0x10153B);

  /// IconData for SF Symbol figure.run
  static const IconData sf_figure_run = IconData(0x100433);

  /// IconData for SF Symbol figure.run.circle
  static const IconData sf_figure_run_circle = IconData(0x100434);

  /// IconData for SF Symbol figure.run.circle.fill
  static const IconData sf_figure_run_circle_fill = IconData(0x100435);

  /// IconData for SF Symbol figure.run.square.stack
  static const IconData sf_figure_run_square_stack = IconData(0x1017FA);

  /// IconData for SF Symbol figure.run.square.stack.fill
  static const IconData sf_figure_run_square_stack_fill = IconData(0x1017FB);

  /// IconData for SF Symbol figure.sailing
  static const IconData sf_figure_sailing = IconData(0x10153C);

  /// IconData for SF Symbol figure.seated.seatbelt
  static const IconData sf_figure_seated_seatbelt = IconData(0x100FE6);

  /// IconData for SF Symbol figure.seated.seatbelt.and.airbag.off
  static const IconData sf_figure_seated_seatbelt_and_airbag_off =
      IconData(0x101282);

  /// IconData for SF Symbol figure.seated.seatbelt.and.airbag.on
  static const IconData sf_figure_seated_seatbelt_and_airbag_on =
      IconData(0x10179B);

  /// IconData for SF Symbol figure.seated.side
  static const IconData sf_figure_seated_side = IconData(0x101EBC);

  /// IconData for SF Symbol figure.seated.side.air.distribution.lower
  static const IconData sf_figure_seated_side_air_distribution_lower =
      IconData(0x101076);

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle
  static const IconData sf_figure_seated_side_air_distribution_middle =
      IconData(0x101075);

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle.and.lower
  static const IconData
      sf_figure_seated_side_air_distribution_middle_and_lower =
      IconData(0x101078);

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_middle_and_lower_angled =
      IconData(0x101EC0);

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper
  static const IconData sf_figure_seated_side_air_distribution_upper =
      IconData(0x101077);

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_lower_angled =
      IconData(0x101EBF);

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.middle
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_middle =
      IconData(0x101EBE);

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.middle.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_middle_and_lower_angled =
      IconData(0x101EBD);

  /// IconData for SF Symbol figure.seated.side.airbag.off
  static const IconData sf_figure_seated_side_airbag_off = IconData(0x10128D);

  /// IconData for SF Symbol figure.seated.side.airbag.off.2
  static const IconData sf_figure_seated_side_airbag_off_2 = IconData(0x10127B);

  /// IconData for SF Symbol figure.seated.side.airbag.on
  static const IconData sf_figure_seated_side_airbag_on = IconData(0x100FE7);

  /// IconData for SF Symbol figure.seated.side.airbag.on.2
  static const IconData sf_figure_seated_side_airbag_on_2 = IconData(0x10179A);

  /// IconData for SF Symbol figure.seated.side.automatic
  static const IconData sf_figure_seated_side_automatic = IconData(0x101C8D);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves
  static const IconData sf_figure_seated_side_windshield_front_and_heat_waves =
      IconData(0x101079);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_lower =
      IconData(0x101ED2);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.middle
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_middle =
      IconData(0x101ED1);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.middle.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_middle_and_lower =
      IconData(0x101ECD);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper =
      IconData(0x101ED0);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_lower =
      IconData(0x101ECF);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.middle
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_middle =
      IconData(0x101ECE);

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.middle.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_middle_and_lower =
      IconData(0x101ECC);

  /// IconData for SF Symbol figure.skating
  static const IconData sf_figure_skating = IconData(0x10153D);

  /// IconData for SF Symbol figure.skiing.crosscountry
  static const IconData sf_figure_skiing_crosscountry = IconData(0x101521);

  /// IconData for SF Symbol figure.skiing.downhill
  static const IconData sf_figure_skiing_downhill = IconData(0x101524);

  /// IconData for SF Symbol figure.snowboarding
  static const IconData sf_figure_snowboarding = IconData(0x10153E);

  /// IconData for SF Symbol figure.soccer
  static const IconData sf_figure_soccer = IconData(0x10153F);

  /// IconData for SF Symbol figure.socialdance
  static const IconData sf_figure_socialdance = IconData(0x101540);

  /// IconData for SF Symbol figure.softball
  static const IconData sf_figure_softball = IconData(0x101541);

  /// IconData for SF Symbol figure.squash
  static const IconData sf_figure_squash = IconData(0x101542);

  /// IconData for SF Symbol figure.stair.stepper
  static const IconData sf_figure_stair_stepper = IconData(0x10130D);

  /// IconData for SF Symbol figure.stairs
  static const IconData sf_figure_stairs = IconData(0x101543);

  /// IconData for SF Symbol figure.stand
  static const IconData sf_figure_stand = IconData(0x100CFE);

  /// IconData for SF Symbol figure.stand.line.dotted.figure.stand
  static const IconData sf_figure_stand_line_dotted_figure_stand =
      IconData(0x100CFF);

  /// IconData for SF Symbol figure.step.training
  static const IconData sf_figure_step_training = IconData(0x101544);

  /// IconData for SF Symbol figure.strengthtraining.functional
  static const IconData sf_figure_strengthtraining_functional =
      IconData(0x101528);

  /// IconData for SF Symbol figure.strengthtraining.traditional
  static const IconData sf_figure_strengthtraining_traditional =
      IconData(0x101403);

  /// IconData for SF Symbol figure.surfing
  static const IconData sf_figure_surfing = IconData(0x101545);

  /// IconData for SF Symbol figure.table.tennis
  static const IconData sf_figure_table_tennis = IconData(0x101314);

  /// IconData for SF Symbol figure.taichi
  static const IconData sf_figure_taichi = IconData(0x101546);

  /// IconData for SF Symbol figure.tennis
  static const IconData sf_figure_tennis = IconData(0x10148B);

  /// IconData for SF Symbol figure.track.and.field
  static const IconData sf_figure_track_and_field = IconData(0x101547);

  /// IconData for SF Symbol figure.volleyball
  static const IconData sf_figure_volleyball = IconData(0x101548);

  /// IconData for SF Symbol figure.walk
  static const IconData sf_figure_walk = IconData(0x100762);

  /// IconData for SF Symbol figure.walk.arrival
  static const IconData sf_figure_walk_arrival = IconData(0x1013DA);

  /// IconData for SF Symbol figure.walk.circle
  static const IconData sf_figure_walk_circle = IconData(0x100763);

  /// IconData for SF Symbol figure.walk.circle.fill
  static const IconData sf_figure_walk_circle_fill = IconData(0x100764);

  /// IconData for SF Symbol figure.walk.departure
  static const IconData sf_figure_walk_departure = IconData(0x1013DB);

  /// IconData for SF Symbol figure.walk.diamond
  static const IconData sf_figure_walk_diamond = IconData(0x100AA2);

  /// IconData for SF Symbol figure.walk.diamond.fill
  static const IconData sf_figure_walk_diamond_fill = IconData(0x100AA3);

  /// IconData for SF Symbol figure.walk.motion
  static const IconData sf_figure_walk_motion = IconData(0x101411);

  /// IconData for SF Symbol figure.walk.motion.trianglebadge.exclamationmark
  static const IconData sf_figure_walk_motion_trianglebadge_exclamationmark =
      IconData(0x101DDA);

  /// IconData for SF Symbol figure.water.fitness
  static const IconData sf_figure_water_fitness = IconData(0x101549);

  /// IconData for SF Symbol figure.waterpolo
  static const IconData sf_figure_waterpolo = IconData(0x10154A);

  /// IconData for SF Symbol figure.wave
  static const IconData sf_figure_wave = IconData(0x10077B);

  /// IconData for SF Symbol figure.wave.circle
  static const IconData sf_figure_wave_circle = IconData(0x10077C);

  /// IconData for SF Symbol figure.wave.circle.fill
  static const IconData sf_figure_wave_circle_fill = IconData(0x10077D);

  /// IconData for SF Symbol figure.wrestling
  static const IconData sf_figure_wrestling = IconData(0x10154C);

  /// IconData for SF Symbol figure.yoga
  static const IconData sf_figure_yoga = IconData(0x10148C);

  /// IconData for SF Symbol filemenu.and.cursorarrow
  static const IconData sf_filemenu_and_cursorarrow = IconData(0x100BEA);

  /// IconData for SF Symbol filemenu.and.selection
  static const IconData sf_filemenu_and_selection = IconData(0x100C62);

  /// IconData for SF Symbol film
  static const IconData sf_film = IconData(0x1003B6);

  /// IconData for SF Symbol film.circle
  static const IconData sf_film_circle = IconData(0x100E0A);

  /// IconData for SF Symbol film.circle.fill
  static const IconData sf_film_circle_fill = IconData(0x100E0B);

  /// IconData for SF Symbol film.fill
  static const IconData sf_film_fill = IconData(0x1003B7);

  /// IconData for SF Symbol film.stack
  static const IconData sf_film_stack = IconData(0x101496);

  /// IconData for SF Symbol film.stack.fill
  static const IconData sf_film_stack_fill = IconData(0x101497);

  /// IconData for SF Symbol fireplace
  static const IconData sf_fireplace = IconData(0x101438);

  /// IconData for SF Symbol fireplace.fill
  static const IconData sf_fireplace_fill = IconData(0x101439);

  /// IconData for SF Symbol firewall
  static const IconData sf_firewall = IconData(0x10167E);

  /// IconData for SF Symbol firewall.fill
  static const IconData sf_firewall_fill = IconData(0x10167F);

  /// IconData for SF Symbol fireworks
  static const IconData sf_fireworks = IconData(0x10205E);

  /// IconData for SF Symbol fish
  static const IconData sf_fish = IconData(0x101590);

  /// IconData for SF Symbol fish.circle
  static const IconData sf_fish_circle = IconData(0x1017B1);

  /// IconData for SF Symbol fish.circle.fill
  static const IconData sf_fish_circle_fill = IconData(0x1017B2);

  /// IconData for SF Symbol fish.fill
  static const IconData sf_fish_fill = IconData(0x101591);

  /// IconData for SF Symbol flag
  static const IconData sf_flag = IconData(0x1002C9);

  /// IconData for SF Symbol flag.2.crossed
  static const IconData sf_flag_2_crossed = IconData(0x100DB6);

  /// IconData for SF Symbol flag.2.crossed.circle
  static const IconData sf_flag_2_crossed_circle = IconData(0x101705);

  /// IconData for SF Symbol flag.2.crossed.circle.fill
  static const IconData sf_flag_2_crossed_circle_fill = IconData(0x101706);

  /// IconData for SF Symbol flag.2.crossed.fill
  static const IconData sf_flag_2_crossed_fill = IconData(0x100DB7);

  /// IconData for SF Symbol flag.and.flag.filled.crossed
  static const IconData sf_flag_and_flag_filled_crossed = IconData(0x10105C);

  /// IconData for SF Symbol flag.badge.ellipsis
  static const IconData sf_flag_badge_ellipsis = IconData(0x100914);

  /// IconData for SF Symbol flag.badge.ellipsis.fill
  static const IconData sf_flag_badge_ellipsis_fill = IconData(0x100915);

  /// IconData for SF Symbol flag.checkered
  static const IconData sf_flag_checkered = IconData(0x10164C);

  /// IconData for SF Symbol flag.checkered.2.crossed
  static const IconData sf_flag_checkered_2_crossed = IconData(0x101714);

  /// IconData for SF Symbol flag.checkered.circle
  static const IconData sf_flag_checkered_circle = IconData(0x10177C);

  /// IconData for SF Symbol flag.checkered.circle.fill
  static const IconData sf_flag_checkered_circle_fill = IconData(0x10177D);

  /// IconData for SF Symbol flag.circle
  static const IconData sf_flag_circle = IconData(0x1002CB);

  /// IconData for SF Symbol flag.circle.fill
  static const IconData sf_flag_circle_fill = IconData(0x1002CC);

  /// IconData for SF Symbol flag.fill
  static const IconData sf_flag_fill = IconData(0x1002CA);

  /// IconData for SF Symbol flag.filled.and.flag.crossed
  static const IconData sf_flag_filled_and_flag_crossed = IconData(0x100DB8);

  /// IconData for SF Symbol flag.slash
  static const IconData sf_flag_slash = IconData(0x1002CD);

  /// IconData for SF Symbol flag.slash.circle
  static const IconData sf_flag_slash_circle = IconData(0x1002CF);

  /// IconData for SF Symbol flag.slash.circle.fill
  static const IconData sf_flag_slash_circle_fill = IconData(0x1002D0);

  /// IconData for SF Symbol flag.slash.fill
  static const IconData sf_flag_slash_fill = IconData(0x1002CE);

  /// IconData for SF Symbol flag.square
  static const IconData sf_flag_square = IconData(0x100F33);

  /// IconData for SF Symbol flag.square.fill
  static const IconData sf_flag_square_fill = IconData(0x100F34);

  /// IconData for SF Symbol flame
  static const IconData sf_flame = IconData(0x10066C);

  /// IconData for SF Symbol flame.circle
  static const IconData sf_flame_circle = IconData(0x1011D2);

  /// IconData for SF Symbol flame.circle.fill
  static const IconData sf_flame_circle_fill = IconData(0x1011D3);

  /// IconData for SF Symbol flame.fill
  static const IconData sf_flame_fill = IconData(0x10066D);

  /// IconData for SF Symbol flashlight.off.circle
  static const IconData sf_flashlight_off_circle = IconData(0x1020F1);

  /// IconData for SF Symbol flashlight.off.circle.fill
  static const IconData sf_flashlight_off_circle_fill = IconData(0x1020F2);

  /// IconData for SF Symbol flashlight.off.fill
  static const IconData sf_flashlight_off_fill = IconData(0x10074C);

  /// IconData for SF Symbol flashlight.on.circle
  static const IconData sf_flashlight_on_circle = IconData(0x1020F3);

  /// IconData for SF Symbol flashlight.on.circle.fill
  static const IconData sf_flashlight_on_circle_fill = IconData(0x1020F4);

  /// IconData for SF Symbol flashlight.on.fill
  static const IconData sf_flashlight_on_fill = IconData(0x10078B);

  /// IconData for SF Symbol flashlight.slash
  static const IconData sf_flashlight_slash = IconData(0x1020F5);

  /// IconData for SF Symbol flashlight.slash.circle
  static const IconData sf_flashlight_slash_circle = IconData(0x1020F6);

  /// IconData for SF Symbol flashlight.slash.circle.fill
  static const IconData sf_flashlight_slash_circle_fill = IconData(0x1020F7);

  /// IconData for SF Symbol flask
  static const IconData sf_flask = IconData(0x101C0D);

  /// IconData for SF Symbol flask.fill
  static const IconData sf_flask_fill = IconData(0x101C0E);

  /// IconData for SF Symbol fleuron
  static const IconData sf_fleuron = IconData(0x1014EF);

  /// IconData for SF Symbol fleuron.fill
  static const IconData sf_fleuron_fill = IconData(0x1014D4);

  /// IconData for SF Symbol flipphone
  static const IconData sf_flipphone = IconData(0x100AB4);

  /// IconData for SF Symbol florinsign
  static const IconData sf_florinsign = IconData(0x101444);

  /// IconData for SF Symbol florinsign.arrow.circlepath
  static const IconData sf_florinsign_arrow_circlepath = IconData(0x102217);

  /// IconData for SF Symbol florinsign.circle
  static const IconData sf_florinsign_circle = IconData(0x1005A1);

  /// IconData for SF Symbol florinsign.circle.fill
  static const IconData sf_florinsign_circle_fill = IconData(0x1005A2);

  /// IconData for SF Symbol florinsign.square
  static const IconData sf_florinsign_square = IconData(0x1005E1);

  /// IconData for SF Symbol florinsign.square.fill
  static const IconData sf_florinsign_square_fill = IconData(0x1005E2);

  /// IconData for SF Symbol flowchart
  static const IconData sf_flowchart = IconData(0x100415);

  /// IconData for SF Symbol flowchart.fill
  static const IconData sf_flowchart_fill = IconData(0x100416);

  /// IconData for SF Symbol fluid.brakesignal
  static const IconData sf_fluid_brakesignal = IconData(0x10128C);

  /// IconData for SF Symbol fluid.transmission
  static const IconData sf_fluid_transmission = IconData(0x101834);

  /// IconData for SF Symbol fn
  static const IconData sf_fn = IconData(0x10094C);

  /// IconData for SF Symbol folder
  static const IconData sf_folder = IconData(0x100215);

  /// IconData for SF Symbol folder.badge.gearshape
  static const IconData sf_folder_badge_gearshape = IconData(0x1008CD);

  /// IconData for SF Symbol folder.badge.minus
  static const IconData sf_folder_badge_minus = IconData(0x10021B);

  /// IconData for SF Symbol folder.badge.person.crop
  static const IconData sf_folder_badge_person_crop = IconData(0x10021D);

  /// IconData for SF Symbol folder.badge.plus
  static const IconData sf_folder_badge_plus = IconData(0x100219);

  /// IconData for SF Symbol folder.badge.questionmark
  static const IconData sf_folder_badge_questionmark = IconData(0x1009C6);

  /// IconData for SF Symbol folder.circle
  static const IconData sf_folder_circle = IconData(0x100217);

  /// IconData for SF Symbol folder.circle.fill
  static const IconData sf_folder_circle_fill = IconData(0x100218);

  /// IconData for SF Symbol folder.fill
  static const IconData sf_folder_fill = IconData(0x100216);

  /// IconData for SF Symbol folder.fill.badge.gearshape
  static const IconData sf_folder_fill_badge_gearshape = IconData(0x1008CE);

  /// IconData for SF Symbol folder.fill.badge.minus
  static const IconData sf_folder_fill_badge_minus = IconData(0x10021C);

  /// IconData for SF Symbol folder.fill.badge.person.crop
  static const IconData sf_folder_fill_badge_person_crop = IconData(0x10021E);

  /// IconData for SF Symbol folder.fill.badge.plus
  static const IconData sf_folder_fill_badge_plus = IconData(0x10021A);

  /// IconData for SF Symbol folder.fill.badge.questionmark
  static const IconData sf_folder_fill_badge_questionmark = IconData(0x1009C7);

  /// IconData for SF Symbol football
  static const IconData sf_football = IconData(0x1015CB);

  /// IconData for SF Symbol football.circle
  static const IconData sf_football_circle = IconData(0x1016BF);

  /// IconData for SF Symbol football.circle.fill
  static const IconData sf_football_circle_fill = IconData(0x1016C0);

  /// IconData for SF Symbol football.fill
  static const IconData sf_football_fill = IconData(0x1015CC);

  /// IconData for SF Symbol fork.knife
  static const IconData sf_fork_knife = IconData(0x100E29);

  /// IconData for SF Symbol fork.knife.circle
  static const IconData sf_fork_knife_circle = IconData(0x100E39);

  /// IconData for SF Symbol fork.knife.circle.fill
  static const IconData sf_fork_knife_circle_fill = IconData(0x100E3A);

  /// IconData for SF Symbol forward
  static const IconData sf_forward = IconData(0x10028B);

  /// IconData for SF Symbol forward.circle
  static const IconData sf_forward_circle = IconData(0x100E85);

  /// IconData for SF Symbol forward.circle.fill
  static const IconData sf_forward_circle_fill = IconData(0x100E86);

  /// IconData for SF Symbol forward.end
  static const IconData sf_forward_end = IconData(0x10028F);

  /// IconData for SF Symbol forward.end.alt
  static const IconData sf_forward_end_alt = IconData(0x100293);

  /// IconData for SF Symbol forward.end.alt.fill
  static const IconData sf_forward_end_alt_fill = IconData(0x100294);

  /// IconData for SF Symbol forward.end.circle
  static const IconData sf_forward_end_circle = IconData(0x1012F0);

  /// IconData for SF Symbol forward.end.circle.fill
  static const IconData sf_forward_end_circle_fill = IconData(0x1012F1);

  /// IconData for SF Symbol forward.end.fill
  static const IconData sf_forward_end_fill = IconData(0x100290);

  /// IconData for SF Symbol forward.fill
  static const IconData sf_forward_fill = IconData(0x10028C);

  /// IconData for SF Symbol forward.frame
  static const IconData sf_forward_frame = IconData(0x100A6A);

  /// IconData for SF Symbol forward.frame.fill
  static const IconData sf_forward_frame_fill = IconData(0x100A6B);

  /// IconData for SF Symbol fossil.shell
  static const IconData sf_fossil_shell = IconData(0x101554);

  /// IconData for SF Symbol fossil.shell.fill
  static const IconData sf_fossil_shell_fill = IconData(0x101555);

  /// IconData for SF Symbol francsign
  static const IconData sf_francsign = IconData(0x101443);

  /// IconData for SF Symbol francsign.arrow.circlepath
  static const IconData sf_francsign_arrow_circlepath = IconData(0x102216);

  /// IconData for SF Symbol francsign.circle
  static const IconData sf_francsign_circle = IconData(0x10059F);

  /// IconData for SF Symbol francsign.circle.fill
  static const IconData sf_francsign_circle_fill = IconData(0x1005A0);

  /// IconData for SF Symbol francsign.square
  static const IconData sf_francsign_square = IconData(0x1005DF);

  /// IconData for SF Symbol francsign.square.fill
  static const IconData sf_francsign_square_fill = IconData(0x1005E0);

  /// IconData for SF Symbol frying.pan
  static const IconData sf_frying_pan = IconData(0x101405);

  /// IconData for SF Symbol frying.pan.fill
  static const IconData sf_frying_pan_fill = IconData(0x101406);

  /// IconData for SF Symbol fuelpump
  static const IconData sf_fuelpump = IconData(0x100D5E);

  /// IconData for SF Symbol fuelpump.arrowtriangle.left
  static const IconData sf_fuelpump_arrowtriangle_left = IconData(0x10123E);

  /// IconData for SF Symbol fuelpump.arrowtriangle.left.fill
  static const IconData sf_fuelpump_arrowtriangle_left_fill =
      IconData(0x10123F);

  /// IconData for SF Symbol fuelpump.arrowtriangle.right
  static const IconData sf_fuelpump_arrowtriangle_right = IconData(0x10123C);

  /// IconData for SF Symbol fuelpump.arrowtriangle.right.fill
  static const IconData sf_fuelpump_arrowtriangle_right_fill =
      IconData(0x10123D);

  /// IconData for SF Symbol fuelpump.circle
  static const IconData sf_fuelpump_circle = IconData(0x100D60);

  /// IconData for SF Symbol fuelpump.circle.fill
  static const IconData sf_fuelpump_circle_fill = IconData(0x100D61);

  /// IconData for SF Symbol fuelpump.exclamationmark
  static const IconData sf_fuelpump_exclamationmark = IconData(0x101966);

  /// IconData for SF Symbol fuelpump.exclamationmark.fill
  static const IconData sf_fuelpump_exclamationmark_fill = IconData(0x101967);

  /// IconData for SF Symbol fuelpump.fill
  static const IconData sf_fuelpump_fill = IconData(0x100D5F);

  /// IconData for SF Symbol fuelpump.slash
  static const IconData sf_fuelpump_slash = IconData(0x101C1A);

  /// IconData for SF Symbol fuelpump.slash.fill
  static const IconData sf_fuelpump_slash_fill = IconData(0x101C1B);

  /// IconData for SF Symbol function
  static const IconData sf_function = IconData(0x10016E);

  /// IconData for SF Symbol fx
  static const IconData sf_fx = IconData(0x10016C);

  /// IconData for SF Symbol g.circle
  static const IconData sf_g_circle = IconData(0x100010);

  /// IconData for SF Symbol g.circle.fill
  static const IconData sf_g_circle_fill = IconData(0x100011);

  /// IconData for SF Symbol g.square
  static const IconData sf_g_square = IconData(0x1000A0);

  /// IconData for SF Symbol g.square.fill
  static const IconData sf_g_square_fill = IconData(0x1000A1);

  /// IconData for SF Symbol gamecontroller
  static const IconData sf_gamecontroller = IconData(0x1006F8);

  /// IconData for SF Symbol gamecontroller.fill
  static const IconData sf_gamecontroller_fill = IconData(0x1006F9);

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent
  static const IconData sf_gauge_open_with_lines_needle_33percent =
      IconData(0x101ACF);

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent.and.arrowtriangle
  static const IconData
      sf_gauge_open_with_lines_needle_33percent_and_arrowtriangle =
      IconData(0x101270);

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent.and.arrowtriangle.from.0percent.to.50percent
  static const IconData
      sf_gauge_open_with_lines_needle_33percent_and_arrowtriangle_from_0percent_to_50percent =
      IconData(0x101290);

  /// IconData for SF Symbol gauge.open.with.lines.needle.67percent.and.arrowtriangle
  static const IconData
      sf_gauge_open_with_lines_needle_67percent_and_arrowtriangle =
      IconData(0x101597);

  /// IconData for SF Symbol gauge.open.with.lines.needle.67percent.and.arrowtriangle.and.car
  static const IconData
      sf_gauge_open_with_lines_needle_67percent_and_arrowtriangle_and_car =
      IconData(0x10159C);

  /// IconData for SF Symbol gauge.open.with.lines.needle.84percent.exclamation
  static const IconData sf_gauge_open_with_lines_needle_84percent_exclamation =
      IconData(0x101598);

  /// IconData for SF Symbol gauge.with.dots.needle.0percent
  static const IconData sf_gauge_with_dots_needle_0percent = IconData(0x101419);

  /// IconData for SF Symbol gauge.with.dots.needle.33percent
  static const IconData sf_gauge_with_dots_needle_33percent =
      IconData(0x101C09);

  /// IconData for SF Symbol gauge.with.dots.needle.50percent
  static const IconData sf_gauge_with_dots_needle_50percent =
      IconData(0x10141A);

  /// IconData for SF Symbol gauge.with.dots.needle.67percent
  static const IconData sf_gauge_with_dots_needle_67percent =
      IconData(0x10037E);

  /// IconData for SF Symbol gauge.with.dots.needle.100percent
  static const IconData sf_gauge_with_dots_needle_100percent =
      IconData(0x10141B);

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.0percent
  static const IconData sf_gauge_with_dots_needle_bottom_0percent =
      IconData(0x101417);

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent
  static const IconData sf_gauge_with_dots_needle_bottom_50percent =
      IconData(0x10037D);

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent.badge.minus
  static const IconData sf_gauge_with_dots_needle_bottom_50percent_badge_minus =
      IconData(0x1004E7);

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent.badge.plus
  static const IconData sf_gauge_with_dots_needle_bottom_50percent_badge_plus =
      IconData(0x1004D3);

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.100percent
  static const IconData sf_gauge_with_dots_needle_bottom_100percent =
      IconData(0x101418);

  /// IconData for SF Symbol gauge.with.needle
  static const IconData sf_gauge_with_needle = IconData(0x1015AB);

  /// IconData for SF Symbol gauge.with.needle.fill
  static const IconData sf_gauge_with_needle_fill = IconData(0x1015AC);

  /// IconData for SF Symbol gear
  static const IconData sf_gear = IconData(0x10035F);

  /// IconData for SF Symbol gear.badge
  static const IconData sf_gear_badge = IconData(0x1014F9);

  /// IconData for SF Symbol gear.badge.checkmark
  static const IconData sf_gear_badge_checkmark = IconData(0x101166);

  /// IconData for SF Symbol gear.badge.questionmark
  static const IconData sf_gear_badge_questionmark = IconData(0x101168);

  /// IconData for SF Symbol gear.badge.xmark
  static const IconData sf_gear_badge_xmark = IconData(0x101167);

  /// IconData for SF Symbol gear.circle
  static const IconData sf_gear_circle = IconData(0x100EBA);

  /// IconData for SF Symbol gear.circle.fill
  static const IconData sf_gear_circle_fill = IconData(0x100EBB);

  /// IconData for SF Symbol gearshape
  static const IconData sf_gearshape = IconData(0x1008CB);

  /// IconData for SF Symbol gearshape.2
  static const IconData sf_gearshape_2 = IconData(0x10094E);

  /// IconData for SF Symbol gearshape.2.fill
  static const IconData sf_gearshape_2_fill = IconData(0x10094F);

  /// IconData for SF Symbol gearshape.arrow.triangle.2.circlepath
  static const IconData sf_gearshape_arrow_triangle_2_circlepath =
      IconData(0x101402);

  /// IconData for SF Symbol gearshape.circle
  static const IconData sf_gearshape_circle = IconData(0x100EBC);

  /// IconData for SF Symbol gearshape.circle.fill
  static const IconData sf_gearshape_circle_fill = IconData(0x100EBD);

  /// IconData for SF Symbol gearshape.fill
  static const IconData sf_gearshape_fill = IconData(0x1008CC);

  /// IconData for SF Symbol gearshift.layout.sixspeed
  static const IconData sf_gearshift_layout_sixspeed = IconData(0x101E1D);

  /// IconData for SF Symbol gift
  static const IconData sf_gift = IconData(0x100449);

  /// IconData for SF Symbol gift.circle
  static const IconData sf_gift_circle = IconData(0x1004C0);

  /// IconData for SF Symbol gift.circle.fill
  static const IconData sf_gift_circle_fill = IconData(0x1004C1);

  /// IconData for SF Symbol gift.fill
  static const IconData sf_gift_fill = IconData(0x10044A);

  /// IconData for SF Symbol giftcard
  static const IconData sf_giftcard = IconData(0x1009A0);

  /// IconData for SF Symbol giftcard.fill
  static const IconData sf_giftcard_fill = IconData(0x1009A1);

  /// IconData for SF Symbol globe
  static const IconData sf_globe = IconData(0x1001AA);

  /// IconData for SF Symbol globe.americas
  static const IconData sf_globe_americas = IconData(0x100D71);

  /// IconData for SF Symbol globe.americas.fill
  static const IconData sf_globe_americas_fill = IconData(0x100D72);

  /// IconData for SF Symbol globe.asia.australia
  static const IconData sf_globe_asia_australia = IconData(0x100D75);

  /// IconData for SF Symbol globe.asia.australia.fill
  static const IconData sf_globe_asia_australia_fill = IconData(0x100D76);

  /// IconData for SF Symbol globe.badge.chevron.backward
  static const IconData sf_globe_badge_chevron_backward = IconData(0x10114D);

  /// IconData for SF Symbol globe.central.south.asia
  static const IconData sf_globe_central_south_asia = IconData(0x1011F2);

  /// IconData for SF Symbol globe.central.south.asia.fill
  static const IconData sf_globe_central_south_asia_fill = IconData(0x1011F3);

  /// IconData for SF Symbol globe.desk
  static const IconData sf_globe_desk = IconData(0x101516);

  /// IconData for SF Symbol globe.desk.fill
  static const IconData sf_globe_desk_fill = IconData(0x101553);

  /// IconData for SF Symbol globe.europe.africa
  static const IconData sf_globe_europe_africa = IconData(0x100D73);

  /// IconData for SF Symbol globe.europe.africa.fill
  static const IconData sf_globe_europe_africa_fill = IconData(0x100D74);

  /// IconData for SF Symbol glowplug
  static const IconData sf_glowplug = IconData(0x101031);

  /// IconData for SF Symbol gobackward
  static const IconData sf_gobackward = IconData(0x100380);

  /// IconData for SF Symbol gobackward.5
  static const IconData sf_gobackward_5 = IconData(0x100DB1);

  /// IconData for SF Symbol gobackward.10
  static const IconData sf_gobackward_10 = IconData(0x100382);

  /// IconData for SF Symbol gobackward.15
  static const IconData sf_gobackward_15 = IconData(0x100384);

  /// IconData for SF Symbol gobackward.30
  static const IconData sf_gobackward_30 = IconData(0x100386);

  /// IconData for SF Symbol gobackward.45
  static const IconData sf_gobackward_45 = IconData(0x100388);

  /// IconData for SF Symbol gobackward.60
  static const IconData sf_gobackward_60 = IconData(0x10038A);

  /// IconData for SF Symbol gobackward.75
  static const IconData sf_gobackward_75 = IconData(0x100625);

  /// IconData for SF Symbol gobackward.90
  static const IconData sf_gobackward_90 = IconData(0x100627);

  /// IconData for SF Symbol gobackward.minus
  static const IconData sf_gobackward_minus = IconData(0x100629);

  /// IconData for SF Symbol goforward
  static const IconData sf_goforward = IconData(0x10037F);

  /// IconData for SF Symbol goforward.5
  static const IconData sf_goforward_5 = IconData(0x100DB0);

  /// IconData for SF Symbol goforward.10
  static const IconData sf_goforward_10 = IconData(0x100381);

  /// IconData for SF Symbol goforward.15
  static const IconData sf_goforward_15 = IconData(0x100383);

  /// IconData for SF Symbol goforward.30
  static const IconData sf_goforward_30 = IconData(0x100385);

  /// IconData for SF Symbol goforward.45
  static const IconData sf_goforward_45 = IconData(0x100387);

  /// IconData for SF Symbol goforward.60
  static const IconData sf_goforward_60 = IconData(0x100389);

  /// IconData for SF Symbol goforward.75
  static const IconData sf_goforward_75 = IconData(0x100624);

  /// IconData for SF Symbol goforward.90
  static const IconData sf_goforward_90 = IconData(0x100626);

  /// IconData for SF Symbol goforward.plus
  static const IconData sf_goforward_plus = IconData(0x100628);

  /// IconData for SF Symbol graduationcap
  static const IconData sf_graduationcap = IconData(0x100AD3);

  /// IconData for SF Symbol graduationcap.circle
  static const IconData sf_graduationcap_circle = IconData(0x1011BE);

  /// IconData for SF Symbol graduationcap.circle.fill
  static const IconData sf_graduationcap_circle_fill = IconData(0x1011BF);

  /// IconData for SF Symbol graduationcap.fill
  static const IconData sf_graduationcap_fill = IconData(0x100AD4);

  /// IconData for SF Symbol greaterthan
  static const IconData sf_greaterthan = IconData(0x100182);

  /// IconData for SF Symbol greaterthan.circle
  static const IconData sf_greaterthan_circle = IconData(0x100056);

  /// IconData for SF Symbol greaterthan.circle.fill
  static const IconData sf_greaterthan_circle_fill = IconData(0x100057);

  /// IconData for SF Symbol greaterthan.square
  static const IconData sf_greaterthan_square = IconData(0x1000E8);

  /// IconData for SF Symbol greaterthan.square.fill
  static const IconData sf_greaterthan_square_fill = IconData(0x1000E9);

  /// IconData for SF Symbol greetingcard
  static const IconData sf_greetingcard = IconData(0x100920);

  /// IconData for SF Symbol greetingcard.fill
  static const IconData sf_greetingcard_fill = IconData(0x100921);

  /// IconData for SF Symbol grid
  static const IconData sf_grid = IconData(0x1004D7);

  /// IconData for SF Symbol grid.circle
  static const IconData sf_grid_circle = IconData(0x1004D8);

  /// IconData for SF Symbol grid.circle.fill
  static const IconData sf_grid_circle_fill = IconData(0x10061F);

  /// IconData for SF Symbol guaranisign
  static const IconData sf_guaranisign = IconData(0x101453);

  /// IconData for SF Symbol guaranisign.arrow.circlepath
  static const IconData sf_guaranisign_arrow_circlepath = IconData(0x102226);

  /// IconData for SF Symbol guaranisign.circle
  static const IconData sf_guaranisign_circle = IconData(0x1005BF);

  /// IconData for SF Symbol guaranisign.circle.fill
  static const IconData sf_guaranisign_circle_fill = IconData(0x1005C0);

  /// IconData for SF Symbol guaranisign.square
  static const IconData sf_guaranisign_square = IconData(0x1005FF);

  /// IconData for SF Symbol guaranisign.square.fill
  static const IconData sf_guaranisign_square_fill = IconData(0x100600);

  /// IconData for SF Symbol guitars
  static const IconData sf_guitars = IconData(0x10046D);

  /// IconData for SF Symbol guitars.fill
  static const IconData sf_guitars_fill = IconData(0x1007D1);

  /// IconData for SF Symbol gym.bag
  static const IconData sf_gym_bag = IconData(0x1020B1);

  /// IconData for SF Symbol gym.bag.fill
  static const IconData sf_gym_bag_fill = IconData(0x1020B2);

  /// IconData for SF Symbol gyroscope
  static const IconData sf_gyroscope = IconData(0x100B17);

  /// IconData for SF Symbol h.circle
  static const IconData sf_h_circle = IconData(0x100012);

  /// IconData for SF Symbol h.circle.fill
  static const IconData sf_h_circle_fill = IconData(0x100013);

  /// IconData for SF Symbol h.square
  static const IconData sf_h_square = IconData(0x1000A2);

  /// IconData for SF Symbol h.square.fill
  static const IconData sf_h_square_fill = IconData(0x1000A3);

  /// IconData for SF Symbol h.square.on.square
  static const IconData sf_h_square_on_square = IconData(0x100B5C);

  /// IconData for SF Symbol h.square.on.square.fill
  static const IconData sf_h_square_on_square_fill = IconData(0x100B5D);

  /// IconData for SF Symbol hammer
  static const IconData sf_hammer = IconData(0x100644);

  /// IconData for SF Symbol hammer.circle
  static const IconData sf_hammer_circle = IconData(0x100DD4);

  /// IconData for SF Symbol hammer.circle.fill
  static const IconData sf_hammer_circle_fill = IconData(0x100DD5);

  /// IconData for SF Symbol hammer.fill
  static const IconData sf_hammer_fill = IconData(0x100645);

  /// IconData for SF Symbol hand.draw
  static const IconData sf_hand_draw = IconData(0x100593);

  /// IconData for SF Symbol hand.draw.fill
  static const IconData sf_hand_draw_fill = IconData(0x100594);

  /// IconData for SF Symbol hand.point.down
  static const IconData sf_hand_point_down = IconData(0x10093B);

  /// IconData for SF Symbol hand.point.down.fill
  static const IconData sf_hand_point_down_fill = IconData(0x10093C);

  /// IconData for SF Symbol hand.point.left
  static const IconData sf_hand_point_left = IconData(0x10067D);

  /// IconData for SF Symbol hand.point.left.fill
  static const IconData sf_hand_point_left_fill = IconData(0x10067E);

  /// IconData for SF Symbol hand.point.right
  static const IconData sf_hand_point_right = IconData(0x10067F);

  /// IconData for SF Symbol hand.point.right.fill
  static const IconData sf_hand_point_right_fill = IconData(0x100680);

  /// IconData for SF Symbol hand.point.up
  static const IconData sf_hand_point_up = IconData(0x100939);

  /// IconData for SF Symbol hand.point.up.braille
  static const IconData sf_hand_point_up_braille = IconData(0x100982);

  /// IconData for SF Symbol hand.point.up.braille.fill
  static const IconData sf_hand_point_up_braille_fill = IconData(0x100983);

  /// IconData for SF Symbol hand.point.up.fill
  static const IconData sf_hand_point_up_fill = IconData(0x10093A);

  /// IconData for SF Symbol hand.point.up.left
  static const IconData sf_hand_point_up_left = IconData(0x100770);

  /// IconData for SF Symbol hand.point.up.left.and.text
  static const IconData sf_hand_point_up_left_and_text = IconData(0x101F80);

  /// IconData for SF Symbol hand.point.up.left.and.text.fill
  static const IconData sf_hand_point_up_left_and_text_fill =
      IconData(0x101F81);

  /// IconData for SF Symbol hand.point.up.left.fill
  static const IconData sf_hand_point_up_left_fill = IconData(0x100771);

  /// IconData for SF Symbol hand.raised
  static const IconData sf_hand_raised = IconData(0x10027B);

  /// IconData for SF Symbol hand.raised.app
  static const IconData sf_hand_raised_app = IconData(0x10174C);

  /// IconData for SF Symbol hand.raised.app.fill
  static const IconData sf_hand_raised_app_fill = IconData(0x10174D);

  /// IconData for SF Symbol hand.raised.brakesignal
  static const IconData sf_hand_raised_brakesignal = IconData(0x1017C2);

  /// IconData for SF Symbol hand.raised.brakesignal.slash
  static const IconData sf_hand_raised_brakesignal_slash = IconData(0x1017C3);

  /// IconData for SF Symbol hand.raised.circle
  static const IconData sf_hand_raised_circle = IconData(0x100DCA);

  /// IconData for SF Symbol hand.raised.circle.fill
  static const IconData sf_hand_raised_circle_fill = IconData(0x100DCB);

  /// IconData for SF Symbol hand.raised.fill
  static const IconData sf_hand_raised_fill = IconData(0x10027C);

  /// IconData for SF Symbol hand.raised.fingers.spread
  static const IconData sf_hand_raised_fingers_spread = IconData(0x1015E9);

  /// IconData for SF Symbol hand.raised.fingers.spread.fill
  static const IconData sf_hand_raised_fingers_spread_fill = IconData(0x1015EA);

  /// IconData for SF Symbol hand.raised.slash
  static const IconData sf_hand_raised_slash = IconData(0x10027D);

  /// IconData for SF Symbol hand.raised.slash.fill
  static const IconData sf_hand_raised_slash_fill = IconData(0x10027E);

  /// IconData for SF Symbol hand.raised.square
  static const IconData sf_hand_raised_square = IconData(0x100F53);

  /// IconData for SF Symbol hand.raised.square.fill
  static const IconData sf_hand_raised_square_fill = IconData(0x100F54);

  /// IconData for SF Symbol hand.raised.square.on.square
  static const IconData sf_hand_raised_square_on_square = IconData(0x100D28);

  /// IconData for SF Symbol hand.raised.square.on.square.fill
  static const IconData sf_hand_raised_square_on_square_fill =
      IconData(0x100D29);

  /// IconData for SF Symbol hand.tap
  static const IconData sf_hand_tap = IconData(0x100B01);

  /// IconData for SF Symbol hand.tap.fill
  static const IconData sf_hand_tap_fill = IconData(0x100B02);

  /// IconData for SF Symbol hand.thumbsdown
  static const IconData sf_hand_thumbsdown = IconData(0x100281);

  /// IconData for SF Symbol hand.thumbsdown.circle
  static const IconData sf_hand_thumbsdown_circle = IconData(0x100DDF);

  /// IconData for SF Symbol hand.thumbsdown.circle.fill
  static const IconData sf_hand_thumbsdown_circle_fill = IconData(0x100DE0);

  /// IconData for SF Symbol hand.thumbsdown.fill
  static const IconData sf_hand_thumbsdown_fill = IconData(0x100282);

  /// IconData for SF Symbol hand.thumbsup
  static const IconData sf_hand_thumbsup = IconData(0x10027F);

  /// IconData for SF Symbol hand.thumbsup.circle
  static const IconData sf_hand_thumbsup_circle = IconData(0x100DDD);

  /// IconData for SF Symbol hand.thumbsup.circle.fill
  static const IconData sf_hand_thumbsup_circle_fill = IconData(0x100DDE);

  /// IconData for SF Symbol hand.thumbsup.fill
  static const IconData sf_hand_thumbsup_fill = IconData(0x100280);

  /// IconData for SF Symbol hand.wave
  static const IconData sf_hand_wave = IconData(0x1007F0);

  /// IconData for SF Symbol hand.wave.fill
  static const IconData sf_hand_wave_fill = IconData(0x1007F1);

  /// IconData for SF Symbol handbag
  static const IconData sf_handbag = IconData(0x1017B8);

  /// IconData for SF Symbol handbag.circle
  static const IconData sf_handbag_circle = IconData(0x101FDC);

  /// IconData for SF Symbol handbag.circle.fill
  static const IconData sf_handbag_circle_fill = IconData(0x101FDD);

  /// IconData for SF Symbol handbag.fill
  static const IconData sf_handbag_fill = IconData(0x1017B9);

  /// IconData for SF Symbol hands.and.sparkles
  static const IconData sf_hands_and_sparkles = IconData(0x100CAE);

  /// IconData for SF Symbol hands.and.sparkles.fill
  static const IconData sf_hands_and_sparkles_fill = IconData(0x100CAF);

  /// IconData for SF Symbol hands.clap
  static const IconData sf_hands_clap = IconData(0x1007EE);

  /// IconData for SF Symbol hands.clap.fill
  static const IconData sf_hands_clap_fill = IconData(0x1007EF);

  /// IconData for SF Symbol hanger
  static const IconData sf_hanger = IconData(0x100816);

  /// IconData for SF Symbol hare
  static const IconData sf_hare = IconData(0x1004CE);

  /// IconData for SF Symbol hare.circle
  static const IconData sf_hare_circle = IconData(0x102038);

  /// IconData for SF Symbol hare.circle.fill
  static const IconData sf_hare_circle_fill = IconData(0x102039);

  /// IconData for SF Symbol hare.fill
  static const IconData sf_hare_fill = IconData(0x1004CF);

  /// IconData for SF Symbol hazardsign
  static const IconData sf_hazardsign = IconData(0x101030);

  /// IconData for SF Symbol hazardsign.fill
  static const IconData sf_hazardsign_fill = IconData(0x101563);

  /// IconData for SF Symbol head.profile.arrow.forward.and.visionpro
  static const IconData sf_head_profile_arrow_forward_and_visionpro =
      IconData(0x1017F9);

  /// IconData for SF Symbol headlight.daytime
  static const IconData sf_headlight_daytime = IconData(0x100FBA);

  /// IconData for SF Symbol headlight.daytime.fill
  static const IconData sf_headlight_daytime_fill = IconData(0x100FBB);

  /// IconData for SF Symbol headlight.fog
  static const IconData sf_headlight_fog = IconData(0x100FB6);

  /// IconData for SF Symbol headlight.fog.fill
  static const IconData sf_headlight_fog_fill = IconData(0x100FB7);

  /// IconData for SF Symbol headlight.high.beam
  static const IconData sf_headlight_high_beam = IconData(0x100FB2);

  /// IconData for SF Symbol headlight.high.beam.fill
  static const IconData sf_headlight_high_beam_fill = IconData(0x100FB3);

  /// IconData for SF Symbol headlight.low.beam
  static const IconData sf_headlight_low_beam = IconData(0x100FB4);

  /// IconData for SF Symbol headlight.low.beam.fill
  static const IconData sf_headlight_low_beam_fill = IconData(0x100FB5);

  /// IconData for SF Symbol headphones
  static const IconData sf_headphones = IconData(0x100448);

  /// IconData for SF Symbol headphones.circle
  static const IconData sf_headphones_circle = IconData(0x1004BE);

  /// IconData for SF Symbol headphones.circle.fill
  static const IconData sf_headphones_circle_fill = IconData(0x1004BF);

  /// IconData for SF Symbol hearingdevice.and.signal.meter
  static const IconData sf_hearingdevice_and_signal_meter = IconData(0x10138F);

  /// IconData for SF Symbol hearingdevice.and.signal.meter.fill
  static const IconData sf_hearingdevice_and_signal_meter_fill =
      IconData(0x101390);

  /// IconData for SF Symbol hearingdevice.ear
  static const IconData sf_hearingdevice_ear = IconData(0x100A93);

  /// IconData for SF Symbol hearingdevice.ear.fill
  static const IconData sf_hearingdevice_ear_fill = IconData(0x101257);

  /// IconData for SF Symbol heart
  static const IconData sf_heart = IconData(0x1002B4);

  /// IconData for SF Symbol heart.circle
  static const IconData sf_heart_circle = IconData(0x1002B8);

  /// IconData for SF Symbol heart.circle.fill
  static const IconData sf_heart_circle_fill = IconData(0x1002B9);

  /// IconData for SF Symbol heart.fill
  static const IconData sf_heart_fill = IconData(0x1002B5);

  /// IconData for SF Symbol heart.rectangle
  static const IconData sf_heart_rectangle = IconData(0x1010EA);

  /// IconData for SF Symbol heart.rectangle.fill
  static const IconData sf_heart_rectangle_fill = IconData(0x1010EB);

  /// IconData for SF Symbol heart.slash
  static const IconData sf_heart_slash = IconData(0x1002B6);

  /// IconData for SF Symbol heart.slash.circle
  static const IconData sf_heart_slash_circle = IconData(0x1002BA);

  /// IconData for SF Symbol heart.slash.circle.fill
  static const IconData sf_heart_slash_circle_fill = IconData(0x1002BB);

  /// IconData for SF Symbol heart.slash.fill
  static const IconData sf_heart_slash_fill = IconData(0x1002B7);

  /// IconData for SF Symbol heart.square
  static const IconData sf_heart_square = IconData(0x100F31);

  /// IconData for SF Symbol heart.square.fill
  static const IconData sf_heart_square_fill = IconData(0x100F32);

  /// IconData for SF Symbol heart.text.square
  static const IconData sf_heart_text_square = IconData(0x100974);

  /// IconData for SF Symbol heart.text.square.fill
  static const IconData sf_heart_text_square_fill = IconData(0x100975);

  /// IconData for SF Symbol heat.element.windshield
  static const IconData sf_heat_element_windshield = IconData(0x1017C9);

  /// IconData for SF Symbol heat.waves
  static const IconData sf_heat_waves = IconData(0x101C39);

  /// IconData for SF Symbol heater.vertical
  static const IconData sf_heater_vertical = IconData(0x1014E9);

  /// IconData for SF Symbol heater.vertical.fill
  static const IconData sf_heater_vertical_fill = IconData(0x1014EA);

  /// IconData for SF Symbol helm
  static const IconData sf_helm = IconData(0x10042A);

  /// IconData for SF Symbol hexagon
  static const IconData sf_hexagon = IconData(0x10075D);

  /// IconData for SF Symbol hexagon.bottomhalf.filled
  static const IconData sf_hexagon_bottomhalf_filled = IconData(0x10103F);

  /// IconData for SF Symbol hexagon.fill
  static const IconData sf_hexagon_fill = IconData(0x10075E);

  /// IconData for SF Symbol hexagon.lefthalf.filled
  static const IconData sf_hexagon_lefthalf_filled = IconData(0x101009);

  /// IconData for SF Symbol hexagon.righthalf.filled
  static const IconData sf_hexagon_righthalf_filled = IconData(0x10100A);

  /// IconData for SF Symbol hexagon.tophalf.filled
  static const IconData sf_hexagon_tophalf_filled = IconData(0x10103E);

  /// IconData for SF Symbol hifireceiver
  static const IconData sf_hifireceiver = IconData(0x1014AC);

  /// IconData for SF Symbol hifireceiver.fill
  static const IconData sf_hifireceiver_fill = IconData(0x1014AD);

  /// IconData for SF Symbol hifispeaker
  static const IconData sf_hifispeaker = IconData(0x10074E);

  /// IconData for SF Symbol hifispeaker.2
  static const IconData sf_hifispeaker_2 = IconData(0x1007F5);

  /// IconData for SF Symbol hifispeaker.2.fill
  static const IconData sf_hifispeaker_2_fill = IconData(0x1007F6);

  /// IconData for SF Symbol hifispeaker.and.appletv
  static const IconData sf_hifispeaker_and_appletv = IconData(0x100EFB);

  /// IconData for SF Symbol hifispeaker.and.appletv.fill
  static const IconData sf_hifispeaker_and_appletv_fill = IconData(0x100EFC);

  /// IconData for SF Symbol hifispeaker.and.homepod
  static const IconData sf_hifispeaker_and_homepod = IconData(0x100B8E);

  /// IconData for SF Symbol hifispeaker.and.homepod.fill
  static const IconData sf_hifispeaker_and_homepod_fill = IconData(0x1007F4);

  /// IconData for SF Symbol hifispeaker.and.homepodmini
  static const IconData sf_hifispeaker_and_homepodmini = IconData(0x100DED);

  /// IconData for SF Symbol hifispeaker.and.homepodmini.fill
  static const IconData sf_hifispeaker_and_homepodmini_fill =
      IconData(0x100DEE);

  /// IconData for SF Symbol hifispeaker.fill
  static const IconData sf_hifispeaker_fill = IconData(0x10074F);

  /// IconData for SF Symbol highlighter
  static const IconData sf_highlighter = IconData(0x100987);

  /// IconData for SF Symbol hockey.puck
  static const IconData sf_hockey_puck = IconData(0x1016FD);

  /// IconData for SF Symbol hockey.puck.circle
  static const IconData sf_hockey_puck_circle = IconData(0x1016FF);

  /// IconData for SF Symbol hockey.puck.circle.fill
  static const IconData sf_hockey_puck_circle_fill = IconData(0x101700);

  /// IconData for SF Symbol hockey.puck.fill
  static const IconData sf_hockey_puck_fill = IconData(0x1016FE);

  /// IconData for SF Symbol hold.brakesignal
  static const IconData sf_hold_brakesignal = IconData(0x1012CC);

  /// IconData for SF Symbol homekit
  static const IconData sf_homekit = IconData(0x100800);

  /// IconData for SF Symbol homepod
  static const IconData sf_homepod = IconData(0x1007E2);

  /// IconData for SF Symbol homepod.2
  static const IconData sf_homepod_2 = IconData(0x100B8D);

  /// IconData for SF Symbol homepod.2.fill
  static const IconData sf_homepod_2_fill = IconData(0x1007F3);

  /// IconData for SF Symbol homepod.and.appletv
  static const IconData sf_homepod_and_appletv = IconData(0x100E8C);

  /// IconData for SF Symbol homepod.and.appletv.fill
  static const IconData sf_homepod_and_appletv_fill = IconData(0x100E8D);

  /// IconData for SF Symbol homepod.and.homepodmini
  static const IconData sf_homepod_and_homepodmini = IconData(0x100DEB);

  /// IconData for SF Symbol homepod.and.homepodmini.fill
  static const IconData sf_homepod_and_homepodmini_fill = IconData(0x100DEC);

  /// IconData for SF Symbol homepod.fill
  static const IconData sf_homepod_fill = IconData(0x1007E3);

  /// IconData for SF Symbol homepodmini
  static const IconData sf_homepodmini = IconData(0x100DE7);

  /// IconData for SF Symbol homepodmini.2
  static const IconData sf_homepodmini_2 = IconData(0x100DE9);

  /// IconData for SF Symbol homepodmini.2.fill
  static const IconData sf_homepodmini_2_fill = IconData(0x100DEA);

  /// IconData for SF Symbol homepodmini.and.appletv
  static const IconData sf_homepodmini_and_appletv = IconData(0x100EF9);

  /// IconData for SF Symbol homepodmini.and.appletv.fill
  static const IconData sf_homepodmini_and_appletv_fill = IconData(0x100EFA);

  /// IconData for SF Symbol homepodmini.fill
  static const IconData sf_homepodmini_fill = IconData(0x100DE8);

  /// IconData for SF Symbol horn
  static const IconData sf_horn = IconData(0x101135);

  /// IconData for SF Symbol horn.blast
  static const IconData sf_horn_blast = IconData(0x101137);

  /// IconData for SF Symbol horn.blast.fill
  static const IconData sf_horn_blast_fill = IconData(0x101138);

  /// IconData for SF Symbol horn.fill
  static const IconData sf_horn_fill = IconData(0x101136);

  /// IconData for SF Symbol hourglass
  static const IconData sf_hourglass = IconData(0x100587);

  /// IconData for SF Symbol hourglass.and.lock
  static const IconData sf_hourglass_and_lock = IconData(0x1021D7);

  /// IconData for SF Symbol hourglass.badge.plus
  static const IconData sf_hourglass_badge_plus = IconData(0x1008EC);

  /// IconData for SF Symbol hourglass.bottomhalf.filled
  static const IconData sf_hourglass_bottomhalf_filled = IconData(0x100588);

  /// IconData for SF Symbol hourglass.circle
  static const IconData sf_hourglass_circle = IconData(0x1011DB);

  /// IconData for SF Symbol hourglass.circle.fill
  static const IconData sf_hourglass_circle_fill = IconData(0x1011DC);

  /// IconData for SF Symbol hourglass.tophalf.filled
  static const IconData sf_hourglass_tophalf_filled = IconData(0x100589);

  /// IconData for SF Symbol house
  static const IconData sf_house = IconData(0x10039E);

  /// IconData for SF Symbol house.and.flag
  static const IconData sf_house_and_flag = IconData(0x101631);

  /// IconData for SF Symbol house.and.flag.circle
  static const IconData sf_house_and_flag_circle = IconData(0x101788);

  /// IconData for SF Symbol house.and.flag.circle.fill
  static const IconData sf_house_and_flag_circle_fill = IconData(0x101789);

  /// IconData for SF Symbol house.and.flag.fill
  static const IconData sf_house_and_flag_fill = IconData(0x101632);

  /// IconData for SF Symbol house.circle
  static const IconData sf_house_circle = IconData(0x100946);

  /// IconData for SF Symbol house.circle.fill
  static const IconData sf_house_circle_fill = IconData(0x100947);

  /// IconData for SF Symbol house.fill
  static const IconData sf_house_fill = IconData(0x10039F);

  /// IconData for SF Symbol house.lodge
  static const IconData sf_house_lodge = IconData(0x10162D);

  /// IconData for SF Symbol house.lodge.circle
  static const IconData sf_house_lodge_circle = IconData(0x101786);

  /// IconData for SF Symbol house.lodge.circle.fill
  static const IconData sf_house_lodge_circle_fill = IconData(0x101787);

  /// IconData for SF Symbol house.lodge.fill
  static const IconData sf_house_lodge_fill = IconData(0x10162E);

  /// IconData for SF Symbol hryvniasign
  static const IconData sf_hryvniasign = IconData(0x101451);

  /// IconData for SF Symbol hryvniasign.arrow.circlepath
  static const IconData sf_hryvniasign_arrow_circlepath = IconData(0x102224);

  /// IconData for SF Symbol hryvniasign.circle
  static const IconData sf_hryvniasign_circle = IconData(0x1005BB);

  /// IconData for SF Symbol hryvniasign.circle.fill
  static const IconData sf_hryvniasign_circle_fill = IconData(0x1005BC);

  /// IconData for SF Symbol hryvniasign.square
  static const IconData sf_hryvniasign_square = IconData(0x1005FB);

  /// IconData for SF Symbol hryvniasign.square.fill
  static const IconData sf_hryvniasign_square_fill = IconData(0x1005FC);

  /// IconData for SF Symbol humidifier
  static const IconData sf_humidifier = IconData(0x101618);

  /// IconData for SF Symbol humidifier.and.droplets
  static const IconData sf_humidifier_and_droplets = IconData(0x101506);

  /// IconData for SF Symbol humidifier.and.droplets.fill
  static const IconData sf_humidifier_and_droplets_fill = IconData(0x101507);

  /// IconData for SF Symbol humidifier.fill
  static const IconData sf_humidifier_fill = IconData(0x101619);

  /// IconData for SF Symbol humidity
  static const IconData sf_humidity = IconData(0x1010DA);

  /// IconData for SF Symbol humidity.fill
  static const IconData sf_humidity_fill = IconData(0x1010DB);

  /// IconData for SF Symbol hurricane
  static const IconData sf_hurricane = IconData(0x1001E9);

  /// IconData for SF Symbol hurricane.circle
  static const IconData sf_hurricane_circle = IconData(0x1016F7);

  /// IconData for SF Symbol hurricane.circle.fill
  static const IconData sf_hurricane_circle_fill = IconData(0x1016F8);

  /// IconData for SF Symbol i.circle
  static const IconData sf_i_circle = IconData(0x100014);

  /// IconData for SF Symbol i.circle.fill
  static const IconData sf_i_circle_fill = IconData(0x100015);

  /// IconData for SF Symbol i.square
  static const IconData sf_i_square = IconData(0x1000A4);

  /// IconData for SF Symbol i.square.fill
  static const IconData sf_i_square_fill = IconData(0x1000A5);

  /// IconData for SF Symbol icloud
  static const IconData sf_icloud = IconData(0x10030B);

  /// IconData for SF Symbol icloud.and.arrow.down
  static const IconData sf_icloud_and_arrow_down = IconData(0x100315);

  /// IconData for SF Symbol icloud.and.arrow.down.fill
  static const IconData sf_icloud_and_arrow_down_fill = IconData(0x100316);

  /// IconData for SF Symbol icloud.and.arrow.up
  static const IconData sf_icloud_and_arrow_up = IconData(0x100317);

  /// IconData for SF Symbol icloud.and.arrow.up.fill
  static const IconData sf_icloud_and_arrow_up_fill = IconData(0x100318);

  /// IconData for SF Symbol icloud.circle
  static const IconData sf_icloud_circle = IconData(0x10030D);

  /// IconData for SF Symbol icloud.circle.fill
  static const IconData sf_icloud_circle_fill = IconData(0x10030E);

  /// IconData for SF Symbol icloud.fill
  static const IconData sf_icloud_fill = IconData(0x10030C);

  /// IconData for SF Symbol icloud.slash
  static const IconData sf_icloud_slash = IconData(0x10030F);

  /// IconData for SF Symbol icloud.slash.fill
  static const IconData sf_icloud_slash_fill = IconData(0x100310);

  /// IconData for SF Symbol icloud.square
  static const IconData sf_icloud_square = IconData(0x100F51);

  /// IconData for SF Symbol icloud.square.fill
  static const IconData sf_icloud_square_fill = IconData(0x100F52);

  /// IconData for SF Symbol increase.indent
  static const IconData sf_increase_indent = IconData(0x1002F5);

  /// IconData for SF Symbol increase.quotelevel
  static const IconData sf_increase_quotelevel = IconData(0x100780);

  /// IconData for SF Symbol indianrupeesign
  static const IconData sf_indianrupeesign = IconData(0x101449);

  /// IconData for SF Symbol indianrupeesign.arrow.circlepath
  static const IconData sf_indianrupeesign_arrow_circlepath =
      IconData(0x10221C);

  /// IconData for SF Symbol indianrupeesign.circle
  static const IconData sf_indianrupeesign_circle = IconData(0x1005AB);

  /// IconData for SF Symbol indianrupeesign.circle.fill
  static const IconData sf_indianrupeesign_circle_fill = IconData(0x1005AC);

  /// IconData for SF Symbol indianrupeesign.square
  static const IconData sf_indianrupeesign_square = IconData(0x1005EB);

  /// IconData for SF Symbol indianrupeesign.square.fill
  static const IconData sf_indianrupeesign_square_fill = IconData(0x1005EC);

  /// IconData for SF Symbol infinity
  static const IconData sf_infinity = IconData(0x100BE0);

  /// IconData for SF Symbol infinity.circle
  static const IconData sf_infinity_circle = IconData(0x100D4F);

  /// IconData for SF Symbol infinity.circle.fill
  static const IconData sf_infinity_circle_fill = IconData(0x100D50);

  /// IconData for SF Symbol info
  static const IconData sf_info = IconData(0x100173);

  /// IconData for SF Symbol info.bubble
  static const IconData sf_info_bubble = IconData(0x101334);

  /// IconData for SF Symbol info.bubble.fill
  static const IconData sf_info_bubble_fill = IconData(0x101335);

  /// IconData for SF Symbol info.circle
  static const IconData sf_info_circle = IconData(0x100174);

  /// IconData for SF Symbol info.circle.fill
  static const IconData sf_info_circle_fill = IconData(0x100175);

  /// IconData for SF Symbol info.square
  static const IconData sf_info_square = IconData(0x101287);

  /// IconData for SF Symbol info.square.fill
  static const IconData sf_info_square_fill = IconData(0x101288);

  /// IconData for SF Symbol info.windshield
  static const IconData sf_info_windshield = IconData(0x1017CA);

  /// IconData for SF Symbol internaldrive
  static const IconData sf_internaldrive = IconData(0x10097E);

  /// IconData for SF Symbol internaldrive.fill
  static const IconData sf_internaldrive_fill = IconData(0x100A2A);

  /// IconData for SF Symbol ipad
  static const IconData sf_ipad = IconData(0x1007E0);

  /// IconData for SF Symbol ipad.and.arrow.forward
  static const IconData sf_ipad_and_arrow_forward = IconData(0x100DC0);

  /// IconData for SF Symbol ipad.and.iphone
  static const IconData sf_ipad_and_iphone = IconData(0x10111F);

  /// IconData for SF Symbol ipad.and.iphone.slash
  static const IconData sf_ipad_and_iphone_slash = IconData(0x1012DF);

  /// IconData for SF Symbol ipad.badge.play
  static const IconData sf_ipad_badge_play = IconData(0x100D13);

  /// IconData for SF Symbol ipad.case
  static const IconData sf_ipad_case = IconData(0x101929);

  /// IconData for SF Symbol ipad.case.and.iphone.case
  static const IconData sf_ipad_case_and_iphone_case = IconData(0x10192A);

  /// IconData for SF Symbol ipad.gen1
  static const IconData sf_ipad_gen1 = IconData(0x1007DF);

  /// IconData for SF Symbol ipad.gen1.badge.play
  static const IconData sf_ipad_gen1_badge_play = IconData(0x100D12);

  /// IconData for SF Symbol ipad.gen1.landscape
  static const IconData sf_ipad_gen1_landscape = IconData(0x100953);

  /// IconData for SF Symbol ipad.gen1.landscape.badge.play
  static const IconData sf_ipad_gen1_landscape_badge_play = IconData(0x100D51);

  /// IconData for SF Symbol ipad.gen2
  static const IconData sf_ipad_gen2 = IconData(0x1017E7);

  /// IconData for SF Symbol ipad.gen2.badge.play
  static const IconData sf_ipad_gen2_badge_play = IconData(0x1017E8);

  /// IconData for SF Symbol ipad.gen2.landscape
  static const IconData sf_ipad_gen2_landscape = IconData(0x1017E9);

  /// IconData for SF Symbol ipad.gen2.landscape.badge.play
  static const IconData sf_ipad_gen2_landscape_badge_play = IconData(0x1017EA);

  /// IconData for SF Symbol ipad.landscape
  static const IconData sf_ipad_landscape = IconData(0x100954);

  /// IconData for SF Symbol ipad.landscape.badge.play
  static const IconData sf_ipad_landscape_badge_play = IconData(0x100D52);

  /// IconData for SF Symbol ipad.rear.camera
  static const IconData sf_ipad_rear_camera = IconData(0x101032);

  /// IconData for SF Symbol ipad.sizes
  static const IconData sf_ipad_sizes = IconData(0x1018F6);

  /// IconData for SF Symbol iphone
  static const IconData sf_iphone = IconData(0x1007DC);

  /// IconData for SF Symbol iphone.and.arrow.forward
  static const IconData sf_iphone_and_arrow_forward = IconData(0x100DBC);

  /// IconData for SF Symbol iphone.and.arrow.left.and.arrow.right
  static const IconData sf_iphone_and_arrow_left_and_arrow_right =
      IconData(0x101C3F);

  /// IconData for SF Symbol iphone.badge.play
  static const IconData sf_iphone_badge_play = IconData(0x100D11);

  /// IconData for SF Symbol iphone.case
  static const IconData sf_iphone_case = IconData(0x101928);

  /// IconData for SF Symbol iphone.circle
  static const IconData sf_iphone_circle = IconData(0x101129);

  /// IconData for SF Symbol iphone.circle.fill
  static const IconData sf_iphone_circle_fill = IconData(0x10112A);

  /// IconData for SF Symbol iphone.gen1
  static const IconData sf_iphone_gen1 = IconData(0x1007DD);

  /// IconData for SF Symbol iphone.gen1.badge.play
  static const IconData sf_iphone_gen1_badge_play = IconData(0x100436);

  /// IconData for SF Symbol iphone.gen1.circle
  static const IconData sf_iphone_gen1_circle = IconData(0x101125);

  /// IconData for SF Symbol iphone.gen1.circle.fill
  static const IconData sf_iphone_gen1_circle_fill = IconData(0x101126);

  /// IconData for SF Symbol iphone.gen1.landscape
  static const IconData sf_iphone_gen1_landscape = IconData(0x100D0E);

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right
  static const IconData sf_iphone_gen1_radiowaves_left_and_right =
      IconData(0x100846);

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen1_radiowaves_left_and_right_circle =
      IconData(0x10115A);

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen1_radiowaves_left_and_right_circle_fill =
      IconData(0x10115B);

  /// IconData for SF Symbol iphone.gen1.slash
  static const IconData sf_iphone_gen1_slash = IconData(0x100A34);

  /// IconData for SF Symbol iphone.gen1.slash.circle
  static const IconData sf_iphone_gen1_slash_circle = IconData(0x101127);

  /// IconData for SF Symbol iphone.gen1.slash.circle.fill
  static const IconData sf_iphone_gen1_slash_circle_fill = IconData(0x101128);

  /// IconData for SF Symbol iphone.gen2
  static const IconData sf_iphone_gen2 = IconData(0x1017DC);

  /// IconData for SF Symbol iphone.gen2.badge.play
  static const IconData sf_iphone_gen2_badge_play = IconData(0x1017E6);

  /// IconData for SF Symbol iphone.gen2.circle
  static const IconData sf_iphone_gen2_circle = IconData(0x1017DD);

  /// IconData for SF Symbol iphone.gen2.circle.fill
  static const IconData sf_iphone_gen2_circle_fill = IconData(0x1017DE);

  /// IconData for SF Symbol iphone.gen2.landscape
  static const IconData sf_iphone_gen2_landscape = IconData(0x1017DF);

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right
  static const IconData sf_iphone_gen2_radiowaves_left_and_right =
      IconData(0x1017E0);

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen2_radiowaves_left_and_right_circle =
      IconData(0x1017E1);

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen2_radiowaves_left_and_right_circle_fill =
      IconData(0x1017E2);

  /// IconData for SF Symbol iphone.gen2.slash
  static const IconData sf_iphone_gen2_slash = IconData(0x1017E3);

  /// IconData for SF Symbol iphone.gen2.slash.circle
  static const IconData sf_iphone_gen2_slash_circle = IconData(0x1017E4);

  /// IconData for SF Symbol iphone.gen2.slash.circle.fill
  static const IconData sf_iphone_gen2_slash_circle_fill = IconData(0x1017E5);

  /// IconData for SF Symbol iphone.gen3
  static const IconData sf_iphone_gen3 = IconData(0x1012AE);

  /// IconData for SF Symbol iphone.gen3.badge.play
  static const IconData sf_iphone_gen3_badge_play = IconData(0x1012B8);

  /// IconData for SF Symbol iphone.gen3.circle
  static const IconData sf_iphone_gen3_circle = IconData(0x1012AF);

  /// IconData for SF Symbol iphone.gen3.circle.fill
  static const IconData sf_iphone_gen3_circle_fill = IconData(0x1012B0);

  /// IconData for SF Symbol iphone.gen3.landscape
  static const IconData sf_iphone_gen3_landscape = IconData(0x1012B1);

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right
  static const IconData sf_iphone_gen3_radiowaves_left_and_right =
      IconData(0x1012B2);

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen3_radiowaves_left_and_right_circle =
      IconData(0x1012B3);

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen3_radiowaves_left_and_right_circle_fill =
      IconData(0x1012B4);

  /// IconData for SF Symbol iphone.gen3.slash
  static const IconData sf_iphone_gen3_slash = IconData(0x1012B5);

  /// IconData for SF Symbol iphone.gen3.slash.circle
  static const IconData sf_iphone_gen3_slash_circle = IconData(0x1012B6);

  /// IconData for SF Symbol iphone.gen3.slash.circle.fill
  static const IconData sf_iphone_gen3_slash_circle_fill = IconData(0x1012B7);

  /// IconData for SF Symbol iphone.landscape
  static const IconData sf_iphone_landscape = IconData(0x100D0F);

  /// IconData for SF Symbol iphone.radiowaves.left.and.right
  static const IconData sf_iphone_radiowaves_left_and_right =
      IconData(0x100847);

  /// IconData for SF Symbol iphone.radiowaves.left.and.right.circle
  static const IconData sf_iphone_radiowaves_left_and_right_circle =
      IconData(0x10115C);

  /// IconData for SF Symbol iphone.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_radiowaves_left_and_right_circle_fill =
      IconData(0x10115D);

  /// IconData for SF Symbol iphone.rear.camera
  static const IconData sf_iphone_rear_camera = IconData(0x100F96);

  /// IconData for SF Symbol iphone.sizes
  static const IconData sf_iphone_sizes = IconData(0x1018F4);

  /// IconData for SF Symbol iphone.slash
  static const IconData sf_iphone_slash = IconData(0x100A35);

  /// IconData for SF Symbol iphone.slash.circle
  static const IconData sf_iphone_slash_circle = IconData(0x10112B);

  /// IconData for SF Symbol iphone.slash.circle.fill
  static const IconData sf_iphone_slash_circle_fill = IconData(0x10112C);

  /// IconData for SF Symbol iphone.smartbatterycase.gen1
  static const IconData sf_iphone_smartbatterycase_gen1 = IconData(0x100E90);

  /// IconData for SF Symbol iphone.smartbatterycase.gen2
  static const IconData sf_iphone_smartbatterycase_gen2 = IconData(0x100E8F);

  /// IconData for SF Symbol ipod
  static const IconData sf_ipod = IconData(0x1008BA);

  /// IconData for SF Symbol ipodshuffle.gen1
  static const IconData sf_ipodshuffle_gen1 = IconData(0x100AE8);

  /// IconData for SF Symbol ipodshuffle.gen2
  static const IconData sf_ipodshuffle_gen2 = IconData(0x100AE9);

  /// IconData for SF Symbol ipodshuffle.gen3
  static const IconData sf_ipodshuffle_gen3 = IconData(0x100AEA);

  /// IconData for SF Symbol ipodshuffle.gen4
  static const IconData sf_ipodshuffle_gen4 = IconData(0x100AEB);

  /// IconData for SF Symbol ipodtouch
  static const IconData sf_ipodtouch = IconData(0x100AE7);

  /// IconData for SF Symbol ipodtouch.landscape
  static const IconData sf_ipodtouch_landscape = IconData(0x100D10);

  /// IconData for SF Symbol ipodtouch.slash
  static const IconData sf_ipodtouch_slash = IconData(0x1010B2);

  /// IconData for SF Symbol italic
  static const IconData sf_italic = IconData(0x100154);

  /// IconData for SF Symbol ivfluid.bag
  static const IconData sf_ivfluid_bag = IconData(0x100F0D);

  /// IconData for SF Symbol ivfluid.bag.fill
  static const IconData sf_ivfluid_bag_fill = IconData(0x100F0E);

  /// IconData for SF Symbol j.circle
  static const IconData sf_j_circle = IconData(0x100016);

  /// IconData for SF Symbol j.circle.fill
  static const IconData sf_j_circle_fill = IconData(0x100017);

  /// IconData for SF Symbol j.square
  static const IconData sf_j_square = IconData(0x1000A6);

  /// IconData for SF Symbol j.square.fill
  static const IconData sf_j_square_fill = IconData(0x1000A7);

  /// IconData for SF Symbol j.square.on.square
  static const IconData sf_j_square_on_square = IconData(0x100B5A);

  /// IconData for SF Symbol j.square.on.square.fill
  static const IconData sf_j_square_on_square_fill = IconData(0x100B5B);

  /// IconData for SF Symbol k
  static const IconData sf_k = IconData(0x10094B);

  /// IconData for SF Symbol k.circle
  static const IconData sf_k_circle = IconData(0x100018);

  /// IconData for SF Symbol k.circle.fill
  static const IconData sf_k_circle_fill = IconData(0x100019);

  /// IconData for SF Symbol k.square
  static const IconData sf_k_square = IconData(0x1000A8);

  /// IconData for SF Symbol k.square.fill
  static const IconData sf_k_square_fill = IconData(0x1000A9);

  /// IconData for SF Symbol kashida.arabic
  static const IconData sf_kashida_arabic = IconData(0x1020DC);

  /// IconData for SF Symbol key
  static const IconData sf_key = IconData(0x1007D5);

  /// IconData for SF Symbol key.fill
  static const IconData sf_key_fill = IconData(0x1007D6);

  /// IconData for SF Symbol key.horizontal
  static const IconData sf_key_horizontal = IconData(0x101831);

  /// IconData for SF Symbol key.horizontal.fill
  static const IconData sf_key_horizontal_fill = IconData(0x101832);

  /// IconData for SF Symbol key.icloud
  static const IconData sf_key_icloud = IconData(0x100895);

  /// IconData for SF Symbol key.icloud.fill
  static const IconData sf_key_icloud_fill = IconData(0x100896);

  /// IconData for SF Symbol key.radiowaves.forward
  static const IconData sf_key_radiowaves_forward = IconData(0x10182F);

  /// IconData for SF Symbol key.radiowaves.forward.fill
  static const IconData sf_key_radiowaves_forward_fill = IconData(0x101830);

  /// IconData for SF Symbol key.radiowaves.forward.slash
  static const IconData sf_key_radiowaves_forward_slash = IconData(0x1021EE);

  /// IconData for SF Symbol key.radiowaves.forward.slash.fill
  static const IconData sf_key_radiowaves_forward_slash_fill =
      IconData(0x1021F0);

  /// IconData for SF Symbol key.slash
  static const IconData sf_key_slash = IconData(0x102166);

  /// IconData for SF Symbol key.slash.fill
  static const IconData sf_key_slash_fill = IconData(0x102167);

  /// IconData for SF Symbol key.viewfinder
  static const IconData sf_key_viewfinder = IconData(0x101395);

  /// IconData for SF Symbol keyboard
  static const IconData sf_keyboard = IconData(0x1001F3);

  /// IconData for SF Symbol keyboard.badge.ellipsis
  static const IconData sf_keyboard_badge_ellipsis = IconData(0x100AD2);

  /// IconData for SF Symbol keyboard.badge.ellipsis.fill
  static const IconData sf_keyboard_badge_ellipsis_fill = IconData(0x10168F);

  /// IconData for SF Symbol keyboard.badge.eye
  static const IconData sf_keyboard_badge_eye = IconData(0x101515);

  /// IconData for SF Symbol keyboard.badge.eye.fill
  static const IconData sf_keyboard_badge_eye_fill = IconData(0x101690);

  /// IconData for SF Symbol keyboard.chevron.compact.down
  static const IconData sf_keyboard_chevron_compact_down = IconData(0x1004D6);

  /// IconData for SF Symbol keyboard.chevron.compact.down.fill
  static const IconData sf_keyboard_chevron_compact_down_fill =
      IconData(0x101691);

  /// IconData for SF Symbol keyboard.chevron.compact.left
  static const IconData sf_keyboard_chevron_compact_left = IconData(0x1008ED);

  /// IconData for SF Symbol keyboard.chevron.compact.left.fill
  static const IconData sf_keyboard_chevron_compact_left_fill =
      IconData(0x101692);

  /// IconData for SF Symbol keyboard.fill
  static const IconData sf_keyboard_fill = IconData(0x100E91);

  /// IconData for SF Symbol keyboard.macwindow
  static const IconData sf_keyboard_macwindow = IconData(0x10092F);

  /// IconData for SF Symbol keyboard.onehanded.left
  static const IconData sf_keyboard_onehanded_left = IconData(0x1007B9);

  /// IconData for SF Symbol keyboard.onehanded.left.fill
  static const IconData sf_keyboard_onehanded_left_fill = IconData(0x101693);

  /// IconData for SF Symbol keyboard.onehanded.right
  static const IconData sf_keyboard_onehanded_right = IconData(0x1007BA);

  /// IconData for SF Symbol keyboard.onehanded.right.fill
  static const IconData sf_keyboard_onehanded_right_fill = IconData(0x101694);

  /// IconData for SF Symbol kipsign
  static const IconData sf_kipsign = IconData(0x10144D);

  /// IconData for SF Symbol kipsign.arrow.circlepath
  static const IconData sf_kipsign_arrow_circlepath = IconData(0x102220);

  /// IconData for SF Symbol kipsign.circle
  static const IconData sf_kipsign_circle = IconData(0x1005B3);

  /// IconData for SF Symbol kipsign.circle.fill
  static const IconData sf_kipsign_circle_fill = IconData(0x1005B4);

  /// IconData for SF Symbol kipsign.square
  static const IconData sf_kipsign_square = IconData(0x1005F3);

  /// IconData for SF Symbol kipsign.square.fill
  static const IconData sf_kipsign_square_fill = IconData(0x1005F4);

  /// IconData for SF Symbol kph
  static const IconData sf_kph = IconData(0x1018BD);

  /// IconData for SF Symbol kph.circle
  static const IconData sf_kph_circle = IconData(0x1018BE);

  /// IconData for SF Symbol kph.circle.fill
  static const IconData sf_kph_circle_fill = IconData(0x1018BF);

  /// IconData for SF Symbol l.button.roundedbottom.horizontal
  static const IconData sf_l_button_roundedbottom_horizontal =
      IconData(0x100A07);

  /// IconData for SF Symbol l.button.roundedbottom.horizontal.fill
  static const IconData sf_l_button_roundedbottom_horizontal_fill =
      IconData(0x100A08);

  /// IconData for SF Symbol l.circle
  static const IconData sf_l_circle = IconData(0x10001A);

  /// IconData for SF Symbol l.circle.fill
  static const IconData sf_l_circle_fill = IconData(0x10001B);

  /// IconData for SF Symbol l.joystick
  static const IconData sf_l_joystick = IconData(0x100992);

  /// IconData for SF Symbol l.joystick.fill
  static const IconData sf_l_joystick_fill = IconData(0x100AC1);

  /// IconData for SF Symbol l.joystick.press.down
  static const IconData sf_l_joystick_press_down = IconData(0x100994);

  /// IconData for SF Symbol l.joystick.press.down.fill
  static const IconData sf_l_joystick_press_down_fill = IconData(0x100AC3);

  /// IconData for SF Symbol l.joystick.tilt.down
  static const IconData sf_l_joystick_tilt_down = IconData(0x100FDC);

  /// IconData for SF Symbol l.joystick.tilt.down.fill
  static const IconData sf_l_joystick_tilt_down_fill = IconData(0x100FDD);

  /// IconData for SF Symbol l.joystick.tilt.left
  static const IconData sf_l_joystick_tilt_left = IconData(0x100FD6);

  /// IconData for SF Symbol l.joystick.tilt.left.fill
  static const IconData sf_l_joystick_tilt_left_fill = IconData(0x100FD7);

  /// IconData for SF Symbol l.joystick.tilt.right
  static const IconData sf_l_joystick_tilt_right = IconData(0x100FD8);

  /// IconData for SF Symbol l.joystick.tilt.right.fill
  static const IconData sf_l_joystick_tilt_right_fill = IconData(0x100FD9);

  /// IconData for SF Symbol l.joystick.tilt.up
  static const IconData sf_l_joystick_tilt_up = IconData(0x100FDA);

  /// IconData for SF Symbol l.joystick.tilt.up.fill
  static const IconData sf_l_joystick_tilt_up_fill = IconData(0x100FDB);

  /// IconData for SF Symbol l.square
  static const IconData sf_l_square = IconData(0x1000AA);

  /// IconData for SF Symbol l.square.fill
  static const IconData sf_l_square_fill = IconData(0x1000AB);

  /// IconData for SF Symbol l1.button.roundedbottom.horizontal
  static const IconData sf_l1_button_roundedbottom_horizontal =
      IconData(0x100A09);

  /// IconData for SF Symbol l1.button.roundedbottom.horizontal.fill
  static const IconData sf_l1_button_roundedbottom_horizontal_fill =
      IconData(0x100A0A);

  /// IconData for SF Symbol l1.circle
  static const IconData sf_l1_circle = IconData(0x101E81);

  /// IconData for SF Symbol l1.circle.fill
  static const IconData sf_l1_circle_fill = IconData(0x101E82);

  /// IconData for SF Symbol l2.button.angledtop.vertical.left
  static const IconData sf_l2_button_angledtop_vertical_left =
      IconData(0x101DF3);

  /// IconData for SF Symbol l2.button.angledtop.vertical.left.fill
  static const IconData sf_l2_button_angledtop_vertical_left_fill =
      IconData(0x101DF4);

  /// IconData for SF Symbol l2.button.roundedtop.horizontal
  static const IconData sf_l2_button_roundedtop_horizontal = IconData(0x100A0B);

  /// IconData for SF Symbol l2.button.roundedtop.horizontal.fill
  static const IconData sf_l2_button_roundedtop_horizontal_fill =
      IconData(0x100A0C);

  /// IconData for SF Symbol l2.circle
  static const IconData sf_l2_circle = IconData(0x101E85);

  /// IconData for SF Symbol l2.circle.fill
  static const IconData sf_l2_circle_fill = IconData(0x101E86);

  /// IconData for SF Symbol l3.button.angledbottom.horizontal.left
  static const IconData sf_l3_button_angledbottom_horizontal_left =
      IconData(0x101E07);

  /// IconData for SF Symbol l3.button.angledbottom.horizontal.left.fill
  static const IconData sf_l3_button_angledbottom_horizontal_left_fill =
      IconData(0x101E08);

  /// IconData for SF Symbol l4.button.horizontal
  static const IconData sf_l4_button_horizontal = IconData(0x101E20);

  /// IconData for SF Symbol l4.button.horizontal.fill
  static const IconData sf_l4_button_horizontal_fill = IconData(0x101E21);

  /// IconData for SF Symbol ladybug
  static const IconData sf_ladybug = IconData(0x100BD4);

  /// IconData for SF Symbol ladybug.circle
  static const IconData sf_ladybug_circle = IconData(0x101F1B);

  /// IconData for SF Symbol ladybug.circle.fill
  static const IconData sf_ladybug_circle_fill = IconData(0x101F1C);

  /// IconData for SF Symbol ladybug.fill
  static const IconData sf_ladybug_fill = IconData(0x100BD5);

  /// IconData for SF Symbol lamp.ceiling
  static const IconData sf_lamp_ceiling = IconData(0x101321);

  /// IconData for SF Symbol lamp.ceiling.fill
  static const IconData sf_lamp_ceiling_fill = IconData(0x1013BB);

  /// IconData for SF Symbol lamp.ceiling.inverse
  static const IconData sf_lamp_ceiling_inverse = IconData(0x1014A8);

  /// IconData for SF Symbol lamp.desk
  static const IconData sf_lamp_desk = IconData(0x1013B6);

  /// IconData for SF Symbol lamp.desk.fill
  static const IconData sf_lamp_desk_fill = IconData(0x10131E);

  /// IconData for SF Symbol lamp.floor
  static const IconData sf_lamp_floor = IconData(0x1013BF);

  /// IconData for SF Symbol lamp.floor.fill
  static const IconData sf_lamp_floor_fill = IconData(0x101320);

  /// IconData for SF Symbol lamp.table
  static const IconData sf_lamp_table = IconData(0x1013C0);

  /// IconData for SF Symbol lamp.table.fill
  static const IconData sf_lamp_table_fill = IconData(0x10131F);

  /// IconData for SF Symbol lane
  static const IconData sf_lane = IconData(0x1017CF);

  /// IconData for SF Symbol lanyardcard
  static const IconData sf_lanyardcard = IconData(0x100C35);

  /// IconData for SF Symbol lanyardcard.fill
  static const IconData sf_lanyardcard_fill = IconData(0x100C36);

  /// IconData for SF Symbol laptopcomputer
  static const IconData sf_laptopcomputer = IconData(0x1007DB);

  /// IconData for SF Symbol laptopcomputer.and.arrow.down
  static const IconData sf_laptopcomputer_and_arrow_down = IconData(0x100DBF);

  /// IconData for SF Symbol laptopcomputer.slash
  static const IconData sf_laptopcomputer_slash = IconData(0x1012AD);

  /// IconData for SF Symbol laptopcomputer.trianglebadge.exclamationmark
  static const IconData sf_laptopcomputer_trianglebadge_exclamationmark =
      IconData(0x1010C2);

  /// IconData for SF Symbol larisign
  static const IconData sf_larisign = IconData(0x10145D);

  /// IconData for SF Symbol larisign.arrow.circlepath
  static const IconData sf_larisign_arrow_circlepath = IconData(0x102230);

  /// IconData for SF Symbol larisign.circle
  static const IconData sf_larisign_circle = IconData(0x1005D3);

  /// IconData for SF Symbol larisign.circle.fill
  static const IconData sf_larisign_circle_fill = IconData(0x1005D4);

  /// IconData for SF Symbol larisign.square
  static const IconData sf_larisign_square = IconData(0x100613);

  /// IconData for SF Symbol larisign.square.fill
  static const IconData sf_larisign_square_fill = IconData(0x100614);

  /// IconData for SF Symbol laser.burst
  static const IconData sf_laser_burst = IconData(0x10205D);

  /// IconData for SF Symbol lasso
  static const IconData sf_lasso = IconData(0x1004E9);

  /// IconData for SF Symbol lasso.badge.sparkles
  static const IconData sf_lasso_badge_sparkles = IconData(0x1008F3);

  /// IconData for SF Symbol latch.2.case
  static const IconData sf_latch_2_case = IconData(0x10089F);

  /// IconData for SF Symbol latch.2.case.fill
  static const IconData sf_latch_2_case_fill = IconData(0x1008A0);

  /// IconData for SF Symbol laurel.leading
  static const IconData sf_laurel_leading = IconData(0x101298);

  /// IconData for SF Symbol laurel.trailing
  static const IconData sf_laurel_trailing = IconData(0x101299);

  /// IconData for SF Symbol lb.button.roundedbottom.horizontal
  static const IconData sf_lb_button_roundedbottom_horizontal =
      IconData(0x100A13);

  /// IconData for SF Symbol lb.button.roundedbottom.horizontal.fill
  static const IconData sf_lb_button_roundedbottom_horizontal_fill =
      IconData(0x100A14);

  /// IconData for SF Symbol lb.circle
  static const IconData sf_lb_circle = IconData(0x101E83);

  /// IconData for SF Symbol lb.circle.fill
  static const IconData sf_lb_circle_fill = IconData(0x101E84);

  /// IconData for SF Symbol leaf
  static const IconData sf_leaf = IconData(0x100972);

  /// IconData for SF Symbol leaf.arrow.triangle.circlepath
  static const IconData sf_leaf_arrow_triangle_circlepath = IconData(0x10065C);

  /// IconData for SF Symbol leaf.circle
  static const IconData sf_leaf_circle = IconData(0x1010AC);

  /// IconData for SF Symbol leaf.circle.fill
  static const IconData sf_leaf_circle_fill = IconData(0x1010AD);

  /// IconData for SF Symbol leaf.fill
  static const IconData sf_leaf_fill = IconData(0x100973);

  /// IconData for SF Symbol left
  static const IconData sf_left = IconData(0x1018E3);

  /// IconData for SF Symbol left.circle
  static const IconData sf_left_circle = IconData(0x1018E4);

  /// IconData for SF Symbol left.circle.fill
  static const IconData sf_left_circle_fill = IconData(0x1018E5);

  /// IconData for SF Symbol lessthan
  static const IconData sf_lessthan = IconData(0x100181);

  /// IconData for SF Symbol lessthan.circle
  static const IconData sf_lessthan_circle = IconData(0x100058);

  /// IconData for SF Symbol lessthan.circle.fill
  static const IconData sf_lessthan_circle_fill = IconData(0x100059);

  /// IconData for SF Symbol lessthan.square
  static const IconData sf_lessthan_square = IconData(0x1000E6);

  /// IconData for SF Symbol lessthan.square.fill
  static const IconData sf_lessthan_square_fill = IconData(0x1000E7);

  /// IconData for SF Symbol level
  static const IconData sf_level = IconData(0x1007C2);

  /// IconData for SF Symbol level.fill
  static const IconData sf_level_fill = IconData(0x1007C3);

  /// IconData for SF Symbol licenseplate
  static const IconData sf_licenseplate = IconData(0x101EAA);

  /// IconData for SF Symbol licenseplate.fill
  static const IconData sf_licenseplate_fill = IconData(0x101EAB);

  /// IconData for SF Symbol lifepreserver
  static const IconData sf_lifepreserver = IconData(0x100866);

  /// IconData for SF Symbol lifepreserver.fill
  static const IconData sf_lifepreserver_fill = IconData(0x100867);

  /// IconData for SF Symbol light.beacon.max
  static const IconData sf_light_beacon_max = IconData(0x1014B0);

  /// IconData for SF Symbol light.beacon.max.fill
  static const IconData sf_light_beacon_max_fill = IconData(0x1014B1);

  /// IconData for SF Symbol light.beacon.min
  static const IconData sf_light_beacon_min = IconData(0x10172E);

  /// IconData for SF Symbol light.beacon.min.fill
  static const IconData sf_light_beacon_min_fill = IconData(0x10172F);

  /// IconData for SF Symbol light.cylindrical.ceiling
  static const IconData sf_light_cylindrical_ceiling = IconData(0x1013BC);

  /// IconData for SF Symbol light.cylindrical.ceiling.fill
  static const IconData sf_light_cylindrical_ceiling_fill = IconData(0x101324);

  /// IconData for SF Symbol light.cylindrical.ceiling.inverse
  static const IconData sf_light_cylindrical_ceiling_inverse =
      IconData(0x1014AA);

  /// IconData for SF Symbol light.max
  static const IconData sf_light_max = IconData(0x1001EE);

  /// IconData for SF Symbol light.min
  static const IconData sf_light_min = IconData(0x1001ED);

  /// IconData for SF Symbol light.overhead.left
  static const IconData sf_light_overhead_left = IconData(0x1012CB);

  /// IconData for SF Symbol light.overhead.left.fill
  static const IconData sf_light_overhead_left_fill = IconData(0x1018C7);

  /// IconData for SF Symbol light.overhead.right
  static const IconData sf_light_overhead_right = IconData(0x1012CA);

  /// IconData for SF Symbol light.overhead.right.fill
  static const IconData sf_light_overhead_right_fill = IconData(0x1018C6);

  /// IconData for SF Symbol light.panel
  static const IconData sf_light_panel = IconData(0x1013BD);

  /// IconData for SF Symbol light.panel.fill
  static const IconData sf_light_panel_fill = IconData(0x101323);

  /// IconData for SF Symbol light.recessed
  static const IconData sf_light_recessed = IconData(0x1013BE);

  /// IconData for SF Symbol light.recessed.3
  static const IconData sf_light_recessed_3 = IconData(0x1013D8);

  /// IconData for SF Symbol light.recessed.3.fill
  static const IconData sf_light_recessed_3_fill = IconData(0x1013D9);

  /// IconData for SF Symbol light.recessed.3.inverse
  static const IconData sf_light_recessed_3_inverse = IconData(0x1014AB);

  /// IconData for SF Symbol light.recessed.fill
  static const IconData sf_light_recessed_fill = IconData(0x101322);

  /// IconData for SF Symbol light.recessed.inverse
  static const IconData sf_light_recessed_inverse = IconData(0x1014A9);

  /// IconData for SF Symbol light.ribbon
  static const IconData sf_light_ribbon = IconData(0x10149C);

  /// IconData for SF Symbol light.ribbon.fill
  static const IconData sf_light_ribbon_fill = IconData(0x10149D);

  /// IconData for SF Symbol light.strip.2
  static const IconData sf_light_strip_2 = IconData(0x101325);

  /// IconData for SF Symbol light.strip.2.fill
  static const IconData sf_light_strip_2_fill = IconData(0x1013D2);

  /// IconData for SF Symbol lightbulb
  static const IconData sf_lightbulb = IconData(0x1006ED);

  /// IconData for SF Symbol lightbulb.2
  static const IconData sf_lightbulb_2 = IconData(0x1014FC);

  /// IconData for SF Symbol lightbulb.2.fill
  static const IconData sf_lightbulb_2_fill = IconData(0x1014FD);

  /// IconData for SF Symbol lightbulb.circle
  static const IconData sf_lightbulb_circle = IconData(0x1011D6);

  /// IconData for SF Symbol lightbulb.circle.fill
  static const IconData sf_lightbulb_circle_fill = IconData(0x1011D7);

  /// IconData for SF Symbol lightbulb.fill
  static const IconData sf_lightbulb_fill = IconData(0x1006EE);

  /// IconData for SF Symbol lightbulb.led
  static const IconData sf_lightbulb_led = IconData(0x1013A6);

  /// IconData for SF Symbol lightbulb.led.fill
  static const IconData sf_lightbulb_led_fill = IconData(0x10131D);

  /// IconData for SF Symbol lightbulb.led.wide
  static const IconData sf_lightbulb_led_wide = IconData(0x1013C1);

  /// IconData for SF Symbol lightbulb.led.wide.fill
  static const IconData sf_lightbulb_led_wide_fill = IconData(0x1013C2);

  /// IconData for SF Symbol lightbulb.max
  static const IconData sf_lightbulb_max = IconData(0x101DD8);

  /// IconData for SF Symbol lightbulb.max.fill
  static const IconData sf_lightbulb_max_fill = IconData(0x101DD9);

  /// IconData for SF Symbol lightbulb.min
  static const IconData sf_lightbulb_min = IconData(0x101DD6);

  /// IconData for SF Symbol lightbulb.min.badge.exclamationmark
  static const IconData sf_lightbulb_min_badge_exclamationmark =
      IconData(0x101E44);

  /// IconData for SF Symbol lightbulb.min.badge.exclamationmark.fill
  static const IconData sf_lightbulb_min_badge_exclamationmark_fill =
      IconData(0x101E45);

  /// IconData for SF Symbol lightbulb.min.fill
  static const IconData sf_lightbulb_min_fill = IconData(0x101DD7);

  /// IconData for SF Symbol lightbulb.slash
  static const IconData sf_lightbulb_slash = IconData(0x100783);

  /// IconData for SF Symbol lightbulb.slash.fill
  static const IconData sf_lightbulb_slash_fill = IconData(0x100784);

  /// IconData for SF Symbol lightrail
  static const IconData sf_lightrail = IconData(0x100DFA);

  /// IconData for SF Symbol lightrail.fill
  static const IconData sf_lightrail_fill = IconData(0x100DFB);

  /// IconData for SF Symbol lightspectrum.horizontal
  static const IconData sf_lightspectrum_horizontal = IconData(0x101E69);

  /// IconData for SF Symbol lightswitch.off
  static const IconData sf_lightswitch_off = IconData(0x1013EF);

  /// IconData for SF Symbol lightswitch.off.fill
  static const IconData sf_lightswitch_off_fill = IconData(0x1013FC);

  /// IconData for SF Symbol lightswitch.off.square
  static const IconData sf_lightswitch_off_square = IconData(0x101392);

  /// IconData for SF Symbol lightswitch.off.square.fill
  static const IconData sf_lightswitch_off_square_fill = IconData(0x101328);

  /// IconData for SF Symbol lightswitch.on
  static const IconData sf_lightswitch_on = IconData(0x1013EE);

  /// IconData for SF Symbol lightswitch.on.fill
  static const IconData sf_lightswitch_on_fill = IconData(0x1013FB);

  /// IconData for SF Symbol lightswitch.on.square
  static const IconData sf_lightswitch_on_square = IconData(0x101391);

  /// IconData for SF Symbol lightswitch.on.square.fill
  static const IconData sf_lightswitch_on_square_fill = IconData(0x101327);

  /// IconData for SF Symbol line.2.horizontal.decrease.circle
  static const IconData sf_line_2_horizontal_decrease_circle =
      IconData(0x100635);

  /// IconData for SF Symbol line.2.horizontal.decrease.circle.fill
  static const IconData sf_line_2_horizontal_decrease_circle_fill =
      IconData(0x100636);

  /// IconData for SF Symbol line.3.crossed.swirl.circle
  static const IconData sf_line_3_crossed_swirl_circle = IconData(0x100ACE);

  /// IconData for SF Symbol line.3.crossed.swirl.circle.fill
  static const IconData sf_line_3_crossed_swirl_circle_fill =
      IconData(0x100ACF);

  /// IconData for SF Symbol line.3.horizontal
  static const IconData sf_line_3_horizontal = IconData(0x100307);

  /// IconData for SF Symbol line.3.horizontal.button.angledtop.vertical.right
  static const IconData sf_line_3_horizontal_button_angledtop_vertical_right =
      IconData(0x101DF9);

  /// IconData for SF Symbol line.3.horizontal.button.angledtop.vertical.right.fill
  static const IconData
      sf_line_3_horizontal_button_angledtop_vertical_right_fill =
      IconData(0x101DFA);

  /// IconData for SF Symbol line.3.horizontal.circle
  static const IconData sf_line_3_horizontal_circle = IconData(0x1009F1);

  /// IconData for SF Symbol line.3.horizontal.circle.fill
  static const IconData sf_line_3_horizontal_circle_fill = IconData(0x1009F2);

  /// IconData for SF Symbol line.3.horizontal.decrease
  static const IconData sf_line_3_horizontal_decrease = IconData(0x100713);

  /// IconData for SF Symbol line.3.horizontal.decrease.circle
  static const IconData sf_line_3_horizontal_decrease_circle =
      IconData(0x100308);

  /// IconData for SF Symbol line.3.horizontal.decrease.circle.fill
  static const IconData sf_line_3_horizontal_decrease_circle_fill =
      IconData(0x100309);

  /// IconData for SF Symbol line.diagonal
  static const IconData sf_line_diagonal = IconData(0x100AF0);

  /// IconData for SF Symbol line.diagonal.arrow
  static const IconData sf_line_diagonal_arrow = IconData(0x100AF1);

  /// IconData for SF Symbol line.horizontal.star.fill.line.horizontal
  static const IconData sf_line_horizontal_star_fill_line_horizontal =
      IconData(0x10046E);

  /// IconData for SF Symbol lines.measurement.horizontal
  static const IconData sf_lines_measurement_horizontal = IconData(0x100C2C);

  /// IconData for SF Symbol lines.measurement.vertical
  static const IconData sf_lines_measurement_vertical = IconData(0x102019);

  /// IconData for SF Symbol lineweight
  static const IconData sf_lineweight = IconData(0x100268);

  /// IconData for SF Symbol link
  static const IconData sf_link = IconData(0x100263);

  /// IconData for SF Symbol link.badge.plus
  static const IconData sf_link_badge_plus = IconData(0x100955);

  /// IconData for SF Symbol link.circle
  static const IconData sf_link_circle = IconData(0x1004A0);

  /// IconData for SF Symbol link.circle.fill
  static const IconData sf_link_circle_fill = IconData(0x1004A1);

  /// IconData for SF Symbol link.icloud
  static const IconData sf_link_icloud = IconData(0x10049E);

  /// IconData for SF Symbol link.icloud.fill
  static const IconData sf_link_icloud_fill = IconData(0x10049F);

  /// IconData for SF Symbol lirasign
  static const IconData sf_lirasign = IconData(0x10144F);

  /// IconData for SF Symbol lirasign.arrow.circlepath
  static const IconData sf_lirasign_arrow_circlepath = IconData(0x102222);

  /// IconData for SF Symbol lirasign.circle
  static const IconData sf_lirasign_circle = IconData(0x1005B7);

  /// IconData for SF Symbol lirasign.circle.fill
  static const IconData sf_lirasign_circle_fill = IconData(0x1005B8);

  /// IconData for SF Symbol lirasign.square
  static const IconData sf_lirasign_square = IconData(0x1005F7);

  /// IconData for SF Symbol lirasign.square.fill
  static const IconData sf_lirasign_square_fill = IconData(0x1005F8);

  /// IconData for SF Symbol list.and.film
  static const IconData sf_list_and_film = IconData(0x100B09);

  /// IconData for SF Symbol list.bullet
  static const IconData sf_list_bullet = IconData(0x1002F2);

  /// IconData for SF Symbol list.bullet.below.rectangle
  static const IconData sf_list_bullet_below_rectangle = IconData(0x1002F7);

  /// IconData for SF Symbol list.bullet.circle
  static const IconData sf_list_bullet_circle = IconData(0x100EE7);

  /// IconData for SF Symbol list.bullet.circle.fill
  static const IconData sf_list_bullet_circle_fill = IconData(0x100EE8);

  /// IconData for SF Symbol list.bullet.clipboard
  static const IconData sf_list_bullet_clipboard = IconData(0x100F0F);

  /// IconData for SF Symbol list.bullet.clipboard.fill
  static const IconData sf_list_bullet_clipboard_fill = IconData(0x100F10);

  /// IconData for SF Symbol list.bullet.indent
  static const IconData sf_list_bullet_indent = IconData(0x1002F3);

  /// IconData for SF Symbol list.bullet.rectangle
  static const IconData sf_list_bullet_rectangle = IconData(0x100A73);

  /// IconData for SF Symbol list.bullet.rectangle.fill
  static const IconData sf_list_bullet_rectangle_fill = IconData(0x100EBF);

  /// IconData for SF Symbol list.bullet.rectangle.portrait
  static const IconData sf_list_bullet_rectangle_portrait = IconData(0x100E72);

  /// IconData for SF Symbol list.bullet.rectangle.portrait.fill
  static const IconData sf_list_bullet_rectangle_portrait_fill =
      IconData(0x100E73);

  /// IconData for SF Symbol list.clipboard
  static const IconData sf_list_clipboard = IconData(0x10155C);

  /// IconData for SF Symbol list.clipboard.fill
  static const IconData sf_list_clipboard_fill = IconData(0x10155D);

  /// IconData for SF Symbol list.dash
  static const IconData sf_list_dash = IconData(0x1002F1);

  /// IconData for SF Symbol list.dash.header.rectangle
  static const IconData sf_list_dash_header_rectangle = IconData(0x100E46);

  /// IconData for SF Symbol list.number
  static const IconData sf_list_number = IconData(0x1002F4);

  /// IconData for SF Symbol list.star
  static const IconData sf_list_star = IconData(0x1008E9);

  /// IconData for SF Symbol list.triangle
  static const IconData sf_list_triangle = IconData(0x1008BD);

  /// IconData for SF Symbol livephoto
  static const IconData sf_livephoto = IconData(0x100421);

  /// IconData for SF Symbol livephoto.badge.automatic
  static const IconData sf_livephoto_badge_automatic = IconData(0x100654);

  /// IconData for SF Symbol livephoto.play
  static const IconData sf_livephoto_play = IconData(0x100423);

  /// IconData for SF Symbol livephoto.slash
  static const IconData sf_livephoto_slash = IconData(0x100422);

  /// IconData for SF Symbol lizard
  static const IconData sf_lizard = IconData(0x1015DB);

  /// IconData for SF Symbol lizard.circle
  static const IconData sf_lizard_circle = IconData(0x101F35);

  /// IconData for SF Symbol lizard.circle.fill
  static const IconData sf_lizard_circle_fill = IconData(0x101F36);

  /// IconData for SF Symbol lizard.fill
  static const IconData sf_lizard_fill = IconData(0x1015DC);

  /// IconData for SF Symbol lm.button.horizontal
  static const IconData sf_lm_button_horizontal = IconData(0x101E22);

  /// IconData for SF Symbol lm.button.horizontal.fill
  static const IconData sf_lm_button_horizontal_fill = IconData(0x101E23);

  /// IconData for SF Symbol location
  static const IconData sf_location = IconData(0x1002D1);

  /// IconData for SF Symbol location.circle
  static const IconData sf_location_circle = IconData(0x1002D5);

  /// IconData for SF Symbol location.circle.fill
  static const IconData sf_location_circle_fill = IconData(0x1002D6);

  /// IconData for SF Symbol location.fill
  static const IconData sf_location_fill = IconData(0x1002D2);

  /// IconData for SF Symbol location.fill.viewfinder
  static const IconData sf_location_fill_viewfinder = IconData(0x100B84);

  /// IconData for SF Symbol location.magnifyingglass
  static const IconData sf_location_magnifyingglass = IconData(0x10121F);

  /// IconData for SF Symbol location.north
  static const IconData sf_location_north = IconData(0x1002D3);

  /// IconData for SF Symbol location.north.circle
  static const IconData sf_location_north_circle = IconData(0x100DCC);

  /// IconData for SF Symbol location.north.circle.fill
  static const IconData sf_location_north_circle_fill = IconData(0x100DCD);

  /// IconData for SF Symbol location.north.fill
  static const IconData sf_location_north_fill = IconData(0x1002D4);

  /// IconData for SF Symbol location.north.line
  static const IconData sf_location_north_line = IconData(0x1002D7);

  /// IconData for SF Symbol location.north.line.fill
  static const IconData sf_location_north_line_fill = IconData(0x1002D8);

  /// IconData for SF Symbol location.slash
  static const IconData sf_location_slash = IconData(0x10062C);

  /// IconData for SF Symbol location.slash.circle
  static const IconData sf_location_slash_circle = IconData(0x101647);

  /// IconData for SF Symbol location.slash.circle.fill
  static const IconData sf_location_slash_circle_fill = IconData(0x101648);

  /// IconData for SF Symbol location.slash.fill
  static const IconData sf_location_slash_fill = IconData(0x10062D);

  /// IconData for SF Symbol location.square
  static const IconData sf_location_square = IconData(0x100F3B);

  /// IconData for SF Symbol location.square.fill
  static const IconData sf_location_square_fill = IconData(0x100F3C);

  /// IconData for SF Symbol location.viewfinder
  static const IconData sf_location_viewfinder = IconData(0x100B83);

  /// IconData for SF Symbol lock
  static const IconData sf_lock = IconData(0x1003A0);

  /// IconData for SF Symbol lock.app.dashed
  static const IconData sf_lock_app_dashed = IconData(0x101C0F);

  /// IconData for SF Symbol lock.applewatch
  static const IconData sf_lock_applewatch = IconData(0x100D45);

  /// IconData for SF Symbol lock.badge.clock
  static const IconData sf_lock_badge_clock = IconData(0x102189);

  /// IconData for SF Symbol lock.badge.clock.fill
  static const IconData sf_lock_badge_clock_fill = IconData(0x10218A);

  /// IconData for SF Symbol lock.circle
  static const IconData sf_lock_circle = IconData(0x1004B2);

  /// IconData for SF Symbol lock.circle.dotted
  static const IconData sf_lock_circle_dotted = IconData(0x10211C);

  /// IconData for SF Symbol lock.circle.fill
  static const IconData sf_lock_circle_fill = IconData(0x1004B3);

  /// IconData for SF Symbol lock.desktopcomputer
  static const IconData sf_lock_desktopcomputer = IconData(0x100F12);

  /// IconData for SF Symbol lock.display
  static const IconData sf_lock_display = IconData(0x100F11);

  /// IconData for SF Symbol lock.doc
  static const IconData sf_lock_doc = IconData(0x10088D);

  /// IconData for SF Symbol lock.doc.fill
  static const IconData sf_lock_doc_fill = IconData(0x10088E);

  /// IconData for SF Symbol lock.fill
  static const IconData sf_lock_fill = IconData(0x1003A1);

  /// IconData for SF Symbol lock.icloud
  static const IconData sf_lock_icloud = IconData(0x100675);

  /// IconData for SF Symbol lock.icloud.fill
  static const IconData sf_lock_icloud_fill = IconData(0x100676);

  /// IconData for SF Symbol lock.ipad
  static const IconData sf_lock_ipad = IconData(0x100F15);

  /// IconData for SF Symbol lock.iphone
  static const IconData sf_lock_iphone = IconData(0x100F14);

  /// IconData for SF Symbol lock.laptopcomputer
  static const IconData sf_lock_laptopcomputer = IconData(0x100F13);

  /// IconData for SF Symbol lock.open
  static const IconData sf_lock_open = IconData(0x1003A4);

  /// IconData for SF Symbol lock.open.applewatch
  static const IconData sf_lock_open_applewatch = IconData(0x100F21);

  /// IconData for SF Symbol lock.open.desktopcomputer
  static const IconData sf_lock_open_desktopcomputer = IconData(0x100F1D);

  /// IconData for SF Symbol lock.open.display
  static const IconData sf_lock_open_display = IconData(0x100F1C);

  /// IconData for SF Symbol lock.open.fill
  static const IconData sf_lock_open_fill = IconData(0x1003A5);

  /// IconData for SF Symbol lock.open.ipad
  static const IconData sf_lock_open_ipad = IconData(0x100F20);

  /// IconData for SF Symbol lock.open.iphone
  static const IconData sf_lock_open_iphone = IconData(0x100F1F);

  /// IconData for SF Symbol lock.open.laptopcomputer
  static const IconData sf_lock_open_laptopcomputer = IconData(0x100F1E);

  /// IconData for SF Symbol lock.open.rotation
  static const IconData sf_lock_open_rotation = IconData(0x10045A);

  /// IconData for SF Symbol lock.open.trianglebadge.exclamationmark
  static const IconData sf_lock_open_trianglebadge_exclamationmark =
      IconData(0x101717);

  /// IconData for SF Symbol lock.open.trianglebadge.exclamationmark.fill
  static const IconData sf_lock_open_trianglebadge_exclamationmark_fill =
      IconData(0x101718);

  /// IconData for SF Symbol lock.rectangle
  static const IconData sf_lock_rectangle = IconData(0x100888);

  /// IconData for SF Symbol lock.rectangle.fill
  static const IconData sf_lock_rectangle_fill = IconData(0x100889);

  /// IconData for SF Symbol lock.rectangle.on.rectangle
  static const IconData sf_lock_rectangle_on_rectangle = IconData(0x1008B3);

  /// IconData for SF Symbol lock.rectangle.on.rectangle.fill
  static const IconData sf_lock_rectangle_on_rectangle_fill =
      IconData(0x1008B4);

  /// IconData for SF Symbol lock.rectangle.stack
  static const IconData sf_lock_rectangle_stack = IconData(0x1008B1);

  /// IconData for SF Symbol lock.rectangle.stack.fill
  static const IconData sf_lock_rectangle_stack_fill = IconData(0x1008B2);

  /// IconData for SF Symbol lock.rotation
  static const IconData sf_lock_rotation = IconData(0x100459);

  /// IconData for SF Symbol lock.shield
  static const IconData sf_lock_shield = IconData(0x100799);

  /// IconData for SF Symbol lock.shield.fill
  static const IconData sf_lock_shield_fill = IconData(0x10079A);

  /// IconData for SF Symbol lock.slash
  static const IconData sf_lock_slash = IconData(0x1003A2);

  /// IconData for SF Symbol lock.slash.fill
  static const IconData sf_lock_slash_fill = IconData(0x1003A3);

  /// IconData for SF Symbol lock.square
  static const IconData sf_lock_square = IconData(0x1008B5);

  /// IconData for SF Symbol lock.square.fill
  static const IconData sf_lock_square_fill = IconData(0x1008B6);

  /// IconData for SF Symbol lock.square.stack
  static const IconData sf_lock_square_stack = IconData(0x10085C);

  /// IconData for SF Symbol lock.square.stack.fill
  static const IconData sf_lock_square_stack_fill = IconData(0x10085D);

  /// IconData for SF Symbol lock.trianglebadge.exclamationmark
  static const IconData sf_lock_trianglebadge_exclamationmark =
      IconData(0x10164D);

  /// IconData for SF Symbol lock.trianglebadge.exclamationmark.fill
  static const IconData sf_lock_trianglebadge_exclamationmark_fill =
      IconData(0x10164E);

  /// IconData for SF Symbol loupe
  static const IconData sf_loupe = IconData(0x10090E);

  /// IconData for SF Symbol lsb.button.angledbottom.horizontal.left
  static const IconData sf_lsb_button_angledbottom_horizontal_left =
      IconData(0x101E0B);

  /// IconData for SF Symbol lsb.button.angledbottom.horizontal.left.fill
  static const IconData sf_lsb_button_angledbottom_horizontal_left_fill =
      IconData(0x101E0C);

  /// IconData for SF Symbol lt.button.roundedtop.horizontal
  static const IconData sf_lt_button_roundedtop_horizontal = IconData(0x100A17);

  /// IconData for SF Symbol lt.button.roundedtop.horizontal.fill
  static const IconData sf_lt_button_roundedtop_horizontal_fill =
      IconData(0x100A18);

  /// IconData for SF Symbol lt.circle
  static const IconData sf_lt_circle = IconData(0x101E87);

  /// IconData for SF Symbol lt.circle.fill
  static const IconData sf_lt_circle_fill = IconData(0x101E88);

  /// IconData for SF Symbol lungs
  static const IconData sf_lungs = IconData(0x10099A);

  /// IconData for SF Symbol lungs.fill
  static const IconData sf_lungs_fill = IconData(0x10099B);

  /// IconData for SF Symbol m.circle
  static const IconData sf_m_circle = IconData(0x10001C);

  /// IconData for SF Symbol m.circle.fill
  static const IconData sf_m_circle_fill = IconData(0x10001D);

  /// IconData for SF Symbol m.square
  static const IconData sf_m_square = IconData(0x1000AC);

  /// IconData for SF Symbol m.square.fill
  static const IconData sf_m_square_fill = IconData(0x1000AD);

  /// IconData for SF Symbol m1.button.horizontal
  static const IconData sf_m1_button_horizontal = IconData(0x101E24);

  /// IconData for SF Symbol m1.button.horizontal.fill
  static const IconData sf_m1_button_horizontal_fill = IconData(0x101E25);

  /// IconData for SF Symbol m2.button.horizontal
  static const IconData sf_m2_button_horizontal = IconData(0x101E26);

  /// IconData for SF Symbol m2.button.horizontal.fill
  static const IconData sf_m2_button_horizontal_fill = IconData(0x101E27);

  /// IconData for SF Symbol m3.button.horizontal
  static const IconData sf_m3_button_horizontal = IconData(0x101E28);

  /// IconData for SF Symbol m3.button.horizontal.fill
  static const IconData sf_m3_button_horizontal_fill = IconData(0x101E29);

  /// IconData for SF Symbol m4.button.horizontal
  static const IconData sf_m4_button_horizontal = IconData(0x101E2A);

  /// IconData for SF Symbol m4.button.horizontal.fill
  static const IconData sf_m4_button_horizontal_fill = IconData(0x101E2B);

  /// IconData for SF Symbol macbook
  static const IconData sf_macbook = IconData(0x1017EC);

  /// IconData for SF Symbol macbook.and.ipad
  static const IconData sf_macbook_and_ipad = IconData(0x10161E);

  /// IconData for SF Symbol macbook.and.iphone
  static const IconData sf_macbook_and_iphone = IconData(0x100B29);

  /// IconData for SF Symbol macbook.and.visionpro
  static const IconData sf_macbook_and_visionpro = IconData(0x101719);

  /// IconData for SF Symbol macbook.gen1
  static const IconData sf_macbook_gen1 = IconData(0x1017EB);

  /// IconData for SF Symbol macbook.gen2
  static const IconData sf_macbook_gen2 = IconData(0x101238);

  /// IconData for SF Symbol macmini
  static const IconData sf_macmini = IconData(0x100AAF);

  /// IconData for SF Symbol macmini.fill
  static const IconData sf_macmini_fill = IconData(0x100AB0);

  /// IconData for SF Symbol macpro.gen1
  static const IconData sf_macpro_gen1 = IconData(0x100AB2);

  /// IconData for SF Symbol macpro.gen1.fill
  static const IconData sf_macpro_gen1_fill = IconData(0x100F22);

  /// IconData for SF Symbol macpro.gen2
  static const IconData sf_macpro_gen2 = IconData(0x1009B1);

  /// IconData for SF Symbol macpro.gen2.fill
  static const IconData sf_macpro_gen2_fill = IconData(0x1009AE);

  /// IconData for SF Symbol macpro.gen3
  static const IconData sf_macpro_gen3 = IconData(0x100AB1);

  /// IconData for SF Symbol macpro.gen3.fill
  static const IconData sf_macpro_gen3_fill = IconData(0x100F23);

  /// IconData for SF Symbol macpro.gen3.server
  static const IconData sf_macpro_gen3_server = IconData(0x100A33);

  /// IconData for SF Symbol macstudio
  static const IconData sf_macstudio = IconData(0x1013CD);

  /// IconData for SF Symbol macstudio.fill
  static const IconData sf_macstudio_fill = IconData(0x1013CE);

  /// IconData for SF Symbol macwindow
  static const IconData sf_macwindow = IconData(0x1003DC);

  /// IconData for SF Symbol macwindow.and.cursorarrow
  static const IconData sf_macwindow_and_cursorarrow = IconData(0x101778);

  /// IconData for SF Symbol macwindow.badge.plus
  static const IconData sf_macwindow_badge_plus = IconData(0x100943);

  /// IconData for SF Symbol macwindow.on.rectangle
  static const IconData sf_macwindow_on_rectangle = IconData(0x10088C);

  /// IconData for SF Symbol magazine
  static const IconData sf_magazine = IconData(0x1010BE);

  /// IconData for SF Symbol magazine.fill
  static const IconData sf_magazine_fill = IconData(0x1010BF);

  /// IconData for SF Symbol magicmouse
  static const IconData sf_magicmouse = IconData(0x100EB0);

  /// IconData for SF Symbol magicmouse.fill
  static const IconData sf_magicmouse_fill = IconData(0x100EB1);

  /// IconData for SF Symbol magnifyingglass
  static const IconData sf_magnifyingglass = IconData(0x1002AB);

  /// IconData for SF Symbol magnifyingglass.circle
  static const IconData sf_magnifyingglass_circle = IconData(0x100492);

  /// IconData for SF Symbol magnifyingglass.circle.fill
  static const IconData sf_magnifyingglass_circle_fill = IconData(0x100493);

  /// IconData for SF Symbol magsafe.batterypack
  static const IconData sf_magsafe_batterypack = IconData(0x100E93);

  /// IconData for SF Symbol magsafe.batterypack.fill
  static const IconData sf_magsafe_batterypack_fill = IconData(0x100E94);

  /// IconData for SF Symbol mail
  static const IconData sf_mail = IconData(0x1008EA);

  /// IconData for SF Symbol mail.and.text.magnifyingglass
  static const IconData sf_mail_and_text_magnifyingglass = IconData(0x1008BE);

  /// IconData for SF Symbol mail.fill
  static const IconData sf_mail_fill = IconData(0x1008EB);

  /// IconData for SF Symbol mail.stack
  static const IconData sf_mail_stack = IconData(0x10035D);

  /// IconData for SF Symbol mail.stack.fill
  static const IconData sf_mail_stack_fill = IconData(0x10035E);

  /// IconData for SF Symbol manatsign
  static const IconData sf_manatsign = IconData(0x10145A);

  /// IconData for SF Symbol manatsign.arrow.circlepath
  static const IconData sf_manatsign_arrow_circlepath = IconData(0x10222D);

  /// IconData for SF Symbol manatsign.circle
  static const IconData sf_manatsign_circle = IconData(0x1005CD);

  /// IconData for SF Symbol manatsign.circle.fill
  static const IconData sf_manatsign_circle_fill = IconData(0x1005CE);

  /// IconData for SF Symbol manatsign.square
  static const IconData sf_manatsign_square = IconData(0x10060D);

  /// IconData for SF Symbol manatsign.square.fill
  static const IconData sf_manatsign_square_fill = IconData(0x10060E);

  /// IconData for SF Symbol map
  static const IconData sf_map = IconData(0x10064A);

  /// IconData for SF Symbol map.circle
  static const IconData sf_map_circle = IconData(0x100EEB);

  /// IconData for SF Symbol map.circle.fill
  static const IconData sf_map_circle_fill = IconData(0x100EEC);

  /// IconData for SF Symbol map.fill
  static const IconData sf_map_fill = IconData(0x10064B);

  /// IconData for SF Symbol mappin
  static const IconData sf_mappin = IconData(0x1003AA);

  /// IconData for SF Symbol mappin.and.ellipse
  static const IconData sf_mappin_and_ellipse = IconData(0x1003AB);

  /// IconData for SF Symbol mappin.and.ellipse.circle
  static const IconData sf_mappin_and_ellipse_circle = IconData(0x101F21);

  /// IconData for SF Symbol mappin.and.ellipse.circle.fill
  static const IconData sf_mappin_and_ellipse_circle_fill = IconData(0x101F22);

  /// IconData for SF Symbol mappin.circle
  static const IconData sf_mappin_circle = IconData(0x100707);

  /// IconData for SF Symbol mappin.circle.fill
  static const IconData sf_mappin_circle_fill = IconData(0x100708);

  /// IconData for SF Symbol mappin.slash
  static const IconData sf_mappin_slash = IconData(0x100649);

  /// IconData for SF Symbol mappin.slash.circle
  static const IconData sf_mappin_slash_circle = IconData(0x1011EF);

  /// IconData for SF Symbol mappin.slash.circle.fill
  static const IconData sf_mappin_slash_circle_fill = IconData(0x1011F0);

  /// IconData for SF Symbol mappin.square
  static const IconData sf_mappin_square = IconData(0x100F55);

  /// IconData for SF Symbol mappin.square.fill
  static const IconData sf_mappin_square_fill = IconData(0x100F56);

  /// IconData for SF Symbol medal
  static const IconData sf_medal = IconData(0x1013CB);

  /// IconData for SF Symbol medal.fill
  static const IconData sf_medal_fill = IconData(0x1013CC);

  /// IconData for SF Symbol mediastick
  static const IconData sf_mediastick = IconData(0x100EA5);

  /// IconData for SF Symbol medical.thermometer
  static const IconData sf_medical_thermometer = IconData(0x101487);

  /// IconData for SF Symbol medical.thermometer.fill
  static const IconData sf_medical_thermometer_fill = IconData(0x101488);

  /// IconData for SF Symbol megaphone
  static const IconData sf_megaphone = IconData(0x100B32);

  /// IconData for SF Symbol megaphone.fill
  static const IconData sf_megaphone_fill = IconData(0x100B33);

  /// IconData for SF Symbol memories
  static const IconData sf_memories = IconData(0x100456);

  /// IconData for SF Symbol memories.badge.minus
  static const IconData sf_memories_badge_minus = IconData(0x100458);

  /// IconData for SF Symbol memories.badge.plus
  static const IconData sf_memories_badge_plus = IconData(0x100457);

  /// IconData for SF Symbol memorychip
  static const IconData sf_memorychip = IconData(0x100AE6);

  /// IconData for SF Symbol memorychip.fill
  static const IconData sf_memorychip_fill = IconData(0x1009D6);

  /// IconData for SF Symbol menubar.arrow.down.rectangle
  static const IconData sf_menubar_arrow_down_rectangle = IconData(0x100901);

  /// IconData for SF Symbol menubar.arrow.up.rectangle
  static const IconData sf_menubar_arrow_up_rectangle = IconData(0x100900);

  /// IconData for SF Symbol menubar.dock.rectangle
  static const IconData sf_menubar_dock_rectangle = IconData(0x1008F0);

  /// IconData for SF Symbol menubar.dock.rectangle.badge.record
  static const IconData sf_menubar_dock_rectangle_badge_record =
      IconData(0x1008D1);

  /// IconData for SF Symbol menubar.rectangle
  static const IconData sf_menubar_rectangle = IconData(0x10098D);

  /// IconData for SF Symbol menucard
  static const IconData sf_menucard = IconData(0x100ED2);

  /// IconData for SF Symbol menucard.fill
  static const IconData sf_menucard_fill = IconData(0x100ED3);

  /// IconData for SF Symbol message
  static const IconData sf_message = IconData(0x100324);

  /// IconData for SF Symbol message.badge
  static const IconData sf_message_badge = IconData(0x1012EC);

  /// IconData for SF Symbol message.badge.circle
  static const IconData sf_message_badge_circle = IconData(0x1015D7);

  /// IconData for SF Symbol message.badge.circle.fill
  static const IconData sf_message_badge_circle_fill = IconData(0x1015D8);

  /// IconData for SF Symbol message.badge.fill
  static const IconData sf_message_badge_fill = IconData(0x1013CA);

  /// IconData for SF Symbol message.badge.filled.fill
  static const IconData sf_message_badge_filled_fill = IconData(0x1012ED);

  /// IconData for SF Symbol message.badge.waveform
  static const IconData sf_message_badge_waveform = IconData(0x100F01);

  /// IconData for SF Symbol message.badge.waveform.fill
  static const IconData sf_message_badge_waveform_fill = IconData(0x100F02);

  /// IconData for SF Symbol message.circle
  static const IconData sf_message_circle = IconData(0x100326);

  /// IconData for SF Symbol message.circle.fill
  static const IconData sf_message_circle_fill = IconData(0x100327);

  /// IconData for SF Symbol message.fill
  static const IconData sf_message_fill = IconData(0x100325);

  /// IconData for SF Symbol metronome
  static const IconData sf_metronome = IconData(0x10038C);

  /// IconData for SF Symbol metronome.fill
  static const IconData sf_metronome_fill = IconData(0x100815);

  /// IconData for SF Symbol mic
  static const IconData sf_mic = IconData(0x1002B0);

  /// IconData for SF Symbol mic.and.signal.meter
  static const IconData sf_mic_and_signal_meter = IconData(0x101394);

  /// IconData for SF Symbol mic.and.signal.meter.fill
  static const IconData sf_mic_and_signal_meter_fill = IconData(0x101393);

  /// IconData for SF Symbol mic.badge.plus
  static const IconData sf_mic_badge_plus = IconData(0x100E81);

  /// IconData for SF Symbol mic.badge.xmark
  static const IconData sf_mic_badge_xmark = IconData(0x101643);

  /// IconData for SF Symbol mic.circle
  static const IconData sf_mic_circle = IconData(0x1004A9);

  /// IconData for SF Symbol mic.circle.fill
  static const IconData sf_mic_circle_fill = IconData(0x1004AA);

  /// IconData for SF Symbol mic.fill
  static const IconData sf_mic_fill = IconData(0x1002B1);

  /// IconData for SF Symbol mic.fill.badge.plus
  static const IconData sf_mic_fill_badge_plus = IconData(0x100E82);

  /// IconData for SF Symbol mic.fill.badge.xmark
  static const IconData sf_mic_fill_badge_xmark = IconData(0x101644);

  /// IconData for SF Symbol mic.slash
  static const IconData sf_mic_slash = IconData(0x1002B2);

  /// IconData for SF Symbol mic.slash.circle
  static const IconData sf_mic_slash_circle = IconData(0x100EE9);

  /// IconData for SF Symbol mic.slash.circle.fill
  static const IconData sf_mic_slash_circle_fill = IconData(0x100EEA);

  /// IconData for SF Symbol mic.slash.fill
  static const IconData sf_mic_slash_fill = IconData(0x1002B3);

  /// IconData for SF Symbol mic.square
  static const IconData sf_mic_square = IconData(0x100F3F);

  /// IconData for SF Symbol mic.square.fill
  static const IconData sf_mic_square_fill = IconData(0x100F40);

  /// IconData for SF Symbol microbe
  static const IconData sf_microbe = IconData(0x101239);

  /// IconData for SF Symbol microbe.circle
  static const IconData sf_microbe_circle = IconData(0x1016B6);

  /// IconData for SF Symbol microbe.circle.fill
  static const IconData sf_microbe_circle_fill = IconData(0x1016B7);

  /// IconData for SF Symbol microbe.fill
  static const IconData sf_microbe_fill = IconData(0x101485);

  /// IconData for SF Symbol microwave
  static const IconData sf_microwave = IconData(0x101428);

  /// IconData for SF Symbol microwave.fill
  static const IconData sf_microwave_fill = IconData(0x101429);

  /// IconData for SF Symbol millsign
  static const IconData sf_millsign = IconData(0x101458);

  /// IconData for SF Symbol millsign.arrow.circlepath
  static const IconData sf_millsign_arrow_circlepath = IconData(0x10222B);

  /// IconData for SF Symbol millsign.circle
  static const IconData sf_millsign_circle = IconData(0x1005C9);

  /// IconData for SF Symbol millsign.circle.fill
  static const IconData sf_millsign_circle_fill = IconData(0x1005CA);

  /// IconData for SF Symbol millsign.square
  static const IconData sf_millsign_square = IconData(0x100609);

  /// IconData for SF Symbol millsign.square.fill
  static const IconData sf_millsign_square_fill = IconData(0x10060A);

  /// IconData for SF Symbol minus
  static const IconData sf_minus = IconData(0x10017D);

  /// IconData for SF Symbol minus.circle
  static const IconData sf_minus_circle = IconData(0x10004E);

  /// IconData for SF Symbol minus.circle.fill
  static const IconData sf_minus_circle_fill = IconData(0x10004F);

  /// IconData for SF Symbol minus.diamond
  static const IconData sf_minus_diamond = IconData(0x100881);

  /// IconData for SF Symbol minus.diamond.fill
  static const IconData sf_minus_diamond_fill = IconData(0x100882);

  /// IconData for SF Symbol minus.forwardslash.plus
  static const IconData sf_minus_forwardslash_plus = IconData(0x10017B);

  /// IconData for SF Symbol minus.magnifyingglass
  static const IconData sf_minus_magnifyingglass = IconData(0x1002AD);

  /// IconData for SF Symbol minus.plus.and.fluid.batteryblock
  static const IconData sf_minus_plus_and_fluid_batteryblock =
      IconData(0x101804);

  /// IconData for SF Symbol minus.plus.batteryblock
  static const IconData sf_minus_plus_batteryblock = IconData(0x100AEC);

  /// IconData for SF Symbol minus.plus.batteryblock.exclamationmark
  static const IconData sf_minus_plus_batteryblock_exclamationmark =
      IconData(0x10183F);

  /// IconData for SF Symbol minus.plus.batteryblock.exclamationmark.fill
  static const IconData sf_minus_plus_batteryblock_exclamationmark_fill =
      IconData(0x101840);

  /// IconData for SF Symbol minus.plus.batteryblock.fill
  static const IconData sf_minus_plus_batteryblock_fill = IconData(0x100AED);

  /// IconData for SF Symbol minus.plus.batteryblock.slash
  static const IconData sf_minus_plus_batteryblock_slash = IconData(0x101839);

  /// IconData for SF Symbol minus.plus.batteryblock.slash.fill
  static const IconData sf_minus_plus_batteryblock_slash_fill =
      IconData(0x10183A);

  /// IconData for SF Symbol minus.plus.batteryblock.stack
  static const IconData sf_minus_plus_batteryblock_stack = IconData(0x101841);

  /// IconData for SF Symbol minus.plus.batteryblock.stack.exclamationmark
  static const IconData sf_minus_plus_batteryblock_stack_exclamationmark =
      IconData(0x101843);

  /// IconData for SF Symbol minus.plus.batteryblock.stack.exclamationmark.fill
  static const IconData sf_minus_plus_batteryblock_stack_exclamationmark_fill =
      IconData(0x101844);

  /// IconData for SF Symbol minus.plus.batteryblock.stack.fill
  static const IconData sf_minus_plus_batteryblock_stack_fill =
      IconData(0x101842);

  /// IconData for SF Symbol minus.rectangle
  static const IconData sf_minus_rectangle = IconData(0x1003C9);

  /// IconData for SF Symbol minus.rectangle.fill
  static const IconData sf_minus_rectangle_fill = IconData(0x1003CA);

  /// IconData for SF Symbol minus.rectangle.portrait
  static const IconData sf_minus_rectangle_portrait = IconData(0x10086C);

  /// IconData for SF Symbol minus.rectangle.portrait.fill
  static const IconData sf_minus_rectangle_portrait_fill = IconData(0x10086D);

  /// IconData for SF Symbol minus.square
  static const IconData sf_minus_square = IconData(0x1000DE);

  /// IconData for SF Symbol minus.square.fill
  static const IconData sf_minus_square_fill = IconData(0x1000DF);

  /// IconData for SF Symbol mirror.side.left
  static const IconData sf_mirror_side_left = IconData(0x101271);

  /// IconData for SF Symbol mirror.side.left.and.arrow.turn.down.right
  static const IconData sf_mirror_side_left_and_arrow_turn_down_right =
      IconData(0x101275);

  /// IconData for SF Symbol mirror.side.left.and.heat.waves
  static const IconData sf_mirror_side_left_and_heat_waves = IconData(0x101273);

  /// IconData for SF Symbol mirror.side.right
  static const IconData sf_mirror_side_right = IconData(0x101272);

  /// IconData for SF Symbol mirror.side.right.and.arrow.turn.down.left
  static const IconData sf_mirror_side_right_and_arrow_turn_down_left =
      IconData(0x101276);

  /// IconData for SF Symbol mirror.side.right.and.heat.waves
  static const IconData sf_mirror_side_right_and_heat_waves =
      IconData(0x101274);

  /// IconData for SF Symbol moon
  static const IconData sf_moon = IconData(0x1001B9);

  /// IconData for SF Symbol moon.circle
  static const IconData sf_moon_circle = IconData(0x1001BB);

  /// IconData for SF Symbol moon.circle.fill
  static const IconData sf_moon_circle_fill = IconData(0x1001BC);

  /// IconData for SF Symbol moon.dust
  static const IconData sf_moon_dust = IconData(0x101DBD);

  /// IconData for SF Symbol moon.dust.circle
  static const IconData sf_moon_dust_circle = IconData(0x101DBF);

  /// IconData for SF Symbol moon.dust.circle.fill
  static const IconData sf_moon_dust_circle_fill = IconData(0x101DC0);

  /// IconData for SF Symbol moon.dust.fill
  static const IconData sf_moon_dust_fill = IconData(0x101DBE);

  /// IconData for SF Symbol moon.fill
  static const IconData sf_moon_fill = IconData(0x1001BA);

  /// IconData for SF Symbol moon.haze
  static const IconData sf_moon_haze = IconData(0x10146F);

  /// IconData for SF Symbol moon.haze.circle
  static const IconData sf_moon_haze_circle = IconData(0x101737);

  /// IconData for SF Symbol moon.haze.circle.fill
  static const IconData sf_moon_haze_circle_fill = IconData(0x101738);

  /// IconData for SF Symbol moon.haze.fill
  static const IconData sf_moon_haze_fill = IconData(0x101470);

  /// IconData for SF Symbol moon.stars
  static const IconData sf_moon_stars = IconData(0x1001C0);

  /// IconData for SF Symbol moon.stars.circle
  static const IconData sf_moon_stars_circle = IconData(0x1016CB);

  /// IconData for SF Symbol moon.stars.circle.fill
  static const IconData sf_moon_stars_circle_fill = IconData(0x1016CC);

  /// IconData for SF Symbol moon.stars.fill
  static const IconData sf_moon_stars_fill = IconData(0x1001C1);

  /// IconData for SF Symbol moon.zzz
  static const IconData sf_moon_zzz = IconData(0x1001BD);

  /// IconData for SF Symbol moon.zzz.fill
  static const IconData sf_moon_zzz_fill = IconData(0x1001BE);

  /// IconData for SF Symbol moonphase.first.quarter
  static const IconData sf_moonphase_first_quarter = IconData(0x10084A);

  /// IconData for SF Symbol moonphase.first.quarter.inverse
  static const IconData sf_moonphase_first_quarter_inverse = IconData(0x10140B);

  /// IconData for SF Symbol moonphase.full.moon
  static const IconData sf_moonphase_full_moon = IconData(0x10084C);

  /// IconData for SF Symbol moonphase.full.moon.inverse
  static const IconData sf_moonphase_full_moon_inverse = IconData(0x10140D);

  /// IconData for SF Symbol moonphase.last.quarter
  static const IconData sf_moonphase_last_quarter = IconData(0x10084E);

  /// IconData for SF Symbol moonphase.last.quarter.inverse
  static const IconData sf_moonphase_last_quarter_inverse = IconData(0x10140F);

  /// IconData for SF Symbol moonphase.new.moon
  static const IconData sf_moonphase_new_moon = IconData(0x100848);

  /// IconData for SF Symbol moonphase.new.moon.inverse
  static const IconData sf_moonphase_new_moon_inverse = IconData(0x101409);

  /// IconData for SF Symbol moonphase.waning.crescent
  static const IconData sf_moonphase_waning_crescent = IconData(0x10084F);

  /// IconData for SF Symbol moonphase.waning.crescent.inverse
  static const IconData sf_moonphase_waning_crescent_inverse =
      IconData(0x101410);

  /// IconData for SF Symbol moonphase.waning.gibbous
  static const IconData sf_moonphase_waning_gibbous = IconData(0x10084D);

  /// IconData for SF Symbol moonphase.waning.gibbous.inverse
  static const IconData sf_moonphase_waning_gibbous_inverse =
      IconData(0x10140E);

  /// IconData for SF Symbol moonphase.waxing.crescent
  static const IconData sf_moonphase_waxing_crescent = IconData(0x100849);

  /// IconData for SF Symbol moonphase.waxing.crescent.inverse
  static const IconData sf_moonphase_waxing_crescent_inverse =
      IconData(0x10140A);

  /// IconData for SF Symbol moonphase.waxing.gibbous
  static const IconData sf_moonphase_waxing_gibbous = IconData(0x10084B);

  /// IconData for SF Symbol moonphase.waxing.gibbous.inverse
  static const IconData sf_moonphase_waxing_gibbous_inverse =
      IconData(0x10140C);

  /// IconData for SF Symbol moonrise
  static const IconData sf_moonrise = IconData(0x1020B3);

  /// IconData for SF Symbol moonrise.circle
  static const IconData sf_moonrise_circle = IconData(0x1020B5);

  /// IconData for SF Symbol moonrise.circle.fill
  static const IconData sf_moonrise_circle_fill = IconData(0x1020B6);

  /// IconData for SF Symbol moonrise.fill
  static const IconData sf_moonrise_fill = IconData(0x1020B4);

  /// IconData for SF Symbol moonset
  static const IconData sf_moonset = IconData(0x1020B7);

  /// IconData for SF Symbol moonset.circle
  static const IconData sf_moonset_circle = IconData(0x1020B9);

  /// IconData for SF Symbol moonset.circle.fill
  static const IconData sf_moonset_circle_fill = IconData(0x1020BA);

  /// IconData for SF Symbol moonset.fill
  static const IconData sf_moonset_fill = IconData(0x1020B8);

  /// IconData for SF Symbol mosaic
  static const IconData sf_mosaic = IconData(0x100BEB);

  /// IconData for SF Symbol mosaic.fill
  static const IconData sf_mosaic_fill = IconData(0x100BEC);

  /// IconData for SF Symbol mount
  static const IconData sf_mount = IconData(0x1008CA);

  /// IconData for SF Symbol mount.fill
  static const IconData sf_mount_fill = IconData(0x1008A3);

  /// IconData for SF Symbol mountain.2
  static const IconData sf_mountain_2 = IconData(0x1015DD);

  /// IconData for SF Symbol mountain.2.circle
  static const IconData sf_mountain_2_circle = IconData(0x101792);

  /// IconData for SF Symbol mountain.2.circle.fill
  static const IconData sf_mountain_2_circle_fill = IconData(0x101793);

  /// IconData for SF Symbol mountain.2.fill
  static const IconData sf_mountain_2_fill = IconData(0x1015DE);

  /// IconData for SF Symbol mouth
  static const IconData sf_mouth = IconData(0x1009A9);

  /// IconData for SF Symbol mouth.fill
  static const IconData sf_mouth_fill = IconData(0x1009AA);

  /// IconData for SF Symbol move.3d
  static const IconData sf_move_3d = IconData(0x100885);

  /// IconData for SF Symbol movieclapper
  static const IconData sf_movieclapper = IconData(0x100724);

  /// IconData for SF Symbol movieclapper.fill
  static const IconData sf_movieclapper_fill = IconData(0x101DBA);

  /// IconData for SF Symbol mph
  static const IconData sf_mph = IconData(0x1018BA);

  /// IconData for SF Symbol mph.circle
  static const IconData sf_mph_circle = IconData(0x1018BB);

  /// IconData for SF Symbol mph.circle.fill
  static const IconData sf_mph_circle_fill = IconData(0x1018BC);

  /// IconData for SF Symbol mug
  static const IconData sf_mug = IconData(0x1017B4);

  /// IconData for SF Symbol mug.fill
  static const IconData sf_mug_fill = IconData(0x1017B5);

  /// IconData for SF Symbol multiply
  static const IconData sf_multiply = IconData(0x10017E);

  /// IconData for SF Symbol multiply.circle
  static const IconData sf_multiply_circle = IconData(0x100050);

  /// IconData for SF Symbol multiply.circle.fill
  static const IconData sf_multiply_circle_fill = IconData(0x100051);

  /// IconData for SF Symbol multiply.square
  static const IconData sf_multiply_square = IconData(0x1000E0);

  /// IconData for SF Symbol multiply.square.fill
  static const IconData sf_multiply_square_fill = IconData(0x1000E1);

  /// IconData for SF Symbol music.mic
  static const IconData sf_music_mic = IconData(0x10046B);

  /// IconData for SF Symbol music.mic.circle
  static const IconData sf_music_mic_circle = IconData(0x101051);

  /// IconData for SF Symbol music.mic.circle.fill
  static const IconData sf_music_mic_circle_fill = IconData(0x101052);

  /// IconData for SF Symbol music.note
  static const IconData sf_music_note = IconData(0x10046A);

  /// IconData for SF Symbol music.note.house
  static const IconData sf_music_note_house = IconData(0x1004BC);

  /// IconData for SF Symbol music.note.house.fill
  static const IconData sf_music_note_house_fill = IconData(0x1004BD);

  /// IconData for SF Symbol music.note.list
  static const IconData sf_music_note_list = IconData(0x10046C);

  /// IconData for SF Symbol music.note.tv
  static const IconData sf_music_note_tv = IconData(0x1003B5);

  /// IconData for SF Symbol music.note.tv.fill
  static const IconData sf_music_note_tv_fill = IconData(0x1004B7);

  /// IconData for SF Symbol music.quarternote.3
  static const IconData sf_music_quarternote_3 = IconData(0x100AC0);

  /// IconData for SF Symbol mustache
  static const IconData sf_mustache = IconData(0x10097F);

  /// IconData for SF Symbol mustache.fill
  static const IconData sf_mustache_fill = IconData(0x100980);

  /// IconData for SF Symbol n.circle
  static const IconData sf_n_circle = IconData(0x10001E);

  /// IconData for SF Symbol n.circle.fill
  static const IconData sf_n_circle_fill = IconData(0x10001F);

  /// IconData for SF Symbol n.square
  static const IconData sf_n_square = IconData(0x1000AE);

  /// IconData for SF Symbol n.square.fill
  static const IconData sf_n_square_fill = IconData(0x1000AF);

  /// IconData for SF Symbol nairasign
  static const IconData sf_nairasign = IconData(0x101452);

  /// IconData for SF Symbol nairasign.arrow.circlepath
  static const IconData sf_nairasign_arrow_circlepath = IconData(0x102225);

  /// IconData for SF Symbol nairasign.circle
  static const IconData sf_nairasign_circle = IconData(0x1005BD);

  /// IconData for SF Symbol nairasign.circle.fill
  static const IconData sf_nairasign_circle_fill = IconData(0x1005BE);

  /// IconData for SF Symbol nairasign.square
  static const IconData sf_nairasign_square = IconData(0x1005FD);

  /// IconData for SF Symbol nairasign.square.fill
  static const IconData sf_nairasign_square_fill = IconData(0x1005FE);

  /// IconData for SF Symbol network
  static const IconData sf_network = IconData(0x100906);

  /// IconData for SF Symbol network.badge.shield.half.filled
  static const IconData sf_network_badge_shield_half_filled =
      IconData(0x10114F);

  /// IconData for SF Symbol network.slash
  static const IconData sf_network_slash = IconData(0x1018E1);

  /// IconData for SF Symbol newspaper
  static const IconData sf_newspaper = IconData(0x100926);

  /// IconData for SF Symbol newspaper.circle
  static const IconData sf_newspaper_circle = IconData(0x1011B4);

  /// IconData for SF Symbol newspaper.circle.fill
  static const IconData sf_newspaper_circle_fill = IconData(0x1011B5);

  /// IconData for SF Symbol newspaper.fill
  static const IconData sf_newspaper_fill = IconData(0x100945);

  /// IconData for SF Symbol norwegiankronesign
  static const IconData sf_norwegiankronesign = IconData(0x10192C);

  /// IconData for SF Symbol norwegiankronesign.arrow.circlepath
  static const IconData sf_norwegiankronesign_arrow_circlepath =
      IconData(0x102235);

  /// IconData for SF Symbol norwegiankronesign.circle
  static const IconData sf_norwegiankronesign_circle = IconData(0x100BA4);

  /// IconData for SF Symbol norwegiankronesign.circle.fill
  static const IconData sf_norwegiankronesign_circle_fill = IconData(0x100BA5);

  /// IconData for SF Symbol norwegiankronesign.square
  static const IconData sf_norwegiankronesign_square = IconData(0x100BA6);

  /// IconData for SF Symbol norwegiankronesign.square.fill
  static const IconData sf_norwegiankronesign_square_fill = IconData(0x100BA7);

  /// IconData for SF Symbol nose
  static const IconData sf_nose = IconData(0x100A2F);

  /// IconData for SF Symbol nose.fill
  static const IconData sf_nose_fill = IconData(0x100A30);

  /// IconData for SF Symbol nosign
  static const IconData sf_nosign = IconData(0x10037C);

  /// IconData for SF Symbol nosign.app
  static const IconData sf_nosign_app = IconData(0x10174A);

  /// IconData for SF Symbol nosign.app.fill
  static const IconData sf_nosign_app_fill = IconData(0x10174B);

  /// IconData for SF Symbol note
  static const IconData sf_note = IconData(0x1009F5);

  /// IconData for SF Symbol note.text
  static const IconData sf_note_text = IconData(0x1004D5);

  /// IconData for SF Symbol note.text.badge.plus
  static const IconData sf_note_text_badge_plus = IconData(0x1008D9);

  /// IconData for SF Symbol number
  static const IconData sf_number = IconData(0x100183);

  /// IconData for SF Symbol number.circle
  static const IconData sf_number_circle = IconData(0x10005A);

  /// IconData for SF Symbol number.circle.fill
  static const IconData sf_number_circle_fill = IconData(0x10005B);

  /// IconData for SF Symbol number.square
  static const IconData sf_number_square = IconData(0x1000EA);

  /// IconData for SF Symbol number.square.fill
  static const IconData sf_number_square_fill = IconData(0x1000EB);

  /// IconData for SF Symbol numbersign
  static const IconData sf_numbersign = IconData(0x1014D8);

  /// IconData for SF Symbol o.circle
  static const IconData sf_o_circle = IconData(0x100020);

  /// IconData for SF Symbol o.circle.fill
  static const IconData sf_o_circle_fill = IconData(0x100021);

  /// IconData for SF Symbol o.square
  static const IconData sf_o_square = IconData(0x1000B0);

  /// IconData for SF Symbol o.square.fill
  static const IconData sf_o_square_fill = IconData(0x1000B1);

  /// IconData for SF Symbol oar.2.crossed
  static const IconData sf_oar_2_crossed = IconData(0x101536);

  /// IconData for SF Symbol octagon
  static const IconData sf_octagon = IconData(0x1007CA);

  /// IconData for SF Symbol octagon.bottomhalf.filled
  static const IconData sf_octagon_bottomhalf_filled = IconData(0x10103D);

  /// IconData for SF Symbol octagon.fill
  static const IconData sf_octagon_fill = IconData(0x1007CB);

  /// IconData for SF Symbol octagon.lefthalf.filled
  static const IconData sf_octagon_lefthalf_filled = IconData(0x101007);

  /// IconData for SF Symbol octagon.righthalf.filled
  static const IconData sf_octagon_righthalf_filled = IconData(0x101008);

  /// IconData for SF Symbol octagon.tophalf.filled
  static const IconData sf_octagon_tophalf_filled = IconData(0x10103C);

  /// IconData for SF Symbol oilcan
  static const IconData sf_oilcan = IconData(0x100FC4);

  /// IconData for SF Symbol oilcan.fill
  static const IconData sf_oilcan_fill = IconData(0x100FC5);

  /// IconData for SF Symbol opticaldisc
  static const IconData sf_opticaldisc = IconData(0x1008B8);

  /// IconData for SF Symbol opticaldisc.fill
  static const IconData sf_opticaldisc_fill = IconData(0x101624);

  /// IconData for SF Symbol opticaldiscdrive
  static const IconData sf_opticaldiscdrive = IconData(0x100904);

  /// IconData for SF Symbol opticaldiscdrive.fill
  static const IconData sf_opticaldiscdrive_fill = IconData(0x100905);

  /// IconData for SF Symbol opticid
  static const IconData sf_opticid = IconData(0x101899);

  /// IconData for SF Symbol opticid.fill
  static const IconData sf_opticid_fill = IconData(0x1018C2);

  /// IconData for SF Symbol option
  static const IconData sf_option = IconData(0x100195);

  /// IconData for SF Symbol oval
  static const IconData sf_oval = IconData(0x100C9E);

  /// IconData for SF Symbol oval.bottomhalf.filled
  static const IconData sf_oval_bottomhalf_filled = IconData(0x100FFE);

  /// IconData for SF Symbol oval.fill
  static const IconData sf_oval_fill = IconData(0x100C9F);

  /// IconData for SF Symbol oval.inset.filled
  static const IconData sf_oval_inset_filled = IconData(0x100F9C);

  /// IconData for SF Symbol oval.lefthalf.filled
  static const IconData sf_oval_lefthalf_filled = IconData(0x100FFB);

  /// IconData for SF Symbol oval.portrait
  static const IconData sf_oval_portrait = IconData(0x100CA0);

  /// IconData for SF Symbol oval.portrait.bottomhalf.filled
  static const IconData sf_oval_portrait_bottomhalf_filled = IconData(0x101002);

  /// IconData for SF Symbol oval.portrait.fill
  static const IconData sf_oval_portrait_fill = IconData(0x100CA1);

  /// IconData for SF Symbol oval.portrait.inset.filled
  static const IconData sf_oval_portrait_inset_filled = IconData(0x100F9D);

  /// IconData for SF Symbol oval.portrait.lefthalf.filled
  static const IconData sf_oval_portrait_lefthalf_filled = IconData(0x100FFF);

  /// IconData for SF Symbol oval.portrait.righthalf.filled
  static const IconData sf_oval_portrait_righthalf_filled = IconData(0x101000);

  /// IconData for SF Symbol oval.portrait.tophalf.filled
  static const IconData sf_oval_portrait_tophalf_filled = IconData(0x101001);

  /// IconData for SF Symbol oval.righthalf.filled
  static const IconData sf_oval_righthalf_filled = IconData(0x100FFC);

  /// IconData for SF Symbol oval.tophalf.filled
  static const IconData sf_oval_tophalf_filled = IconData(0x100FFD);

  /// IconData for SF Symbol oven
  static const IconData sf_oven = IconData(0x101424);

  /// IconData for SF Symbol oven.fill
  static const IconData sf_oven_fill = IconData(0x101425);

  /// IconData for SF Symbol p.circle
  static const IconData sf_p_circle = IconData(0x100022);

  /// IconData for SF Symbol p.circle.fill
  static const IconData sf_p_circle_fill = IconData(0x100023);

  /// IconData for SF Symbol p.square
  static const IconData sf_p_square = IconData(0x1000B2);

  /// IconData for SF Symbol p.square.fill
  static const IconData sf_p_square_fill = IconData(0x1000B3);

  /// IconData for SF Symbol p1.button.horizontal
  static const IconData sf_p1_button_horizontal = IconData(0x101E2C);

  /// IconData for SF Symbol p1.button.horizontal.fill
  static const IconData sf_p1_button_horizontal_fill = IconData(0x101E2D);

  /// IconData for SF Symbol p2.button.horizontal
  static const IconData sf_p2_button_horizontal = IconData(0x101E2E);

  /// IconData for SF Symbol p2.button.horizontal.fill
  static const IconData sf_p2_button_horizontal_fill = IconData(0x101E2F);

  /// IconData for SF Symbol p3.button.horizontal
  static const IconData sf_p3_button_horizontal = IconData(0x101E30);

  /// IconData for SF Symbol p3.button.horizontal.fill
  static const IconData sf_p3_button_horizontal_fill = IconData(0x101E31);

  /// IconData for SF Symbol p4.button.horizontal
  static const IconData sf_p4_button_horizontal = IconData(0x101E32);

  /// IconData for SF Symbol p4.button.horizontal.fill
  static const IconData sf_p4_button_horizontal_fill = IconData(0x101E33);

  /// IconData for SF Symbol paddleshifter.left
  static const IconData sf_paddleshifter_left = IconData(0x101E34);

  /// IconData for SF Symbol paddleshifter.left.fill
  static const IconData sf_paddleshifter_left_fill = IconData(0x101E35);

  /// IconData for SF Symbol paddleshifter.right
  static const IconData sf_paddleshifter_right = IconData(0x101E36);

  /// IconData for SF Symbol paddleshifter.right.fill
  static const IconData sf_paddleshifter_right_fill = IconData(0x101E37);

  /// IconData for SF Symbol paintbrush
  static const IconData sf_paintbrush = IconData(0x100391);

  /// IconData for SF Symbol paintbrush.fill
  static const IconData sf_paintbrush_fill = IconData(0x100392);

  /// IconData for SF Symbol paintbrush.pointed
  static const IconData sf_paintbrush_pointed = IconData(0x1008F6);

  /// IconData for SF Symbol paintbrush.pointed.fill
  static const IconData sf_paintbrush_pointed_fill = IconData(0x1008F7);

  /// IconData for SF Symbol paintpalette
  static const IconData sf_paintpalette = IconData(0x100765);

  /// IconData for SF Symbol paintpalette.fill
  static const IconData sf_paintpalette_fill = IconData(0x100766);

  /// IconData for SF Symbol pano
  static const IconData sf_pano = IconData(0x10040F);

  /// IconData for SF Symbol pano.badge.play
  static const IconData sf_pano_badge_play = IconData(0x101DFF);

  /// IconData for SF Symbol pano.badge.play.fill
  static const IconData sf_pano_badge_play_fill = IconData(0x101E00);

  /// IconData for SF Symbol pano.fill
  static const IconData sf_pano_fill = IconData(0x100410);

  /// IconData for SF Symbol paperclip
  static const IconData sf_paperclip = IconData(0x100262);

  /// IconData for SF Symbol paperclip.badge.ellipsis
  static const IconData sf_paperclip_badge_ellipsis = IconData(0x10088F);

  /// IconData for SF Symbol paperclip.circle
  static const IconData sf_paperclip_circle = IconData(0x100494);

  /// IconData for SF Symbol paperclip.circle.fill
  static const IconData sf_paperclip_circle_fill = IconData(0x100495);

  /// IconData for SF Symbol paperplane
  static const IconData sf_paperplane = IconData(0x10021F);

  /// IconData for SF Symbol paperplane.circle
  static const IconData sf_paperplane_circle = IconData(0x100221);

  /// IconData for SF Symbol paperplane.circle.fill
  static const IconData sf_paperplane_circle_fill = IconData(0x100222);

  /// IconData for SF Symbol paperplane.fill
  static const IconData sf_paperplane_fill = IconData(0x100220);

  /// IconData for SF Symbol paragraphsign
  static const IconData sf_paragraphsign = IconData(0x100486);

  /// IconData for SF Symbol parentheses
  static const IconData sf_parentheses = IconData(0x100E0F);

  /// IconData for SF Symbol parkinglight
  static const IconData sf_parkinglight = IconData(0x100FBC);

  /// IconData for SF Symbol parkinglight.fill
  static const IconData sf_parkinglight_fill = IconData(0x100FBD);

  /// IconData for SF Symbol parkingsign
  static const IconData sf_parkingsign = IconData(0x100D62);

  /// IconData for SF Symbol parkingsign.brakesignal
  static const IconData sf_parkingsign_brakesignal = IconData(0x100FC0);

  /// IconData for SF Symbol parkingsign.brakesignal.slash
  static const IconData sf_parkingsign_brakesignal_slash = IconData(0x101250);

  /// IconData for SF Symbol parkingsign.circle
  static const IconData sf_parkingsign_circle = IconData(0x100DC1);

  /// IconData for SF Symbol parkingsign.circle.fill
  static const IconData sf_parkingsign_circle_fill = IconData(0x100DC2);

  /// IconData for SF Symbol parkingsign.radiowaves.left.and.right
  static const IconData sf_parkingsign_radiowaves_left_and_right =
      IconData(0x1015B2);

  /// IconData for SF Symbol parkingsign.radiowaves.right.and.safetycone
  static const IconData sf_parkingsign_radiowaves_right_and_safetycone =
      IconData(0x101968);

  /// IconData for SF Symbol parkingsign.steeringwheel
  static const IconData sf_parkingsign_steeringwheel = IconData(0x101268);

  /// IconData for SF Symbol party.popper
  static const IconData sf_party_popper = IconData(0x1014F5);

  /// IconData for SF Symbol party.popper.fill
  static const IconData sf_party_popper_fill = IconData(0x1014F6);

  /// IconData for SF Symbol pause
  static const IconData sf_pause = IconData(0x100285);

  /// IconData for SF Symbol pause.circle
  static const IconData sf_pause_circle = IconData(0x100297);

  /// IconData for SF Symbol pause.circle.fill
  static const IconData sf_pause_circle_fill = IconData(0x100298);

  /// IconData for SF Symbol pause.fill
  static const IconData sf_pause_fill = IconData(0x100286);

  /// IconData for SF Symbol pause.rectangle
  static const IconData sf_pause_rectangle = IconData(0x10029B);

  /// IconData for SF Symbol pause.rectangle.fill
  static const IconData sf_pause_rectangle_fill = IconData(0x10029C);

  /// IconData for SF Symbol pawprint
  static const IconData sf_pawprint = IconData(0x100F9E);

  /// IconData for SF Symbol pawprint.circle
  static const IconData sf_pawprint_circle = IconData(0x1010B0);

  /// IconData for SF Symbol pawprint.circle.fill
  static const IconData sf_pawprint_circle_fill = IconData(0x1010B1);

  /// IconData for SF Symbol pawprint.fill
  static const IconData sf_pawprint_fill = IconData(0x100F9F);

  /// IconData for SF Symbol pc
  static const IconData sf_pc = IconData(0x10097A);

  /// IconData for SF Symbol peacesign
  static const IconData sf_peacesign = IconData(0x100E8E);

  /// IconData for SF Symbol pedal.accelerator
  static const IconData sf_pedal_accelerator = IconData(0x101E17);

  /// IconData for SF Symbol pedal.accelerator.fill
  static const IconData sf_pedal_accelerator_fill = IconData(0x101E18);

  /// IconData for SF Symbol pedal.brake
  static const IconData sf_pedal_brake = IconData(0x101E19);

  /// IconData for SF Symbol pedal.brake.fill
  static const IconData sf_pedal_brake_fill = IconData(0x101E1A);

  /// IconData for SF Symbol pedal.clutch
  static const IconData sf_pedal_clutch = IconData(0x101E1B);

  /// IconData for SF Symbol pedal.clutch.fill
  static const IconData sf_pedal_clutch_fill = IconData(0x101E1C);

  /// IconData for SF Symbol pedestrian.gate.closed
  static const IconData sf_pedestrian_gate_closed = IconData(0x1014E1);

  /// IconData for SF Symbol pedestrian.gate.open
  static const IconData sf_pedestrian_gate_open = IconData(0x1014E2);

  /// IconData for SF Symbol pencil
  static const IconData sf_pencil = IconData(0x10020A);

  /// IconData for SF Symbol pencil.and.list.clipboard
  static const IconData sf_pencil_and_list_clipboard = IconData(0x10154D);

  /// IconData for SF Symbol pencil.and.outline
  static const IconData sf_pencil_and_outline = IconData(0x100210);

  /// IconData for SF Symbol pencil.and.ruler
  static const IconData sf_pencil_and_ruler = IconData(0x101586);

  /// IconData for SF Symbol pencil.and.ruler.fill
  static const IconData sf_pencil_and_ruler_fill = IconData(0x101587);

  /// IconData for SF Symbol pencil.and.scribble
  static const IconData sf_pencil_and_scribble = IconData(0x100912);

  /// IconData for SF Symbol pencil.circle
  static const IconData sf_pencil_circle = IconData(0x10020B);

  /// IconData for SF Symbol pencil.circle.fill
  static const IconData sf_pencil_circle_fill = IconData(0x10020C);

  /// IconData for SF Symbol pencil.line
  static const IconData sf_pencil_line = IconData(0x10169B);

  /// IconData for SF Symbol pencil.slash
  static const IconData sf_pencil_slash = IconData(0x10020D);

  /// IconData for SF Symbol pencil.tip
  static const IconData sf_pencil_tip = IconData(0x10048B);

  /// IconData for SF Symbol pencil.tip.crop.circle
  static const IconData sf_pencil_tip_crop_circle = IconData(0x100265);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.arrow.forward
  static const IconData sf_pencil_tip_crop_circle_badge_arrow_forward =
      IconData(0x1009DA);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.arrow.forward.fill
  static const IconData sf_pencil_tip_crop_circle_badge_arrow_forward_fill =
      IconData(0x101FF5);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.minus
  static const IconData sf_pencil_tip_crop_circle_badge_minus =
      IconData(0x100267);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.minus.fill
  static const IconData sf_pencil_tip_crop_circle_badge_minus_fill =
      IconData(0x101FF3);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.plus
  static const IconData sf_pencil_tip_crop_circle_badge_plus =
      IconData(0x100266);

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.plus.fill
  static const IconData sf_pencil_tip_crop_circle_badge_plus_fill =
      IconData(0x101F9D);

  /// IconData for SF Symbol pencil.tip.crop.circle.fill
  static const IconData sf_pencil_tip_crop_circle_fill = IconData(0x101F9B);

  /// IconData for SF Symbol pentagon
  static const IconData sf_pentagon = IconData(0x100DBA);

  /// IconData for SF Symbol pentagon.bottomhalf.filled
  static const IconData sf_pentagon_bottomhalf_filled = IconData(0x10103B);

  /// IconData for SF Symbol pentagon.fill
  static const IconData sf_pentagon_fill = IconData(0x100DBB);

  /// IconData for SF Symbol pentagon.lefthalf.filled
  static const IconData sf_pentagon_lefthalf_filled = IconData(0x10100B);

  /// IconData for SF Symbol pentagon.righthalf.filled
  static const IconData sf_pentagon_righthalf_filled = IconData(0x10100C);

  /// IconData for SF Symbol pentagon.tophalf.filled
  static const IconData sf_pentagon_tophalf_filled = IconData(0x10103A);

  /// IconData for SF Symbol percent
  static const IconData sf_percent = IconData(0x10063E);

  /// IconData for SF Symbol person
  static const IconData sf_person = IconData(0x100269);

  /// IconData for SF Symbol person.2
  static const IconData sf_person_2 = IconData(0x10026B);

  /// IconData for SF Symbol person.2.badge.gearshape
  static const IconData sf_person_2_badge_gearshape = IconData(0x10165A);

  /// IconData for SF Symbol person.2.badge.gearshape.fill
  static const IconData sf_person_2_badge_gearshape_fill = IconData(0x10165B);

  /// IconData for SF Symbol person.2.badge.key
  static const IconData sf_person_2_badge_key = IconData(0x101DE9);

  /// IconData for SF Symbol person.2.badge.key.fill
  static const IconData sf_person_2_badge_key_fill = IconData(0x101DEB);

  /// IconData for SF Symbol person.2.circle
  static const IconData sf_person_2_circle = IconData(0x100803);

  /// IconData for SF Symbol person.2.circle.fill
  static const IconData sf_person_2_circle_fill = IconData(0x100804);

  /// IconData for SF Symbol person.2.crop.square.stack
  static const IconData sf_person_2_crop_square_stack = IconData(0x1004E5);

  /// IconData for SF Symbol person.2.crop.square.stack.fill
  static const IconData sf_person_2_crop_square_stack_fill = IconData(0x1004E6);

  /// IconData for SF Symbol person.2.fill
  static const IconData sf_person_2_fill = IconData(0x10026C);

  /// IconData for SF Symbol person.2.gobackward
  static const IconData sf_person_2_gobackward = IconData(0x101659);

  /// IconData for SF Symbol person.2.slash
  static const IconData sf_person_2_slash = IconData(0x10175E);

  /// IconData for SF Symbol person.2.slash.fill
  static const IconData sf_person_2_slash_fill = IconData(0x10175F);

  /// IconData for SF Symbol person.2.wave.2
  static const IconData sf_person_2_wave_2 = IconData(0x100F8C);

  /// IconData for SF Symbol person.2.wave.2.fill
  static const IconData sf_person_2_wave_2_fill = IconData(0x100F8D);

  /// IconData for SF Symbol person.3
  static const IconData sf_person_3 = IconData(0x10074A);

  /// IconData for SF Symbol person.3.fill
  static const IconData sf_person_3_fill = IconData(0x10074B);

  /// IconData for SF Symbol person.3.sequence
  static const IconData sf_person_3_sequence = IconData(0x100EF7);

  /// IconData for SF Symbol person.3.sequence.fill
  static const IconData sf_person_3_sequence_fill = IconData(0x100EF8);

  /// IconData for SF Symbol person.and.arrow.left.and.arrow.right
  static const IconData sf_person_and_arrow_left_and_arrow_right =
      IconData(0x100ABC);

  /// IconData for SF Symbol person.and.background.dotted
  static const IconData sf_person_and_background_dotted = IconData(0x101641);

  /// IconData for SF Symbol person.and.background.striped.horizontal
  static const IconData sf_person_and_background_striped_horizontal =
      IconData(0x101803);

  /// IconData for SF Symbol person.badge.clock
  static const IconData sf_person_badge_clock = IconData(0x101156);

  /// IconData for SF Symbol person.badge.clock.fill
  static const IconData sf_person_badge_clock_fill = IconData(0x101157);

  /// IconData for SF Symbol person.badge.key
  static const IconData sf_person_badge_key = IconData(0x1013FA);

  /// IconData for SF Symbol person.badge.key.fill
  static const IconData sf_person_badge_key_fill = IconData(0x1013A8);

  /// IconData for SF Symbol person.badge.minus
  static const IconData sf_person_badge_minus = IconData(0x100717);

  /// IconData for SF Symbol person.badge.plus
  static const IconData sf_person_badge_plus = IconData(0x100715);

  /// IconData for SF Symbol person.badge.shield.checkmark
  static const IconData sf_person_badge_shield_checkmark = IconData(0x101653);

  /// IconData for SF Symbol person.badge.shield.checkmark.fill
  static const IconData sf_person_badge_shield_checkmark_fill =
      IconData(0x101654);

  /// IconData for SF Symbol person.bubble
  static const IconData sf_person_bubble = IconData(0x10213D);

  /// IconData for SF Symbol person.bubble.fill
  static const IconData sf_person_bubble_fill = IconData(0x10213E);

  /// IconData for SF Symbol person.bust
  static const IconData sf_person_bust = IconData(0x1015E1);

  /// IconData for SF Symbol person.bust.circle
  static const IconData sf_person_bust_circle = IconData(0x101F53);

  /// IconData for SF Symbol person.bust.circle.fill
  static const IconData sf_person_bust_circle_fill = IconData(0x101F54);

  /// IconData for SF Symbol person.bust.fill
  static const IconData sf_person_bust_fill = IconData(0x1015E2);

  /// IconData for SF Symbol person.circle
  static const IconData sf_person_circle = IconData(0x1004E3);

  /// IconData for SF Symbol person.circle.fill
  static const IconData sf_person_circle_fill = IconData(0x1004E4);

  /// IconData for SF Symbol person.crop.artframe
  static const IconData sf_person_crop_artframe = IconData(0x100FCF);

  /// IconData for SF Symbol person.crop.circle
  static const IconData sf_person_crop_circle = IconData(0x10026D);

  /// IconData for SF Symbol person.crop.circle.badge
  static const IconData sf_person_crop_circle_badge = IconData(0x10109B);

  /// IconData for SF Symbol person.crop.circle.badge.checkmark
  static const IconData sf_person_crop_circle_badge_checkmark =
      IconData(0x100273);

  /// IconData for SF Symbol person.crop.circle.badge.clock
  static const IconData sf_person_crop_circle_badge_clock = IconData(0x101154);

  /// IconData for SF Symbol person.crop.circle.badge.clock.fill
  static const IconData sf_person_crop_circle_badge_clock_fill =
      IconData(0x101155);

  /// IconData for SF Symbol person.crop.circle.badge.exclamationmark
  static const IconData sf_person_crop_circle_badge_exclamationmark =
      IconData(0x100277);

  /// IconData for SF Symbol person.crop.circle.badge.exclamationmark.fill
  static const IconData sf_person_crop_circle_badge_exclamationmark_fill =
      IconData(0x100278);

  /// IconData for SF Symbol person.crop.circle.badge.fill
  static const IconData sf_person_crop_circle_badge_fill = IconData(0x10109C);

  /// IconData for SF Symbol person.crop.circle.badge.minus
  static const IconData sf_person_crop_circle_badge_minus = IconData(0x100271);

  /// IconData for SF Symbol person.crop.circle.badge.moon
  static const IconData sf_person_crop_circle_badge_moon = IconData(0x1010C8);

  /// IconData for SF Symbol person.crop.circle.badge.moon.fill
  static const IconData sf_person_crop_circle_badge_moon_fill =
      IconData(0x1010C9);

  /// IconData for SF Symbol person.crop.circle.badge.plus
  static const IconData sf_person_crop_circle_badge_plus = IconData(0x10026F);

  /// IconData for SF Symbol person.crop.circle.badge.questionmark
  static const IconData sf_person_crop_circle_badge_questionmark =
      IconData(0x100B7D);

  /// IconData for SF Symbol person.crop.circle.badge.questionmark.fill
  static const IconData sf_person_crop_circle_badge_questionmark_fill =
      IconData(0x100B7E);

  /// IconData for SF Symbol person.crop.circle.badge.xmark
  static const IconData sf_person_crop_circle_badge_xmark = IconData(0x100275);

  /// IconData for SF Symbol person.crop.circle.dashed
  static const IconData sf_person_crop_circle_dashed = IconData(0x1017AE);

  /// IconData for SF Symbol person.crop.circle.dashed.circle
  static const IconData sf_person_crop_circle_dashed_circle =
      IconData(0x10216A);

  /// IconData for SF Symbol person.crop.circle.dashed.circle.fill
  static const IconData sf_person_crop_circle_dashed_circle_fill =
      IconData(0x1020FF);

  /// IconData for SF Symbol person.crop.circle.fill
  static const IconData sf_person_crop_circle_fill = IconData(0x10026E);

  /// IconData for SF Symbol person.crop.circle.fill.badge.checkmark
  static const IconData sf_person_crop_circle_fill_badge_checkmark =
      IconData(0x100274);

  /// IconData for SF Symbol person.crop.circle.fill.badge.minus
  static const IconData sf_person_crop_circle_fill_badge_minus =
      IconData(0x100272);

  /// IconData for SF Symbol person.crop.circle.fill.badge.plus
  static const IconData sf_person_crop_circle_fill_badge_plus =
      IconData(0x100270);

  /// IconData for SF Symbol person.crop.circle.fill.badge.xmark
  static const IconData sf_person_crop_circle_fill_badge_xmark =
      IconData(0x100276);

  /// IconData for SF Symbol person.crop.rectangle
  static const IconData sf_person_crop_rectangle = IconData(0x1003CF);

  /// IconData for SF Symbol person.crop.rectangle.badge.plus
  static const IconData sf_person_crop_rectangle_badge_plus =
      IconData(0x10159A);

  /// IconData for SF Symbol person.crop.rectangle.badge.plus.fill
  static const IconData sf_person_crop_rectangle_badge_plus_fill =
      IconData(0x10159B);

  /// IconData for SF Symbol person.crop.rectangle.fill
  static const IconData sf_person_crop_rectangle_fill = IconData(0x1003D0);

  /// IconData for SF Symbol person.crop.rectangle.stack
  static const IconData sf_person_crop_rectangle_stack = IconData(0x1003FB);

  /// IconData for SF Symbol person.crop.rectangle.stack.fill
  static const IconData sf_person_crop_rectangle_stack_fill =
      IconData(0x1003FC);

  /// IconData for SF Symbol person.crop.square
  static const IconData sf_person_crop_square = IconData(0x100279);

  /// IconData for SF Symbol person.crop.square.badge.camera
  static const IconData sf_person_crop_square_badge_camera = IconData(0x10225A);

  /// IconData for SF Symbol person.crop.square.badge.camera.fill
  static const IconData sf_person_crop_square_badge_camera_fill =
      IconData(0x10225B);

  /// IconData for SF Symbol person.crop.square.badge.video
  static const IconData sf_person_crop_square_badge_video = IconData(0x10225C);

  /// IconData for SF Symbol person.crop.square.badge.video.fill
  static const IconData sf_person_crop_square_badge_video_fill =
      IconData(0x10225D);

  /// IconData for SF Symbol person.crop.square.fill
  static const IconData sf_person_crop_square_fill = IconData(0x10027A);

  /// IconData for SF Symbol person.crop.square.filled.and.at.rectangle
  static const IconData sf_person_crop_square_filled_and_at_rectangle =
      IconData(0x10098E);

  /// IconData for SF Symbol person.crop.square.filled.and.at.rectangle.fill
  static const IconData sf_person_crop_square_filled_and_at_rectangle_fill =
      IconData(0x100FD0);

  /// IconData for SF Symbol person.fill
  static const IconData sf_person_fill = IconData(0x10026A);

  /// IconData for SF Symbol person.fill.and.arrow.left.and.arrow.right
  static const IconData sf_person_fill_and_arrow_left_and_arrow_right =
      IconData(0x100ABD);

  /// IconData for SF Symbol person.fill.badge.minus
  static const IconData sf_person_fill_badge_minus = IconData(0x100718);

  /// IconData for SF Symbol person.fill.badge.plus
  static const IconData sf_person_fill_badge_plus = IconData(0x100716);

  /// IconData for SF Symbol person.fill.checkmark
  static const IconData sf_person_fill_checkmark = IconData(0x100BE7);

  /// IconData for SF Symbol person.fill.questionmark
  static const IconData sf_person_fill_questionmark = IconData(0x100BE9);

  /// IconData for SF Symbol person.fill.turn.down
  static const IconData sf_person_fill_turn_down = IconData(0x100BD2);

  /// IconData for SF Symbol person.fill.turn.left
  static const IconData sf_person_fill_turn_left = IconData(0x100BD3);

  /// IconData for SF Symbol person.fill.turn.right
  static const IconData sf_person_fill_turn_right = IconData(0x100BD1);

  /// IconData for SF Symbol person.fill.viewfinder
  static const IconData sf_person_fill_viewfinder = IconData(0x100C8F);

  /// IconData for SF Symbol person.fill.xmark
  static const IconData sf_person_fill_xmark = IconData(0x100BE8);

  /// IconData for SF Symbol person.icloud
  static const IconData sf_person_icloud = IconData(0x100673);

  /// IconData for SF Symbol person.icloud.fill
  static const IconData sf_person_icloud_fill = IconData(0x100674);

  /// IconData for SF Symbol person.line.dotted.person
  static const IconData sf_person_line_dotted_person = IconData(0x101483);

  /// IconData for SF Symbol person.line.dotted.person.fill
  static const IconData sf_person_line_dotted_person_fill = IconData(0x101484);

  /// IconData for SF Symbol person.slash
  static const IconData sf_person_slash = IconData(0x1018D4);

  /// IconData for SF Symbol person.slash.fill
  static const IconData sf_person_slash_fill = IconData(0x1018D5);

  /// IconData for SF Symbol person.text.rectangle
  static const IconData sf_person_text_rectangle = IconData(0x100FD2);

  /// IconData for SF Symbol person.text.rectangle.fill
  static const IconData sf_person_text_rectangle_fill = IconData(0x100FD3);

  /// IconData for SF Symbol person.wave.2
  static const IconData sf_person_wave_2 = IconData(0x101147);

  /// IconData for SF Symbol person.wave.2.fill
  static const IconData sf_person_wave_2_fill = IconData(0x101148);

  /// IconData for SF Symbol personalhotspot
  static const IconData sf_personalhotspot = IconData(0x100264);

  /// IconData for SF Symbol personalhotspot.circle
  static const IconData sf_personalhotspot_circle = IconData(0x101228);

  /// IconData for SF Symbol personalhotspot.circle.fill
  static const IconData sf_personalhotspot_circle_fill = IconData(0x101229);

  /// IconData for SF Symbol perspective
  static const IconData sf_perspective = IconData(0x1004B1);

  /// IconData for SF Symbol pesetasign
  static const IconData sf_pesetasign = IconData(0x10144B);

  /// IconData for SF Symbol pesetasign.arrow.circlepath
  static const IconData sf_pesetasign_arrow_circlepath = IconData(0x10221E);

  /// IconData for SF Symbol pesetasign.circle
  static const IconData sf_pesetasign_circle = IconData(0x1005AF);

  /// IconData for SF Symbol pesetasign.circle.fill
  static const IconData sf_pesetasign_circle_fill = IconData(0x1005B0);

  /// IconData for SF Symbol pesetasign.square
  static const IconData sf_pesetasign_square = IconData(0x1005EF);

  /// IconData for SF Symbol pesetasign.square.fill
  static const IconData sf_pesetasign_square_fill = IconData(0x1005F0);

  /// IconData for SF Symbol pesosign
  static const IconData sf_pesosign = IconData(0x10144C);

  /// IconData for SF Symbol pesosign.arrow.circlepath
  static const IconData sf_pesosign_arrow_circlepath = IconData(0x10221F);

  /// IconData for SF Symbol pesosign.circle
  static const IconData sf_pesosign_circle = IconData(0x1005B1);

  /// IconData for SF Symbol pesosign.circle.fill
  static const IconData sf_pesosign_circle_fill = IconData(0x1005B2);

  /// IconData for SF Symbol pesosign.square
  static const IconData sf_pesosign_square = IconData(0x1005F1);

  /// IconData for SF Symbol pesosign.square.fill
  static const IconData sf_pesosign_square_fill = IconData(0x1005F2);

  /// IconData for SF Symbol phone
  static const IconData sf_phone = IconData(0x10033E);

  /// IconData for SF Symbol phone.arrow.down.left
  static const IconData sf_phone_arrow_down_left = IconData(0x100342);

  /// IconData for SF Symbol phone.arrow.down.left.fill
  static const IconData sf_phone_arrow_down_left_fill = IconData(0x100343);

  /// IconData for SF Symbol phone.arrow.right
  static const IconData sf_phone_arrow_right = IconData(0x100344);

  /// IconData for SF Symbol phone.arrow.right.fill
  static const IconData sf_phone_arrow_right_fill = IconData(0x100345);

  /// IconData for SF Symbol phone.arrow.up.right
  static const IconData sf_phone_arrow_up_right = IconData(0x100340);

  /// IconData for SF Symbol phone.arrow.up.right.circle
  static const IconData sf_phone_arrow_up_right_circle = IconData(0x1013FD);

  /// IconData for SF Symbol phone.arrow.up.right.circle.fill
  static const IconData sf_phone_arrow_up_right_circle_fill =
      IconData(0x1013FE);

  /// IconData for SF Symbol phone.arrow.up.right.fill
  static const IconData sf_phone_arrow_up_right_fill = IconData(0x100341);

  /// IconData for SF Symbol phone.badge.checkmark
  static const IconData sf_phone_badge_checkmark = IconData(0x101657);

  /// IconData for SF Symbol phone.badge.plus
  static const IconData sf_phone_badge_plus = IconData(0x10058E);

  /// IconData for SF Symbol phone.badge.waveform
  static const IconData sf_phone_badge_waveform = IconData(0x100F03);

  /// IconData for SF Symbol phone.badge.waveform.fill
  static const IconData sf_phone_badge_waveform_fill = IconData(0x100F04);

  /// IconData for SF Symbol phone.bubble
  static const IconData sf_phone_bubble = IconData(0x100C6E);

  /// IconData for SF Symbol phone.bubble.fill
  static const IconData sf_phone_bubble_fill = IconData(0x100C6F);

  /// IconData for SF Symbol phone.circle
  static const IconData sf_phone_circle = IconData(0x1004A5);

  /// IconData for SF Symbol phone.circle.fill
  static const IconData sf_phone_circle_fill = IconData(0x1004A6);

  /// IconData for SF Symbol phone.connection
  static const IconData sf_phone_connection = IconData(0x100B1B);

  /// IconData for SF Symbol phone.connection.fill
  static const IconData sf_phone_connection_fill = IconData(0x100B1C);

  /// IconData for SF Symbol phone.down
  static const IconData sf_phone_down = IconData(0x100346);

  /// IconData for SF Symbol phone.down.circle
  static const IconData sf_phone_down_circle = IconData(0x1004A7);

  /// IconData for SF Symbol phone.down.circle.fill
  static const IconData sf_phone_down_circle_fill = IconData(0x1004A8);

  /// IconData for SF Symbol phone.down.fill
  static const IconData sf_phone_down_fill = IconData(0x100347);

  /// IconData for SF Symbol phone.down.waves.left.and.right
  static const IconData sf_phone_down_waves_left_and_right = IconData(0x101085);

  /// IconData for SF Symbol phone.fill
  static const IconData sf_phone_fill = IconData(0x10033F);

  /// IconData for SF Symbol phone.fill.badge.checkmark
  static const IconData sf_phone_fill_badge_checkmark = IconData(0x101658);

  /// IconData for SF Symbol phone.fill.badge.plus
  static const IconData sf_phone_fill_badge_plus = IconData(0x10058F);

  /// IconData for SF Symbol photo
  static const IconData sf_photo = IconData(0x1003C5);

  /// IconData for SF Symbol photo.artframe
  static const IconData sf_photo_artframe = IconData(0x101036);

  /// IconData for SF Symbol photo.artframe.circle
  static const IconData sf_photo_artframe_circle = IconData(0x101F27);

  /// IconData for SF Symbol photo.artframe.circle.fill
  static const IconData sf_photo_artframe_circle_fill = IconData(0x101F28);

  /// IconData for SF Symbol photo.badge.arrow.down
  static const IconData sf_photo_badge_arrow_down = IconData(0x1010F2);

  /// IconData for SF Symbol photo.badge.arrow.down.fill
  static const IconData sf_photo_badge_arrow_down_fill = IconData(0x1010F3);

  /// IconData for SF Symbol photo.badge.checkmark
  static const IconData sf_photo_badge_checkmark = IconData(0x101639);

  /// IconData for SF Symbol photo.badge.checkmark.fill
  static const IconData sf_photo_badge_checkmark_fill = IconData(0x10163A);

  /// IconData for SF Symbol photo.badge.plus
  static const IconData sf_photo_badge_plus = IconData(0x1010CF);

  /// IconData for SF Symbol photo.badge.plus.fill
  static const IconData sf_photo_badge_plus_fill = IconData(0x1010D0);

  /// IconData for SF Symbol photo.circle
  static const IconData sf_photo_circle = IconData(0x1010AE);

  /// IconData for SF Symbol photo.circle.fill
  static const IconData sf_photo_circle_fill = IconData(0x1010AF);

  /// IconData for SF Symbol photo.fill
  static const IconData sf_photo_fill = IconData(0x1003C6);

  /// IconData for SF Symbol photo.fill.on.rectangle.fill
  static const IconData sf_photo_fill_on_rectangle_fill = IconData(0x1003EC);

  /// IconData for SF Symbol photo.on.rectangle
  static const IconData sf_photo_on_rectangle = IconData(0x1003EB);

  /// IconData for SF Symbol photo.on.rectangle.angled
  static const IconData sf_photo_on_rectangle_angled = IconData(0x1008F5);

  /// IconData for SF Symbol photo.stack
  static const IconData sf_photo_stack = IconData(0x1003EF);

  /// IconData for SF Symbol photo.stack.fill
  static const IconData sf_photo_stack_fill = IconData(0x1003F0);

  /// IconData for SF Symbol photo.tv
  static const IconData sf_photo_tv = IconData(0x100D6A);

  /// IconData for SF Symbol pianokeys
  static const IconData sf_pianokeys = IconData(0x10038F);

  /// IconData for SF Symbol pianokeys.inverse
  static const IconData sf_pianokeys_inverse = IconData(0x1007FD);

  /// IconData for SF Symbol pill
  static const IconData sf_pill = IconData(0x1016AD);

  /// IconData for SF Symbol pill.circle
  static const IconData sf_pill_circle = IconData(0x1016AF);

  /// IconData for SF Symbol pill.circle.fill
  static const IconData sf_pill_circle_fill = IconData(0x1016B0);

  /// IconData for SF Symbol pill.fill
  static const IconData sf_pill_fill = IconData(0x1016AE);

  /// IconData for SF Symbol pills
  static const IconData sf_pills = IconData(0x100831);

  /// IconData for SF Symbol pills.circle
  static const IconData sf_pills_circle = IconData(0x1011C2);

  /// IconData for SF Symbol pills.circle.fill
  static const IconData sf_pills_circle_fill = IconData(0x1011C3);

  /// IconData for SF Symbol pills.fill
  static const IconData sf_pills_fill = IconData(0x100832);

  /// IconData for SF Symbol pin
  static const IconData sf_pin = IconData(0x1003A6);

  /// IconData for SF Symbol pin.circle
  static const IconData sf_pin_circle = IconData(0x1004B4);

  /// IconData for SF Symbol pin.circle.fill
  static const IconData sf_pin_circle_fill = IconData(0x1004B5);

  /// IconData for SF Symbol pin.fill
  static const IconData sf_pin_fill = IconData(0x1003A7);

  /// IconData for SF Symbol pin.slash
  static const IconData sf_pin_slash = IconData(0x1003A8);

  /// IconData for SF Symbol pin.slash.fill
  static const IconData sf_pin_slash_fill = IconData(0x1003A9);

  /// IconData for SF Symbol pin.square
  static const IconData sf_pin_square = IconData(0x100F4B);

  /// IconData for SF Symbol pin.square.fill
  static const IconData sf_pin_square_fill = IconData(0x100F4C);

  /// IconData for SF Symbol pip
  static const IconData sf_pip = IconData(0x100833);

  /// IconData for SF Symbol pip.enter
  static const IconData sf_pip_enter = IconData(0x100468);

  /// IconData for SF Symbol pip.exit
  static const IconData sf_pip_exit = IconData(0x100467);

  /// IconData for SF Symbol pip.fill
  static const IconData sf_pip_fill = IconData(0x100834);

  /// IconData for SF Symbol pip.remove
  static const IconData sf_pip_remove = IconData(0x100B72);

  /// IconData for SF Symbol pip.swap
  static const IconData sf_pip_swap = IconData(0x100B71);

  /// IconData for SF Symbol pipe.and.drop
  static const IconData sf_pipe_and_drop = IconData(0x1014DD);

  /// IconData for SF Symbol pipe.and.drop.fill
  static const IconData sf_pipe_and_drop_fill = IconData(0x1014DE);

  /// IconData for SF Symbol placeholdertext.fill
  static const IconData sf_placeholdertext_fill = IconData(0x100BB7);

  /// IconData for SF Symbol platter.2.filled.ipad
  static const IconData sf_platter_2_filled_ipad = IconData(0x10104D);

  /// IconData for SF Symbol platter.2.filled.ipad.landscape
  static const IconData sf_platter_2_filled_ipad_landscape = IconData(0x10104E);

  /// IconData for SF Symbol platter.2.filled.iphone
  static const IconData sf_platter_2_filled_iphone = IconData(0x100FA9);

  /// IconData for SF Symbol platter.2.filled.iphone.landscape
  static const IconData sf_platter_2_filled_iphone_landscape =
      IconData(0x100FAA);

  /// IconData for SF Symbol platter.bottom.applewatch.case
  static const IconData sf_platter_bottom_applewatch_case = IconData(0x1010C7);

  /// IconData for SF Symbol platter.filled.bottom.and.arrow.down.iphone
  static const IconData sf_platter_filled_bottom_and_arrow_down_iphone =
      IconData(0x1012C2);

  /// IconData for SF Symbol platter.filled.bottom.applewatch.case
  static const IconData sf_platter_filled_bottom_applewatch_case =
      IconData(0x1010C5);

  /// IconData for SF Symbol platter.filled.bottom.iphone
  static const IconData sf_platter_filled_bottom_iphone = IconData(0x1012C0);

  /// IconData for SF Symbol platter.filled.top.and.arrow.up.iphone
  static const IconData sf_platter_filled_top_and_arrow_up_iphone =
      IconData(0x1012C1);

  /// IconData for SF Symbol platter.filled.top.applewatch.case
  static const IconData sf_platter_filled_top_applewatch_case =
      IconData(0x1010C4);

  /// IconData for SF Symbol platter.filled.top.iphone
  static const IconData sf_platter_filled_top_iphone = IconData(0x1012BF);

  /// IconData for SF Symbol platter.top.applewatch.case
  static const IconData sf_platter_top_applewatch_case = IconData(0x1010C6);

  /// IconData for SF Symbol play
  static const IconData sf_play = IconData(0x100283);

  /// IconData for SF Symbol play.circle
  static const IconData sf_play_circle = IconData(0x100295);

  /// IconData for SF Symbol play.circle.fill
  static const IconData sf_play_circle_fill = IconData(0x100296);

  /// IconData for SF Symbol play.desktopcomputer
  static const IconData sf_play_desktopcomputer = IconData(0x1013F3);

  /// IconData for SF Symbol play.display
  static const IconData sf_play_display = IconData(0x1013F4);

  /// IconData for SF Symbol play.fill
  static const IconData sf_play_fill = IconData(0x100284);

  /// IconData for SF Symbol play.house
  static const IconData sf_play_house = IconData(0x101E59);

  /// IconData for SF Symbol play.house.fill
  static const IconData sf_play_house_fill = IconData(0x101E5A);

  /// IconData for SF Symbol play.laptopcomputer
  static const IconData sf_play_laptopcomputer = IconData(0x1013F5);

  /// IconData for SF Symbol play.rectangle
  static const IconData sf_play_rectangle = IconData(0x100299);

  /// IconData for SF Symbol play.rectangle.fill
  static const IconData sf_play_rectangle_fill = IconData(0x10029A);

  /// IconData for SF Symbol play.rectangle.on.rectangle
  static const IconData sf_play_rectangle_on_rectangle = IconData(0x100FAC);

  /// IconData for SF Symbol play.rectangle.on.rectangle.circle
  static const IconData sf_play_rectangle_on_rectangle_circle =
      IconData(0x1010C0);

  /// IconData for SF Symbol play.rectangle.on.rectangle.circle.fill
  static const IconData sf_play_rectangle_on_rectangle_circle_fill =
      IconData(0x1010C1);

  /// IconData for SF Symbol play.rectangle.on.rectangle.fill
  static const IconData sf_play_rectangle_on_rectangle_fill =
      IconData(0x100FAD);

  /// IconData for SF Symbol play.slash
  static const IconData sf_play_slash = IconData(0x100A85);

  /// IconData for SF Symbol play.slash.fill
  static const IconData sf_play_slash_fill = IconData(0x100A86);

  /// IconData for SF Symbol play.square
  static const IconData sf_play_square = IconData(0x100F4D);

  /// IconData for SF Symbol play.square.fill
  static const IconData sf_play_square_fill = IconData(0x100F4E);

  /// IconData for SF Symbol play.square.stack
  static const IconData sf_play_square_stack = IconData(0x1017FC);

  /// IconData for SF Symbol play.square.stack.fill
  static const IconData sf_play_square_stack_fill = IconData(0x1017FD);

  /// IconData for SF Symbol play.tv
  static const IconData sf_play_tv = IconData(0x100D68);

  /// IconData for SF Symbol play.tv.fill
  static const IconData sf_play_tv_fill = IconData(0x100D69);

  /// IconData for SF Symbol playpause
  static const IconData sf_playpause = IconData(0x100287);

  /// IconData for SF Symbol playpause.circle
  static const IconData sf_playpause_circle = IconData(0x10169E);

  /// IconData for SF Symbol playpause.circle.fill
  static const IconData sf_playpause_circle_fill = IconData(0x10169F);

  /// IconData for SF Symbol playpause.fill
  static const IconData sf_playpause_fill = IconData(0x100288);

  /// IconData for SF Symbol playstation.logo
  static const IconData sf_playstation_logo = IconData(0x100F88);

  /// IconData for SF Symbol plus
  static const IconData sf_plus = IconData(0x10017C);

  /// IconData for SF Symbol plus.app
  static const IconData sf_plus_app = IconData(0x10044D);

  /// IconData for SF Symbol plus.app.fill
  static const IconData sf_plus_app_fill = IconData(0x10044E);

  /// IconData for SF Symbol plus.bubble
  static const IconData sf_plus_bubble = IconData(0x100336);

  /// IconData for SF Symbol plus.bubble.fill
  static const IconData sf_plus_bubble_fill = IconData(0x100337);

  /// IconData for SF Symbol plus.circle
  static const IconData sf_plus_circle = IconData(0x10004C);

  /// IconData for SF Symbol plus.circle.fill
  static const IconData sf_plus_circle_fill = IconData(0x10004D);

  /// IconData for SF Symbol plus.diamond
  static const IconData sf_plus_diamond = IconData(0x10087F);

  /// IconData for SF Symbol plus.diamond.fill
  static const IconData sf_plus_diamond_fill = IconData(0x100880);

  /// IconData for SF Symbol plus.forwardslash.minus
  static const IconData sf_plus_forwardslash_minus = IconData(0x10017A);

  /// IconData for SF Symbol plus.magnifyingglass
  static const IconData sf_plus_magnifyingglass = IconData(0x1002AC);

  /// IconData for SF Symbol plus.message
  static const IconData sf_plus_message = IconData(0x100859);

  /// IconData for SF Symbol plus.message.fill
  static const IconData sf_plus_message_fill = IconData(0x10085A);

  /// IconData for SF Symbol plus.rectangle
  static const IconData sf_plus_rectangle = IconData(0x1003C7);

  /// IconData for SF Symbol plus.rectangle.fill
  static const IconData sf_plus_rectangle_fill = IconData(0x1003C8);

  /// IconData for SF Symbol plus.rectangle.fill.on.rectangle.fill
  static const IconData sf_plus_rectangle_fill_on_rectangle_fill =
      IconData(0x1003EA);

  /// IconData for SF Symbol plus.rectangle.on.folder
  static const IconData sf_plus_rectangle_on_folder = IconData(0x100930);

  /// IconData for SF Symbol plus.rectangle.on.folder.fill
  static const IconData sf_plus_rectangle_on_folder_fill = IconData(0x100931);

  /// IconData for SF Symbol plus.rectangle.on.rectangle
  static const IconData sf_plus_rectangle_on_rectangle = IconData(0x1003E9);

  /// IconData for SF Symbol plus.rectangle.portrait
  static const IconData sf_plus_rectangle_portrait = IconData(0x10086A);

  /// IconData for SF Symbol plus.rectangle.portrait.fill
  static const IconData sf_plus_rectangle_portrait_fill = IconData(0x10086B);

  /// IconData for SF Symbol plus.square
  static const IconData sf_plus_square = IconData(0x1000DC);

  /// IconData for SF Symbol plus.square.dashed
  static const IconData sf_plus_square_dashed = IconData(0x100D25);

  /// IconData for SF Symbol plus.square.fill
  static const IconData sf_plus_square_fill = IconData(0x1000DD);

  /// IconData for SF Symbol plus.square.fill.on.square.fill
  static const IconData sf_plus_square_fill_on_square_fill = IconData(0x100408);

  /// IconData for SF Symbol plus.square.on.square
  static const IconData sf_plus_square_on_square = IconData(0x100407);

  /// IconData for SF Symbol plus.viewfinder
  static const IconData sf_plus_viewfinder = IconData(0x100944);

  /// IconData for SF Symbol plusminus
  static const IconData sf_plusminus = IconData(0x1006FA);

  /// IconData for SF Symbol plusminus.circle
  static const IconData sf_plusminus_circle = IconData(0x100376);

  /// IconData for SF Symbol plusminus.circle.fill
  static const IconData sf_plusminus_circle_fill = IconData(0x10061D);

  /// IconData for SF Symbol point.3.connected.trianglepath.dotted
  static const IconData sf_point_3_connected_trianglepath_dotted =
      IconData(0x1011AC);

  /// IconData for SF Symbol point.3.filled.connected.trianglepath.dotted
  static const IconData sf_point_3_filled_connected_trianglepath_dotted =
      IconData(0x101165);

  /// IconData for SF Symbol point.bottomleft.filled.forward.to.point.topright.scurvepath
  static const IconData
      sf_point_bottomleft_filled_forward_to_point_topright_scurvepath =
      IconData(0x101EF6);

  /// IconData for SF Symbol point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_arrowtriangle_uturn_scurvepath =
      IconData(0x101EF7);

  /// IconData for SF Symbol point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill
  static const IconData
      sf_point_bottomleft_forward_to_arrowtriangle_uturn_scurvepath_fill =
      IconData(0x101E39);

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.filled.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_filled_scurvepath =
      IconData(0x101EF5);

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_scurvepath =
      IconData(0x101EF4);

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.scurvepath.fill
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_scurvepath_fill =
      IconData(0x101E38);

  /// IconData for SF Symbol point.forward.to.point.capsulepath
  static const IconData sf_point_forward_to_point_capsulepath =
      IconData(0x101EF8);

  /// IconData for SF Symbol point.forward.to.point.capsulepath.fill
  static const IconData sf_point_forward_to_point_capsulepath_fill =
      IconData(0x101E3A);

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.curvepath
  static const IconData sf_point_topleft_down_to_point_bottomright_curvepath =
      IconData(0x1008F1);

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.curvepath.fill
  static const IconData
      sf_point_topleft_down_to_point_bottomright_curvepath_fill =
      IconData(0x100B31);

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.filled.curvepath
  static const IconData
      sf_point_topleft_down_to_point_bottomright_filled_curvepath =
      IconData(0x100F94);

  /// IconData for SF Symbol point.topleft.filled.down.to.point.bottomright.curvepath
  static const IconData
      sf_point_topleft_filled_down_to_point_bottomright_curvepath =
      IconData(0x100F95);

  /// IconData for SF Symbol polishzlotysign
  static const IconData sf_polishzlotysign = IconData(0x10192F);

  /// IconData for SF Symbol polishzlotysign.arrow.circlepath
  static const IconData sf_polishzlotysign_arrow_circlepath =
      IconData(0x102234);

  /// IconData for SF Symbol polishzlotysign.circle
  static const IconData sf_polishzlotysign_circle = IconData(0x101930);

  /// IconData for SF Symbol polishzlotysign.circle.fill
  static const IconData sf_polishzlotysign_circle_fill = IconData(0x101931);

  /// IconData for SF Symbol polishzlotysign.square
  static const IconData sf_polishzlotysign_square = IconData(0x101932);

  /// IconData for SF Symbol polishzlotysign.square.fill
  static const IconData sf_polishzlotysign_square_fill = IconData(0x101933);

  /// IconData for SF Symbol popcorn
  static const IconData sf_popcorn = IconData(0x101407);

  /// IconData for SF Symbol popcorn.circle
  static const IconData sf_popcorn_circle = IconData(0x1016B1);

  /// IconData for SF Symbol popcorn.circle.fill
  static const IconData sf_popcorn_circle_fill = IconData(0x1016B2);

  /// IconData for SF Symbol popcorn.fill
  static const IconData sf_popcorn_fill = IconData(0x101408);

  /// IconData for SF Symbol power
  static const IconData sf_power = IconData(0x1001A8);

  /// IconData for SF Symbol power.circle
  static const IconData sf_power_circle = IconData(0x100DC3);

  /// IconData for SF Symbol power.circle.fill
  static const IconData sf_power_circle_fill = IconData(0x100DC4);

  /// IconData for SF Symbol power.dotted
  static const IconData sf_power_dotted = IconData(0x1001A9);

  /// IconData for SF Symbol powercord
  static const IconData sf_powercord = IconData(0x1018F7);

  /// IconData for SF Symbol powercord.fill
  static const IconData sf_powercord_fill = IconData(0x1018F8);

  /// IconData for SF Symbol poweroff
  static const IconData sf_poweroff = IconData(0x100965);

  /// IconData for SF Symbol poweron
  static const IconData sf_poweron = IconData(0x100964);

  /// IconData for SF Symbol poweroutlet.strip
  static const IconData sf_poweroutlet_strip = IconData(0x101332);

  /// IconData for SF Symbol poweroutlet.strip.fill
  static const IconData sf_poweroutlet_strip_fill = IconData(0x1014DC);

  /// IconData for SF Symbol poweroutlet.type.a
  static const IconData sf_poweroutlet_type_a = IconData(0x10133D);

  /// IconData for SF Symbol poweroutlet.type.a.fill
  static const IconData sf_poweroutlet_type_a_fill = IconData(0x101340);

  /// IconData for SF Symbol poweroutlet.type.a.square
  static const IconData sf_poweroutlet_type_a_square = IconData(0x100F64);

  /// IconData for SF Symbol poweroutlet.type.a.square.fill
  static const IconData sf_poweroutlet_type_a_square_fill = IconData(0x101329);

  /// IconData for SF Symbol poweroutlet.type.b
  static const IconData sf_poweroutlet_type_b = IconData(0x10133E);

  /// IconData for SF Symbol poweroutlet.type.b.fill
  static const IconData sf_poweroutlet_type_b_fill = IconData(0x101341);

  /// IconData for SF Symbol poweroutlet.type.b.square
  static const IconData sf_poweroutlet_type_b_square = IconData(0x100F65);

  /// IconData for SF Symbol poweroutlet.type.b.square.fill
  static const IconData sf_poweroutlet_type_b_square_fill = IconData(0x10133C);

  /// IconData for SF Symbol poweroutlet.type.c
  static const IconData sf_poweroutlet_type_c = IconData(0x101346);

  /// IconData for SF Symbol poweroutlet.type.c.fill
  static const IconData sf_poweroutlet_type_c_fill = IconData(0x101347);

  /// IconData for SF Symbol poweroutlet.type.c.square
  static const IconData sf_poweroutlet_type_c_square = IconData(0x100F66);

  /// IconData for SF Symbol poweroutlet.type.c.square.fill
  static const IconData sf_poweroutlet_type_c_square_fill = IconData(0x10132B);

  /// IconData for SF Symbol poweroutlet.type.d
  static const IconData sf_poweroutlet_type_d = IconData(0x101348);

  /// IconData for SF Symbol poweroutlet.type.d.fill
  static const IconData sf_poweroutlet_type_d_fill = IconData(0x101349);

  /// IconData for SF Symbol poweroutlet.type.d.square
  static const IconData sf_poweroutlet_type_d_square = IconData(0x100F67);

  /// IconData for SF Symbol poweroutlet.type.d.square.fill
  static const IconData sf_poweroutlet_type_d_square_fill = IconData(0x10134A);

  /// IconData for SF Symbol poweroutlet.type.e
  static const IconData sf_poweroutlet_type_e = IconData(0x10134B);

  /// IconData for SF Symbol poweroutlet.type.e.fill
  static const IconData sf_poweroutlet_type_e_fill = IconData(0x10134C);

  /// IconData for SF Symbol poweroutlet.type.e.square
  static const IconData sf_poweroutlet_type_e_square = IconData(0x100F68);

  /// IconData for SF Symbol poweroutlet.type.e.square.fill
  static const IconData sf_poweroutlet_type_e_square_fill = IconData(0x10134D);

  /// IconData for SF Symbol poweroutlet.type.f
  static const IconData sf_poweroutlet_type_f = IconData(0x10134E);

  /// IconData for SF Symbol poweroutlet.type.f.fill
  static const IconData sf_poweroutlet_type_f_fill = IconData(0x10134F);

  /// IconData for SF Symbol poweroutlet.type.f.square
  static const IconData sf_poweroutlet_type_f_square = IconData(0x100F69);

  /// IconData for SF Symbol poweroutlet.type.f.square.fill
  static const IconData sf_poweroutlet_type_f_square_fill = IconData(0x101350);

  /// IconData for SF Symbol poweroutlet.type.g
  static const IconData sf_poweroutlet_type_g = IconData(0x101351);

  /// IconData for SF Symbol poweroutlet.type.g.fill
  static const IconData sf_poweroutlet_type_g_fill = IconData(0x101352);

  /// IconData for SF Symbol poweroutlet.type.g.square
  static const IconData sf_poweroutlet_type_g_square = IconData(0x100F6A);

  /// IconData for SF Symbol poweroutlet.type.g.square.fill
  static const IconData sf_poweroutlet_type_g_square_fill = IconData(0x10132F);

  /// IconData for SF Symbol poweroutlet.type.h
  static const IconData sf_poweroutlet_type_h = IconData(0x101353);

  /// IconData for SF Symbol poweroutlet.type.h.fill
  static const IconData sf_poweroutlet_type_h_fill = IconData(0x101354);

  /// IconData for SF Symbol poweroutlet.type.h.square
  static const IconData sf_poweroutlet_type_h_square = IconData(0x100F6B);

  /// IconData for SF Symbol poweroutlet.type.h.square.fill
  static const IconData sf_poweroutlet_type_h_square_fill = IconData(0x101355);

  /// IconData for SF Symbol poweroutlet.type.i
  static const IconData sf_poweroutlet_type_i = IconData(0x101356);

  /// IconData for SF Symbol poweroutlet.type.i.fill
  static const IconData sf_poweroutlet_type_i_fill = IconData(0x101357);

  /// IconData for SF Symbol poweroutlet.type.i.square
  static const IconData sf_poweroutlet_type_i_square = IconData(0x100F6C);

  /// IconData for SF Symbol poweroutlet.type.i.square.fill
  static const IconData sf_poweroutlet_type_i_square_fill = IconData(0x101358);

  /// IconData for SF Symbol poweroutlet.type.j
  static const IconData sf_poweroutlet_type_j = IconData(0x101359);

  /// IconData for SF Symbol poweroutlet.type.j.fill
  static const IconData sf_poweroutlet_type_j_fill = IconData(0x10135A);

  /// IconData for SF Symbol poweroutlet.type.j.square
  static const IconData sf_poweroutlet_type_j_square = IconData(0x100F6D);

  /// IconData for SF Symbol poweroutlet.type.j.square.fill
  static const IconData sf_poweroutlet_type_j_square_fill = IconData(0x101331);

  /// IconData for SF Symbol poweroutlet.type.k
  static const IconData sf_poweroutlet_type_k = IconData(0x10135B);

  /// IconData for SF Symbol poweroutlet.type.k.fill
  static const IconData sf_poweroutlet_type_k_fill = IconData(0x10135C);

  /// IconData for SF Symbol poweroutlet.type.k.square
  static const IconData sf_poweroutlet_type_k_square = IconData(0x100F6E);

  /// IconData for SF Symbol poweroutlet.type.k.square.fill
  static const IconData sf_poweroutlet_type_k_square_fill = IconData(0x10132E);

  /// IconData for SF Symbol poweroutlet.type.l
  static const IconData sf_poweroutlet_type_l = IconData(0x10135D);

  /// IconData for SF Symbol poweroutlet.type.l.fill
  static const IconData sf_poweroutlet_type_l_fill = IconData(0x10135E);

  /// IconData for SF Symbol poweroutlet.type.l.square
  static const IconData sf_poweroutlet_type_l_square = IconData(0x100F6F);

  /// IconData for SF Symbol poweroutlet.type.l.square.fill
  static const IconData sf_poweroutlet_type_l_square_fill = IconData(0x10135F);

  /// IconData for SF Symbol poweroutlet.type.m
  static const IconData sf_poweroutlet_type_m = IconData(0x10132A);

  /// IconData for SF Symbol poweroutlet.type.m.fill
  static const IconData sf_poweroutlet_type_m_fill = IconData(0x10132C);

  /// IconData for SF Symbol poweroutlet.type.m.square
  static const IconData sf_poweroutlet_type_m_square = IconData(0x10107B);

  /// IconData for SF Symbol poweroutlet.type.m.square.fill
  static const IconData sf_poweroutlet_type_m_square_fill = IconData(0x101333);

  /// IconData for SF Symbol poweroutlet.type.n
  static const IconData sf_poweroutlet_type_n = IconData(0x10132D);

  /// IconData for SF Symbol poweroutlet.type.n.fill
  static const IconData sf_poweroutlet_type_n_fill = IconData(0x101330);

  /// IconData for SF Symbol poweroutlet.type.n.square
  static const IconData sf_poweroutlet_type_n_square = IconData(0x10107C);

  /// IconData for SF Symbol poweroutlet.type.n.square.fill
  static const IconData sf_poweroutlet_type_n_square_fill = IconData(0x101360);

  /// IconData for SF Symbol poweroutlet.type.o
  static const IconData sf_poweroutlet_type_o = IconData(0x101361);

  /// IconData for SF Symbol poweroutlet.type.o.fill
  static const IconData sf_poweroutlet_type_o_fill = IconData(0x101362);

  /// IconData for SF Symbol poweroutlet.type.o.square
  static const IconData sf_poweroutlet_type_o_square = IconData(0x10107D);

  /// IconData for SF Symbol poweroutlet.type.o.square.fill
  static const IconData sf_poweroutlet_type_o_square_fill = IconData(0x101363);

  /// IconData for SF Symbol powerplug
  static const IconData sf_powerplug = IconData(0x100877);

  /// IconData for SF Symbol powerplug.fill
  static const IconData sf_powerplug_fill = IconData(0x100878);

  /// IconData for SF Symbol powersleep
  static const IconData sf_powersleep = IconData(0x100966);

  /// IconData for SF Symbol printer
  static const IconData sf_printer = IconData(0x10039A);

  /// IconData for SF Symbol printer.dotmatrix
  static const IconData sf_printer_dotmatrix = IconData(0x100A9E);

  /// IconData for SF Symbol printer.dotmatrix.fill
  static const IconData sf_printer_dotmatrix_fill = IconData(0x100A9F);

  /// IconData for SF Symbol printer.dotmatrix.filled.and.paper
  static const IconData sf_printer_dotmatrix_filled_and_paper =
      IconData(0x100ABF);

  /// IconData for SF Symbol printer.fill
  static const IconData sf_printer_fill = IconData(0x10039B);

  /// IconData for SF Symbol printer.filled.and.paper
  static const IconData sf_printer_filled_and_paper = IconData(0x100ABE);

  /// IconData for SF Symbol projective
  static const IconData sf_projective = IconData(0x10018E);

  /// IconData for SF Symbol purchased
  static const IconData sf_purchased = IconData(0x100690);

  /// IconData for SF Symbol purchased.circle
  static const IconData sf_purchased_circle = IconData(0x100691);

  /// IconData for SF Symbol purchased.circle.fill
  static const IconData sf_purchased_circle_fill = IconData(0x100692);

  /// IconData for SF Symbol puzzlepiece
  static const IconData sf_puzzlepiece = IconData(0x10091A);

  /// IconData for SF Symbol puzzlepiece.extension
  static const IconData sf_puzzlepiece_extension = IconData(0x10096D);

  /// IconData for SF Symbol puzzlepiece.extension.fill
  static const IconData sf_puzzlepiece_extension_fill = IconData(0x10096E);

  /// IconData for SF Symbol puzzlepiece.fill
  static const IconData sf_puzzlepiece_fill = IconData(0x10091B);

  /// IconData for SF Symbol pyramid
  static const IconData sf_pyramid = IconData(0x100CCB);

  /// IconData for SF Symbol pyramid.fill
  static const IconData sf_pyramid_fill = IconData(0x100CCC);

  /// IconData for SF Symbol q.circle
  static const IconData sf_q_circle = IconData(0x100024);

  /// IconData for SF Symbol q.circle.fill
  static const IconData sf_q_circle_fill = IconData(0x100025);

  /// IconData for SF Symbol q.square
  static const IconData sf_q_square = IconData(0x1000B4);

  /// IconData for SF Symbol q.square.fill
  static const IconData sf_q_square_fill = IconData(0x1000B5);

  /// IconData for SF Symbol qrcode
  static const IconData sf_qrcode = IconData(0x100582);

  /// IconData for SF Symbol qrcode.viewfinder
  static const IconData sf_qrcode_viewfinder = IconData(0x1003BB);

  /// IconData for SF Symbol questionmark
  static const IconData sf_questionmark = IconData(0x10014D);

  /// IconData for SF Symbol questionmark.app
  static const IconData sf_questionmark_app = IconData(0x100FE8);

  /// IconData for SF Symbol questionmark.app.dashed
  static const IconData sf_questionmark_app_dashed = IconData(0x100FEA);

  /// IconData for SF Symbol questionmark.app.fill
  static const IconData sf_questionmark_app_fill = IconData(0x100FE9);

  /// IconData for SF Symbol questionmark.bubble
  static const IconData sf_questionmark_bubble = IconData(0x101336);

  /// IconData for SF Symbol questionmark.bubble.fill
  static const IconData sf_questionmark_bubble_fill = IconData(0x101337);

  /// IconData for SF Symbol questionmark.circle
  static const IconData sf_questionmark_circle = IconData(0x10005C);

  /// IconData for SF Symbol questionmark.circle.fill
  static const IconData sf_questionmark_circle_fill = IconData(0x10005D);

  /// IconData for SF Symbol questionmark.diamond
  static const IconData sf_questionmark_diamond = IconData(0x100122);

  /// IconData for SF Symbol questionmark.diamond.fill
  static const IconData sf_questionmark_diamond_fill = IconData(0x100123);

  /// IconData for SF Symbol questionmark.folder
  static const IconData sf_questionmark_folder = IconData(0x100B14);

  /// IconData for SF Symbol questionmark.folder.fill
  static const IconData sf_questionmark_folder_fill = IconData(0x100B15);

  /// IconData for SF Symbol questionmark.key.filled
  static const IconData sf_questionmark_key_filled = IconData(0x101833);

  /// IconData for SF Symbol questionmark.square
  static const IconData sf_questionmark_square = IconData(0x1000EC);

  /// IconData for SF Symbol questionmark.square.dashed
  static const IconData sf_questionmark_square_dashed = IconData(0x100B49);

  /// IconData for SF Symbol questionmark.square.fill
  static const IconData sf_questionmark_square_fill = IconData(0x1000ED);

  /// IconData for SF Symbol questionmark.video
  static const IconData sf_questionmark_video = IconData(0x100353);

  /// IconData for SF Symbol questionmark.video.fill
  static const IconData sf_questionmark_video_fill = IconData(0x100354);

  /// IconData for SF Symbol quote.bubble
  static const IconData sf_quote_bubble = IconData(0x10032E);

  /// IconData for SF Symbol quote.bubble.fill
  static const IconData sf_quote_bubble_fill = IconData(0x10032F);

  /// IconData for SF Symbol quote.closing
  static const IconData sf_quote_closing = IconData(0x101210);

  /// IconData for SF Symbol quote.opening
  static const IconData sf_quote_opening = IconData(0x10120F);

  /// IconData for SF Symbol quotelevel
  static const IconData sf_quotelevel = IconData(0x101596);

  /// IconData for SF Symbol r.button.roundedbottom.horizontal
  static const IconData sf_r_button_roundedbottom_horizontal =
      IconData(0x100A0D);

  /// IconData for SF Symbol r.button.roundedbottom.horizontal.fill
  static const IconData sf_r_button_roundedbottom_horizontal_fill =
      IconData(0x100A0E);

  /// IconData for SF Symbol r.circle
  static const IconData sf_r_circle = IconData(0x100026);

  /// IconData for SF Symbol r.circle.fill
  static const IconData sf_r_circle_fill = IconData(0x100027);

  /// IconData for SF Symbol r.joystick
  static const IconData sf_r_joystick = IconData(0x100993);

  /// IconData for SF Symbol r.joystick.fill
  static const IconData sf_r_joystick_fill = IconData(0x100AC2);

  /// IconData for SF Symbol r.joystick.press.down
  static const IconData sf_r_joystick_press_down = IconData(0x100995);

  /// IconData for SF Symbol r.joystick.press.down.fill
  static const IconData sf_r_joystick_press_down_fill = IconData(0x100AC4);

  /// IconData for SF Symbol r.joystick.tilt.down
  static const IconData sf_r_joystick_tilt_down = IconData(0x100FE4);

  /// IconData for SF Symbol r.joystick.tilt.down.fill
  static const IconData sf_r_joystick_tilt_down_fill = IconData(0x100FE5);

  /// IconData for SF Symbol r.joystick.tilt.left
  static const IconData sf_r_joystick_tilt_left = IconData(0x100FDE);

  /// IconData for SF Symbol r.joystick.tilt.left.fill
  static const IconData sf_r_joystick_tilt_left_fill = IconData(0x100FDF);

  /// IconData for SF Symbol r.joystick.tilt.right
  static const IconData sf_r_joystick_tilt_right = IconData(0x100FE0);

  /// IconData for SF Symbol r.joystick.tilt.right.fill
  static const IconData sf_r_joystick_tilt_right_fill = IconData(0x100FE1);

  /// IconData for SF Symbol r.joystick.tilt.up
  static const IconData sf_r_joystick_tilt_up = IconData(0x100FE2);

  /// IconData for SF Symbol r.joystick.tilt.up.fill
  static const IconData sf_r_joystick_tilt_up_fill = IconData(0x100FE3);

  /// IconData for SF Symbol r.square
  static const IconData sf_r_square = IconData(0x1000B6);

  /// IconData for SF Symbol r.square.fill
  static const IconData sf_r_square_fill = IconData(0x1000B7);

  /// IconData for SF Symbol r.square.on.square
  static const IconData sf_r_square_on_square = IconData(0x100B58);

  /// IconData for SF Symbol r.square.on.square.fill
  static const IconData sf_r_square_on_square_fill = IconData(0x100B59);

  /// IconData for SF Symbol r1.button.roundedbottom.horizontal
  static const IconData sf_r1_button_roundedbottom_horizontal =
      IconData(0x100A0F);

  /// IconData for SF Symbol r1.button.roundedbottom.horizontal.fill
  static const IconData sf_r1_button_roundedbottom_horizontal_fill =
      IconData(0x100A10);

  /// IconData for SF Symbol r1.circle
  static const IconData sf_r1_circle = IconData(0x101E89);

  /// IconData for SF Symbol r1.circle.fill
  static const IconData sf_r1_circle_fill = IconData(0x101E8A);

  /// IconData for SF Symbol r2.button.angledtop.vertical.right
  static const IconData sf_r2_button_angledtop_vertical_right =
      IconData(0x101DF5);

  /// IconData for SF Symbol r2.button.angledtop.vertical.right.fill
  static const IconData sf_r2_button_angledtop_vertical_right_fill =
      IconData(0x101DF6);

  /// IconData for SF Symbol r2.button.roundedtop.horizontal
  static const IconData sf_r2_button_roundedtop_horizontal = IconData(0x100A11);

  /// IconData for SF Symbol r2.button.roundedtop.horizontal.fill
  static const IconData sf_r2_button_roundedtop_horizontal_fill =
      IconData(0x100A12);

  /// IconData for SF Symbol r2.circle
  static const IconData sf_r2_circle = IconData(0x101E8D);

  /// IconData for SF Symbol r2.circle.fill
  static const IconData sf_r2_circle_fill = IconData(0x101E8E);

  /// IconData for SF Symbol r3.button.angledbottom.horizontal.right
  static const IconData sf_r3_button_angledbottom_horizontal_right =
      IconData(0x101E09);

  /// IconData for SF Symbol r3.button.angledbottom.horizontal.right.fill
  static const IconData sf_r3_button_angledbottom_horizontal_right_fill =
      IconData(0x101E0A);

  /// IconData for SF Symbol r4.button.horizontal
  static const IconData sf_r4_button_horizontal = IconData(0x101EA4);

  /// IconData for SF Symbol r4.button.horizontal.fill
  static const IconData sf_r4_button_horizontal_fill = IconData(0x101EA5);

  /// IconData for SF Symbol radio
  static const IconData sf_radio = IconData(0x100A94);

  /// IconData for SF Symbol radio.fill
  static const IconData sf_radio_fill = IconData(0x100A95);

  /// IconData for SF Symbol rainbow
  static const IconData sf_rainbow = IconData(0x100F2D);

  /// IconData for SF Symbol rays
  static const IconData sf_rays = IconData(0x1001EF);

  /// IconData for SF Symbol rb.button.roundedbottom.horizontal
  static const IconData sf_rb_button_roundedbottom_horizontal =
      IconData(0x100A15);

  /// IconData for SF Symbol rb.button.roundedbottom.horizontal.fill
  static const IconData sf_rb_button_roundedbottom_horizontal_fill =
      IconData(0x100A16);

  /// IconData for SF Symbol rb.circle
  static const IconData sf_rb_circle = IconData(0x101E8B);

  /// IconData for SF Symbol rb.circle.fill
  static const IconData sf_rb_circle_fill = IconData(0x101E8C);

  /// IconData for SF Symbol record.circle
  static const IconData sf_record_circle = IconData(0x100899);

  /// IconData for SF Symbol record.circle.fill
  static const IconData sf_record_circle_fill = IconData(0x10089A);

  /// IconData for SF Symbol recordingtape
  static const IconData sf_recordingtape = IconData(0x10057C);

  /// IconData for SF Symbol recordingtape.circle
  static const IconData sf_recordingtape_circle = IconData(0x1012EA);

  /// IconData for SF Symbol recordingtape.circle.fill
  static const IconData sf_recordingtape_circle_fill = IconData(0x1012EB);

  /// IconData for SF Symbol rectangle
  static const IconData sf_rectangle = IconData(0x1003C3);

  /// IconData for SF Symbol rectangle.2.swap
  static const IconData sf_rectangle_2_swap = IconData(0x101040);

  /// IconData for SF Symbol rectangle.3.group
  static const IconData sf_rectangle_3_group = IconData(0x1001F4);

  /// IconData for SF Symbol rectangle.3.group.bubble
  static const IconData sf_rectangle_3_group_bubble = IconData(0x100B04);

  /// IconData for SF Symbol rectangle.3.group.bubble.fill
  static const IconData sf_rectangle_3_group_bubble_fill = IconData(0x100B05);

  /// IconData for SF Symbol rectangle.3.group.fill
  static const IconData sf_rectangle_3_group_fill = IconData(0x100685);

  /// IconData for SF Symbol rectangle.and.arrow.up.right.and.arrow.down.left
  static const IconData sf_rectangle_and_arrow_up_right_and_arrow_down_left =
      IconData(0x10066E);

  /// IconData for SF Symbol rectangle.and.arrow.up.right.and.arrow.down.left.slash
  static const IconData
      sf_rectangle_and_arrow_up_right_and_arrow_down_left_slash =
      IconData(0x10066F);

  /// IconData for SF Symbol rectangle.and.hand.point.up.left
  static const IconData sf_rectangle_and_hand_point_up_left =
      IconData(0x100AA4);

  /// IconData for SF Symbol rectangle.and.hand.point.up.left.fill
  static const IconData sf_rectangle_and_hand_point_up_left_fill =
      IconData(0x100AA5);

  /// IconData for SF Symbol rectangle.and.hand.point.up.left.filled
  static const IconData sf_rectangle_and_hand_point_up_left_filled =
      IconData(0x100AA7);

  /// IconData for SF Symbol rectangle.and.paperclip
  static const IconData sf_rectangle_and_paperclip = IconData(0x100496);

  /// IconData for SF Symbol rectangle.and.pencil.and.ellipsis
  static const IconData sf_rectangle_and_pencil_and_ellipsis =
      IconData(0x10020F);

  /// IconData for SF Symbol rectangle.and.text.magnifyingglass
  static const IconData sf_rectangle_and_text_magnifyingglass =
      IconData(0x100B38);

  /// IconData for SF Symbol rectangle.arrowtriangle.2.inward
  static const IconData sf_rectangle_arrowtriangle_2_inward =
      IconData(0x100AFA);

  /// IconData for SF Symbol rectangle.arrowtriangle.2.outward
  static const IconData sf_rectangle_arrowtriangle_2_outward =
      IconData(0x100AF9);

  /// IconData for SF Symbol rectangle.badge.checkmark
  static const IconData sf_rectangle_badge_checkmark = IconData(0x1003D5);

  /// IconData for SF Symbol rectangle.badge.minus
  static const IconData sf_rectangle_badge_minus = IconData(0x1003D3);

  /// IconData for SF Symbol rectangle.badge.person.crop
  static const IconData sf_rectangle_badge_person_crop = IconData(0x100D5A);

  /// IconData for SF Symbol rectangle.badge.plus
  static const IconData sf_rectangle_badge_plus = IconData(0x1003D1);

  /// IconData for SF Symbol rectangle.badge.xmark
  static const IconData sf_rectangle_badge_xmark = IconData(0x1003D7);

  /// IconData for SF Symbol rectangle.bottomhalf.filled
  static const IconData sf_rectangle_bottomhalf_filled = IconData(0x100FF0);

  /// IconData for SF Symbol rectangle.bottomhalf.inset.filled
  static const IconData sf_rectangle_bottomhalf_inset_filled =
      IconData(0x100FAF);

  /// IconData for SF Symbol rectangle.bottomthird.inset.filled
  static const IconData sf_rectangle_bottomthird_inset_filled =
      IconData(0x100A28);

  /// IconData for SF Symbol rectangle.center.inset.filled
  static const IconData sf_rectangle_center_inset_filled = IconData(0x10095D);

  /// IconData for SF Symbol rectangle.center.inset.filled.badge.plus
  static const IconData sf_rectangle_center_inset_filled_badge_plus =
      IconData(0x101214);

  /// IconData for SF Symbol rectangle.checkered
  static const IconData sf_rectangle_checkered = IconData(0x100AAB);

  /// IconData for SF Symbol rectangle.compress.vertical
  static const IconData sf_rectangle_compress_vertical = IconData(0x100437);

  /// IconData for SF Symbol rectangle.connected.to.line.below
  static const IconData sf_rectangle_connected_to_line_below =
      IconData(0x100A72);

  /// IconData for SF Symbol rectangle.dashed
  static const IconData sf_rectangle_dashed = IconData(0x100941);

  /// IconData for SF Symbol rectangle.dashed.and.paperclip
  static const IconData sf_rectangle_dashed_and_paperclip = IconData(0x10096A);

  /// IconData for SF Symbol rectangle.dashed.badge.record
  static const IconData sf_rectangle_dashed_badge_record = IconData(0x100942);

  /// IconData for SF Symbol rectangle.expand.vertical
  static const IconData sf_rectangle_expand_vertical = IconData(0x100438);

  /// IconData for SF Symbol rectangle.fill
  static const IconData sf_rectangle_fill = IconData(0x1003C4);

  /// IconData for SF Symbol rectangle.fill.badge.checkmark
  static const IconData sf_rectangle_fill_badge_checkmark = IconData(0x1003D6);

  /// IconData for SF Symbol rectangle.fill.badge.minus
  static const IconData sf_rectangle_fill_badge_minus = IconData(0x1003D4);

  /// IconData for SF Symbol rectangle.fill.badge.person.crop
  static const IconData sf_rectangle_fill_badge_person_crop =
      IconData(0x100D5B);

  /// IconData for SF Symbol rectangle.fill.badge.plus
  static const IconData sf_rectangle_fill_badge_plus = IconData(0x1003D2);

  /// IconData for SF Symbol rectangle.fill.badge.xmark
  static const IconData sf_rectangle_fill_badge_xmark = IconData(0x1003D8);

  /// IconData for SF Symbol rectangle.fill.on.rectangle.angled.fill
  static const IconData sf_rectangle_fill_on_rectangle_angled_fill =
      IconData(0x100470);

  /// IconData for SF Symbol rectangle.fill.on.rectangle.fill
  static const IconData sf_rectangle_fill_on_rectangle_fill =
      IconData(0x1003E8);

  /// IconData for SF Symbol rectangle.filled.and.hand.point.up.left
  static const IconData sf_rectangle_filled_and_hand_point_up_left =
      IconData(0x100AA6);

  /// IconData for SF Symbol rectangle.grid.1x2
  static const IconData sf_rectangle_grid_1x2 = IconData(0x1004DB);

  /// IconData for SF Symbol rectangle.grid.1x2.fill
  static const IconData sf_rectangle_grid_1x2_fill = IconData(0x100689);

  /// IconData for SF Symbol rectangle.grid.2x2
  static const IconData sf_rectangle_grid_2x2 = IconData(0x1006E6);

  /// IconData for SF Symbol rectangle.grid.2x2.fill
  static const IconData sf_rectangle_grid_2x2_fill = IconData(0x1006E7);

  /// IconData for SF Symbol rectangle.grid.3x2
  static const IconData sf_rectangle_grid_3x2 = IconData(0x1001F6);

  /// IconData for SF Symbol rectangle.grid.3x2.fill
  static const IconData sf_rectangle_grid_3x2_fill = IconData(0x100686);

  /// IconData for SF Symbol rectangle.inset.bottomleading.filled
  static const IconData sf_rectangle_inset_bottomleading_filled =
      IconData(0x10106B);

  /// IconData for SF Symbol rectangle.inset.bottomleft.filled
  static const IconData sf_rectangle_inset_bottomleft_filled =
      IconData(0x100B75);

  /// IconData for SF Symbol rectangle.inset.bottomright.filled
  static const IconData sf_rectangle_inset_bottomright_filled =
      IconData(0x100B76);

  /// IconData for SF Symbol rectangle.inset.bottomtrailing.filled
  static const IconData sf_rectangle_inset_bottomtrailing_filled =
      IconData(0x10106C);

  /// IconData for SF Symbol rectangle.inset.filled
  static const IconData sf_rectangle_inset_filled = IconData(0x100933);

  /// IconData for SF Symbol rectangle.inset.filled.and.cursorarrow
  static const IconData sf_rectangle_inset_filled_and_cursorarrow =
      IconData(0x1021D5);

  /// IconData for SF Symbol rectangle.inset.filled.and.person.filled
  static const IconData sf_rectangle_inset_filled_and_person_filled =
      IconData(0x101140);

  /// IconData for SF Symbol rectangle.inset.filled.badge.record
  static const IconData sf_rectangle_inset_filled_badge_record =
      IconData(0x1020D5);

  /// IconData for SF Symbol rectangle.inset.filled.on.rectangle
  static const IconData sf_rectangle_inset_filled_on_rectangle =
      IconData(0x100DA3);

  /// IconData for SF Symbol rectangle.inset.topleading.filled
  static const IconData sf_rectangle_inset_topleading_filled =
      IconData(0x101069);

  /// IconData for SF Symbol rectangle.inset.topleft.filled
  static const IconData sf_rectangle_inset_topleft_filled = IconData(0x100B73);

  /// IconData for SF Symbol rectangle.inset.topright.filled
  static const IconData sf_rectangle_inset_topright_filled = IconData(0x100B74);

  /// IconData for SF Symbol rectangle.inset.toptrailing.filled
  static const IconData sf_rectangle_inset_toptrailing_filled =
      IconData(0x10106A);

  /// IconData for SF Symbol rectangle.landscape.rotate
  static const IconData sf_rectangle_landscape_rotate = IconData(0x101EEF);

  /// IconData for SF Symbol rectangle.leadinghalf.filled
  static const IconData sf_rectangle_leadinghalf_filled = IconData(0x1012F6);

  /// IconData for SF Symbol rectangle.leadinghalf.inset.filled
  static const IconData sf_rectangle_leadinghalf_inset_filled =
      IconData(0x101063);

  /// IconData for SF Symbol rectangle.leadinghalf.inset.filled.arrow.leading
  static const IconData sf_rectangle_leadinghalf_inset_filled_arrow_leading =
      IconData(0x101065);

  /// IconData for SF Symbol rectangle.leadingthird.inset.filled
  static const IconData sf_rectangle_leadingthird_inset_filled =
      IconData(0x101067);

  /// IconData for SF Symbol rectangle.lefthalf.filled
  static const IconData sf_rectangle_lefthalf_filled = IconData(0x100936);

  /// IconData for SF Symbol rectangle.lefthalf.inset.filled
  static const IconData sf_rectangle_lefthalf_inset_filled = IconData(0x100934);

  /// IconData for SF Symbol rectangle.lefthalf.inset.filled.arrow.left
  static const IconData sf_rectangle_lefthalf_inset_filled_arrow_left =
      IconData(0x10095E);

  /// IconData for SF Symbol rectangle.leftthird.inset.filled
  static const IconData sf_rectangle_leftthird_inset_filled =
      IconData(0x100A31);

  /// IconData for SF Symbol rectangle.on.rectangle
  static const IconData sf_rectangle_on_rectangle = IconData(0x1003E7);

  /// IconData for SF Symbol rectangle.on.rectangle.angled
  static const IconData sf_rectangle_on_rectangle_angled = IconData(0x10046F);

  /// IconData for SF Symbol rectangle.on.rectangle.badge.gearshape
  static const IconData sf_rectangle_on_rectangle_badge_gearshape =
      IconData(0x1021D3);

  /// IconData for SF Symbol rectangle.on.rectangle.button.angledtop.vertical.left
  static const IconData
      sf_rectangle_on_rectangle_button_angledtop_vertical_left =
      IconData(0x101DF7);

  /// IconData for SF Symbol rectangle.on.rectangle.button.angledtop.vertical.left.fill
  static const IconData
      sf_rectangle_on_rectangle_button_angledtop_vertical_left_fill =
      IconData(0x101DF8);

  /// IconData for SF Symbol rectangle.on.rectangle.circle
  static const IconData sf_rectangle_on_rectangle_circle = IconData(0x10093D);

  /// IconData for SF Symbol rectangle.on.rectangle.circle.fill
  static const IconData sf_rectangle_on_rectangle_circle_fill =
      IconData(0x10093E);

  /// IconData for SF Symbol rectangle.on.rectangle.slash
  static const IconData sf_rectangle_on_rectangle_slash = IconData(0x100940);

  /// IconData for SF Symbol rectangle.on.rectangle.slash.circle
  static const IconData sf_rectangle_on_rectangle_slash_circle =
      IconData(0x100EEF);

  /// IconData for SF Symbol rectangle.on.rectangle.slash.circle.fill
  static const IconData sf_rectangle_on_rectangle_slash_circle_fill =
      IconData(0x100EF0);

  /// IconData for SF Symbol rectangle.on.rectangle.slash.fill
  static const IconData sf_rectangle_on_rectangle_slash_fill =
      IconData(0x10093F);

  /// IconData for SF Symbol rectangle.on.rectangle.square
  static const IconData sf_rectangle_on_rectangle_square = IconData(0x100F4F);

  /// IconData for SF Symbol rectangle.on.rectangle.square.fill
  static const IconData sf_rectangle_on_rectangle_square_fill =
      IconData(0x100F50);

  /// IconData for SF Symbol rectangle.portrait
  static const IconData sf_rectangle_portrait = IconData(0x1007CF);

  /// IconData for SF Symbol rectangle.portrait.and.arrow.forward
  static const IconData sf_rectangle_portrait_and_arrow_forward =
      IconData(0x1016A0);

  /// IconData for SF Symbol rectangle.portrait.and.arrow.forward.fill
  static const IconData sf_rectangle_portrait_and_arrow_forward_fill =
      IconData(0x1016A1);

  /// IconData for SF Symbol rectangle.portrait.and.arrow.right
  static const IconData sf_rectangle_portrait_and_arrow_right =
      IconData(0x100EF5);

  /// IconData for SF Symbol rectangle.portrait.and.arrow.right.fill
  static const IconData sf_rectangle_portrait_and_arrow_right_fill =
      IconData(0x100EF6);

  /// IconData for SF Symbol rectangle.portrait.arrowtriangle.2.inward
  static const IconData sf_rectangle_portrait_arrowtriangle_2_inward =
      IconData(0x100AFC);

  /// IconData for SF Symbol rectangle.portrait.arrowtriangle.2.outward
  static const IconData sf_rectangle_portrait_arrowtriangle_2_outward =
      IconData(0x100AFB);

  /// IconData for SF Symbol rectangle.portrait.badge.plus
  static const IconData sf_rectangle_portrait_badge_plus = IconData(0x10194B);

  /// IconData for SF Symbol rectangle.portrait.badge.plus.fill
  static const IconData sf_rectangle_portrait_badge_plus_fill =
      IconData(0x10194C);

  /// IconData for SF Symbol rectangle.portrait.bottomhalf.filled
  static const IconData sf_rectangle_portrait_bottomhalf_filled =
      IconData(0x100FF2);

  /// IconData for SF Symbol rectangle.portrait.bottomhalf.inset.filled
  static const IconData sf_rectangle_portrait_bottomhalf_inset_filled =
      IconData(0x100F7A);

  /// IconData for SF Symbol rectangle.portrait.bottomleading.inset.filled
  static const IconData sf_rectangle_portrait_bottomleading_inset_filled =
      IconData(0x101073);

  /// IconData for SF Symbol rectangle.portrait.bottomleft.inset.filled
  static const IconData sf_rectangle_portrait_bottomleft_inset_filled =
      IconData(0x100F83);

  /// IconData for SF Symbol rectangle.portrait.bottomright.inset.filled
  static const IconData sf_rectangle_portrait_bottomright_inset_filled =
      IconData(0x100F82);

  /// IconData for SF Symbol rectangle.portrait.bottomthird.inset.filled
  static const IconData sf_rectangle_portrait_bottomthird_inset_filled =
      IconData(0x100F7E);

  /// IconData for SF Symbol rectangle.portrait.bottomtrailing.inset.filled
  static const IconData sf_rectangle_portrait_bottomtrailing_inset_filled =
      IconData(0x101074);

  /// IconData for SF Symbol rectangle.portrait.center.inset.filled
  static const IconData sf_rectangle_portrait_center_inset_filled =
      IconData(0x100F7F);

  /// IconData for SF Symbol rectangle.portrait.fill
  static const IconData sf_rectangle_portrait_fill = IconData(0x1007D0);

  /// IconData for SF Symbol rectangle.portrait.inset.filled
  static const IconData sf_rectangle_portrait_inset_filled = IconData(0x100F78);

  /// IconData for SF Symbol rectangle.portrait.leadinghalf.inset.filled
  static const IconData sf_rectangle_portrait_leadinghalf_inset_filled =
      IconData(0x10106D);

  /// IconData for SF Symbol rectangle.portrait.leadingthird.inset.filled
  static const IconData sf_rectangle_portrait_leadingthird_inset_filled =
      IconData(0x10106F);

  /// IconData for SF Symbol rectangle.portrait.lefthalf.filled
  static const IconData sf_rectangle_portrait_lefthalf_filled =
      IconData(0x100FEC);

  /// IconData for SF Symbol rectangle.portrait.lefthalf.inset.filled
  static const IconData sf_rectangle_portrait_lefthalf_inset_filled =
      IconData(0x100F84);

  /// IconData for SF Symbol rectangle.portrait.leftthird.inset.filled
  static const IconData sf_rectangle_portrait_leftthird_inset_filled =
      IconData(0x100F7C);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait
  static const IconData sf_rectangle_portrait_on_rectangle_portrait =
      IconData(0x100F70);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.angled
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_angled =
      IconData(0x101255);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.angled.fill
  static const IconData
      sf_rectangle_portrait_on_rectangle_portrait_angled_fill =
      IconData(0x101256);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.fill
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_fill =
      IconData(0x100F71);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.slash
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_slash =
      IconData(0x100F72);

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.slash.fill
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_slash_fill =
      IconData(0x100F73);

  /// IconData for SF Symbol rectangle.portrait.righthalf.filled
  static const IconData sf_rectangle_portrait_righthalf_filled =
      IconData(0x100FED);

  /// IconData for SF Symbol rectangle.portrait.righthalf.inset.filled
  static const IconData sf_rectangle_portrait_righthalf_inset_filled =
      IconData(0x100F85);

  /// IconData for SF Symbol rectangle.portrait.rightthird.inset.filled
  static const IconData sf_rectangle_portrait_rightthird_inset_filled =
      IconData(0x100F7B);

  /// IconData for SF Symbol rectangle.portrait.rotate
  static const IconData sf_rectangle_portrait_rotate = IconData(0x101EEE);

  /// IconData for SF Symbol rectangle.portrait.slash
  static const IconData sf_rectangle_portrait_slash = IconData(0x100F86);

  /// IconData for SF Symbol rectangle.portrait.slash.fill
  static const IconData sf_rectangle_portrait_slash_fill = IconData(0x100F87);

  /// IconData for SF Symbol rectangle.portrait.split.2x1
  static const IconData sf_rectangle_portrait_split_2x1 = IconData(0x100F74);

  /// IconData for SF Symbol rectangle.portrait.split.2x1.fill
  static const IconData sf_rectangle_portrait_split_2x1_fill =
      IconData(0x100F75);

  /// IconData for SF Symbol rectangle.portrait.split.2x1.slash
  static const IconData sf_rectangle_portrait_split_2x1_slash =
      IconData(0x100F76);

  /// IconData for SF Symbol rectangle.portrait.split.2x1.slash.fill
  static const IconData sf_rectangle_portrait_split_2x1_slash_fill =
      IconData(0x100F77);

  /// IconData for SF Symbol rectangle.portrait.tophalf.filled
  static const IconData sf_rectangle_portrait_tophalf_filled =
      IconData(0x100FF1);

  /// IconData for SF Symbol rectangle.portrait.tophalf.inset.filled
  static const IconData sf_rectangle_portrait_tophalf_inset_filled =
      IconData(0x100F79);

  /// IconData for SF Symbol rectangle.portrait.topleading.inset.filled
  static const IconData sf_rectangle_portrait_topleading_inset_filled =
      IconData(0x101071);

  /// IconData for SF Symbol rectangle.portrait.topleft.inset.filled
  static const IconData sf_rectangle_portrait_topleft_inset_filled =
      IconData(0x100F80);

  /// IconData for SF Symbol rectangle.portrait.topright.inset.filled
  static const IconData sf_rectangle_portrait_topright_inset_filled =
      IconData(0x100F81);

  /// IconData for SF Symbol rectangle.portrait.topthird.inset.filled
  static const IconData sf_rectangle_portrait_topthird_inset_filled =
      IconData(0x100F7D);

  /// IconData for SF Symbol rectangle.portrait.toptrailing.inset.filled
  static const IconData sf_rectangle_portrait_toptrailing_inset_filled =
      IconData(0x101072);

  /// IconData for SF Symbol rectangle.portrait.trailinghalf.inset.filled
  static const IconData sf_rectangle_portrait_trailinghalf_inset_filled =
      IconData(0x10106E);

  /// IconData for SF Symbol rectangle.portrait.trailingthird.inset.filled
  static const IconData sf_rectangle_portrait_trailingthird_inset_filled =
      IconData(0x101070);

  /// IconData for SF Symbol rectangle.ratio.3.to.4
  static const IconData sf_rectangle_ratio_3_to_4 = IconData(0x101F78);

  /// IconData for SF Symbol rectangle.ratio.3.to.4.fill
  static const IconData sf_rectangle_ratio_3_to_4_fill = IconData(0x101F79);

  /// IconData for SF Symbol rectangle.ratio.4.to.3
  static const IconData sf_rectangle_ratio_4_to_3 = IconData(0x101F7A);

  /// IconData for SF Symbol rectangle.ratio.4.to.3.fill
  static const IconData sf_rectangle_ratio_4_to_3_fill = IconData(0x101F7B);

  /// IconData for SF Symbol rectangle.ratio.9.to.16
  static const IconData sf_rectangle_ratio_9_to_16 = IconData(0x101F7C);

  /// IconData for SF Symbol rectangle.ratio.9.to.16.fill
  static const IconData sf_rectangle_ratio_9_to_16_fill = IconData(0x101F7D);

  /// IconData for SF Symbol rectangle.ratio.16.to.9
  static const IconData sf_rectangle_ratio_16_to_9 = IconData(0x101F7E);

  /// IconData for SF Symbol rectangle.ratio.16.to.9.fill
  static const IconData sf_rectangle_ratio_16_to_9_fill = IconData(0x101F7F);

  /// IconData for SF Symbol rectangle.righthalf.filled
  static const IconData sf_rectangle_righthalf_filled = IconData(0x100937);

  /// IconData for SF Symbol rectangle.righthalf.inset.filled
  static const IconData sf_rectangle_righthalf_inset_filled =
      IconData(0x100935);

  /// IconData for SF Symbol rectangle.righthalf.inset.filled.arrow.right
  static const IconData sf_rectangle_righthalf_inset_filled_arrow_right =
      IconData(0x10095F);

  /// IconData for SF Symbol rectangle.rightthird.inset.filled
  static const IconData sf_rectangle_rightthird_inset_filled =
      IconData(0x100A29);

  /// IconData for SF Symbol rectangle.slash
  static const IconData sf_rectangle_slash = IconData(0x1008E4);

  /// IconData for SF Symbol rectangle.slash.fill
  static const IconData sf_rectangle_slash_fill = IconData(0x1008E5);

  /// IconData for SF Symbol rectangle.split.1x2
  static const IconData sf_rectangle_split_1x2 = IconData(0x1009CA);

  /// IconData for SF Symbol rectangle.split.1x2.fill
  static const IconData sf_rectangle_split_1x2_fill = IconData(0x1009CB);

  /// IconData for SF Symbol rectangle.split.2x1
  static const IconData sf_rectangle_split_2x1 = IconData(0x1009C8);

  /// IconData for SF Symbol rectangle.split.2x1.fill
  static const IconData sf_rectangle_split_2x1_fill = IconData(0x1009C9);

  /// IconData for SF Symbol rectangle.split.2x1.slash
  static const IconData sf_rectangle_split_2x1_slash = IconData(0x100F8A);

  /// IconData for SF Symbol rectangle.split.2x1.slash.fill
  static const IconData sf_rectangle_split_2x1_slash_fill = IconData(0x100F8B);

  /// IconData for SF Symbol rectangle.split.2x2
  static const IconData sf_rectangle_split_2x2 = IconData(0x1009CC);

  /// IconData for SF Symbol rectangle.split.2x2.fill
  static const IconData sf_rectangle_split_2x2_fill = IconData(0x1009CD);

  /// IconData for SF Symbol rectangle.split.3x1
  static const IconData sf_rectangle_split_3x1 = IconData(0x1003DF);

  /// IconData for SF Symbol rectangle.split.3x1.fill
  static const IconData sf_rectangle_split_3x1_fill = IconData(0x100578);

  /// IconData for SF Symbol rectangle.split.3x3
  static const IconData sf_rectangle_split_3x3 = IconData(0x1003E2);

  /// IconData for SF Symbol rectangle.split.3x3.fill
  static const IconData sf_rectangle_split_3x3_fill = IconData(0x10062E);

  /// IconData for SF Symbol rectangle.stack
  static const IconData sf_rectangle_stack = IconData(0x1003ED);

  /// IconData for SF Symbol rectangle.stack.badge.minus
  static const IconData sf_rectangle_stack_badge_minus = IconData(0x1003F3);

  /// IconData for SF Symbol rectangle.stack.badge.person.crop
  static const IconData sf_rectangle_stack_badge_person_crop =
      IconData(0x1003F9);

  /// IconData for SF Symbol rectangle.stack.badge.person.crop.fill
  static const IconData sf_rectangle_stack_badge_person_crop_fill =
      IconData(0x1003FA);

  /// IconData for SF Symbol rectangle.stack.badge.play
  static const IconData sf_rectangle_stack_badge_play = IconData(0x100F59);

  /// IconData for SF Symbol rectangle.stack.badge.play.fill
  static const IconData sf_rectangle_stack_badge_play_fill = IconData(0x100F5A);

  /// IconData for SF Symbol rectangle.stack.badge.plus
  static const IconData sf_rectangle_stack_badge_plus = IconData(0x1003F1);

  /// IconData for SF Symbol rectangle.stack.fill
  static const IconData sf_rectangle_stack_fill = IconData(0x1003EE);

  /// IconData for SF Symbol rectangle.stack.fill.badge.minus
  static const IconData sf_rectangle_stack_fill_badge_minus =
      IconData(0x1003F4);

  /// IconData for SF Symbol rectangle.stack.fill.badge.plus
  static const IconData sf_rectangle_stack_fill_badge_plus = IconData(0x1003F2);

  /// IconData for SF Symbol rectangle.tophalf.filled
  static const IconData sf_rectangle_tophalf_filled = IconData(0x100FEF);

  /// IconData for SF Symbol rectangle.tophalf.inset.filled
  static const IconData sf_rectangle_tophalf_inset_filled = IconData(0x100FAE);

  /// IconData for SF Symbol rectangle.topthird.inset.filled
  static const IconData sf_rectangle_topthird_inset_filled = IconData(0x100D0A);

  /// IconData for SF Symbol rectangle.trailinghalf.filled
  static const IconData sf_rectangle_trailinghalf_filled = IconData(0x1012F7);

  /// IconData for SF Symbol rectangle.trailinghalf.inset.filled
  static const IconData sf_rectangle_trailinghalf_inset_filled =
      IconData(0x101064);

  /// IconData for SF Symbol rectangle.trailinghalf.inset.filled.arrow.trailing
  static const IconData sf_rectangle_trailinghalf_inset_filled_arrow_trailing =
      IconData(0x101066);

  /// IconData for SF Symbol rectangle.trailingthird.inset.filled
  static const IconData sf_rectangle_trailingthird_inset_filled =
      IconData(0x101068);

  /// IconData for SF Symbol refrigerator
  static const IconData sf_refrigerator = IconData(0x10141E);

  /// IconData for SF Symbol refrigerator.fill
  static const IconData sf_refrigerator_fill = IconData(0x10141F);

  /// IconData for SF Symbol repeat
  static const IconData sf_repeat = IconData(0x10029E);

  /// IconData for SF Symbol repeat.1
  static const IconData sf_repeat_1 = IconData(0x10029F);

  /// IconData for SF Symbol repeat.1.circle
  static const IconData sf_repeat_1_circle = IconData(0x100D4D);

  /// IconData for SF Symbol repeat.1.circle.fill
  static const IconData sf_repeat_1_circle_fill = IconData(0x100D4E);

  /// IconData for SF Symbol repeat.circle
  static const IconData sf_repeat_circle = IconData(0x100D4B);

  /// IconData for SF Symbol repeat.circle.fill
  static const IconData sf_repeat_circle_fill = IconData(0x100D4C);

  /// IconData for SF Symbol restart
  static const IconData sf_restart = IconData(0x100BC6);

  /// IconData for SF Symbol restart.circle
  static const IconData sf_restart_circle = IconData(0x1008E8);

  /// IconData for SF Symbol restart.circle.fill
  static const IconData sf_restart_circle_fill = IconData(0x100D9E);

  /// IconData for SF Symbol retarder.brakesignal
  static const IconData sf_retarder_brakesignal = IconData(0x1017C7);

  /// IconData for SF Symbol retarder.brakesignal.and.exclamationmark
  static const IconData sf_retarder_brakesignal_and_exclamationmark =
      IconData(0x1017C8);

  /// IconData for SF Symbol retarder.brakesignal.slash
  static const IconData sf_retarder_brakesignal_slash = IconData(0x1017CB);

  /// IconData for SF Symbol return
  static const IconData sf_return = IconData(0x100147);

  /// IconData for SF Symbol return.left
  static const IconData sf_return_left = IconData(0x101086);

  /// IconData for SF Symbol return.right
  static const IconData sf_return_right = IconData(0x101087);

  /// IconData for SF Symbol rhombus
  static const IconData sf_rhombus = IconData(0x1002C0);

  /// IconData for SF Symbol rhombus.fill
  static const IconData sf_rhombus_fill = IconData(0x1002C1);

  /// IconData for SF Symbol right
  static const IconData sf_right = IconData(0x1018E6);

  /// IconData for SF Symbol right.circle
  static const IconData sf_right_circle = IconData(0x1018E7);

  /// IconData for SF Symbol right.circle.fill
  static const IconData sf_right_circle_fill = IconData(0x1018E8);

  /// IconData for SF Symbol righttriangle
  static const IconData sf_righttriangle = IconData(0x101E6B);

  /// IconData for SF Symbol righttriangle.fill
  static const IconData sf_righttriangle_fill = IconData(0x101E6C);

  /// IconData for SF Symbol righttriangle.split.diagonal
  static const IconData sf_righttriangle_split_diagonal = IconData(0x100378);

  /// IconData for SF Symbol righttriangle.split.diagonal.fill
  static const IconData sf_righttriangle_split_diagonal_fill =
      IconData(0x100379);

  /// IconData for SF Symbol rm.button.horizontal
  static const IconData sf_rm_button_horizontal = IconData(0x101EA6);

  /// IconData for SF Symbol rm.button.horizontal.fill
  static const IconData sf_rm_button_horizontal_fill = IconData(0x101EA7);

  /// IconData for SF Symbol road.lane.arrowtriangle.2.inward
  static const IconData sf_road_lane_arrowtriangle_2_inward =
      IconData(0x101576);

  /// IconData for SF Symbol road.lanes
  static const IconData sf_road_lanes = IconData(0x101577);

  /// IconData for SF Symbol road.lanes.curved.left
  static const IconData sf_road_lanes_curved_left = IconData(0x10157A);

  /// IconData for SF Symbol road.lanes.curved.right
  static const IconData sf_road_lanes_curved_right = IconData(0x10157B);

  /// IconData for SF Symbol roller.shade.closed
  static const IconData sf_roller_shade_closed = IconData(0x10147A);

  /// IconData for SF Symbol roller.shade.open
  static const IconData sf_roller_shade_open = IconData(0x101479);

  /// IconData for SF Symbol roman.shade.closed
  static const IconData sf_roman_shade_closed = IconData(0x10147C);

  /// IconData for SF Symbol roman.shade.open
  static const IconData sf_roman_shade_open = IconData(0x10147B);

  /// IconData for SF Symbol rosette
  static const IconData sf_rosette = IconData(0x1006EF);

  /// IconData for SF Symbol rotate.3d
  static const IconData sf_rotate_3d = IconData(0x100887);

  /// IconData for SF Symbol rotate.3d.circle
  static const IconData sf_rotate_3d_circle = IconData(0x101C40);

  /// IconData for SF Symbol rotate.3d.circle.fill
  static const IconData sf_rotate_3d_circle_fill = IconData(0x101C41);

  /// IconData for SF Symbol rotate.3d.fill
  static const IconData sf_rotate_3d_fill = IconData(0x101C42);

  /// IconData for SF Symbol rotate.left
  static const IconData sf_rotate_left = IconData(0x1003AE);

  /// IconData for SF Symbol rotate.left.fill
  static const IconData sf_rotate_left_fill = IconData(0x1003AF);

  /// IconData for SF Symbol rotate.right
  static const IconData sf_rotate_right = IconData(0x1003B0);

  /// IconData for SF Symbol rotate.right.fill
  static const IconData sf_rotate_right_fill = IconData(0x1003B1);

  /// IconData for SF Symbol rsb.button.angledbottom.horizontal.right
  static const IconData sf_rsb_button_angledbottom_horizontal_right =
      IconData(0x101E0D);

  /// IconData for SF Symbol rsb.button.angledbottom.horizontal.right.fill
  static const IconData sf_rsb_button_angledbottom_horizontal_right_fill =
      IconData(0x101E0E);

  /// IconData for SF Symbol rt.button.roundedtop.horizontal
  static const IconData sf_rt_button_roundedtop_horizontal = IconData(0x100A19);

  /// IconData for SF Symbol rt.button.roundedtop.horizontal.fill
  static const IconData sf_rt_button_roundedtop_horizontal_fill =
      IconData(0x100A1A);

  /// IconData for SF Symbol rt.circle
  static const IconData sf_rt_circle = IconData(0x101E8F);

  /// IconData for SF Symbol rt.circle.fill
  static const IconData sf_rt_circle_fill = IconData(0x101E90);

  /// IconData for SF Symbol rublesign
  static const IconData sf_rublesign = IconData(0x101446);

  /// IconData for SF Symbol rublesign.arrow.circlepath
  static const IconData sf_rublesign_arrow_circlepath = IconData(0x102219);

  /// IconData for SF Symbol rublesign.circle
  static const IconData sf_rublesign_circle = IconData(0x1005A5);

  /// IconData for SF Symbol rublesign.circle.fill
  static const IconData sf_rublesign_circle_fill = IconData(0x1005A6);

  /// IconData for SF Symbol rublesign.square
  static const IconData sf_rublesign_square = IconData(0x1005E5);

  /// IconData for SF Symbol rublesign.square.fill
  static const IconData sf_rublesign_square_fill = IconData(0x1005E6);

  /// IconData for SF Symbol ruler
  static const IconData sf_ruler = IconData(0x1007C0);

  /// IconData for SF Symbol ruler.fill
  static const IconData sf_ruler_fill = IconData(0x1007C1);

  /// IconData for SF Symbol rupeesign
  static const IconData sf_rupeesign = IconData(0x10145B);

  /// IconData for SF Symbol rupeesign.arrow.circlepath
  static const IconData sf_rupeesign_arrow_circlepath = IconData(0x10222E);

  /// IconData for SF Symbol rupeesign.circle
  static const IconData sf_rupeesign_circle = IconData(0x1005CF);

  /// IconData for SF Symbol rupeesign.circle.fill
  static const IconData sf_rupeesign_circle_fill = IconData(0x1005D0);

  /// IconData for SF Symbol rupeesign.square
  static const IconData sf_rupeesign_square = IconData(0x10060F);

  /// IconData for SF Symbol rupeesign.square.fill
  static const IconData sf_rupeesign_square_fill = IconData(0x100610);

  /// IconData for SF Symbol s.circle
  static const IconData sf_s_circle = IconData(0x100028);

  /// IconData for SF Symbol s.circle.fill
  static const IconData sf_s_circle_fill = IconData(0x100029);

  /// IconData for SF Symbol s.square
  static const IconData sf_s_square = IconData(0x1000B8);

  /// IconData for SF Symbol s.square.fill
  static const IconData sf_s_square_fill = IconData(0x1000B9);

  /// IconData for SF Symbol safari
  static const IconData sf_safari = IconData(0x1003AC);

  /// IconData for SF Symbol safari.fill
  static const IconData sf_safari_fill = IconData(0x1003AD);

  /// IconData for SF Symbol sailboat
  static const IconData sf_sailboat = IconData(0x1012F4);

  /// IconData for SF Symbol sailboat.circle
  static const IconData sf_sailboat_circle = IconData(0x101798);

  /// IconData for SF Symbol sailboat.circle.fill
  static const IconData sf_sailboat_circle_fill = IconData(0x101799);

  /// IconData for SF Symbol sailboat.fill
  static const IconData sf_sailboat_fill = IconData(0x1012F5);

  /// IconData for SF Symbol scale.3d
  static const IconData sf_scale_3d = IconData(0x100886);

  /// IconData for SF Symbol scalemass
  static const IconData sf_scalemass = IconData(0x100B6D);

  /// IconData for SF Symbol scalemass.fill
  static const IconData sf_scalemass_fill = IconData(0x100B6E);

  /// IconData for SF Symbol scanner
  static const IconData sf_scanner = IconData(0x100A8A);

  /// IconData for SF Symbol scanner.fill
  static const IconData sf_scanner_fill = IconData(0x100A8B);

  /// IconData for SF Symbol scissors
  static const IconData sf_scissors = IconData(0x100248);

  /// IconData for SF Symbol scissors.badge.ellipsis
  static const IconData sf_scissors_badge_ellipsis = IconData(0x1007B7);

  /// IconData for SF Symbol scissors.circle
  static const IconData sf_scissors_circle = IconData(0x1011D4);

  /// IconData for SF Symbol scissors.circle.fill
  static const IconData sf_scissors_circle_fill = IconData(0x1011D5);

  /// IconData for SF Symbol scooter
  static const IconData sf_scooter = IconData(0x10120C);

  /// IconData for SF Symbol scope
  static const IconData sf_scope = IconData(0x100429);

  /// IconData for SF Symbol screwdriver
  static const IconData sf_screwdriver = IconData(0x100908);

  /// IconData for SF Symbol screwdriver.fill
  static const IconData sf_screwdriver_fill = IconData(0x100909);

  /// IconData for SF Symbol scribble
  static const IconData sf_scribble = IconData(0x1004E8);

  /// IconData for SF Symbol scribble.variable
  static const IconData sf_scribble_variable = IconData(0x100911);

  /// IconData for SF Symbol scroll
  static const IconData sf_scroll = IconData(0x10090F);

  /// IconData for SF Symbol scroll.fill
  static const IconData sf_scroll_fill = IconData(0x100910);

  /// IconData for SF Symbol sdcard
  static const IconData sf_sdcard = IconData(0x100A87);

  /// IconData for SF Symbol sdcard.fill
  static const IconData sf_sdcard_fill = IconData(0x100A88);

  /// IconData for SF Symbol seal
  static const IconData sf_seal = IconData(0x1007C6);

  /// IconData for SF Symbol seal.fill
  static const IconData sf_seal_fill = IconData(0x1007C7);

  /// IconData for SF Symbol selection.pin.in.out
  static const IconData sf_selection_pin_in_out = IconData(0x100460);

  /// IconData for SF Symbol sensor
  static const IconData sf_sensor = IconData(0x101509);

  /// IconData for SF Symbol sensor.fill
  static const IconData sf_sensor_fill = IconData(0x10150A);

  /// IconData for SF Symbol sensor.tag.radiowaves.forward
  static const IconData sf_sensor_tag_radiowaves_forward = IconData(0x10105D);

  /// IconData for SF Symbol sensor.tag.radiowaves.forward.fill
  static const IconData sf_sensor_tag_radiowaves_forward_fill =
      IconData(0x10105E);

  /// IconData for SF Symbol server.rack
  static const IconData sf_server_rack = IconData(0x100AAC);

  /// IconData for SF Symbol shadow
  static const IconData sf_shadow = IconData(0x100A21);

  /// IconData for SF Symbol shared.with.you
  static const IconData sf_shared_with_you = IconData(0x101141);

  /// IconData for SF Symbol shared.with.you.circle
  static const IconData sf_shared_with_you_circle = IconData(0x1021C4);

  /// IconData for SF Symbol shared.with.you.circle.fill
  static const IconData sf_shared_with_you_circle_fill = IconData(0x102100);

  /// IconData for SF Symbol shared.with.you.slash
  static const IconData sf_shared_with_you_slash = IconData(0x1011E6);

  /// IconData for SF Symbol shareplay
  static const IconData sf_shareplay = IconData(0x1010D1);

  /// IconData for SF Symbol shareplay.slash
  static const IconData sf_shareplay_slash = IconData(0x100D14);

  /// IconData for SF Symbol shazam.logo
  static const IconData sf_shazam_logo = IconData(0x101234);

  /// IconData for SF Symbol shazam.logo.fill
  static const IconData sf_shazam_logo_fill = IconData(0x101235);

  /// IconData for SF Symbol shekelsign
  static const IconData sf_shekelsign = IconData(0x101459);

  /// IconData for SF Symbol shekelsign.arrow.circlepath
  static const IconData sf_shekelsign_arrow_circlepath = IconData(0x10222C);

  /// IconData for SF Symbol shekelsign.circle
  static const IconData sf_shekelsign_circle = IconData(0x1005CB);

  /// IconData for SF Symbol shekelsign.circle.fill
  static const IconData sf_shekelsign_circle_fill = IconData(0x1005CC);

  /// IconData for SF Symbol shekelsign.square
  static const IconData sf_shekelsign_square = IconData(0x10060B);

  /// IconData for SF Symbol shekelsign.square.fill
  static const IconData sf_shekelsign_square_fill = IconData(0x10060C);

  /// IconData for SF Symbol shield
  static const IconData sf_shield = IconData(0x100666);

  /// IconData for SF Symbol shield.checkered
  static const IconData sf_shield_checkered = IconData(0x100D54);

  /// IconData for SF Symbol shield.fill
  static const IconData sf_shield_fill = IconData(0x100667);

  /// IconData for SF Symbol shield.lefthalf.filled
  static const IconData sf_shield_lefthalf_filled = IconData(0x100668);

  /// IconData for SF Symbol shield.lefthalf.filled.badge.checkmark
  static const IconData sf_shield_lefthalf_filled_badge_checkmark =
      IconData(0x101DE5);

  /// IconData for SF Symbol shield.lefthalf.filled.slash
  static const IconData sf_shield_lefthalf_filled_slash = IconData(0x100C8A);

  /// IconData for SF Symbol shield.lefthalf.filled.trianglebadge.exclamationmark
  static const IconData
      sf_shield_lefthalf_filled_trianglebadge_exclamationmark =
      IconData(0x101DE7);

  /// IconData for SF Symbol shield.righthalf.filled
  static const IconData sf_shield_righthalf_filled = IconData(0x100FEE);

  /// IconData for SF Symbol shield.slash
  static const IconData sf_shield_slash = IconData(0x1007A1);

  /// IconData for SF Symbol shield.slash.fill
  static const IconData sf_shield_slash_fill = IconData(0x1007A2);

  /// IconData for SF Symbol shift
  static const IconData sf_shift = IconData(0x10019D);

  /// IconData for SF Symbol shift.fill
  static const IconData sf_shift_fill = IconData(0x10019E);

  /// IconData for SF Symbol shippingbox
  static const IconData sf_shippingbox = IconData(0x10041A);

  /// IconData for SF Symbol shippingbox.and.arrow.backward
  static const IconData sf_shippingbox_and_arrow_backward = IconData(0x1007C4);

  /// IconData for SF Symbol shippingbox.and.arrow.backward.fill
  static const IconData sf_shippingbox_and_arrow_backward_fill =
      IconData(0x1007C5);

  /// IconData for SF Symbol shippingbox.circle
  static const IconData sf_shippingbox_circle = IconData(0x1011C8);

  /// IconData for SF Symbol shippingbox.circle.fill
  static const IconData sf_shippingbox_circle_fill = IconData(0x1011C9);

  /// IconData for SF Symbol shippingbox.fill
  static const IconData sf_shippingbox_fill = IconData(0x10041B);

  /// IconData for SF Symbol shoe
  static const IconData sf_shoe = IconData(0x1018EF);

  /// IconData for SF Symbol shoe.2
  static const IconData sf_shoe_2 = IconData(0x1018F1);

  /// IconData for SF Symbol shoe.2.fill
  static const IconData sf_shoe_2_fill = IconData(0x1018F2);

  /// IconData for SF Symbol shoe.circle
  static const IconData sf_shoe_circle = IconData(0x101904);

  /// IconData for SF Symbol shoe.circle.fill
  static const IconData sf_shoe_circle_fill = IconData(0x101905);

  /// IconData for SF Symbol shoe.fill
  static const IconData sf_shoe_fill = IconData(0x1018F0);

  /// IconData for SF Symbol shoeprints.fill
  static const IconData sf_shoeprints_fill = IconData(0x101508);

  /// IconData for SF Symbol shower
  static const IconData sf_shower = IconData(0x1014C2);

  /// IconData for SF Symbol shower.fill
  static const IconData sf_shower_fill = IconData(0x1014C3);

  /// IconData for SF Symbol shower.handheld
  static const IconData sf_shower_handheld = IconData(0x1014CD);

  /// IconData for SF Symbol shower.handheld.fill
  static const IconData sf_shower_handheld_fill = IconData(0x1014CE);

  /// IconData for SF Symbol shower.sidejet
  static const IconData sf_shower_sidejet = IconData(0x1014C6);

  /// IconData for SF Symbol shower.sidejet.fill
  static const IconData sf_shower_sidejet_fill = IconData(0x1014C7);

  /// IconData for SF Symbol shuffle
  static const IconData sf_shuffle = IconData(0x10029D);

  /// IconData for SF Symbol shuffle.circle
  static const IconData sf_shuffle_circle = IconData(0x100D49);

  /// IconData for SF Symbol shuffle.circle.fill
  static const IconData sf_shuffle_circle_fill = IconData(0x100D4A);

  /// IconData for SF Symbol sidebar.leading
  static const IconData sf_sidebar_leading = IconData(0x100C31);

  /// IconData for SF Symbol sidebar.left
  static const IconData sf_sidebar_left = IconData(0x1003DA);

  /// IconData for SF Symbol sidebar.right
  static const IconData sf_sidebar_right = IconData(0x1003DB);

  /// IconData for SF Symbol sidebar.squares.leading
  static const IconData sf_sidebar_squares_leading = IconData(0x100C66);

  /// IconData for SF Symbol sidebar.squares.left
  static const IconData sf_sidebar_squares_left = IconData(0x100C64);

  /// IconData for SF Symbol sidebar.squares.right
  static const IconData sf_sidebar_squares_right = IconData(0x100C65);

  /// IconData for SF Symbol sidebar.squares.trailing
  static const IconData sf_sidebar_squares_trailing = IconData(0x100C67);

  /// IconData for SF Symbol sidebar.trailing
  static const IconData sf_sidebar_trailing = IconData(0x100C32);

  /// IconData for SF Symbol signature
  static const IconData sf_signature = IconData(0x100664);

  /// IconData for SF Symbol signpost.and.arrowtriangle.up
  static const IconData sf_signpost_and_arrowtriangle_up = IconData(0x101773);

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.circle
  static const IconData sf_signpost_and_arrowtriangle_up_circle =
      IconData(0x101790);

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.circle.fill
  static const IconData sf_signpost_and_arrowtriangle_up_circle_fill =
      IconData(0x101791);

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.fill
  static const IconData sf_signpost_and_arrowtriangle_up_fill =
      IconData(0x101774);

  /// IconData for SF Symbol signpost.left
  static const IconData sf_signpost_left = IconData(0x100C2F);

  /// IconData for SF Symbol signpost.left.circle
  static const IconData sf_signpost_left_circle = IconData(0x10178A);

  /// IconData for SF Symbol signpost.left.circle.fill
  static const IconData sf_signpost_left_circle_fill = IconData(0x10178B);

  /// IconData for SF Symbol signpost.left.fill
  static const IconData sf_signpost_left_fill = IconData(0x100C30);

  /// IconData for SF Symbol signpost.right
  static const IconData sf_signpost_right = IconData(0x100BCC);

  /// IconData for SF Symbol signpost.right.and.left
  static const IconData sf_signpost_right_and_left = IconData(0x10176E);

  /// IconData for SF Symbol signpost.right.and.left.circle
  static const IconData sf_signpost_right_and_left_circle = IconData(0x10178E);

  /// IconData for SF Symbol signpost.right.and.left.circle.fill
  static const IconData sf_signpost_right_and_left_circle_fill =
      IconData(0x10178F);

  /// IconData for SF Symbol signpost.right.and.left.fill
  static const IconData sf_signpost_right_and_left_fill = IconData(0x10176D);

  /// IconData for SF Symbol signpost.right.circle
  static const IconData sf_signpost_right_circle = IconData(0x10178C);

  /// IconData for SF Symbol signpost.right.circle.fill
  static const IconData sf_signpost_right_circle_fill = IconData(0x10178D);

  /// IconData for SF Symbol signpost.right.fill
  static const IconData sf_signpost_right_fill = IconData(0x100BCD);

  /// IconData for SF Symbol simcard
  static const IconData sf_simcard = IconData(0x100805);

  /// IconData for SF Symbol simcard.2
  static const IconData sf_simcard_2 = IconData(0x100879);

  /// IconData for SF Symbol simcard.2.fill
  static const IconData sf_simcard_2_fill = IconData(0x10087A);

  /// IconData for SF Symbol simcard.fill
  static const IconData sf_simcard_fill = IconData(0x100806);

  /// IconData for SF Symbol sink
  static const IconData sf_sink = IconData(0x10142A);

  /// IconData for SF Symbol sink.fill
  static const IconData sf_sink_fill = IconData(0x10142B);

  /// IconData for SF Symbol skateboard
  static const IconData sf_skateboard = IconData(0x1020A9);

  /// IconData for SF Symbol skateboard.fill
  static const IconData sf_skateboard_fill = IconData(0x1020AA);

  /// IconData for SF Symbol skew
  static const IconData sf_skew = IconData(0x100375);

  /// IconData for SF Symbol skis
  static const IconData sf_skis = IconData(0x1020AB);

  /// IconData for SF Symbol skis.fill
  static const IconData sf_skis_fill = IconData(0x1020AC);

  /// IconData for SF Symbol slash.circle
  static const IconData sf_slash_circle = IconData(0x100567);

  /// IconData for SF Symbol slash.circle.fill
  static const IconData sf_slash_circle_fill = IconData(0x100568);

  /// IconData for SF Symbol sleep
  static const IconData sf_sleep = IconData(0x10071A);

  /// IconData for SF Symbol sleep.circle
  static const IconData sf_sleep_circle = IconData(0x100D9F);

  /// IconData for SF Symbol sleep.circle.fill
  static const IconData sf_sleep_circle_fill = IconData(0x100DA0);

  /// IconData for SF Symbol slider.horizontal.2.gobackward
  static const IconData sf_slider_horizontal_2_gobackward = IconData(0x10168C);

  /// IconData for SF Symbol slider.horizontal.2.rectangle.and.arrow.triangle.2.circlepath
  static const IconData
      sf_slider_horizontal_2_rectangle_and_arrow_triangle_2_circlepath =
      IconData(0x10114A);

  /// IconData for SF Symbol slider.horizontal.2.square
  static const IconData sf_slider_horizontal_2_square = IconData(0x101D64);

  /// IconData for SF Symbol slider.horizontal.2.square.badge.arrow.down
  static const IconData sf_slider_horizontal_2_square_badge_arrow_down =
      IconData(0x10168B);

  /// IconData for SF Symbol slider.horizontal.2.square.on.square
  static const IconData sf_slider_horizontal_2_square_on_square =
      IconData(0x10168A);

  /// IconData for SF Symbol slider.horizontal.3
  static const IconData sf_slider_horizontal_3 = IconData(0x100306);

  /// IconData for SF Symbol slider.horizontal.below.rectangle
  static const IconData sf_slider_horizontal_below_rectangle =
      IconData(0x100417);

  /// IconData for SF Symbol slider.horizontal.below.square.and.square.filled
  static const IconData sf_slider_horizontal_below_square_and_square_filled =
      IconData(0x101404);

  /// IconData for SF Symbol slider.horizontal.below.square.filled.and.square
  static const IconData sf_slider_horizontal_below_square_filled_and_square =
      IconData(0x100C17);

  /// IconData for SF Symbol slider.horizontal.below.sun.max
  static const IconData sf_slider_horizontal_below_sun_max = IconData(0x101FCC);

  /// IconData for SF Symbol slider.vertical.3
  static const IconData sf_slider_vertical_3 = IconData(0x1007F2);

  /// IconData for SF Symbol slowmo
  static const IconData sf_slowmo = IconData(0x1001F1);

  /// IconData for SF Symbol smallcircle.circle
  static const IconData sf_smallcircle_circle = IconData(0x10056A);

  /// IconData for SF Symbol smallcircle.circle.fill
  static const IconData sf_smallcircle_circle_fill = IconData(0x10056B);

  /// IconData for SF Symbol smallcircle.filled.circle
  static const IconData sf_smallcircle_filled_circle = IconData(0x100377);

  /// IconData for SF Symbol smallcircle.filled.circle.fill
  static const IconData sf_smallcircle_filled_circle_fill = IconData(0x100569);

  /// IconData for SF Symbol smartphone
  static const IconData sf_smartphone = IconData(0x10192B);

  /// IconData for SF Symbol smoke
  static const IconData sf_smoke = IconData(0x1001E2);

  /// IconData for SF Symbol smoke.circle
  static const IconData sf_smoke_circle = IconData(0x1016ED);

  /// IconData for SF Symbol smoke.circle.fill
  static const IconData sf_smoke_circle_fill = IconData(0x1016EE);

  /// IconData for SF Symbol smoke.fill
  static const IconData sf_smoke_fill = IconData(0x1001E3);

  /// IconData for SF Symbol snowboard
  static const IconData sf_snowboard = IconData(0x1020AD);

  /// IconData for SF Symbol snowboard.fill
  static const IconData sf_snowboard_fill = IconData(0x1020AE);

  /// IconData for SF Symbol snowflake
  static const IconData sf_snowflake = IconData(0x1001E5);

  /// IconData for SF Symbol snowflake.circle
  static const IconData sf_snowflake_circle = IconData(0x1011CC);

  /// IconData for SF Symbol snowflake.circle.fill
  static const IconData sf_snowflake_circle_fill = IconData(0x1011CD);

  /// IconData for SF Symbol snowflake.road.lane
  static const IconData sf_snowflake_road_lane = IconData(0x101579);

  /// IconData for SF Symbol snowflake.road.lane.dashed
  static const IconData sf_snowflake_road_lane_dashed = IconData(0x101580);

  /// IconData for SF Symbol snowflake.slash
  static const IconData sf_snowflake_slash = IconData(0x101802);

  /// IconData for SF Symbol soccerball
  static const IconData sf_soccerball = IconData(0x1009A5);

  /// IconData for SF Symbol soccerball.circle
  static const IconData sf_soccerball_circle = IconData(0x1016B8);

  /// IconData for SF Symbol soccerball.circle.fill
  static const IconData sf_soccerball_circle_fill = IconData(0x1016B9);

  /// IconData for SF Symbol soccerball.circle.fill.inverse
  static const IconData sf_soccerball_circle_fill_inverse = IconData(0x10173D);

  /// IconData for SF Symbol soccerball.circle.inverse
  static const IconData sf_soccerball_circle_inverse = IconData(0x1016BA);

  /// IconData for SF Symbol soccerball.inverse
  static const IconData sf_soccerball_inverse = IconData(0x1015C8);

  /// IconData for SF Symbol sofa
  static const IconData sf_sofa = IconData(0x101432);

  /// IconData for SF Symbol sofa.fill
  static const IconData sf_sofa_fill = IconData(0x101433);

  /// IconData for SF Symbol sos
  static const IconData sf_sos = IconData(0x100725);

  /// IconData for SF Symbol sos.circle
  static const IconData sf_sos_circle = IconData(0x1017AA);

  /// IconData for SF Symbol sos.circle.fill
  static const IconData sf_sos_circle_fill = IconData(0x1017AB);

  /// IconData for SF Symbol space
  static const IconData sf_space = IconData(0x10107A);

  /// IconData for SF Symbol sparkle
  static const IconData sf_sparkle = IconData(0x100AF8);

  /// IconData for SF Symbol sparkle.magnifyingglass
  static const IconData sf_sparkle_magnifyingglass = IconData(0x1011E5);

  /// IconData for SF Symbol sparkles
  static const IconData sf_sparkles = IconData(0x1001BF);

  /// IconData for SF Symbol sparkles.rectangle.stack
  static const IconData sf_sparkles_rectangle_stack = IconData(0x100CB3);

  /// IconData for SF Symbol sparkles.rectangle.stack.fill
  static const IconData sf_sparkles_rectangle_stack_fill = IconData(0x100CB4);

  /// IconData for SF Symbol sparkles.square.filled.on.square
  static const IconData sf_sparkles_square_filled_on_square =
      IconData(0x100C19);

  /// IconData for SF Symbol sparkles.tv
  static const IconData sf_sparkles_tv = IconData(0x10114B);

  /// IconData for SF Symbol sparkles.tv.fill
  static const IconData sf_sparkles_tv_fill = IconData(0x10114C);

  /// IconData for SF Symbol speaker
  static const IconData sf_speaker = IconData(0x1002A0);

  /// IconData for SF Symbol speaker.badge.exclamationmark
  static const IconData sf_speaker_badge_exclamationmark = IconData(0x100F8F);

  /// IconData for SF Symbol speaker.badge.exclamationmark.fill
  static const IconData sf_speaker_badge_exclamationmark_fill =
      IconData(0x100F90);

  /// IconData for SF Symbol speaker.circle
  static const IconData sf_speaker_circle = IconData(0x100EC1);

  /// IconData for SF Symbol speaker.circle.fill
  static const IconData sf_speaker_circle_fill = IconData(0x100EC2);

  /// IconData for SF Symbol speaker.fill
  static const IconData sf_speaker_fill = IconData(0x1002A1);

  /// IconData for SF Symbol speaker.minus
  static const IconData sf_speaker_minus = IconData(0x10170C);

  /// IconData for SF Symbol speaker.minus.fill
  static const IconData sf_speaker_minus_fill = IconData(0x10170D);

  /// IconData for SF Symbol speaker.plus
  static const IconData sf_speaker_plus = IconData(0x10170A);

  /// IconData for SF Symbol speaker.plus.fill
  static const IconData sf_speaker_plus_fill = IconData(0x10170B);

  /// IconData for SF Symbol speaker.slash
  static const IconData sf_speaker_slash = IconData(0x1002A2);

  /// IconData for SF Symbol speaker.slash.circle
  static const IconData sf_speaker_slash_circle = IconData(0x100AE0);

  /// IconData for SF Symbol speaker.slash.circle.fill
  static const IconData sf_speaker_slash_circle_fill = IconData(0x100AE1);

  /// IconData for SF Symbol speaker.slash.fill
  static const IconData sf_speaker_slash_fill = IconData(0x1002A3);

  /// IconData for SF Symbol speaker.square
  static const IconData sf_speaker_square = IconData(0x100F45);

  /// IconData for SF Symbol speaker.square.fill
  static const IconData sf_speaker_square_fill = IconData(0x100F46);

  /// IconData for SF Symbol speaker.wave.1
  static const IconData sf_speaker_wave_1 = IconData(0x1002A4);

  /// IconData for SF Symbol speaker.wave.1.fill
  static const IconData sf_speaker_wave_1_fill = IconData(0x1002A5);

  /// IconData for SF Symbol speaker.wave.2
  static const IconData sf_speaker_wave_2 = IconData(0x1002A6);

  /// IconData for SF Symbol speaker.wave.2.bubble
  static const IconData sf_speaker_wave_2_bubble = IconData(0x1015EE);

  /// IconData for SF Symbol speaker.wave.2.bubble.fill
  static const IconData sf_speaker_wave_2_bubble_fill = IconData(0x1015EF);

  /// IconData for SF Symbol speaker.wave.2.circle
  static const IconData sf_speaker_wave_2_circle = IconData(0x100951);

  /// IconData for SF Symbol speaker.wave.2.circle.fill
  static const IconData sf_speaker_wave_2_circle_fill = IconData(0x100952);

  /// IconData for SF Symbol speaker.wave.2.fill
  static const IconData sf_speaker_wave_2_fill = IconData(0x1002A7);

  /// IconData for SF Symbol speaker.wave.3
  static const IconData sf_speaker_wave_3 = IconData(0x1002A8);

  /// IconData for SF Symbol speaker.wave.3.fill
  static const IconData sf_speaker_wave_3_fill = IconData(0x1002A9);

  /// IconData for SF Symbol speaker.zzz
  static const IconData sf_speaker_zzz = IconData(0x10030A);

  /// IconData for SF Symbol speaker.zzz.fill
  static const IconData sf_speaker_zzz_fill = IconData(0x10045E);

  /// IconData for SF Symbol spigot
  static const IconData sf_spigot = IconData(0x1014BE);

  /// IconData for SF Symbol spigot.fill
  static const IconData sf_spigot_fill = IconData(0x1014BF);

  /// IconData for SF Symbol sportscourt
  static const IconData sf_sportscourt = IconData(0x100750);

  /// IconData for SF Symbol sportscourt.circle
  static const IconData sf_sportscourt_circle = IconData(0x101707);

  /// IconData for SF Symbol sportscourt.circle.fill
  static const IconData sf_sportscourt_circle_fill = IconData(0x101708);

  /// IconData for SF Symbol sportscourt.fill
  static const IconData sf_sportscourt_fill = IconData(0x100751);

  /// IconData for SF Symbol sprinkler
  static const IconData sf_sprinkler = IconData(0x10150C);

  /// IconData for SF Symbol sprinkler.and.droplets
  static const IconData sf_sprinkler_and_droplets = IconData(0x1014BC);

  /// IconData for SF Symbol sprinkler.and.droplets.fill
  static const IconData sf_sprinkler_and_droplets_fill = IconData(0x1014BD);

  /// IconData for SF Symbol sprinkler.fill
  static const IconData sf_sprinkler_fill = IconData(0x10150D);

  /// IconData for SF Symbol square
  static const IconData sf_square = IconData(0x100092);

  /// IconData for SF Symbol square.2.layers.3d
  static const IconData sf_square_2_layers_3d = IconData(0x100BED);

  /// IconData for SF Symbol square.2.layers.3d.bottom.filled
  static const IconData sf_square_2_layers_3d_bottom_filled =
      IconData(0x100BEF);

  /// IconData for SF Symbol square.2.layers.3d.fill
  static const IconData sf_square_2_layers_3d_fill = IconData(0x101E3C);

  /// IconData for SF Symbol square.2.layers.3d.top.filled
  static const IconData sf_square_2_layers_3d_top_filled = IconData(0x100BEE);

  /// IconData for SF Symbol square.3.layers.3d
  static const IconData sf_square_3_layers_3d = IconData(0x100BF0);

  /// IconData for SF Symbol square.3.layers.3d.bottom.filled
  static const IconData sf_square_3_layers_3d_bottom_filled =
      IconData(0x100BF3);

  /// IconData for SF Symbol square.3.layers.3d.down.backward
  static const IconData sf_square_3_layers_3d_down_backward =
      IconData(0x1012DC);

  /// IconData for SF Symbol square.3.layers.3d.down.forward
  static const IconData sf_square_3_layers_3d_down_forward = IconData(0x1012DB);

  /// IconData for SF Symbol square.3.layers.3d.down.left
  static const IconData sf_square_3_layers_3d_down_left = IconData(0x10127C);

  /// IconData for SF Symbol square.3.layers.3d.down.left.slash
  static const IconData sf_square_3_layers_3d_down_left_slash =
      IconData(0x1012FD);

  /// IconData for SF Symbol square.3.layers.3d.down.right
  static const IconData sf_square_3_layers_3d_down_right = IconData(0x10127D);

  /// IconData for SF Symbol square.3.layers.3d.down.right.slash
  static const IconData sf_square_3_layers_3d_down_right_slash =
      IconData(0x1012FC);

  /// IconData for SF Symbol square.3.layers.3d.middle.filled
  static const IconData sf_square_3_layers_3d_middle_filled =
      IconData(0x100BF2);

  /// IconData for SF Symbol square.3.layers.3d.slash
  static const IconData sf_square_3_layers_3d_slash = IconData(0x101305);

  /// IconData for SF Symbol square.3.layers.3d.top.filled
  static const IconData sf_square_3_layers_3d_top_filled = IconData(0x100BF1);

  /// IconData for SF Symbol square.and.arrow.down
  static const IconData sf_square_and_arrow_down = IconData(0x100204);

  /// IconData for SF Symbol square.and.arrow.down.fill
  static const IconData sf_square_and_arrow_down_fill = IconData(0x100205);

  /// IconData for SF Symbol square.and.arrow.down.on.square
  static const IconData sf_square_and_arrow_down_on_square = IconData(0x100208);

  /// IconData for SF Symbol square.and.arrow.down.on.square.fill
  static const IconData sf_square_and_arrow_down_on_square_fill =
      IconData(0x100209);

  /// IconData for SF Symbol square.and.arrow.up
  static const IconData sf_square_and_arrow_up = IconData(0x100202);

  /// IconData for SF Symbol square.and.arrow.up.badge.clock
  static const IconData sf_square_and_arrow_up_badge_clock = IconData(0x1022CD);

  /// IconData for SF Symbol square.and.arrow.up.circle
  static const IconData sf_square_and_arrow_up_circle = IconData(0x101145);

  /// IconData for SF Symbol square.and.arrow.up.circle.fill
  static const IconData sf_square_and_arrow_up_circle_fill = IconData(0x101146);

  /// IconData for SF Symbol square.and.arrow.up.fill
  static const IconData sf_square_and_arrow_up_fill = IconData(0x100203);

  /// IconData for SF Symbol square.and.arrow.up.on.square
  static const IconData sf_square_and_arrow_up_on_square = IconData(0x100206);

  /// IconData for SF Symbol square.and.arrow.up.on.square.fill
  static const IconData sf_square_and_arrow_up_on_square_fill =
      IconData(0x100207);

  /// IconData for SF Symbol square.and.arrow.up.trianglebadge.exclamationmark
  static const IconData sf_square_and_arrow_up_trianglebadge_exclamationmark =
      IconData(0x10109A);

  /// IconData for SF Symbol square.and.at.rectangle
  static const IconData sf_square_and_at_rectangle = IconData(0x10098F);

  /// IconData for SF Symbol square.and.at.rectangle.fill
  static const IconData sf_square_and_at_rectangle_fill = IconData(0x100FD1);

  /// IconData for SF Symbol square.and.line.vertical.and.square
  static const IconData sf_square_and_line_vertical_and_square =
      IconData(0x100411);

  /// IconData for SF Symbol square.and.line.vertical.and.square.filled
  static const IconData sf_square_and_line_vertical_and_square_filled =
      IconData(0x100414);

  /// IconData for SF Symbol square.and.pencil
  static const IconData sf_square_and_pencil = IconData(0x10020E);

  /// IconData for SF Symbol square.and.pencil.circle
  static const IconData sf_square_and_pencil_circle = IconData(0x1015D9);

  /// IconData for SF Symbol square.and.pencil.circle.fill
  static const IconData sf_square_and_pencil_circle_fill = IconData(0x1015DA);

  /// IconData for SF Symbol square.arrowtriangle.4.outward
  static const IconData sf_square_arrowtriangle_4_outward = IconData(0x100839);

  /// IconData for SF Symbol square.badge.plus
  static const IconData sf_square_badge_plus = IconData(0x101949);

  /// IconData for SF Symbol square.badge.plus.fill
  static const IconData sf_square_badge_plus_fill = IconData(0x10194A);

  /// IconData for SF Symbol square.bottomhalf.filled
  static const IconData sf_square_bottomhalf_filled = IconData(0x100A9A);

  /// IconData for SF Symbol square.bottomthird.inset.filled
  static const IconData sf_square_bottomthird_inset_filled = IconData(0x1014A1);

  /// IconData for SF Symbol square.circle
  static const IconData sf_square_circle = IconData(0x100A03);

  /// IconData for SF Symbol square.circle.fill
  static const IconData sf_square_circle_fill = IconData(0x100A04);

  /// IconData for SF Symbol square.dashed
  static const IconData sf_square_dashed = IconData(0x1004D4);

  /// IconData for SF Symbol square.dashed.inset.filled
  static const IconData sf_square_dashed_inset_filled = IconData(0x1009D1);

  /// IconData for SF Symbol square.dotted
  static const IconData sf_square_dotted = IconData(0x101293);

  /// IconData for SF Symbol square.fill
  static const IconData sf_square_fill = IconData(0x100093);

  /// IconData for SF Symbol square.fill.and.line.vertical.and.square.fill
  static const IconData sf_square_fill_and_line_vertical_and_square_fill =
      IconData(0x100412);

  /// IconData for SF Symbol square.fill.on.circle.fill
  static const IconData sf_square_fill_on_circle_fill = IconData(0x10040A);

  /// IconData for SF Symbol square.fill.on.square.fill
  static const IconData sf_square_fill_on_square_fill = IconData(0x100406);

  /// IconData for SF Symbol square.fill.text.grid.1x2
  static const IconData sf_square_fill_text_grid_1x2 = IconData(0x100B5E);

  /// IconData for SF Symbol square.filled.and.line.vertical.and.square
  static const IconData sf_square_filled_and_line_vertical_and_square =
      IconData(0x100413);

  /// IconData for SF Symbol square.filled.on.square
  static const IconData sf_square_filled_on_square = IconData(0x100ADD);

  /// IconData for SF Symbol square.grid.2x2
  static const IconData sf_square_grid_2x2 = IconData(0x1001F7);

  /// IconData for SF Symbol square.grid.2x2.fill
  static const IconData sf_square_grid_2x2_fill = IconData(0x100688);

  /// IconData for SF Symbol square.grid.3x1.below.line.grid.1x2
  static const IconData sf_square_grid_3x1_below_line_grid_1x2 =
      IconData(0x1004D9);

  /// IconData for SF Symbol square.grid.3x1.below.line.grid.1x2.fill
  static const IconData sf_square_grid_3x1_below_line_grid_1x2_fill =
      IconData(0x100932);

  /// IconData for SF Symbol square.grid.3x1.folder.badge.plus
  static const IconData sf_square_grid_3x1_folder_badge_plus =
      IconData(0x1008D5);

  /// IconData for SF Symbol square.grid.3x1.folder.fill.badge.plus
  static const IconData sf_square_grid_3x1_folder_fill_badge_plus =
      IconData(0x1008D6);

  /// IconData for SF Symbol square.grid.3x2
  static const IconData sf_square_grid_3x2 = IconData(0x1001F5);

  /// IconData for SF Symbol square.grid.3x2.fill
  static const IconData sf_square_grid_3x2_fill = IconData(0x100687);

  /// IconData for SF Symbol square.grid.3x3
  static const IconData sf_square_grid_3x3 = IconData(0x1009B2);

  /// IconData for SF Symbol square.grid.3x3.bottomleft.filled
  static const IconData sf_square_grid_3x3_bottomleft_filled =
      IconData(0x1009BA);

  /// IconData for SF Symbol square.grid.3x3.bottommiddle.filled
  static const IconData sf_square_grid_3x3_bottommiddle_filled =
      IconData(0x1009BB);

  /// IconData for SF Symbol square.grid.3x3.bottomright.filled
  static const IconData sf_square_grid_3x3_bottomright_filled =
      IconData(0x1009BC);

  /// IconData for SF Symbol square.grid.3x3.fill
  static const IconData sf_square_grid_3x3_fill = IconData(0x1009B3);

  /// IconData for SF Symbol square.grid.3x3.middle.filled
  static const IconData sf_square_grid_3x3_middle_filled = IconData(0x1009B8);

  /// IconData for SF Symbol square.grid.3x3.middleleft.filled
  static const IconData sf_square_grid_3x3_middleleft_filled =
      IconData(0x1009B7);

  /// IconData for SF Symbol square.grid.3x3.middleright.filled
  static const IconData sf_square_grid_3x3_middleright_filled =
      IconData(0x1009B9);

  /// IconData for SF Symbol square.grid.3x3.square
  static const IconData sf_square_grid_3x3_square = IconData(0x100AD0);

  /// IconData for SF Symbol square.grid.3x3.topleft.filled
  static const IconData sf_square_grid_3x3_topleft_filled = IconData(0x1009B4);

  /// IconData for SF Symbol square.grid.3x3.topmiddle.filled
  static const IconData sf_square_grid_3x3_topmiddle_filled =
      IconData(0x1009B5);

  /// IconData for SF Symbol square.grid.3x3.topright.filled
  static const IconData sf_square_grid_3x3_topright_filled = IconData(0x1009B6);

  /// IconData for SF Symbol square.grid.4x3.fill
  static const IconData sf_square_grid_4x3_fill = IconData(0x1004DA);

  /// IconData for SF Symbol square.inset.filled
  static const IconData sf_square_inset_filled = IconData(0x100F98);

  /// IconData for SF Symbol square.leadingthird.inset.filled
  static const IconData sf_square_leadingthird_inset_filled =
      IconData(0x1014A4);

  /// IconData for SF Symbol square.lefthalf.filled
  static const IconData sf_square_lefthalf_filled = IconData(0x100693);

  /// IconData for SF Symbol square.leftthird.inset.filled
  static const IconData sf_square_leftthird_inset_filled = IconData(0x1014A2);

  /// IconData for SF Symbol square.on.circle
  static const IconData sf_square_on_circle = IconData(0x100409);

  /// IconData for SF Symbol square.on.square
  static const IconData sf_square_on_square = IconData(0x100405);

  /// IconData for SF Symbol square.on.square.badge.person.crop
  static const IconData sf_square_on_square_badge_person_crop =
      IconData(0x101670);

  /// IconData for SF Symbol square.on.square.badge.person.crop.fill
  static const IconData sf_square_on_square_badge_person_crop_fill =
      IconData(0x101671);

  /// IconData for SF Symbol square.on.square.dashed
  static const IconData sf_square_on_square_dashed = IconData(0x100BC7);

  /// IconData for SF Symbol square.on.square.intersection.dashed
  static const IconData sf_square_on_square_intersection_dashed =
      IconData(0x10113B);

  /// IconData for SF Symbol square.on.square.squareshape.controlhandles
  static const IconData sf_square_on_square_squareshape_controlhandles =
      IconData(0x100A76);

  /// IconData for SF Symbol square.resize
  static const IconData sf_square_resize = IconData(0x10205F);

  /// IconData for SF Symbol square.resize.down
  static const IconData sf_square_resize_down = IconData(0x101EA0);

  /// IconData for SF Symbol square.resize.up
  static const IconData sf_square_resize_up = IconData(0x101E9F);

  /// IconData for SF Symbol square.righthalf.filled
  static const IconData sf_square_righthalf_filled = IconData(0x100694);

  /// IconData for SF Symbol square.rightthird.inset.filled
  static const IconData sf_square_rightthird_inset_filled = IconData(0x1014A3);

  /// IconData for SF Symbol square.slash
  static const IconData sf_square_slash = IconData(0x1008E6);

  /// IconData for SF Symbol square.slash.fill
  static const IconData sf_square_slash_fill = IconData(0x1008E7);

  /// IconData for SF Symbol square.split.1x2
  static const IconData sf_square_split_1x2 = IconData(0x100570);

  /// IconData for SF Symbol square.split.1x2.fill
  static const IconData sf_square_split_1x2_fill = IconData(0x100571);

  /// IconData for SF Symbol square.split.2x1
  static const IconData sf_square_split_2x1 = IconData(0x1003E0);

  /// IconData for SF Symbol square.split.2x1.fill
  static const IconData sf_square_split_2x1_fill = IconData(0x10061C);

  /// IconData for SF Symbol square.split.2x2
  static const IconData sf_square_split_2x2 = IconData(0x10056E);

  /// IconData for SF Symbol square.split.2x2.fill
  static const IconData sf_square_split_2x2_fill = IconData(0x10056F);

  /// IconData for SF Symbol square.split.bottomrightquarter
  static const IconData sf_square_split_bottomrightquarter = IconData(0x1007FB);

  /// IconData for SF Symbol square.split.bottomrightquarter.fill
  static const IconData sf_square_split_bottomrightquarter_fill =
      IconData(0x1007FC);

  /// IconData for SF Symbol square.split.diagonal
  static const IconData sf_square_split_diagonal = IconData(0x100857);

  /// IconData for SF Symbol square.split.diagonal.2x2
  static const IconData sf_square_split_diagonal_2x2 = IconData(0x100572);

  /// IconData for SF Symbol square.split.diagonal.2x2.fill
  static const IconData sf_square_split_diagonal_2x2_fill = IconData(0x100573);

  /// IconData for SF Symbol square.split.diagonal.fill
  static const IconData sf_square_split_diagonal_fill = IconData(0x100858);

  /// IconData for SF Symbol square.stack
  static const IconData sf_square_stack = IconData(0x10040B);

  /// IconData for SF Symbol square.stack.3d.down.forward
  static const IconData sf_square_stack_3d_down_forward = IconData(0x100C33);

  /// IconData for SF Symbol square.stack.3d.down.forward.fill
  static const IconData sf_square_stack_3d_down_forward_fill =
      IconData(0x100C34);

  /// IconData for SF Symbol square.stack.3d.down.right
  static const IconData sf_square_stack_3d_down_right = IconData(0x10041C);

  /// IconData for SF Symbol square.stack.3d.down.right.fill
  static const IconData sf_square_stack_3d_down_right_fill = IconData(0x10041D);

  /// IconData for SF Symbol square.stack.3d.forward.dottedline
  static const IconData sf_square_stack_3d_forward_dottedline =
      IconData(0x100420);

  /// IconData for SF Symbol square.stack.3d.forward.dottedline.fill
  static const IconData sf_square_stack_3d_forward_dottedline_fill =
      IconData(0x1009CF);

  /// IconData for SF Symbol square.stack.3d.up
  static const IconData sf_square_stack_3d_up = IconData(0x10041E);

  /// IconData for SF Symbol square.stack.3d.up.badge.automatic
  static const IconData sf_square_stack_3d_up_badge_automatic =
      IconData(0x100650);

  /// IconData for SF Symbol square.stack.3d.up.badge.automatic.fill
  static const IconData sf_square_stack_3d_up_badge_automatic_fill =
      IconData(0x100651);

  /// IconData for SF Symbol square.stack.3d.up.fill
  static const IconData sf_square_stack_3d_up_fill = IconData(0x10041F);

  /// IconData for SF Symbol square.stack.3d.up.slash
  static const IconData sf_square_stack_3d_up_slash = IconData(0x100652);

  /// IconData for SF Symbol square.stack.3d.up.slash.fill
  static const IconData sf_square_stack_3d_up_slash_fill = IconData(0x100653);

  /// IconData for SF Symbol square.stack.3d.up.trianglebadge.exclamationmark
  static const IconData sf_square_stack_3d_up_trianglebadge_exclamationmark =
      IconData(0x102161);

  /// IconData for SF Symbol square.stack.3d.up.trianglebadge.exclamationmark.fill
  static const IconData
      sf_square_stack_3d_up_trianglebadge_exclamationmark_fill =
      IconData(0x102162);

  /// IconData for SF Symbol square.stack.fill
  static const IconData sf_square_stack_fill = IconData(0x10040C);

  /// IconData for SF Symbol square.text.square
  static const IconData sf_square_text_square = IconData(0x100EE1);

  /// IconData for SF Symbol square.text.square.fill
  static const IconData sf_square_text_square_fill = IconData(0x100EE2);

  /// IconData for SF Symbol square.tophalf.filled
  static const IconData sf_square_tophalf_filled = IconData(0x100A9B);

  /// IconData for SF Symbol square.topthird.inset.filled
  static const IconData sf_square_topthird_inset_filled = IconData(0x1014A0);

  /// IconData for SF Symbol square.trailingthird.inset.filled
  static const IconData sf_square_trailingthird_inset_filled =
      IconData(0x1014A5);

  /// IconData for SF Symbol squares.below.rectangle
  static const IconData sf_squares_below_rectangle = IconData(0x1003E1);

  /// IconData for SF Symbol squares.leading.rectangle
  static const IconData sf_squares_leading_rectangle = IconData(0x1016AC);

  /// IconData for SF Symbol squares.leading.rectangle.fill
  static const IconData sf_squares_leading_rectangle_fill = IconData(0x102185);

  /// IconData for SF Symbol squareshape
  static const IconData sf_squareshape = IconData(0x1008EE);

  /// IconData for SF Symbol squareshape.controlhandles.on.squareshape.controlhandles
  static const IconData
      sf_squareshape_controlhandles_on_squareshape_controlhandles =
      IconData(0x100A77);

  /// IconData for SF Symbol squareshape.dotted.split.2x2
  static const IconData sf_squareshape_dotted_split_2x2 = IconData(0x1014D3);

  /// IconData for SF Symbol squareshape.dotted.squareshape
  static const IconData sf_squareshape_dotted_squareshape = IconData(0x100A62);

  /// IconData for SF Symbol squareshape.fill
  static const IconData sf_squareshape_fill = IconData(0x1008EF);

  /// IconData for SF Symbol squareshape.split.2x2
  static const IconData sf_squareshape_split_2x2 = IconData(0x100B9E);

  /// IconData for SF Symbol squareshape.split.2x2.dotted
  static const IconData sf_squareshape_split_2x2_dotted = IconData(0x100B8C);

  /// IconData for SF Symbol squareshape.split.3x3
  static const IconData sf_squareshape_split_3x3 = IconData(0x100B9F);

  /// IconData for SF Symbol squareshape.squareshape.dotted
  static const IconData sf_squareshape_squareshape_dotted = IconData(0x100AF4);

  /// IconData for SF Symbol stairs
  static const IconData sf_stairs = IconData(0x10154B);

  /// IconData for SF Symbol star
  static const IconData sf_star = IconData(0x1002C2);

  /// IconData for SF Symbol star.bubble
  static const IconData sf_star_bubble = IconData(0x1010AA);

  /// IconData for SF Symbol star.bubble.fill
  static const IconData sf_star_bubble_fill = IconData(0x1010AB);

  /// IconData for SF Symbol star.circle
  static const IconData sf_star_circle = IconData(0x1002C5);

  /// IconData for SF Symbol star.circle.fill
  static const IconData sf_star_circle_fill = IconData(0x1002C6);

  /// IconData for SF Symbol star.fill
  static const IconData sf_star_fill = IconData(0x1002C3);

  /// IconData for SF Symbol star.leadinghalf.filled
  static const IconData sf_star_leadinghalf_filled = IconData(0x1002C4);

  /// IconData for SF Symbol star.slash
  static const IconData sf_star_slash = IconData(0x1002C7);

  /// IconData for SF Symbol star.slash.fill
  static const IconData sf_star_slash_fill = IconData(0x1002C8);

  /// IconData for SF Symbol star.square
  static const IconData sf_star_square = IconData(0x100827);

  /// IconData for SF Symbol star.square.fill
  static const IconData sf_star_square_fill = IconData(0x100828);

  /// IconData for SF Symbol star.square.on.square
  static const IconData sf_star_square_on_square = IconData(0x10168D);

  /// IconData for SF Symbol star.square.on.square.fill
  static const IconData sf_star_square_on_square_fill = IconData(0x10168E);

  /// IconData for SF Symbol staroflife
  static const IconData sf_staroflife = IconData(0x100446);

  /// IconData for SF Symbol staroflife.circle
  static const IconData sf_staroflife_circle = IconData(0x1004BA);

  /// IconData for SF Symbol staroflife.circle.fill
  static const IconData sf_staroflife_circle_fill = IconData(0x1004BB);

  /// IconData for SF Symbol staroflife.fill
  static const IconData sf_staroflife_fill = IconData(0x100447);

  /// IconData for SF Symbol staroflife.shield
  static const IconData sf_staroflife_shield = IconData(0x1018D6);

  /// IconData for SF Symbol staroflife.shield.fill
  static const IconData sf_staroflife_shield_fill = IconData(0x1018D7);

  /// IconData for SF Symbol steeringwheel
  static const IconData sf_steeringwheel = IconData(0x1010A9);

  /// IconData for SF Symbol steeringwheel.and.heat.waves
  static const IconData sf_steeringwheel_and_heat_waves = IconData(0x101259);

  /// IconData for SF Symbol steeringwheel.and.key
  static const IconData sf_steeringwheel_and_key = IconData(0x1017BF);

  /// IconData for SF Symbol steeringwheel.and.liquid.wave
  static const IconData sf_steeringwheel_and_liquid_wave = IconData(0x10189F);

  /// IconData for SF Symbol steeringwheel.and.lock
  static const IconData sf_steeringwheel_and_lock = IconData(0x1017C0);

  /// IconData for SF Symbol steeringwheel.arrowtriangle.left
  static const IconData sf_steeringwheel_arrowtriangle_left =
      IconData(0x1015B0);

  /// IconData for SF Symbol steeringwheel.arrowtriangle.right
  static const IconData sf_steeringwheel_arrowtriangle_right =
      IconData(0x1015B1);

  /// IconData for SF Symbol steeringwheel.badge.exclamationmark
  static const IconData sf_steeringwheel_badge_exclamationmark =
      IconData(0x10125B);

  /// IconData for SF Symbol steeringwheel.circle
  static const IconData sf_steeringwheel_circle = IconData(0x101FE2);

  /// IconData for SF Symbol steeringwheel.circle.fill
  static const IconData sf_steeringwheel_circle_fill = IconData(0x101FE3);

  /// IconData for SF Symbol steeringwheel.exclamationmark
  static const IconData sf_steeringwheel_exclamationmark = IconData(0x10125A);

  /// IconData for SF Symbol steeringwheel.road.lane
  static const IconData sf_steeringwheel_road_lane = IconData(0x1015A5);

  /// IconData for SF Symbol steeringwheel.road.lane.dashed
  static const IconData sf_steeringwheel_road_lane_dashed = IconData(0x1015A6);

  /// IconData for SF Symbol steeringwheel.slash
  static const IconData sf_steeringwheel_slash = IconData(0x101849);

  /// IconData for SF Symbol sterlingsign
  static const IconData sf_sterlingsign = IconData(0x101442);

  /// IconData for SF Symbol sterlingsign.arrow.circlepath
  static const IconData sf_sterlingsign_arrow_circlepath = IconData(0x102215);

  /// IconData for SF Symbol sterlingsign.circle
  static const IconData sf_sterlingsign_circle = IconData(0x10059D);

  /// IconData for SF Symbol sterlingsign.circle.fill
  static const IconData sf_sterlingsign_circle_fill = IconData(0x10059E);

  /// IconData for SF Symbol sterlingsign.square
  static const IconData sf_sterlingsign_square = IconData(0x1005DD);

  /// IconData for SF Symbol sterlingsign.square.fill
  static const IconData sf_sterlingsign_square_fill = IconData(0x1005DE);

  /// IconData for SF Symbol stethoscope
  static const IconData sf_stethoscope = IconData(0x10077E);

  /// IconData for SF Symbol stethoscope.circle
  static const IconData sf_stethoscope_circle = IconData(0x1011C4);

  /// IconData for SF Symbol stethoscope.circle.fill
  static const IconData sf_stethoscope_circle_fill = IconData(0x1011C5);

  /// IconData for SF Symbol stop
  static const IconData sf_stop = IconData(0x1006F6);

  /// IconData for SF Symbol stop.circle
  static const IconData sf_stop_circle = IconData(0x10072A);

  /// IconData for SF Symbol stop.circle.fill
  static const IconData sf_stop_circle_fill = IconData(0x10072B);

  /// IconData for SF Symbol stop.fill
  static const IconData sf_stop_fill = IconData(0x1006F7);

  /// IconData for SF Symbol stopwatch
  static const IconData sf_stopwatch = IconData(0x10042F);

  /// IconData for SF Symbol stopwatch.fill
  static const IconData sf_stopwatch_fill = IconData(0x100430);

  /// IconData for SF Symbol storefront
  static const IconData sf_storefront = IconData(0x101F47);

  /// IconData for SF Symbol storefront.circle
  static const IconData sf_storefront_circle = IconData(0x101F49);

  /// IconData for SF Symbol storefront.circle.fill
  static const IconData sf_storefront_circle_fill = IconData(0x101F4A);

  /// IconData for SF Symbol storefront.fill
  static const IconData sf_storefront_fill = IconData(0x101F48);

  /// IconData for SF Symbol stove
  static const IconData sf_stove = IconData(0x101426);

  /// IconData for SF Symbol stove.fill
  static const IconData sf_stove_fill = IconData(0x101427);

  /// IconData for SF Symbol strikethrough
  static const IconData sf_strikethrough = IconData(0x100156);

  /// IconData for SF Symbol stroller
  static const IconData sf_stroller = IconData(0x101796);

  /// IconData for SF Symbol stroller.fill
  static const IconData sf_stroller_fill = IconData(0x101797);

  /// IconData for SF Symbol studentdesk
  static const IconData sf_studentdesk = IconData(0x100454);

  /// IconData for SF Symbol suit.club
  static const IconData sf_suit_club = IconData(0x100483);

  /// IconData for SF Symbol suit.club.fill
  static const IconData sf_suit_club_fill = IconData(0x1002BD);

  /// IconData for SF Symbol suit.diamond
  static const IconData sf_suit_diamond = IconData(0x100484);

  /// IconData for SF Symbol suit.diamond.fill
  static const IconData sf_suit_diamond_fill = IconData(0x1002BF);

  /// IconData for SF Symbol suit.heart
  static const IconData sf_suit_heart = IconData(0x100482);

  /// IconData for SF Symbol suit.heart.fill
  static const IconData sf_suit_heart_fill = IconData(0x1002BC);

  /// IconData for SF Symbol suit.spade
  static const IconData sf_suit_spade = IconData(0x100485);

  /// IconData for SF Symbol suit.spade.fill
  static const IconData sf_suit_spade_fill = IconData(0x1002BE);

  /// IconData for SF Symbol suitcase
  static const IconData sf_suitcase = IconData(0x100D89);

  /// IconData for SF Symbol suitcase.cart
  static const IconData sf_suitcase_cart = IconData(0x100D8B);

  /// IconData for SF Symbol suitcase.cart.fill
  static const IconData sf_suitcase_cart_fill = IconData(0x100D8C);

  /// IconData for SF Symbol suitcase.fill
  static const IconData sf_suitcase_fill = IconData(0x100D8A);

  /// IconData for SF Symbol suitcase.rolling
  static const IconData sf_suitcase_rolling = IconData(0x1017AF);

  /// IconData for SF Symbol suitcase.rolling.fill
  static const IconData sf_suitcase_rolling_fill = IconData(0x1017B0);

  /// IconData for SF Symbol sum
  static const IconData sf_sum = IconData(0x10063D);

  /// IconData for SF Symbol sun.dust
  static const IconData sf_sun_dust = IconData(0x1001B5);

  /// IconData for SF Symbol sun.dust.circle
  static const IconData sf_sun_dust_circle = IconData(0x1016C7);

  /// IconData for SF Symbol sun.dust.circle.fill
  static const IconData sf_sun_dust_circle_fill = IconData(0x1016C8);

  /// IconData for SF Symbol sun.dust.fill
  static const IconData sf_sun_dust_fill = IconData(0x1001B6);

  /// IconData for SF Symbol sun.haze
  static const IconData sf_sun_haze = IconData(0x1001B7);

  /// IconData for SF Symbol sun.haze.circle
  static const IconData sf_sun_haze_circle = IconData(0x1016C9);

  /// IconData for SF Symbol sun.haze.circle.fill
  static const IconData sf_sun_haze_circle_fill = IconData(0x1016CA);

  /// IconData for SF Symbol sun.haze.fill
  static const IconData sf_sun_haze_fill = IconData(0x1001B8);

  /// IconData for SF Symbol sun.horizon
  static const IconData sf_sun_horizon = IconData(0x100EDE);

  /// IconData for SF Symbol sun.horizon.circle
  static const IconData sf_sun_horizon_circle = IconData(0x1016C5);

  /// IconData for SF Symbol sun.horizon.circle.fill
  static const IconData sf_sun_horizon_circle_fill = IconData(0x1016C6);

  /// IconData for SF Symbol sun.horizon.fill
  static const IconData sf_sun_horizon_fill = IconData(0x100EDF);

  /// IconData for SF Symbol sun.max
  static const IconData sf_sun_max = IconData(0x1001AD);

  /// IconData for SF Symbol sun.max.circle
  static const IconData sf_sun_max_circle = IconData(0x100DCE);

  /// IconData for SF Symbol sun.max.circle.fill
  static const IconData sf_sun_max_circle_fill = IconData(0x100DCF);

  /// IconData for SF Symbol sun.max.fill
  static const IconData sf_sun_max_fill = IconData(0x1001AE);

  /// IconData for SF Symbol sun.max.trianglebadge.exclamationmark
  static const IconData sf_sun_max_trianglebadge_exclamationmark =
      IconData(0x10170E);

  /// IconData for SF Symbol sun.max.trianglebadge.exclamationmark.fill
  static const IconData sf_sun_max_trianglebadge_exclamationmark_fill =
      IconData(0x10170F);

  /// IconData for SF Symbol sun.min
  static const IconData sf_sun_min = IconData(0x1001AB);

  /// IconData for SF Symbol sun.min.fill
  static const IconData sf_sun_min_fill = IconData(0x1001AC);

  /// IconData for SF Symbol sun.rain
  static const IconData sf_sun_rain = IconData(0x101DCC);

  /// IconData for SF Symbol sun.rain.circle
  static const IconData sf_sun_rain_circle = IconData(0x101DCE);

  /// IconData for SF Symbol sun.rain.circle.fill
  static const IconData sf_sun_rain_circle_fill = IconData(0x101DCF);

  /// IconData for SF Symbol sun.rain.fill
  static const IconData sf_sun_rain_fill = IconData(0x101DCD);

  /// IconData for SF Symbol sun.snow
  static const IconData sf_sun_snow = IconData(0x101DD0);

  /// IconData for SF Symbol sun.snow.circle
  static const IconData sf_sun_snow_circle = IconData(0x101DD2);

  /// IconData for SF Symbol sun.snow.circle.fill
  static const IconData sf_sun_snow_circle_fill = IconData(0x101DD3);

  /// IconData for SF Symbol sun.snow.fill
  static const IconData sf_sun_snow_fill = IconData(0x101DD1);

  /// IconData for SF Symbol sunglasses
  static const IconData sf_sunglasses = IconData(0x101EC8);

  /// IconData for SF Symbol sunglasses.fill
  static const IconData sf_sunglasses_fill = IconData(0x101EC9);

  /// IconData for SF Symbol sunrise
  static const IconData sf_sunrise = IconData(0x1001B1);

  /// IconData for SF Symbol sunrise.circle
  static const IconData sf_sunrise_circle = IconData(0x1016C1);

  /// IconData for SF Symbol sunrise.circle.fill
  static const IconData sf_sunrise_circle_fill = IconData(0x1016C2);

  /// IconData for SF Symbol sunrise.fill
  static const IconData sf_sunrise_fill = IconData(0x1001B2);

  /// IconData for SF Symbol sunset
  static const IconData sf_sunset = IconData(0x1001B3);

  /// IconData for SF Symbol sunset.circle
  static const IconData sf_sunset_circle = IconData(0x1016C3);

  /// IconData for SF Symbol sunset.circle.fill
  static const IconData sf_sunset_circle_fill = IconData(0x1016C4);

  /// IconData for SF Symbol sunset.fill
  static const IconData sf_sunset_fill = IconData(0x1001B4);

  /// IconData for SF Symbol surfboard
  static const IconData sf_surfboard = IconData(0x1020AF);

  /// IconData for SF Symbol surfboard.fill
  static const IconData sf_surfboard_fill = IconData(0x1020B0);

  /// IconData for SF Symbol suv.side
  static const IconData sf_suv_side = IconData(0x101800);

  /// IconData for SF Symbol suv.side.air.circulate
  static const IconData sf_suv_side_air_circulate = IconData(0x101811);

  /// IconData for SF Symbol suv.side.air.circulate.fill
  static const IconData sf_suv_side_air_circulate_fill = IconData(0x101812);

  /// IconData for SF Symbol suv.side.air.fresh
  static const IconData sf_suv_side_air_fresh = IconData(0x101813);

  /// IconData for SF Symbol suv.side.air.fresh.fill
  static const IconData sf_suv_side_air_fresh_fill = IconData(0x101814);

  /// IconData for SF Symbol suv.side.and.exclamationmark
  static const IconData sf_suv_side_and_exclamationmark = IconData(0x101815);

  /// IconData for SF Symbol suv.side.and.exclamationmark.fill
  static const IconData sf_suv_side_and_exclamationmark_fill =
      IconData(0x101816);

  /// IconData for SF Symbol suv.side.arrowtriangle.down
  static const IconData sf_suv_side_arrowtriangle_down = IconData(0x10181D);

  /// IconData for SF Symbol suv.side.arrowtriangle.down.fill
  static const IconData sf_suv_side_arrowtriangle_down_fill =
      IconData(0x10181E);

  /// IconData for SF Symbol suv.side.arrowtriangle.up
  static const IconData sf_suv_side_arrowtriangle_up = IconData(0x10181B);

  /// IconData for SF Symbol suv.side.arrowtriangle.up.arrowtriangle.down
  static const IconData sf_suv_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101819);

  /// IconData for SF Symbol suv.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData sf_suv_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x10181A);

  /// IconData for SF Symbol suv.side.arrowtriangle.up.fill
  static const IconData sf_suv_side_arrowtriangle_up_fill = IconData(0x10181C);

  /// IconData for SF Symbol suv.side.fill
  static const IconData sf_suv_side_fill = IconData(0x101801);

  /// IconData for SF Symbol suv.side.front.open
  static const IconData sf_suv_side_front_open = IconData(0x10180D);

  /// IconData for SF Symbol suv.side.front.open.fill
  static const IconData sf_suv_side_front_open_fill = IconData(0x10180E);

  /// IconData for SF Symbol suv.side.hill.down
  static const IconData sf_suv_side_hill_down = IconData(0x101950);

  /// IconData for SF Symbol suv.side.hill.down.fill
  static const IconData sf_suv_side_hill_down_fill = IconData(0x101951);

  /// IconData for SF Symbol suv.side.hill.up
  static const IconData sf_suv_side_hill_up = IconData(0x10190F);

  /// IconData for SF Symbol suv.side.hill.up.fill
  static const IconData sf_suv_side_hill_up_fill = IconData(0x101910);

  /// IconData for SF Symbol suv.side.lock
  static const IconData sf_suv_side_lock = IconData(0x101900);

  /// IconData for SF Symbol suv.side.lock.fill
  static const IconData sf_suv_side_lock_fill = IconData(0x101901);

  /// IconData for SF Symbol suv.side.lock.open
  static const IconData sf_suv_side_lock_open = IconData(0x101902);

  /// IconData for SF Symbol suv.side.lock.open.fill
  static const IconData sf_suv_side_lock_open_fill = IconData(0x101903);

  /// IconData for SF Symbol suv.side.rear.open
  static const IconData sf_suv_side_rear_open = IconData(0x10180F);

  /// IconData for SF Symbol suv.side.rear.open.fill
  static const IconData sf_suv_side_rear_open_fill = IconData(0x101810);

  /// IconData for SF Symbol swatchpalette
  static const IconData sf_swatchpalette = IconData(0x101667);

  /// IconData for SF Symbol swatchpalette.fill
  static const IconData sf_swatchpalette_fill = IconData(0x101668);

  /// IconData for SF Symbol swedishkronasign
  static const IconData sf_swedishkronasign = IconData(0x10192D);

  /// IconData for SF Symbol swedishkronasign.arrow.circlepath
  static const IconData sf_swedishkronasign_arrow_circlepath =
      IconData(0x102236);

  /// IconData for SF Symbol swedishkronasign.circle
  static const IconData sf_swedishkronasign_circle = IconData(0x100BA8);

  /// IconData for SF Symbol swedishkronasign.circle.fill
  static const IconData sf_swedishkronasign_circle_fill = IconData(0x100BA9);

  /// IconData for SF Symbol swedishkronasign.square
  static const IconData sf_swedishkronasign_square = IconData(0x100BAA);

  /// IconData for SF Symbol swedishkronasign.square.fill
  static const IconData sf_swedishkronasign_square_fill = IconData(0x100BAB);

  /// IconData for SF Symbol swift
  static const IconData sf_swift = IconData(0x100ACA);

  /// IconData for SF Symbol swiftdata
  static const IconData sf_swiftdata = IconData(0x1015EB);

  /// IconData for SF Symbol swirl.circle.righthalf.filled
  static const IconData sf_swirl_circle_righthalf_filled = IconData(0x101E62);

  /// IconData for SF Symbol swirl.circle.righthalf.filled.inverse
  static const IconData sf_swirl_circle_righthalf_filled_inverse =
      IconData(0x101E6A);

  /// IconData for SF Symbol switch.2
  static const IconData sf_switch_2 = IconData(0x10070A);

  /// IconData for SF Symbol switch.programmable
  static const IconData sf_switch_programmable = IconData(0x101573);

  /// IconData for SF Symbol switch.programmable.fill
  static const IconData sf_switch_programmable_fill = IconData(0x101600);

  /// IconData for SF Symbol switch.programmable.square
  static const IconData sf_switch_programmable_square = IconData(0x101574);

  /// IconData for SF Symbol switch.programmable.square.fill
  static const IconData sf_switch_programmable_square_fill = IconData(0x101575);

  /// IconData for SF Symbol syringe
  static const IconData sf_syringe = IconData(0x100837);

  /// IconData for SF Symbol syringe.fill
  static const IconData sf_syringe_fill = IconData(0x100838);

  /// IconData for SF Symbol t.circle
  static const IconData sf_t_circle = IconData(0x10002A);

  /// IconData for SF Symbol t.circle.fill
  static const IconData sf_t_circle_fill = IconData(0x10002B);

  /// IconData for SF Symbol t.square
  static const IconData sf_t_square = IconData(0x1000BA);

  /// IconData for SF Symbol t.square.fill
  static const IconData sf_t_square_fill = IconData(0x1000BB);

  /// IconData for SF Symbol table.furniture
  static const IconData sf_table_furniture = IconData(0x101430);

  /// IconData for SF Symbol table.furniture.fill
  static const IconData sf_table_furniture_fill = IconData(0x101431);

  /// IconData for SF Symbol tablecells
  static const IconData sf_tablecells = IconData(0x1003E3);

  /// IconData for SF Symbol tablecells.badge.ellipsis
  static const IconData sf_tablecells_badge_ellipsis = IconData(0x1003E5);

  /// IconData for SF Symbol tablecells.fill
  static const IconData sf_tablecells_fill = IconData(0x1003E4);

  /// IconData for SF Symbol tablecells.fill.badge.ellipsis
  static const IconData sf_tablecells_fill_badge_ellipsis = IconData(0x1003E6);

  /// IconData for SF Symbol tag
  static const IconData sf_tag = IconData(0x1002E1);

  /// IconData for SF Symbol tag.circle
  static const IconData sf_tag_circle = IconData(0x1002E3);

  /// IconData for SF Symbol tag.circle.fill
  static const IconData sf_tag_circle_fill = IconData(0x1002E4);

  /// IconData for SF Symbol tag.fill
  static const IconData sf_tag_fill = IconData(0x1002E2);

  /// IconData for SF Symbol tag.slash
  static const IconData sf_tag_slash = IconData(0x1009AB);

  /// IconData for SF Symbol tag.slash.fill
  static const IconData sf_tag_slash_fill = IconData(0x1009AC);

  /// IconData for SF Symbol tag.square
  static const IconData sf_tag_square = IconData(0x100F41);

  /// IconData for SF Symbol tag.square.fill
  static const IconData sf_tag_square_fill = IconData(0x100F42);

  /// IconData for SF Symbol taillight.fog
  static const IconData sf_taillight_fog = IconData(0x100FB8);

  /// IconData for SF Symbol taillight.fog.fill
  static const IconData sf_taillight_fog_fill = IconData(0x100FB9);

  /// IconData for SF Symbol takeoutbag.and.cup.and.straw
  static const IconData sf_takeoutbag_and_cup_and_straw = IconData(0x100ED0);

  /// IconData for SF Symbol takeoutbag.and.cup.and.straw.fill
  static const IconData sf_takeoutbag_and_cup_and_straw_fill =
      IconData(0x100ED1);

  /// IconData for SF Symbol target
  static const IconData sf_target = IconData(0x10088A);

  /// IconData for SF Symbol teddybear
  static const IconData sf_teddybear = IconData(0x100CAC);

  /// IconData for SF Symbol teddybear.fill
  static const IconData sf_teddybear_fill = IconData(0x100CAD);

  /// IconData for SF Symbol teletype
  static const IconData sf_teletype = IconData(0x100348);

  /// IconData for SF Symbol teletype.answer
  static const IconData sf_teletype_answer = IconData(0x100670);

  /// IconData for SF Symbol teletype.answer.circle
  static const IconData sf_teletype_answer_circle = IconData(0x100D26);

  /// IconData for SF Symbol teletype.answer.circle.fill
  static const IconData sf_teletype_answer_circle_fill = IconData(0x100D27);

  /// IconData for SF Symbol teletype.circle
  static const IconData sf_teletype_circle = IconData(0x100705);

  /// IconData for SF Symbol teletype.circle.fill
  static const IconData sf_teletype_circle_fill = IconData(0x100706);

  /// IconData for SF Symbol tengesign
  static const IconData sf_tengesign = IconData(0x10144A);

  /// IconData for SF Symbol tengesign.arrow.circlepath
  static const IconData sf_tengesign_arrow_circlepath = IconData(0x10221D);

  /// IconData for SF Symbol tengesign.circle
  static const IconData sf_tengesign_circle = IconData(0x1005AD);

  /// IconData for SF Symbol tengesign.circle.fill
  static const IconData sf_tengesign_circle_fill = IconData(0x1005AE);

  /// IconData for SF Symbol tengesign.square
  static const IconData sf_tengesign_square = IconData(0x1005ED);

  /// IconData for SF Symbol tengesign.square.fill
  static const IconData sf_tengesign_square_fill = IconData(0x1005EE);

  /// IconData for SF Symbol tennis.racket
  static const IconData sf_tennis_racket = IconData(0x1015CD);

  /// IconData for SF Symbol tennis.racket.circle
  static const IconData sf_tennis_racket_circle = IconData(0x101724);

  /// IconData for SF Symbol tennis.racket.circle.fill
  static const IconData sf_tennis_racket_circle_fill = IconData(0x101725);

  /// IconData for SF Symbol tennisball
  static const IconData sf_tennisball = IconData(0x101726);

  /// IconData for SF Symbol tennisball.circle
  static const IconData sf_tennisball_circle = IconData(0x101728);

  /// IconData for SF Symbol tennisball.circle.fill
  static const IconData sf_tennisball_circle_fill = IconData(0x101729);

  /// IconData for SF Symbol tennisball.fill
  static const IconData sf_tennisball_fill = IconData(0x101727);

  /// IconData for SF Symbol tent
  static const IconData sf_tent = IconData(0x1012E8);

  /// IconData for SF Symbol tent.2
  static const IconData sf_tent_2 = IconData(0x101510);

  /// IconData for SF Symbol tent.2.circle
  static const IconData sf_tent_2_circle = IconData(0x101784);

  /// IconData for SF Symbol tent.2.circle.fill
  static const IconData sf_tent_2_circle_fill = IconData(0x101785);

  /// IconData for SF Symbol tent.2.fill
  static const IconData sf_tent_2_fill = IconData(0x101511);

  /// IconData for SF Symbol tent.circle
  static const IconData sf_tent_circle = IconData(0x101782);

  /// IconData for SF Symbol tent.circle.fill
  static const IconData sf_tent_circle_fill = IconData(0x101783);

  /// IconData for SF Symbol tent.fill
  static const IconData sf_tent_fill = IconData(0x1012E9);

  /// IconData for SF Symbol testtube.2
  static const IconData sf_testtube_2 = IconData(0x1010B6);

  /// IconData for SF Symbol text.aligncenter
  static const IconData sf_text_aligncenter = IconData(0x100301);

  /// IconData for SF Symbol text.alignleft
  static const IconData sf_text_alignleft = IconData(0x100300);

  /// IconData for SF Symbol text.alignright
  static const IconData sf_text_alignright = IconData(0x100302);

  /// IconData for SF Symbol text.and.command.macwindow
  static const IconData sf_text_and_command_macwindow = IconData(0x1008DA);

  /// IconData for SF Symbol text.append
  static const IconData sf_text_append = IconData(0x1002FE);

  /// IconData for SF Symbol text.badge.checkmark
  static const IconData sf_text_badge_checkmark = IconData(0x1002FA);

  /// IconData for SF Symbol text.badge.minus
  static const IconData sf_text_badge_minus = IconData(0x1002F9);

  /// IconData for SF Symbol text.badge.plus
  static const IconData sf_text_badge_plus = IconData(0x1002F8);

  /// IconData for SF Symbol text.badge.star
  static const IconData sf_text_badge_star = IconData(0x1002FC);

  /// IconData for SF Symbol text.badge.xmark
  static const IconData sf_text_badge_xmark = IconData(0x1002FB);

  /// IconData for SF Symbol text.below.photo
  static const IconData sf_text_below_photo = IconData(0x100CB1);

  /// IconData for SF Symbol text.below.photo.fill
  static const IconData sf_text_below_photo_fill = IconData(0x100CB2);

  /// IconData for SF Symbol text.book.closed
  static const IconData sf_text_book_closed = IconData(0x100AD7);

  /// IconData for SF Symbol text.book.closed.fill
  static const IconData sf_text_book_closed_fill = IconData(0x100AD8);

  /// IconData for SF Symbol text.bubble
  static const IconData sf_text_bubble = IconData(0x100332);

  /// IconData for SF Symbol text.bubble.fill
  static const IconData sf_text_bubble_fill = IconData(0x100333);

  /// IconData for SF Symbol text.insert
  static const IconData sf_text_insert = IconData(0x1002FD);

  /// IconData for SF Symbol text.justify
  static const IconData sf_text_justify = IconData(0x100303);

  /// IconData for SF Symbol text.justify.leading
  static const IconData sf_text_justify_leading = IconData(0x101240);

  /// IconData for SF Symbol text.justify.left
  static const IconData sf_text_justify_left = IconData(0x100304);

  /// IconData for SF Symbol text.justify.right
  static const IconData sf_text_justify_right = IconData(0x100305);

  /// IconData for SF Symbol text.justify.trailing
  static const IconData sf_text_justify_trailing = IconData(0x101241);

  /// IconData for SF Symbol text.line.first.and.arrowtriangle.forward
  static const IconData sf_text_line_first_and_arrowtriangle_forward =
      IconData(0x10163F);

  /// IconData for SF Symbol text.line.last.and.arrowtriangle.forward
  static const IconData sf_text_line_last_and_arrowtriangle_forward =
      IconData(0x101640);

  /// IconData for SF Symbol text.magnifyingglass
  static const IconData sf_text_magnifyingglass = IconData(0x100B65);

  /// IconData for SF Symbol text.quote
  static const IconData sf_text_quote = IconData(0x1002FF);

  /// IconData for SF Symbol text.redaction
  static const IconData sf_text_redaction = IconData(0x1009CE);

  /// IconData for SF Symbol text.viewfinder
  static const IconData sf_text_viewfinder = IconData(0x100E43);

  /// IconData for SF Symbol text.word.spacing
  static const IconData sf_text_word_spacing = IconData(0x100D6B);

  /// IconData for SF Symbol textformat
  static const IconData sf_textformat = IconData(0x100152);

  /// IconData for SF Symbol textformat.12
  static const IconData sf_textformat_12 = IconData(0x1015BB);

  /// IconData for SF Symbol textformat.123
  static const IconData sf_textformat_123 = IconData(0x100171);

  /// IconData for SF Symbol textformat.abc
  static const IconData sf_textformat_abc = IconData(0x10016F);

  /// IconData for SF Symbol textformat.abc.dottedunderline
  static const IconData sf_textformat_abc_dottedunderline = IconData(0x100170);

  /// IconData for SF Symbol textformat.alt
  static const IconData sf_textformat_alt = IconData(0x100151);

  /// IconData for SF Symbol textformat.size
  static const IconData sf_textformat_size = IconData(0x100150);

  /// IconData for SF Symbol textformat.size.larger
  static const IconData sf_textformat_size_larger = IconData(0x100D7F);

  /// IconData for SF Symbol textformat.size.smaller
  static const IconData sf_textformat_size_smaller = IconData(0x100D77);

  /// IconData for SF Symbol textformat.subscript
  static const IconData sf_textformat_subscript = IconData(0x1004E1);

  /// IconData for SF Symbol textformat.superscript
  static const IconData sf_textformat_superscript = IconData(0x1004E2);

  /// IconData for SF Symbol theatermask.and.paintbrush
  static const IconData sf_theatermask_and_paintbrush = IconData(0x101518);

  /// IconData for SF Symbol theatermask.and.paintbrush.fill
  static const IconData sf_theatermask_and_paintbrush_fill = IconData(0x101552);

  /// IconData for SF Symbol theatermasks
  static const IconData sf_theatermasks = IconData(0x100EA7);

  /// IconData for SF Symbol theatermasks.circle
  static const IconData sf_theatermasks_circle = IconData(0x1010BB);

  /// IconData for SF Symbol theatermasks.circle.fill
  static const IconData sf_theatermasks_circle_fill = IconData(0x1010BC);

  /// IconData for SF Symbol theatermasks.fill
  static const IconData sf_theatermasks_fill = IconData(0x100EA8);

  /// IconData for SF Symbol thermometer.and.liquid.waves
  static const IconData sf_thermometer_and_liquid_waves = IconData(0x101033);

  /// IconData for SF Symbol thermometer.brakesignal
  static const IconData sf_thermometer_brakesignal = IconData(0x101035);

  /// IconData for SF Symbol thermometer.high
  static const IconData sf_thermometer_high = IconData(0x1013C4);

  /// IconData for SF Symbol thermometer.low
  static const IconData sf_thermometer_low = IconData(0x1013C3);

  /// IconData for SF Symbol thermometer.medium
  static const IconData sf_thermometer_medium = IconData(0x1001EC);

  /// IconData for SF Symbol thermometer.medium.slash
  static const IconData sf_thermometer_medium_slash = IconData(0x1015C4);

  /// IconData for SF Symbol thermometer.snowflake
  static const IconData sf_thermometer_snowflake = IconData(0x1001EB);

  /// IconData for SF Symbol thermometer.snowflake.circle
  static const IconData sf_thermometer_snowflake_circle = IconData(0x1016FB);

  /// IconData for SF Symbol thermometer.snowflake.circle.fill
  static const IconData sf_thermometer_snowflake_circle_fill =
      IconData(0x1016FC);

  /// IconData for SF Symbol thermometer.sun
  static const IconData sf_thermometer_sun = IconData(0x1001EA);

  /// IconData for SF Symbol thermometer.sun.circle
  static const IconData sf_thermometer_sun_circle = IconData(0x1016F9);

  /// IconData for SF Symbol thermometer.sun.circle.fill
  static const IconData sf_thermometer_sun_circle_fill = IconData(0x1016FA);

  /// IconData for SF Symbol thermometer.sun.fill
  static const IconData sf_thermometer_sun_fill = IconData(0x10099C);

  /// IconData for SF Symbol thermometer.transmission
  static const IconData sf_thermometer_transmission = IconData(0x101281);

  /// IconData for SF Symbol thermometer.variable.and.figure
  static const IconData sf_thermometer_variable_and_figure = IconData(0x101DC9);

  /// IconData for SF Symbol thermometer.variable.and.figure.circle
  static const IconData sf_thermometer_variable_and_figure_circle =
      IconData(0x101DCA);

  /// IconData for SF Symbol thermometer.variable.and.figure.circle.fill
  static const IconData sf_thermometer_variable_and_figure_circle_fill =
      IconData(0x101DCB);

  /// IconData for SF Symbol ticket
  static const IconData sf_ticket = IconData(0x100A83);

  /// IconData for SF Symbol ticket.fill
  static const IconData sf_ticket_fill = IconData(0x100A84);

  /// IconData for SF Symbol timelapse
  static const IconData sf_timelapse = IconData(0x1001F2);

  /// IconData for SF Symbol timeline.selection
  static const IconData sf_timeline_selection = IconData(0x1008C2);

  /// IconData for SF Symbol timer
  static const IconData sf_timer = IconData(0x100431);

  /// IconData for SF Symbol timer.circle
  static const IconData sf_timer_circle = IconData(0x101645);

  /// IconData for SF Symbol timer.circle.fill
  static const IconData sf_timer_circle_fill = IconData(0x101646);

  /// IconData for SF Symbol timer.square
  static const IconData sf_timer_square = IconData(0x100B44);

  /// IconData for SF Symbol tirepressure
  static const IconData sf_tirepressure = IconData(0x1018B6);

  /// IconData for SF Symbol togglepower
  static const IconData sf_togglepower = IconData(0x100963);

  /// IconData for SF Symbol toilet
  static const IconData sf_toilet = IconData(0x10143E);

  /// IconData for SF Symbol toilet.circle
  static const IconData sf_toilet_circle = IconData(0x101780);

  /// IconData for SF Symbol toilet.circle.fill
  static const IconData sf_toilet_circle_fill = IconData(0x101781);

  /// IconData for SF Symbol toilet.fill
  static const IconData sf_toilet_fill = IconData(0x10143F);

  /// IconData for SF Symbol tornado
  static const IconData sf_tornado = IconData(0x1001E7);

  /// IconData for SF Symbol tornado.circle
  static const IconData sf_tornado_circle = IconData(0x1016F3);

  /// IconData for SF Symbol tornado.circle.fill
  static const IconData sf_tornado_circle_fill = IconData(0x1016F4);

  /// IconData for SF Symbol tortoise
  static const IconData sf_tortoise = IconData(0x1004D0);

  /// IconData for SF Symbol tortoise.circle
  static const IconData sf_tortoise_circle = IconData(0x10203C);

  /// IconData for SF Symbol tortoise.circle.fill
  static const IconData sf_tortoise_circle_fill = IconData(0x10203D);

  /// IconData for SF Symbol tortoise.fill
  static const IconData sf_tortoise_fill = IconData(0x1004D1);

  /// IconData for SF Symbol torus
  static const IconData sf_torus = IconData(0x100D0C);

  /// IconData for SF Symbol touchid
  static const IconData sf_touchid = IconData(0x1007D2);

  /// IconData for SF Symbol traction.control.tirepressure
  static const IconData sf_traction_control_tirepressure = IconData(0x1018B3);

  /// IconData for SF Symbol traction.control.tirepressure.exclamationmark
  static const IconData sf_traction_control_tirepressure_exclamationmark =
      IconData(0x1018B5);

  /// IconData for SF Symbol traction.control.tirepressure.slash
  static const IconData sf_traction_control_tirepressure_slash =
      IconData(0x1018B4);

  /// IconData for SF Symbol train.side.front.car
  static const IconData sf_train_side_front_car = IconData(0x100F2E);

  /// IconData for SF Symbol train.side.middle.car
  static const IconData sf_train_side_middle_car = IconData(0x100F2F);

  /// IconData for SF Symbol train.side.rear.car
  static const IconData sf_train_side_rear_car = IconData(0x100F30);

  /// IconData for SF Symbol tram
  static const IconData sf_tram = IconData(0x100746);

  /// IconData for SF Symbol tram.circle
  static const IconData sf_tram_circle = IconData(0x100C9B);

  /// IconData for SF Symbol tram.circle.fill
  static const IconData sf_tram_circle_fill = IconData(0x100C9C);

  /// IconData for SF Symbol tram.fill
  static const IconData sf_tram_fill = IconData(0x100747);

  /// IconData for SF Symbol tram.fill.tunnel
  static const IconData sf_tram_fill_tunnel = IconData(0x10071D);

  /// IconData for SF Symbol transmission
  static const IconData sf_transmission = IconData(0x1017CC);

  /// IconData for SF Symbol trapezoid.and.line.horizontal
  static const IconData sf_trapezoid_and_line_horizontal = IconData(0x10085B);

  /// IconData for SF Symbol trapezoid.and.line.horizontal.fill
  static const IconData sf_trapezoid_and_line_horizontal_fill =
      IconData(0x100791);

  /// IconData for SF Symbol trapezoid.and.line.vertical
  static const IconData sf_trapezoid_and_line_vertical = IconData(0x100860);

  /// IconData for SF Symbol trapezoid.and.line.vertical.fill
  static const IconData sf_trapezoid_and_line_vertical_fill =
      IconData(0x100790);

  /// IconData for SF Symbol trash
  static const IconData sf_trash = IconData(0x100211);

  /// IconData for SF Symbol trash.circle
  static const IconData sf_trash_circle = IconData(0x100213);

  /// IconData for SF Symbol trash.circle.fill
  static const IconData sf_trash_circle_fill = IconData(0x100214);

  /// IconData for SF Symbol trash.fill
  static const IconData sf_trash_fill = IconData(0x100212);

  /// IconData for SF Symbol trash.slash
  static const IconData sf_trash_slash = IconData(0x100727);

  /// IconData for SF Symbol trash.slash.circle
  static const IconData sf_trash_slash_circle = IconData(0x100FCD);

  /// IconData for SF Symbol trash.slash.circle.fill
  static const IconData sf_trash_slash_circle_fill = IconData(0x100FCE);

  /// IconData for SF Symbol trash.slash.fill
  static const IconData sf_trash_slash_fill = IconData(0x100728);

  /// IconData for SF Symbol trash.slash.square
  static const IconData sf_trash_slash_square = IconData(0x100FD4);

  /// IconData for SF Symbol trash.slash.square.fill
  static const IconData sf_trash_slash_square_fill = IconData(0x100FD5);

  /// IconData for SF Symbol trash.square
  static const IconData sf_trash_square = IconData(0x100F3D);

  /// IconData for SF Symbol trash.square.fill
  static const IconData sf_trash_square_fill = IconData(0x100F3E);

  /// IconData for SF Symbol tray
  static const IconData sf_tray = IconData(0x100223);

  /// IconData for SF Symbol tray.2
  static const IconData sf_tray_2 = IconData(0x100229);

  /// IconData for SF Symbol tray.2.fill
  static const IconData sf_tray_2_fill = IconData(0x10022A);

  /// IconData for SF Symbol tray.and.arrow.down
  static const IconData sf_tray_and_arrow_down = IconData(0x100227);

  /// IconData for SF Symbol tray.and.arrow.down.fill
  static const IconData sf_tray_and_arrow_down_fill = IconData(0x100228);

  /// IconData for SF Symbol tray.and.arrow.up
  static const IconData sf_tray_and_arrow_up = IconData(0x100225);

  /// IconData for SF Symbol tray.and.arrow.up.fill
  static const IconData sf_tray_and_arrow_up_fill = IconData(0x100226);

  /// IconData for SF Symbol tray.circle
  static const IconData sf_tray_circle = IconData(0x10048C);

  /// IconData for SF Symbol tray.circle.fill
  static const IconData sf_tray_circle_fill = IconData(0x10048D);

  /// IconData for SF Symbol tray.fill
  static const IconData sf_tray_fill = IconData(0x100224);

  /// IconData for SF Symbol tray.full
  static const IconData sf_tray_full = IconData(0x10022B);

  /// IconData for SF Symbol tray.full.fill
  static const IconData sf_tray_full_fill = IconData(0x10022C);

  /// IconData for SF Symbol tree
  static const IconData sf_tree = IconData(0x10176F);

  /// IconData for SF Symbol tree.circle
  static const IconData sf_tree_circle = IconData(0x101794);

  /// IconData for SF Symbol tree.circle.fill
  static const IconData sf_tree_circle_fill = IconData(0x101795);

  /// IconData for SF Symbol tree.fill
  static const IconData sf_tree_fill = IconData(0x101770);

  /// IconData for SF Symbol triangle
  static const IconData sf_triangle = IconData(0x1006E3);

  /// IconData for SF Symbol triangle.bottomhalf.filled
  static const IconData sf_triangle_bottomhalf_filled = IconData(0x101039);

  /// IconData for SF Symbol triangle.circle
  static const IconData sf_triangle_circle = IconData(0x100A05);

  /// IconData for SF Symbol triangle.circle.fill
  static const IconData sf_triangle_circle_fill = IconData(0x100A06);

  /// IconData for SF Symbol triangle.fill
  static const IconData sf_triangle_fill = IconData(0x1006E4);

  /// IconData for SF Symbol triangle.inset.filled
  static const IconData sf_triangle_inset_filled = IconData(0x100F99);

  /// IconData for SF Symbol triangle.lefthalf.filled
  static const IconData sf_triangle_lefthalf_filled = IconData(0x100695);

  /// IconData for SF Symbol triangle.righthalf.filled
  static const IconData sf_triangle_righthalf_filled = IconData(0x100696);

  /// IconData for SF Symbol triangle.tophalf.filled
  static const IconData sf_triangle_tophalf_filled = IconData(0x101038);

  /// IconData for SF Symbol triangleshape
  static const IconData sf_triangleshape = IconData(0x100970);

  /// IconData for SF Symbol triangleshape.fill
  static const IconData sf_triangleshape_fill = IconData(0x100971);

  /// IconData for SF Symbol trophy
  static const IconData sf_trophy = IconData(0x10080F);

  /// IconData for SF Symbol trophy.circle
  static const IconData sf_trophy_circle = IconData(0x101494);

  /// IconData for SF Symbol trophy.circle.fill
  static const IconData sf_trophy_circle_fill = IconData(0x101495);

  /// IconData for SF Symbol trophy.fill
  static const IconData sf_trophy_fill = IconData(0x100810);

  /// IconData for SF Symbol tropicalstorm
  static const IconData sf_tropicalstorm = IconData(0x1001E8);

  /// IconData for SF Symbol tropicalstorm.circle
  static const IconData sf_tropicalstorm_circle = IconData(0x1016F5);

  /// IconData for SF Symbol tropicalstorm.circle.fill
  static const IconData sf_tropicalstorm_circle_fill = IconData(0x1016F6);

  /// IconData for SF Symbol truck.box
  static const IconData sf_truck_box = IconData(0x10107E);

  /// IconData for SF Symbol truck.box.badge.clock
  static const IconData sf_truck_box_badge_clock = IconData(0x101080);

  /// IconData for SF Symbol truck.box.badge.clock.fill
  static const IconData sf_truck_box_badge_clock_fill = IconData(0x101081);

  /// IconData for SF Symbol truck.box.fill
  static const IconData sf_truck_box_fill = IconData(0x10107F);

  /// IconData for SF Symbol truck.pickup.side
  static const IconData sf_truck_pickup_side = IconData(0x101969);

  /// IconData for SF Symbol truck.pickup.side.air.circulate
  static const IconData sf_truck_pickup_side_air_circulate = IconData(0x10196D);

  /// IconData for SF Symbol truck.pickup.side.air.circulate.fill
  static const IconData sf_truck_pickup_side_air_circulate_fill =
      IconData(0x10196E);

  /// IconData for SF Symbol truck.pickup.side.air.fresh
  static const IconData sf_truck_pickup_side_air_fresh = IconData(0x10196F);

  /// IconData for SF Symbol truck.pickup.side.air.fresh.fill
  static const IconData sf_truck_pickup_side_air_fresh_fill =
      IconData(0x101970);

  /// IconData for SF Symbol truck.pickup.side.and.exclamationmark
  static const IconData sf_truck_pickup_side_and_exclamationmark =
      IconData(0x101971);

  /// IconData for SF Symbol truck.pickup.side.and.exclamationmark.fill
  static const IconData sf_truck_pickup_side_and_exclamationmark_fill =
      IconData(0x101972);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.down
  static const IconData sf_truck_pickup_side_arrowtriangle_down =
      IconData(0x101977);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.down.fill
  static const IconData sf_truck_pickup_side_arrowtriangle_down_fill =
      IconData(0x101978);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up
  static const IconData sf_truck_pickup_side_arrowtriangle_up =
      IconData(0x101975);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.arrowtriangle.down
  static const IconData
      sf_truck_pickup_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101973);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData
      sf_truck_pickup_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x101974);

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.fill
  static const IconData sf_truck_pickup_side_arrowtriangle_up_fill =
      IconData(0x101976);

  /// IconData for SF Symbol truck.pickup.side.fill
  static const IconData sf_truck_pickup_side_fill = IconData(0x10196A);

  /// IconData for SF Symbol truck.pickup.side.front.open
  static const IconData sf_truck_pickup_side_front_open = IconData(0x10196B);

  /// IconData for SF Symbol truck.pickup.side.front.open.fill
  static const IconData sf_truck_pickup_side_front_open_fill =
      IconData(0x10196C);

  /// IconData for SF Symbol truck.pickup.side.hill.down
  static const IconData sf_truck_pickup_side_hill_down = IconData(0x101986);

  /// IconData for SF Symbol truck.pickup.side.hill.down.fill
  static const IconData sf_truck_pickup_side_hill_down_fill =
      IconData(0x101987);

  /// IconData for SF Symbol truck.pickup.side.hill.up
  static const IconData sf_truck_pickup_side_hill_up = IconData(0x101817);

  /// IconData for SF Symbol truck.pickup.side.hill.up.fill
  static const IconData sf_truck_pickup_side_hill_up_fill = IconData(0x101818);

  /// IconData for SF Symbol truck.pickup.side.lock
  static const IconData sf_truck_pickup_side_lock = IconData(0x101979);

  /// IconData for SF Symbol truck.pickup.side.lock.fill
  static const IconData sf_truck_pickup_side_lock_fill = IconData(0x10197A);

  /// IconData for SF Symbol truck.pickup.side.lock.open
  static const IconData sf_truck_pickup_side_lock_open = IconData(0x10197B);

  /// IconData for SF Symbol truck.pickup.side.lock.open.fill
  static const IconData sf_truck_pickup_side_lock_open_fill =
      IconData(0x10197C);

  /// IconData for SF Symbol tshirt
  static const IconData sf_tshirt = IconData(0x100FA0);

  /// IconData for SF Symbol tshirt.circle
  static const IconData sf_tshirt_circle = IconData(0x101F6C);

  /// IconData for SF Symbol tshirt.circle.fill
  static const IconData sf_tshirt_circle_fill = IconData(0x101F6D);

  /// IconData for SF Symbol tshirt.fill
  static const IconData sf_tshirt_fill = IconData(0x100FA1);

  /// IconData for SF Symbol tugriksign
  static const IconData sf_tugriksign = IconData(0x101457);

  /// IconData for SF Symbol tugriksign.arrow.circlepath
  static const IconData sf_tugriksign_arrow_circlepath = IconData(0x10222A);

  /// IconData for SF Symbol tugriksign.circle
  static const IconData sf_tugriksign_circle = IconData(0x1005C7);

  /// IconData for SF Symbol tugriksign.circle.fill
  static const IconData sf_tugriksign_circle_fill = IconData(0x1005C8);

  /// IconData for SF Symbol tugriksign.square
  static const IconData sf_tugriksign_square = IconData(0x100607);

  /// IconData for SF Symbol tugriksign.square.fill
  static const IconData sf_tugriksign_square_fill = IconData(0x100608);

  /// IconData for SF Symbol tuningfork
  static const IconData sf_tuningfork = IconData(0x100390);

  /// IconData for SF Symbol turkishlirasign
  static const IconData sf_turkishlirasign = IconData(0x101445);

  /// IconData for SF Symbol turkishlirasign.arrow.circlepath
  static const IconData sf_turkishlirasign_arrow_circlepath =
      IconData(0x102218);

  /// IconData for SF Symbol turkishlirasign.circle
  static const IconData sf_turkishlirasign_circle = IconData(0x1005A3);

  /// IconData for SF Symbol turkishlirasign.circle.fill
  static const IconData sf_turkishlirasign_circle_fill = IconData(0x1005A4);

  /// IconData for SF Symbol turkishlirasign.square
  static const IconData sf_turkishlirasign_square = IconData(0x1005E3);

  /// IconData for SF Symbol turkishlirasign.square.fill
  static const IconData sf_turkishlirasign_square_fill = IconData(0x1005E4);

  /// IconData for SF Symbol tv
  static const IconData sf_tv = IconData(0x1003B2);

  /// IconData for SF Symbol tv.and.hifispeaker.fill
  static const IconData sf_tv_and_hifispeaker_fill = IconData(0x100AD1);

  /// IconData for SF Symbol tv.and.mediabox
  static const IconData sf_tv_and_mediabox = IconData(0x100CB0);

  /// IconData for SF Symbol tv.and.mediabox.fill
  static const IconData sf_tv_and_mediabox_fill = IconData(0x101761);

  /// IconData for SF Symbol tv.badge.wifi
  static const IconData sf_tv_badge_wifi = IconData(0x102181);

  /// IconData for SF Symbol tv.badge.wifi.fill
  static const IconData sf_tv_badge_wifi_fill = IconData(0x102182);

  /// IconData for SF Symbol tv.circle
  static const IconData sf_tv_circle = IconData(0x1003B3);

  /// IconData for SF Symbol tv.circle.fill
  static const IconData sf_tv_circle_fill = IconData(0x1003B4);

  /// IconData for SF Symbol tv.fill
  static const IconData sf_tv_fill = IconData(0x1004B6);

  /// IconData for SF Symbol tv.inset.filled
  static const IconData sf_tv_inset_filled = IconData(0x100DD8);

  /// IconData for SF Symbol tv.slash
  static const IconData sf_tv_slash = IconData(0x1012DE);

  /// IconData for SF Symbol tv.slash.fill
  static const IconData sf_tv_slash_fill = IconData(0x1018D8);

  /// IconData for SF Symbol u.circle
  static const IconData sf_u_circle = IconData(0x10002C);

  /// IconData for SF Symbol u.circle.fill
  static const IconData sf_u_circle_fill = IconData(0x10002D);

  /// IconData for SF Symbol u.square
  static const IconData sf_u_square = IconData(0x1000BC);

  /// IconData for SF Symbol u.square.fill
  static const IconData sf_u_square_fill = IconData(0x1000BD);

  /// IconData for SF Symbol uiwindow.split.2x1
  static const IconData sf_uiwindow_split_2x1 = IconData(0x1003DD);

  /// IconData for SF Symbol umbrella
  static const IconData sf_umbrella = IconData(0x100655);

  /// IconData for SF Symbol umbrella.fill
  static const IconData sf_umbrella_fill = IconData(0x100656);

  /// IconData for SF Symbol umbrella.percent
  static const IconData sf_umbrella_percent = IconData(0x100E30);

  /// IconData for SF Symbol umbrella.percent.fill
  static const IconData sf_umbrella_percent_fill = IconData(0x100E31);

  /// IconData for SF Symbol underline
  static const IconData sf_underline = IconData(0x100155);

  /// IconData for SF Symbol v.circle
  static const IconData sf_v_circle = IconData(0x10002E);

  /// IconData for SF Symbol v.circle.fill
  static const IconData sf_v_circle_fill = IconData(0x10002F);

  /// IconData for SF Symbol v.square
  static const IconData sf_v_square = IconData(0x1000BE);

  /// IconData for SF Symbol v.square.fill
  static const IconData sf_v_square_fill = IconData(0x1000BF);

  /// IconData for SF Symbol vial.viewfinder
  static const IconData sf_vial_viewfinder = IconData(0x10166E);

  /// IconData for SF Symbol video
  static const IconData sf_video = IconData(0x100349);

  /// IconData for SF Symbol video.badge.checkmark
  static const IconData sf_video_badge_checkmark = IconData(0x100BBA);

  /// IconData for SF Symbol video.badge.ellipsis
  static const IconData sf_video_badge_ellipsis = IconData(0x1010CA);

  /// IconData for SF Symbol video.badge.plus
  static const IconData sf_video_badge_plus = IconData(0x10072E);

  /// IconData for SF Symbol video.badge.waveform
  static const IconData sf_video_badge_waveform = IconData(0x100F05);

  /// IconData for SF Symbol video.badge.waveform.fill
  static const IconData sf_video_badge_waveform_fill = IconData(0x100F06);

  /// IconData for SF Symbol video.bubble
  static const IconData sf_video_bubble = IconData(0x100C70);

  /// IconData for SF Symbol video.bubble.fill
  static const IconData sf_video_bubble_fill = IconData(0x100C71);

  /// IconData for SF Symbol video.circle
  static const IconData sf_video_circle = IconData(0x10034B);

  /// IconData for SF Symbol video.circle.fill
  static const IconData sf_video_circle_fill = IconData(0x10034C);

  /// IconData for SF Symbol video.doorbell
  static const IconData sf_video_doorbell = IconData(0x1014DF);

  /// IconData for SF Symbol video.doorbell.fill
  static const IconData sf_video_doorbell_fill = IconData(0x1014E0);

  /// IconData for SF Symbol video.fill
  static const IconData sf_video_fill = IconData(0x10034A);

  /// IconData for SF Symbol video.fill.badge.checkmark
  static const IconData sf_video_fill_badge_checkmark = IconData(0x100BBB);

  /// IconData for SF Symbol video.fill.badge.ellipsis
  static const IconData sf_video_fill_badge_ellipsis = IconData(0x1010CB);

  /// IconData for SF Symbol video.fill.badge.plus
  static const IconData sf_video_fill_badge_plus = IconData(0x10072F);

  /// IconData for SF Symbol video.slash
  static const IconData sf_video_slash = IconData(0x10034D);

  /// IconData for SF Symbol video.slash.circle
  static const IconData sf_video_slash_circle = IconData(0x101F84);

  /// IconData for SF Symbol video.slash.circle.fill
  static const IconData sf_video_slash_circle_fill = IconData(0x101F85);

  /// IconData for SF Symbol video.slash.fill
  static const IconData sf_video_slash_fill = IconData(0x10034E);

  /// IconData for SF Symbol video.square
  static const IconData sf_video_square = IconData(0x100F49);

  /// IconData for SF Symbol video.square.fill
  static const IconData sf_video_square_fill = IconData(0x100F4A);

  /// IconData for SF Symbol videoprojector
  static const IconData sf_videoprojector = IconData(0x1014AE);

  /// IconData for SF Symbol videoprojector.fill
  static const IconData sf_videoprojector_fill = IconData(0x1014AF);

  /// IconData for SF Symbol view.2d
  static const IconData sf_view_2d = IconData(0x100159);

  /// IconData for SF Symbol view.3d
  static const IconData sf_view_3d = IconData(0x10016A);

  /// IconData for SF Symbol viewfinder
  static const IconData sf_viewfinder = IconData(0x1003B9);

  /// IconData for SF Symbol viewfinder.circle
  static const IconData sf_viewfinder_circle = IconData(0x1003BF);

  /// IconData for SF Symbol viewfinder.circle.fill
  static const IconData sf_viewfinder_circle_fill = IconData(0x1003C0);

  /// IconData for SF Symbol viewfinder.rectangular
  static const IconData sf_viewfinder_rectangular = IconData(0x101E7F);

  /// IconData for SF Symbol viewfinder.trianglebadge.exclamationmark
  static const IconData sf_viewfinder_trianglebadge_exclamationmark =
      IconData(0x1018D3);

  /// IconData for SF Symbol visionpro
  static const IconData sf_visionpro = IconData(0x101396);

  /// IconData for SF Symbol visionpro.and.arrow.forward
  static const IconData sf_visionpro_and_arrow_forward = IconData(0x101CD4);

  /// IconData for SF Symbol visionpro.and.arrow.forward.fill
  static const IconData sf_visionpro_and_arrow_forward_fill =
      IconData(0x101CD5);

  /// IconData for SF Symbol visionpro.badge.exclamationmark
  static const IconData sf_visionpro_badge_exclamationmark = IconData(0x101DC7);

  /// IconData for SF Symbol visionpro.badge.exclamationmark.fill
  static const IconData sf_visionpro_badge_exclamationmark_fill =
      IconData(0x101DC8);

  /// IconData for SF Symbol visionpro.badge.play
  static const IconData sf_visionpro_badge_play = IconData(0x101F3F);

  /// IconData for SF Symbol visionpro.badge.play.fill
  static const IconData sf_visionpro_badge_play_fill = IconData(0x101F40);

  /// IconData for SF Symbol visionpro.circle
  static const IconData sf_visionpro_circle = IconData(0x10217F);

  /// IconData for SF Symbol visionpro.circle.fill
  static const IconData sf_visionpro_circle_fill = IconData(0x102180);

  /// IconData for SF Symbol visionpro.fill
  static const IconData sf_visionpro_fill = IconData(0x101398);

  /// IconData for SF Symbol visionpro.slash
  static const IconData sf_visionpro_slash = IconData(0x101F43);

  /// IconData for SF Symbol visionpro.slash.circle
  static const IconData sf_visionpro_slash_circle = IconData(0x10219E);

  /// IconData for SF Symbol visionpro.slash.circle.fill
  static const IconData sf_visionpro_slash_circle_fill = IconData(0x10219F);

  /// IconData for SF Symbol visionpro.slash.fill
  static const IconData sf_visionpro_slash_fill = IconData(0x101F44);

  /// IconData for SF Symbol voiceover
  static const IconData sf_voiceover = IconData(0x100B7B);

  /// IconData for SF Symbol volleyball
  static const IconData sf_volleyball = IconData(0x10172A);

  /// IconData for SF Symbol volleyball.circle
  static const IconData sf_volleyball_circle = IconData(0x10172C);

  /// IconData for SF Symbol volleyball.circle.fill
  static const IconData sf_volleyball_circle_fill = IconData(0x10172D);

  /// IconData for SF Symbol volleyball.fill
  static const IconData sf_volleyball_fill = IconData(0x10172B);

  /// IconData for SF Symbol w.circle
  static const IconData sf_w_circle = IconData(0x100030);

  /// IconData for SF Symbol w.circle.fill
  static const IconData sf_w_circle_fill = IconData(0x100031);

  /// IconData for SF Symbol w.square
  static const IconData sf_w_square = IconData(0x1000C0);

  /// IconData for SF Symbol w.square.fill
  static const IconData sf_w_square_fill = IconData(0x1000C1);

  /// IconData for SF Symbol wake
  static const IconData sf_wake = IconData(0x100A92);

  /// IconData for SF Symbol wake.circle
  static const IconData sf_wake_circle = IconData(0x100DA1);

  /// IconData for SF Symbol wake.circle.fill
  static const IconData sf_wake_circle_fill = IconData(0x100DA2);

  /// IconData for SF Symbol wallet.pass
  static const IconData sf_wallet_pass = IconData(0x1007FE);

  /// IconData for SF Symbol wallet.pass.fill
  static const IconData sf_wallet_pass_fill = IconData(0x1007FF);

  /// IconData for SF Symbol wand.and.rays
  static const IconData sf_wand_and_rays = IconData(0x100371);

  /// IconData for SF Symbol wand.and.rays.inverse
  static const IconData sf_wand_and_rays_inverse = IconData(0x100372);

  /// IconData for SF Symbol wand.and.stars
  static const IconData sf_wand_and_stars = IconData(0x10070D);

  /// IconData for SF Symbol wand.and.stars.inverse
  static const IconData sf_wand_and_stars_inverse = IconData(0x10070E);

  /// IconData for SF Symbol warninglight
  static const IconData sf_warninglight = IconData(0x10102C);

  /// IconData for SF Symbol warninglight.fill
  static const IconData sf_warninglight_fill = IconData(0x10102D);

  /// IconData for SF Symbol washer
  static const IconData sf_washer = IconData(0x101420);

  /// IconData for SF Symbol washer.circle
  static const IconData sf_washer_circle = IconData(0x101FCE);

  /// IconData for SF Symbol washer.circle.fill
  static const IconData sf_washer_circle_fill = IconData(0x101FCF);

  /// IconData for SF Symbol washer.fill
  static const IconData sf_washer_fill = IconData(0x101421);

  /// IconData for SF Symbol watch.analog
  static const IconData sf_watch_analog = IconData(0x1017BA);

  /// IconData for SF Symbol watchface.applewatch.case
  static const IconData sf_watchface_applewatch_case = IconData(0x100E97);

  /// IconData for SF Symbol water.waves
  static const IconData sf_water_waves = IconData(0x101384);

  /// IconData for SF Symbol water.waves.and.arrow.down
  static const IconData sf_water_waves_and_arrow_down = IconData(0x101386);

  /// IconData for SF Symbol water.waves.and.arrow.down.trianglebadge.exclamationmark
  static const IconData
      sf_water_waves_and_arrow_down_trianglebadge_exclamationmark =
      IconData(0x101730);

  /// IconData for SF Symbol water.waves.and.arrow.up
  static const IconData sf_water_waves_and_arrow_up = IconData(0x101385);

  /// IconData for SF Symbol water.waves.slash
  static const IconData sf_water_waves_slash = IconData(0x1015C3);

  /// IconData for SF Symbol waterbottle
  static const IconData sf_waterbottle = IconData(0x101ECA);

  /// IconData for SF Symbol waterbottle.fill
  static const IconData sf_waterbottle_fill = IconData(0x101ECB);

  /// IconData for SF Symbol wave.3.backward
  static const IconData sf_wave_3_backward = IconData(0x100C58);

  /// IconData for SF Symbol wave.3.backward.circle
  static const IconData sf_wave_3_backward_circle = IconData(0x100C59);

  /// IconData for SF Symbol wave.3.backward.circle.fill
  static const IconData sf_wave_3_backward_circle_fill = IconData(0x100C5A);

  /// IconData for SF Symbol wave.3.forward
  static const IconData sf_wave_3_forward = IconData(0x100C5B);

  /// IconData for SF Symbol wave.3.forward.circle
  static const IconData sf_wave_3_forward_circle = IconData(0x100C5C);

  /// IconData for SF Symbol wave.3.forward.circle.fill
  static const IconData sf_wave_3_forward_circle_fill = IconData(0x100C5D);

  /// IconData for SF Symbol wave.3.left
  static const IconData sf_wave_3_left = IconData(0x100671);

  /// IconData for SF Symbol wave.3.left.circle
  static const IconData sf_wave_3_left_circle = IconData(0x100B77);

  /// IconData for SF Symbol wave.3.left.circle.fill
  static const IconData sf_wave_3_left_circle_fill = IconData(0x100B78);

  /// IconData for SF Symbol wave.3.right
  static const IconData sf_wave_3_right = IconData(0x100672);

  /// IconData for SF Symbol wave.3.right.circle
  static const IconData sf_wave_3_right_circle = IconData(0x100B79);

  /// IconData for SF Symbol wave.3.right.circle.fill
  static const IconData sf_wave_3_right_circle_fill = IconData(0x100B7A);

  /// IconData for SF Symbol waveform
  static const IconData sf_waveform = IconData(0x10066B);

  /// IconData for SF Symbol waveform.and.person.filled
  static const IconData sf_waveform_and_person_filled = IconData(0x1020D3);

  /// IconData for SF Symbol waveform.badge.exclamationmark
  static const IconData sf_waveform_badge_exclamationmark = IconData(0x100EFD);

  /// IconData for SF Symbol waveform.badge.magnifyingglass
  static const IconData sf_waveform_badge_magnifyingglass = IconData(0x100EFE);

  /// IconData for SF Symbol waveform.badge.mic
  static const IconData sf_waveform_badge_mic = IconData(0x1010E8);

  /// IconData for SF Symbol waveform.badge.minus
  static const IconData sf_waveform_badge_minus = IconData(0x100E37);

  /// IconData for SF Symbol waveform.badge.plus
  static const IconData sf_waveform_badge_plus = IconData(0x100E36);

  /// IconData for SF Symbol waveform.circle
  static const IconData sf_waveform_circle = IconData(0x100788);

  /// IconData for SF Symbol waveform.circle.fill
  static const IconData sf_waveform_circle_fill = IconData(0x100789);

  /// IconData for SF Symbol waveform.path
  static const IconData sf_waveform_path = IconData(0x100443);

  /// IconData for SF Symbol waveform.path.badge.minus
  static const IconData sf_waveform_path_badge_minus = IconData(0x100445);

  /// IconData for SF Symbol waveform.path.badge.plus
  static const IconData sf_waveform_path_badge_plus = IconData(0x100444);

  /// IconData for SF Symbol waveform.path.ecg
  static const IconData sf_waveform_path_ecg = IconData(0x10071F);

  /// IconData for SF Symbol waveform.path.ecg.rectangle
  static const IconData sf_waveform_path_ecg_rectangle = IconData(0x1007EA);

  /// IconData for SF Symbol waveform.path.ecg.rectangle.fill
  static const IconData sf_waveform_path_ecg_rectangle_fill =
      IconData(0x1007EB);

  /// IconData for SF Symbol waveform.slash
  static const IconData sf_waveform_slash = IconData(0x1013CF);

  /// IconData for SF Symbol web.camera
  static const IconData sf_web_camera = IconData(0x1014B2);

  /// IconData for SF Symbol web.camera.fill
  static const IconData sf_web_camera_fill = IconData(0x1014B3);

  /// IconData for SF Symbol wifi
  static const IconData sf_wifi = IconData(0x100647);

  /// IconData for SF Symbol wifi.circle
  static const IconData sf_wifi_circle = IconData(0x100DD6);

  /// IconData for SF Symbol wifi.circle.fill
  static const IconData sf_wifi_circle_fill = IconData(0x100DD7);

  /// IconData for SF Symbol wifi.exclamationmark
  static const IconData sf_wifi_exclamationmark = IconData(0x100665);

  /// IconData for SF Symbol wifi.exclamationmark.circle
  static const IconData sf_wifi_exclamationmark_circle = IconData(0x102101);

  /// IconData for SF Symbol wifi.exclamationmark.circle.fill
  static const IconData sf_wifi_exclamationmark_circle_fill =
      IconData(0x102102);

  /// IconData for SF Symbol wifi.router
  static const IconData sf_wifi_router = IconData(0x1014E3);

  /// IconData for SF Symbol wifi.router.fill
  static const IconData sf_wifi_router_fill = IconData(0x1014E4);

  /// IconData for SF Symbol wifi.slash
  static const IconData sf_wifi_slash = IconData(0x100648);

  /// IconData for SF Symbol wifi.square
  static const IconData sf_wifi_square = IconData(0x100F57);

  /// IconData for SF Symbol wifi.square.fill
  static const IconData sf_wifi_square_fill = IconData(0x100F58);

  /// IconData for SF Symbol wind
  static const IconData sf_wind = IconData(0x1001E4);

  /// IconData for SF Symbol wind.circle
  static const IconData sf_wind_circle = IconData(0x1016EF);

  /// IconData for SF Symbol wind.circle.fill
  static const IconData sf_wind_circle_fill = IconData(0x1016F0);

  /// IconData for SF Symbol wind.snow
  static const IconData sf_wind_snow = IconData(0x1001E6);

  /// IconData for SF Symbol wind.snow.circle
  static const IconData sf_wind_snow_circle = IconData(0x1016F1);

  /// IconData for SF Symbol wind.snow.circle.fill
  static const IconData sf_wind_snow_circle_fill = IconData(0x1016F2);

  /// IconData for SF Symbol window.awning
  static const IconData sf_window_awning = IconData(0x10147D);

  /// IconData for SF Symbol window.awning.closed
  static const IconData sf_window_awning_closed = IconData(0x10147E);

  /// IconData for SF Symbol window.casement
  static const IconData sf_window_casement = IconData(0x10147F);

  /// IconData for SF Symbol window.casement.closed
  static const IconData sf_window_casement_closed = IconData(0x101480);

  /// IconData for SF Symbol window.ceiling
  static const IconData sf_window_ceiling = IconData(0x101481);

  /// IconData for SF Symbol window.ceiling.closed
  static const IconData sf_window_ceiling_closed = IconData(0x101482);

  /// IconData for SF Symbol window.horizontal
  static const IconData sf_window_horizontal = IconData(0x10146D);

  /// IconData for SF Symbol window.horizontal.closed
  static const IconData sf_window_horizontal_closed = IconData(0x10146E);

  /// IconData for SF Symbol window.shade.closed
  static const IconData sf_window_shade_closed = IconData(0x1013E3);

  /// IconData for SF Symbol window.shade.open
  static const IconData sf_window_shade_open = IconData(0x1013E2);

  /// IconData for SF Symbol window.vertical.closed
  static const IconData sf_window_vertical_closed = IconData(0x10146C);

  /// IconData for SF Symbol window.vertical.open
  static const IconData sf_window_vertical_open = IconData(0x10146B);

  /// IconData for SF Symbol windshield.front.and.fluid.and.spray
  static const IconData sf_windshield_front_and_fluid_and_spray =
      IconData(0x1017BC);

  /// IconData for SF Symbol windshield.front.and.heat.waves
  static const IconData sf_windshield_front_and_heat_waves = IconData(0x10101F);

  /// IconData for SF Symbol windshield.front.and.spray
  static const IconData sf_windshield_front_and_spray = IconData(0x101015);

  /// IconData for SF Symbol windshield.front.and.wiper
  static const IconData sf_windshield_front_and_wiper = IconData(0x101014);

  /// IconData for SF Symbol windshield.front.and.wiper.and.drop
  static const IconData sf_windshield_front_and_wiper_and_drop =
      IconData(0x101017);

  /// IconData for SF Symbol windshield.front.and.wiper.and.spray
  static const IconData sf_windshield_front_and_wiper_and_spray =
      IconData(0x1017BB);

  /// IconData for SF Symbol windshield.front.and.wiper.exclamationmark
  static const IconData sf_windshield_front_and_wiper_exclamationmark =
      IconData(0x10124D);

  /// IconData for SF Symbol windshield.front.and.wiper.intermittent
  static const IconData sf_windshield_front_and_wiper_intermittent =
      IconData(0x101016);

  /// IconData for SF Symbol windshield.rear.and.fluid.and.spray
  static const IconData sf_windshield_rear_and_fluid_and_spray =
      IconData(0x1017BE);

  /// IconData for SF Symbol windshield.rear.and.heat.waves
  static const IconData sf_windshield_rear_and_heat_waves = IconData(0x101024);

  /// IconData for SF Symbol windshield.rear.and.spray
  static const IconData sf_windshield_rear_and_spray = IconData(0x101021);

  /// IconData for SF Symbol windshield.rear.and.wiper
  static const IconData sf_windshield_rear_and_wiper = IconData(0x101020);

  /// IconData for SF Symbol windshield.rear.and.wiper.and.drop
  static const IconData sf_windshield_rear_and_wiper_and_drop =
      IconData(0x101023);

  /// IconData for SF Symbol windshield.rear.and.wiper.and.spray
  static const IconData sf_windshield_rear_and_wiper_and_spray =
      IconData(0x1017BD);

  /// IconData for SF Symbol windshield.rear.and.wiper.exclamationmark
  static const IconData sf_windshield_rear_and_wiper_exclamationmark =
      IconData(0x101251);

  /// IconData for SF Symbol windshield.rear.and.wiper.intermittent
  static const IconData sf_windshield_rear_and_wiper_intermittent =
      IconData(0x101022);

  /// IconData for SF Symbol wineglass
  static const IconData sf_wineglass = IconData(0x1013A4);

  /// IconData for SF Symbol wineglass.fill
  static const IconData sf_wineglass_fill = IconData(0x1013A5);

  /// IconData for SF Symbol wonsign
  static const IconData sf_wonsign = IconData(0x10144E);

  /// IconData for SF Symbol wonsign.arrow.circlepath
  static const IconData sf_wonsign_arrow_circlepath = IconData(0x102221);

  /// IconData for SF Symbol wonsign.circle
  static const IconData sf_wonsign_circle = IconData(0x1005B5);

  /// IconData for SF Symbol wonsign.circle.fill
  static const IconData sf_wonsign_circle_fill = IconData(0x1005B6);

  /// IconData for SF Symbol wonsign.square
  static const IconData sf_wonsign_square = IconData(0x1005F5);

  /// IconData for SF Symbol wonsign.square.fill
  static const IconData sf_wonsign_square_fill = IconData(0x1005F6);

  /// IconData for SF Symbol wrench.adjustable
  static const IconData sf_wrench_adjustable = IconData(0x100395);

  /// IconData for SF Symbol wrench.adjustable.fill
  static const IconData sf_wrench_adjustable_fill = IconData(0x100396);

  /// IconData for SF Symbol wrench.and.screwdriver
  static const IconData sf_wrench_and_screwdriver = IconData(0x10090A);

  /// IconData for SF Symbol wrench.and.screwdriver.fill
  static const IconData sf_wrench_and_screwdriver_fill = IconData(0x10090B);

  /// IconData for SF Symbol wrongwaysign
  static const IconData sf_wrongwaysign = IconData(0x101566);

  /// IconData for SF Symbol wrongwaysign.fill
  static const IconData sf_wrongwaysign_fill = IconData(0x101567);

  /// IconData for SF Symbol x.circle
  static const IconData sf_x_circle = IconData(0x100032);

  /// IconData for SF Symbol x.circle.fill
  static const IconData sf_x_circle_fill = IconData(0x100033);

  /// IconData for SF Symbol x.square
  static const IconData sf_x_square = IconData(0x1000C2);

  /// IconData for SF Symbol x.square.fill
  static const IconData sf_x_square_fill = IconData(0x1000C3);

  /// IconData for SF Symbol x.squareroot
  static const IconData sf_x_squareroot = IconData(0x1004EA);

  /// IconData for SF Symbol xbox.logo
  static const IconData sf_xbox_logo = IconData(0x100F89);

  /// IconData for SF Symbol xmark
  static const IconData sf_xmark = IconData(0x100184);

  /// IconData for SF Symbol xmark.app
  static const IconData sf_xmark_app = IconData(0x100EBE);

  /// IconData for SF Symbol xmark.app.fill
  static const IconData sf_xmark_app_fill = IconData(0x100EC0);

  /// IconData for SF Symbol xmark.bin
  static const IconData sf_xmark_bin = IconData(0x100231);

  /// IconData for SF Symbol xmark.bin.circle
  static const IconData sf_xmark_bin_circle = IconData(0x100233);

  /// IconData for SF Symbol xmark.bin.circle.fill
  static const IconData sf_xmark_bin_circle_fill = IconData(0x100234);

  /// IconData for SF Symbol xmark.bin.fill
  static const IconData sf_xmark_bin_fill = IconData(0x100232);

  /// IconData for SF Symbol xmark.circle
  static const IconData sf_xmark_circle = IconData(0x100060);

  /// IconData for SF Symbol xmark.circle.fill
  static const IconData sf_xmark_circle_fill = IconData(0x100061);

  /// IconData for SF Symbol xmark.diamond
  static const IconData sf_xmark_diamond = IconData(0x100883);

  /// IconData for SF Symbol xmark.diamond.fill
  static const IconData sf_xmark_diamond_fill = IconData(0x100884);

  /// IconData for SF Symbol xmark.icloud
  static const IconData sf_xmark_icloud = IconData(0x100313);

  /// IconData for SF Symbol xmark.icloud.fill
  static const IconData sf_xmark_icloud_fill = IconData(0x100314);

  /// IconData for SF Symbol xmark.octagon
  static const IconData sf_xmark_octagon = IconData(0x100489);

  /// IconData for SF Symbol xmark.octagon.fill
  static const IconData sf_xmark_octagon_fill = IconData(0x10048A);

  /// IconData for SF Symbol xmark.rectangle
  static const IconData sf_xmark_rectangle = IconData(0x1003CD);

  /// IconData for SF Symbol xmark.rectangle.fill
  static const IconData sf_xmark_rectangle_fill = IconData(0x1003CE);

  /// IconData for SF Symbol xmark.rectangle.portrait
  static const IconData sf_xmark_rectangle_portrait = IconData(0x100870);

  /// IconData for SF Symbol xmark.rectangle.portrait.fill
  static const IconData sf_xmark_rectangle_portrait_fill = IconData(0x100871);

  /// IconData for SF Symbol xmark.seal
  static const IconData sf_xmark_seal = IconData(0x1001FC);

  /// IconData for SF Symbol xmark.seal.fill
  static const IconData sf_xmark_seal_fill = IconData(0x1001FD);

  /// IconData for SF Symbol xmark.shield
  static const IconData sf_xmark_shield = IconData(0x10079D);

  /// IconData for SF Symbol xmark.shield.fill
  static const IconData sf_xmark_shield_fill = IconData(0x10079E);

  /// IconData for SF Symbol xmark.square
  static const IconData sf_xmark_square = IconData(0x1000F0);

  /// IconData for SF Symbol xmark.square.fill
  static const IconData sf_xmark_square_fill = IconData(0x1000F1);

  /// IconData for SF Symbol xserve
  static const IconData sf_xserve = IconData(0x1009D8);

  /// IconData for SF Symbol xserve.raid
  static const IconData sf_xserve_raid = IconData(0x101EC7);

  /// IconData for SF Symbol y.circle
  static const IconData sf_y_circle = IconData(0x100034);

  /// IconData for SF Symbol y.circle.fill
  static const IconData sf_y_circle_fill = IconData(0x100035);

  /// IconData for SF Symbol y.square
  static const IconData sf_y_square = IconData(0x1000C4);

  /// IconData for SF Symbol y.square.fill
  static const IconData sf_y_square_fill = IconData(0x1000C5);

  /// IconData for SF Symbol yensign
  static const IconData sf_yensign = IconData(0x101441);

  /// IconData for SF Symbol yensign.arrow.circlepath
  static const IconData sf_yensign_arrow_circlepath = IconData(0x102214);

  /// IconData for SF Symbol yensign.circle
  static const IconData sf_yensign_circle = IconData(0x10059B);

  /// IconData for SF Symbol yensign.circle.fill
  static const IconData sf_yensign_circle_fill = IconData(0x10059C);

  /// IconData for SF Symbol yensign.square
  static const IconData sf_yensign_square = IconData(0x1005DB);

  /// IconData for SF Symbol yensign.square.fill
  static const IconData sf_yensign_square_fill = IconData(0x1005DC);

  /// IconData for SF Symbol yieldsign
  static const IconData sf_yieldsign = IconData(0x101564);

  /// IconData for SF Symbol yieldsign.fill
  static const IconData sf_yieldsign_fill = IconData(0x101565);

  /// IconData for SF Symbol z.circle
  static const IconData sf_z_circle = IconData(0x100036);

  /// IconData for SF Symbol z.circle.fill
  static const IconData sf_z_circle_fill = IconData(0x100037);

  /// IconData for SF Symbol z.square
  static const IconData sf_z_square = IconData(0x1000C6);

  /// IconData for SF Symbol z.square.fill
  static const IconData sf_z_square_fill = IconData(0x1000C7);

  /// IconData for SF Symbol zl.button.roundedtop.horizontal
  static const IconData sf_zl_button_roundedtop_horizontal = IconData(0x100A1B);

  /// IconData for SF Symbol zl.button.roundedtop.horizontal.fill
  static const IconData sf_zl_button_roundedtop_horizontal_fill =
      IconData(0x100A1C);

  /// IconData for SF Symbol zr.button.roundedtop.horizontal
  static const IconData sf_zr_button_roundedtop_horizontal = IconData(0x100A1D);

  /// IconData for SF Symbol zr.button.roundedtop.horizontal.fill
  static const IconData sf_zr_button_roundedtop_horizontal_fill =
      IconData(0x100A1E);

  /// IconData for SF Symbol zzz
  static const IconData sf_zzz = IconData(0x100583);
}

library flutter_sficon;

import 'dart:ui';

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
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);
    }

    return Text(
      String.fromCharCode(icon.codePoint),
      textDirection: textDirection,
      semanticsLabel: semanticsLabel,
      style: TextStyle(
        fontVariations: <FontVariation>[
          if (iconWeight != null) FontVariation('wght', iconWeight),
        ],
        inherit: false,
        fontFamily: 'sficons',
        package: 'flutter_sficon',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: iconColor,
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
  static const IconData sf_0_circle =
      IconData(0x100038, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 00.circle
  static const IconData sf_00_circle =
      IconData(0x1004EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 0.circle.fill
  static const IconData sf_0_circle_fill =
      IconData(0x100039, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 00.circle.fill
  static const IconData sf_00_circle_fill =
      IconData(0x10050A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 0.square
  static const IconData sf_0_square =
      IconData(0x1000C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 00.square
  static const IconData sf_00_square =
      IconData(0x100529, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 0.square.fill
  static const IconData sf_0_square_fill =
      IconData(0x1000C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 00.square.fill
  static const IconData sf_00_square_fill =
      IconData(0x100548, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.brakesignal
  static const IconData sf_1_brakesignal =
      IconData(0x1017C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.circle
  static const IconData sf_1_circle =
      IconData(0x10003A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 01.circle
  static const IconData sf_01_circle =
      IconData(0x1004EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.circle.fill
  static const IconData sf_1_circle_fill =
      IconData(0x10003B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 01.circle.fill
  static const IconData sf_01_circle_fill =
      IconData(0x10050B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.lane
  static const IconData sf_1_lane =
      IconData(0x1017D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.magnifyingglass
  static const IconData sf_1_magnifyingglass =
      IconData(0x1002AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.square
  static const IconData sf_1_square =
      IconData(0x1000CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 01.square
  static const IconData sf_01_square =
      IconData(0x10052A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 1.square.fill
  static const IconData sf_1_square_fill =
      IconData(0x1000CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 01.square.fill
  static const IconData sf_01_square_fill =
      IconData(0x100549, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.brakesignal
  static const IconData sf_2_brakesignal =
      IconData(0x1017C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.circle
  static const IconData sf_2_circle =
      IconData(0x10003C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 02.circle
  static const IconData sf_02_circle =
      IconData(0x1004ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.circle.fill
  static const IconData sf_2_circle_fill =
      IconData(0x10003D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 02.circle.fill
  static const IconData sf_02_circle_fill =
      IconData(0x10050C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.lane
  static const IconData sf_2_lane =
      IconData(0x1017D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.square
  static const IconData sf_2_square =
      IconData(0x1000CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 02.square
  static const IconData sf_02_square =
      IconData(0x10052B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2.square.fill
  static const IconData sf_2_square_fill =
      IconData(0x1000CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 02.square.fill
  static const IconData sf_02_square_fill =
      IconData(0x10054A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2h
  static const IconData sf_2h =
      IconData(0x10195A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2h.circle
  static const IconData sf_2h_circle =
      IconData(0x10195E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 2h.circle.fill
  static const IconData sf_2h_circle_fill =
      IconData(0x10195F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 3.circle
  static const IconData sf_3_circle =
      IconData(0x10003E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 03.circle
  static const IconData sf_03_circle =
      IconData(0x1004EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 3.circle.fill
  static const IconData sf_3_circle_fill =
      IconData(0x10003F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 03.circle.fill
  static const IconData sf_03_circle_fill =
      IconData(0x10050D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 3.lane
  static const IconData sf_3_lane =
      IconData(0x1017D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 3.square
  static const IconData sf_3_square =
      IconData(0x1000CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 03.square
  static const IconData sf_03_square =
      IconData(0x10052C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 3.square.fill
  static const IconData sf_3_square_fill =
      IconData(0x1000CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 03.square.fill
  static const IconData sf_03_square_fill =
      IconData(0x10054B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.alt.circle
  static const IconData sf_4_alt_circle =
      IconData(0x100617, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.alt.circle.fill
  static const IconData sf_4_alt_circle_fill =
      IconData(0x100618, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.alt.square
  static const IconData sf_4_alt_square =
      IconData(0x100619, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.alt.square.fill
  static const IconData sf_4_alt_square_fill =
      IconData(0x10061A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.circle
  static const IconData sf_4_circle =
      IconData(0x100040, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 04.circle
  static const IconData sf_04_circle =
      IconData(0x1004EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.circle.fill
  static const IconData sf_4_circle_fill =
      IconData(0x100041, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 04.circle.fill
  static const IconData sf_04_circle_fill =
      IconData(0x10050E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.lane
  static const IconData sf_4_lane =
      IconData(0x1017D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.square
  static const IconData sf_4_square =
      IconData(0x1000D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 04.square
  static const IconData sf_04_square =
      IconData(0x10052D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4.square.fill
  static const IconData sf_4_square_fill =
      IconData(0x1000D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 04.square.fill
  static const IconData sf_04_square_fill =
      IconData(0x10054C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4a
  static const IconData sf_4a =
      IconData(0x10195D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4a.circle
  static const IconData sf_4a_circle =
      IconData(0x101964, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4a.circle.fill
  static const IconData sf_4a_circle_fill =
      IconData(0x101965, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4h
  static const IconData sf_4h =
      IconData(0x10195B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4h.circle
  static const IconData sf_4h_circle =
      IconData(0x101960, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4h.circle.fill
  static const IconData sf_4h_circle_fill =
      IconData(0x101961, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4k.tv
  static const IconData sf_4k_tv =
      IconData(0x1009BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4k.tv.fill
  static const IconData sf_4k_tv_fill =
      IconData(0x1009BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4l
  static const IconData sf_4l =
      IconData(0x10195C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4l.circle
  static const IconData sf_4l_circle =
      IconData(0x101962, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 4l.circle.fill
  static const IconData sf_4l_circle_fill =
      IconData(0x101963, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 5.circle
  static const IconData sf_5_circle =
      IconData(0x100042, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 05.circle
  static const IconData sf_05_circle =
      IconData(0x1004F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 5.circle.fill
  static const IconData sf_5_circle_fill =
      IconData(0x100043, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 05.circle.fill
  static const IconData sf_05_circle_fill =
      IconData(0x10050F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 5.lane
  static const IconData sf_5_lane =
      IconData(0x1017D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 5.square
  static const IconData sf_5_square =
      IconData(0x1000D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 05.square
  static const IconData sf_05_square =
      IconData(0x10052E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 5.square.fill
  static const IconData sf_5_square_fill =
      IconData(0x1000D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 05.square.fill
  static const IconData sf_05_square_fill =
      IconData(0x10054D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.alt.circle
  static const IconData sf_6_alt_circle =
      IconData(0x100471, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.alt.circle.fill
  static const IconData sf_6_alt_circle_fill =
      IconData(0x100472, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.alt.square
  static const IconData sf_6_alt_square =
      IconData(0x100475, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.alt.square.fill
  static const IconData sf_6_alt_square_fill =
      IconData(0x100476, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.circle
  static const IconData sf_6_circle =
      IconData(0x100044, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 06.circle
  static const IconData sf_06_circle =
      IconData(0x1004F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.circle.fill
  static const IconData sf_6_circle_fill =
      IconData(0x100045, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 06.circle.fill
  static const IconData sf_06_circle_fill =
      IconData(0x100510, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.lane
  static const IconData sf_6_lane =
      IconData(0x1017D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.square
  static const IconData sf_6_square =
      IconData(0x1000D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 06.square
  static const IconData sf_06_square =
      IconData(0x10052F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 6.square.fill
  static const IconData sf_6_square_fill =
      IconData(0x1000D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 06.square.fill
  static const IconData sf_06_square_fill =
      IconData(0x10054E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 7.circle
  static const IconData sf_7_circle =
      IconData(0x100046, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 07.circle
  static const IconData sf_07_circle =
      IconData(0x1004F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 7.circle.fill
  static const IconData sf_7_circle_fill =
      IconData(0x100047, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 07.circle.fill
  static const IconData sf_07_circle_fill =
      IconData(0x100511, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 7.lane
  static const IconData sf_7_lane =
      IconData(0x1017D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 7.square
  static const IconData sf_7_square =
      IconData(0x1000D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 07.square
  static const IconData sf_07_square =
      IconData(0x100530, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 7.square.fill
  static const IconData sf_7_square_fill =
      IconData(0x1000D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 07.square.fill
  static const IconData sf_07_square_fill =
      IconData(0x10054F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 8.circle
  static const IconData sf_8_circle =
      IconData(0x100048, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 08.circle
  static const IconData sf_08_circle =
      IconData(0x1004F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 8.circle.fill
  static const IconData sf_8_circle_fill =
      IconData(0x100049, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 08.circle.fill
  static const IconData sf_08_circle_fill =
      IconData(0x100512, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 8.lane
  static const IconData sf_8_lane =
      IconData(0x1017D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 8.square
  static const IconData sf_8_square =
      IconData(0x1000D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 08.square
  static const IconData sf_08_square =
      IconData(0x100531, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 8.square.fill
  static const IconData sf_8_square_fill =
      IconData(0x1000D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 08.square.fill
  static const IconData sf_08_square_fill =
      IconData(0x100550, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.alt.circle
  static const IconData sf_9_alt_circle =
      IconData(0x100473, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.alt.circle.fill
  static const IconData sf_9_alt_circle_fill =
      IconData(0x100474, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.alt.square
  static const IconData sf_9_alt_square =
      IconData(0x100477, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.alt.square.fill
  static const IconData sf_9_alt_square_fill =
      IconData(0x100478, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.circle
  static const IconData sf_9_circle =
      IconData(0x10004A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 09.circle
  static const IconData sf_09_circle =
      IconData(0x1004F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.circle.fill
  static const IconData sf_9_circle_fill =
      IconData(0x10004B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 09.circle.fill
  static const IconData sf_09_circle_fill =
      IconData(0x100513, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.lane
  static const IconData sf_9_lane =
      IconData(0x1017D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.square
  static const IconData sf_9_square =
      IconData(0x1000DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 09.square
  static const IconData sf_09_square =
      IconData(0x100532, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 9.square.fill
  static const IconData sf_9_square_fill =
      IconData(0x1000DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 09.square.fill
  static const IconData sf_09_square_fill =
      IconData(0x100551, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 10.circle
  static const IconData sf_10_circle =
      IconData(0x1004F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 10.circle.fill
  static const IconData sf_10_circle_fill =
      IconData(0x100514, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 10.lane
  static const IconData sf_10_lane =
      IconData(0x1017D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 10.square
  static const IconData sf_10_square =
      IconData(0x100533, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 10.square.fill
  static const IconData sf_10_square_fill =
      IconData(0x100552, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 11.circle
  static const IconData sf_11_circle =
      IconData(0x1004F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 11.circle.fill
  static const IconData sf_11_circle_fill =
      IconData(0x100515, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 11.lane
  static const IconData sf_11_lane =
      IconData(0x1017DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 11.square
  static const IconData sf_11_square =
      IconData(0x100534, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 11.square.fill
  static const IconData sf_11_square_fill =
      IconData(0x100553, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 12.circle
  static const IconData sf_12_circle =
      IconData(0x1004F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 12.circle.fill
  static const IconData sf_12_circle_fill =
      IconData(0x100516, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 12.lane
  static const IconData sf_12_lane =
      IconData(0x1017DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 12.square
  static const IconData sf_12_square =
      IconData(0x100535, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 12.square.fill
  static const IconData sf_12_square_fill =
      IconData(0x100554, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 13.circle
  static const IconData sf_13_circle =
      IconData(0x1004F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 13.circle.fill
  static const IconData sf_13_circle_fill =
      IconData(0x100517, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 13.square
  static const IconData sf_13_square =
      IconData(0x100536, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 13.square.fill
  static const IconData sf_13_square_fill =
      IconData(0x100555, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 14.circle
  static const IconData sf_14_circle =
      IconData(0x1004F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 14.circle.fill
  static const IconData sf_14_circle_fill =
      IconData(0x100518, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 14.square
  static const IconData sf_14_square =
      IconData(0x100537, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 14.square.fill
  static const IconData sf_14_square_fill =
      IconData(0x100556, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 15.circle
  static const IconData sf_15_circle =
      IconData(0x1004FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 15.circle.fill
  static const IconData sf_15_circle_fill =
      IconData(0x100519, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 15.square
  static const IconData sf_15_square =
      IconData(0x100538, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 15.square.fill
  static const IconData sf_15_square_fill =
      IconData(0x100557, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 16.circle
  static const IconData sf_16_circle =
      IconData(0x1004FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 16.circle.fill
  static const IconData sf_16_circle_fill =
      IconData(0x10051A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 16.square
  static const IconData sf_16_square =
      IconData(0x100539, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 16.square.fill
  static const IconData sf_16_square_fill =
      IconData(0x100558, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 17.circle
  static const IconData sf_17_circle =
      IconData(0x1004FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 17.circle.fill
  static const IconData sf_17_circle_fill =
      IconData(0x10051B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 17.square
  static const IconData sf_17_square =
      IconData(0x10053A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 17.square.fill
  static const IconData sf_17_square_fill =
      IconData(0x100559, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 18.circle
  static const IconData sf_18_circle =
      IconData(0x1004FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 18.circle.fill
  static const IconData sf_18_circle_fill =
      IconData(0x10051C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 18.square
  static const IconData sf_18_square =
      IconData(0x10053B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 18.square.fill
  static const IconData sf_18_square_fill =
      IconData(0x10055A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 19.circle
  static const IconData sf_19_circle =
      IconData(0x1004FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 19.circle.fill
  static const IconData sf_19_circle_fill =
      IconData(0x10051D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 19.square
  static const IconData sf_19_square =
      IconData(0x10053C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 19.square.fill
  static const IconData sf_19_square_fill =
      IconData(0x10055B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 20.circle
  static const IconData sf_20_circle =
      IconData(0x1004FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 20.circle.fill
  static const IconData sf_20_circle_fill =
      IconData(0x10051E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 20.square
  static const IconData sf_20_square =
      IconData(0x10053D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 20.square.fill
  static const IconData sf_20_square_fill =
      IconData(0x10055C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 21.circle
  static const IconData sf_21_circle =
      IconData(0x100500, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 21.circle.fill
  static const IconData sf_21_circle_fill =
      IconData(0x10051F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 21.square
  static const IconData sf_21_square =
      IconData(0x10053E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 21.square.fill
  static const IconData sf_21_square_fill =
      IconData(0x10055D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 22.circle
  static const IconData sf_22_circle =
      IconData(0x100501, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 22.circle.fill
  static const IconData sf_22_circle_fill =
      IconData(0x100520, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 22.square
  static const IconData sf_22_square =
      IconData(0x10053F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 22.square.fill
  static const IconData sf_22_square_fill =
      IconData(0x10055E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 23.circle
  static const IconData sf_23_circle =
      IconData(0x100502, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 23.circle.fill
  static const IconData sf_23_circle_fill =
      IconData(0x100521, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 23.square
  static const IconData sf_23_square =
      IconData(0x100540, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 23.square.fill
  static const IconData sf_23_square_fill =
      IconData(0x10055F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 24.circle
  static const IconData sf_24_circle =
      IconData(0x100503, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 24.circle.fill
  static const IconData sf_24_circle_fill =
      IconData(0x100522, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 24.square
  static const IconData sf_24_square =
      IconData(0x100541, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 24.square.fill
  static const IconData sf_24_square_fill =
      IconData(0x100560, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 25.circle
  static const IconData sf_25_circle =
      IconData(0x100504, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 25.circle.fill
  static const IconData sf_25_circle_fill =
      IconData(0x100523, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 25.square
  static const IconData sf_25_square =
      IconData(0x100542, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 25.square.fill
  static const IconData sf_25_square_fill =
      IconData(0x100561, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 26.circle
  static const IconData sf_26_circle =
      IconData(0x100505, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 26.circle.fill
  static const IconData sf_26_circle_fill =
      IconData(0x100524, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 26.square
  static const IconData sf_26_square =
      IconData(0x100543, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 26.square.fill
  static const IconData sf_26_square_fill =
      IconData(0x100562, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 27.circle
  static const IconData sf_27_circle =
      IconData(0x100506, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 27.circle.fill
  static const IconData sf_27_circle_fill =
      IconData(0x100525, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 27.square
  static const IconData sf_27_square =
      IconData(0x100544, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 27.square.fill
  static const IconData sf_27_square_fill =
      IconData(0x100563, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 28.circle
  static const IconData sf_28_circle =
      IconData(0x100507, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 28.circle.fill
  static const IconData sf_28_circle_fill =
      IconData(0x100526, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 28.square
  static const IconData sf_28_square =
      IconData(0x100545, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 28.square.fill
  static const IconData sf_28_square_fill =
      IconData(0x100564, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 29.circle
  static const IconData sf_29_circle =
      IconData(0x100508, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 29.circle.fill
  static const IconData sf_29_circle_fill =
      IconData(0x100527, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 29.square
  static const IconData sf_29_square =
      IconData(0x100546, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 29.square.fill
  static const IconData sf_29_square_fill =
      IconData(0x100565, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 30.circle
  static const IconData sf_30_circle =
      IconData(0x100509, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 30.circle.fill
  static const IconData sf_30_circle_fill =
      IconData(0x100528, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 30.square
  static const IconData sf_30_square =
      IconData(0x100547, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 30.square.fill
  static const IconData sf_30_square_fill =
      IconData(0x100566, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 31.circle
  static const IconData sf_31_circle =
      IconData(0x100620, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 31.circle.fill
  static const IconData sf_31_circle_fill =
      IconData(0x100621, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 31.square
  static const IconData sf_31_square =
      IconData(0x100622, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 31.square.fill
  static const IconData sf_31_square_fill =
      IconData(0x100623, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 32.circle
  static const IconData sf_32_circle =
      IconData(0x100697, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 32.circle.fill
  static const IconData sf_32_circle_fill =
      IconData(0x100698, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 32.square
  static const IconData sf_32_square =
      IconData(0x1006BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 32.square.fill
  static const IconData sf_32_square_fill =
      IconData(0x1006BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 33.circle
  static const IconData sf_33_circle =
      IconData(0x100699, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 33.circle.fill
  static const IconData sf_33_circle_fill =
      IconData(0x10069A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 33.square
  static const IconData sf_33_square =
      IconData(0x1006BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 33.square.fill
  static const IconData sf_33_square_fill =
      IconData(0x1006C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 34.circle
  static const IconData sf_34_circle =
      IconData(0x10069B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 34.circle.fill
  static const IconData sf_34_circle_fill =
      IconData(0x10069C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 34.square
  static const IconData sf_34_square =
      IconData(0x1006C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 34.square.fill
  static const IconData sf_34_square_fill =
      IconData(0x1006C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 35.circle
  static const IconData sf_35_circle =
      IconData(0x10069D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 35.circle.fill
  static const IconData sf_35_circle_fill =
      IconData(0x10069E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 35.square
  static const IconData sf_35_square =
      IconData(0x1006C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 35.square.fill
  static const IconData sf_35_square_fill =
      IconData(0x1006C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 36.circle
  static const IconData sf_36_circle =
      IconData(0x10069F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 36.circle.fill
  static const IconData sf_36_circle_fill =
      IconData(0x1006A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 36.square
  static const IconData sf_36_square =
      IconData(0x1006C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 36.square.fill
  static const IconData sf_36_square_fill =
      IconData(0x1006C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 37.circle
  static const IconData sf_37_circle =
      IconData(0x1006A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 37.circle.fill
  static const IconData sf_37_circle_fill =
      IconData(0x1006A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 37.square
  static const IconData sf_37_square =
      IconData(0x1006C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 37.square.fill
  static const IconData sf_37_square_fill =
      IconData(0x1006C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 38.circle
  static const IconData sf_38_circle =
      IconData(0x1006A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 38.circle.fill
  static const IconData sf_38_circle_fill =
      IconData(0x1006A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 38.square
  static const IconData sf_38_square =
      IconData(0x1006C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 38.square.fill
  static const IconData sf_38_square_fill =
      IconData(0x1006CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 39.circle
  static const IconData sf_39_circle =
      IconData(0x1006A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 39.circle.fill
  static const IconData sf_39_circle_fill =
      IconData(0x1006A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 39.square
  static const IconData sf_39_square =
      IconData(0x1006CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 39.square.fill
  static const IconData sf_39_square_fill =
      IconData(0x1006CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 40.circle
  static const IconData sf_40_circle =
      IconData(0x1006A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 40.circle.fill
  static const IconData sf_40_circle_fill =
      IconData(0x1006A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 40.square
  static const IconData sf_40_square =
      IconData(0x1006CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 40.square.fill
  static const IconData sf_40_square_fill =
      IconData(0x1006CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 41.circle
  static const IconData sf_41_circle =
      IconData(0x1006A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 41.circle.fill
  static const IconData sf_41_circle_fill =
      IconData(0x1006AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 41.square
  static const IconData sf_41_square =
      IconData(0x1006CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 41.square.fill
  static const IconData sf_41_square_fill =
      IconData(0x1006D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 42.circle
  static const IconData sf_42_circle =
      IconData(0x1006AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 42.circle.fill
  static const IconData sf_42_circle_fill =
      IconData(0x1006AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 42.square
  static const IconData sf_42_square =
      IconData(0x1006D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 42.square.fill
  static const IconData sf_42_square_fill =
      IconData(0x1006D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 43.circle
  static const IconData sf_43_circle =
      IconData(0x1006AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 43.circle.fill
  static const IconData sf_43_circle_fill =
      IconData(0x1006AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 43.square
  static const IconData sf_43_square =
      IconData(0x1006D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 43.square.fill
  static const IconData sf_43_square_fill =
      IconData(0x1006D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 44.circle
  static const IconData sf_44_circle =
      IconData(0x1006AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 44.circle.fill
  static const IconData sf_44_circle_fill =
      IconData(0x1006B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 44.square
  static const IconData sf_44_square =
      IconData(0x1006D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 44.square.fill
  static const IconData sf_44_square_fill =
      IconData(0x1006D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 45.circle
  static const IconData sf_45_circle =
      IconData(0x1006B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 45.circle.fill
  static const IconData sf_45_circle_fill =
      IconData(0x1006B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 45.square
  static const IconData sf_45_square =
      IconData(0x1006D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 45.square.fill
  static const IconData sf_45_square_fill =
      IconData(0x1006D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 46.circle
  static const IconData sf_46_circle =
      IconData(0x1006B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 46.circle.fill
  static const IconData sf_46_circle_fill =
      IconData(0x1006B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 46.square
  static const IconData sf_46_square =
      IconData(0x1006D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 46.square.fill
  static const IconData sf_46_square_fill =
      IconData(0x1006DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 47.circle
  static const IconData sf_47_circle =
      IconData(0x1006B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 47.circle.fill
  static const IconData sf_47_circle_fill =
      IconData(0x1006B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 47.square
  static const IconData sf_47_square =
      IconData(0x1006DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 47.square.fill
  static const IconData sf_47_square_fill =
      IconData(0x1006DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 48.circle
  static const IconData sf_48_circle =
      IconData(0x1006B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 48.circle.fill
  static const IconData sf_48_circle_fill =
      IconData(0x1006B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 48.square
  static const IconData sf_48_square =
      IconData(0x1006DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 48.square.fill
  static const IconData sf_48_square_fill =
      IconData(0x1006DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 49.circle
  static const IconData sf_49_circle =
      IconData(0x1006B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 49.circle.fill
  static const IconData sf_49_circle_fill =
      IconData(0x1006BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 49.square
  static const IconData sf_49_square =
      IconData(0x1006DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 49.square.fill
  static const IconData sf_49_square_fill =
      IconData(0x1006E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 50.circle
  static const IconData sf_50_circle =
      IconData(0x1006BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 50.circle.fill
  static const IconData sf_50_circle_fill =
      IconData(0x1006BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 50.square
  static const IconData sf_50_square =
      IconData(0x1006E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 50.square.fill
  static const IconData sf_50_square_fill =
      IconData(0x1006E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 123.rectangle
  static const IconData sf_123_rectangle =
      IconData(0x1010B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol 123.rectangle.fill
  static const IconData sf_123_rectangle_fill =
      IconData(0x1010B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol a.circle
  static const IconData sf_a_circle =
      IconData(0x100004, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol a.circle.fill
  static const IconData sf_a_circle_fill =
      IconData(0x100005, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol a.square
  static const IconData sf_a_square =
      IconData(0x100094, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol a.square.fill
  static const IconData sf_a_square_fill =
      IconData(0x100095, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abc
  static const IconData sf_abc =
      IconData(0x10094A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abs
  static const IconData sf_abs =
      IconData(0x1018B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abs.brakesignal
  static const IconData sf_abs_brakesignal =
      IconData(0x101034, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abs.brakesignal.slash
  static const IconData sf_abs_brakesignal_slash =
      IconData(0x1017C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abs.circle
  static const IconData sf_abs_circle =
      IconData(0x1018B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol abs.circle.fill
  static const IconData sf_abs_circle_fill =
      IconData(0x1018B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol accessibility
  static const IconData sf_accessibility =
      IconData(0x10057E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol accessibility.badge.arrow.up.right
  static const IconData sf_accessibility_badge_arrow_up_right =
      IconData(0x100B93, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol accessibility.fill
  static const IconData sf_accessibility_fill =
      IconData(0x10057F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.conditioner.horizontal
  static const IconData sf_air_conditioner_horizontal =
      IconData(0x1014ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.conditioner.horizontal.fill
  static const IconData sf_air_conditioner_horizontal_fill =
      IconData(0x1014EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.conditioner.vertical
  static const IconData sf_air_conditioner_vertical =
      IconData(0x1014EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.conditioner.vertical.fill
  static const IconData sf_air_conditioner_vertical_fill =
      IconData(0x1014EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.purifier
  static const IconData sf_air_purifier =
      IconData(0x1014E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol air.purifier.fill
  static const IconData sf_air_purifier_fill =
      IconData(0x1014E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplane
  static const IconData sf_airplane =
      IconData(0x100453, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplane.arrival
  static const IconData sf_airplane_arrival =
      IconData(0x100DEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplane.circle
  static const IconData sf_airplane_circle =
      IconData(0x1004B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplane.circle.fill
  static const IconData sf_airplane_circle_fill =
      IconData(0x1004B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplane.departure
  static const IconData sf_airplane_departure =
      IconData(0x100DF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayaudio
  static const IconData sf_airplayaudio =
      IconData(0x100462, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayaudio.badge.exclamationmark
  static const IconData sf_airplayaudio_badge_exclamationmark =
      IconData(0x100C6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayaudio.circle
  static const IconData sf_airplayaudio_circle =
      IconData(0x100FA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayaudio.circle.fill
  static const IconData sf_airplayaudio_circle_fill =
      IconData(0x100FA8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayvideo
  static const IconData sf_airplayvideo =
      IconData(0x100461, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayvideo.badge.exclamationmark
  static const IconData sf_airplayvideo_badge_exclamationmark =
      IconData(0x100C6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayvideo.circle
  static const IconData sf_airplayvideo_circle =
      IconData(0x100F91, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airplayvideo.circle.fill
  static const IconData sf_airplayvideo_circle_fill =
      IconData(0x100F92, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpod.gen3.left
  static const IconData sf_airpod_gen3_left =
      IconData(0x101123, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpod.gen3.right
  static const IconData sf_airpod_gen3_right =
      IconData(0x101122, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpod.left
  static const IconData sf_airpod_left =
      IconData(0x100C8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpod.right
  static const IconData sf_airpod_right =
      IconData(0x100C8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodpro.left
  static const IconData sf_airpodpro_left =
      IconData(0x100C8E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodpro.right
  static const IconData sf_airpodpro_right =
      IconData(0x100C8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods
  static const IconData sf_airpods =
      IconData(0x1007E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.chargingcase
  static const IconData sf_airpods_chargingcase =
      IconData(0x100E67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.chargingcase.fill
  static const IconData sf_airpods_chargingcase_fill =
      IconData(0x100E68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.chargingcase.wireless
  static const IconData sf_airpods_chargingcase_wireless =
      IconData(0x100E69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.chargingcase.wireless.fill
  static const IconData sf_airpods_chargingcase_wireless_fill =
      IconData(0x100E6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.gen3
  static const IconData sf_airpods_gen3 =
      IconData(0x101121, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.gen3.chargingcase.wireless
  static const IconData sf_airpods_gen3_chargingcase_wireless =
      IconData(0x101150, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpods.gen3.chargingcase.wireless.fill
  static const IconData sf_airpods_gen3_chargingcase_wireless_fill =
      IconData(0x101151, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodsmax
  static const IconData sf_airpodsmax =
      IconData(0x100EB9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodspro
  static const IconData sf_airpodspro =
      IconData(0x100AB7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodspro.chargingcase.wireless
  static const IconData sf_airpodspro_chargingcase_wireless =
      IconData(0x100E6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.fill
  static const IconData sf_airpodspro_chargingcase_wireless_fill =
      IconData(0x100E6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.radiowaves.left.and.right
  static const IconData
      sf_airpodspro_chargingcase_wireless_radiowaves_left_and_right =
      IconData(0x101502, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airpodspro.chargingcase.wireless.radiowaves.left.and.right.fill
  static const IconData
      sf_airpodspro_chargingcase_wireless_radiowaves_left_and_right_fill =
      IconData(0x101503, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airport.express
  static const IconData sf_airport_express =
      IconData(0x1009AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airport.extreme
  static const IconData sf_airport_extreme =
      IconData(0x10045D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airport.extreme.tower
  static const IconData sf_airport_extreme_tower =
      IconData(0x1009B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airtag
  static const IconData sf_airtag =
      IconData(0x10113E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airtag.fill
  static const IconData sf_airtag_fill =
      IconData(0x10113F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airtag.radiowaves.forward
  static const IconData sf_airtag_radiowaves_forward =
      IconData(0x10113C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol airtag.radiowaves.forward.fill
  static const IconData sf_airtag_radiowaves_forward_fill =
      IconData(0x10113D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alarm
  static const IconData sf_alarm =
      IconData(0x10042D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alarm.fill
  static const IconData sf_alarm_fill =
      IconData(0x10042E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alarm.waves.left.and.right
  static const IconData sf_alarm_waves_left_and_right =
      IconData(0x1015C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alarm.waves.left.and.right.fill
  static const IconData sf_alarm_waves_left_and_right_fill =
      IconData(0x1015C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.center
  static const IconData sf_align_horizontal_center =
      IconData(0x100A49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.center.fill
  static const IconData sf_align_horizontal_center_fill =
      IconData(0x100957, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.left
  static const IconData sf_align_horizontal_left =
      IconData(0x100A48, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.left.fill
  static const IconData sf_align_horizontal_left_fill =
      IconData(0x100956, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.right
  static const IconData sf_align_horizontal_right =
      IconData(0x100A4A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.horizontal.right.fill
  static const IconData sf_align_horizontal_right_fill =
      IconData(0x100958, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.bottom
  static const IconData sf_align_vertical_bottom =
      IconData(0x100A4D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.bottom.fill
  static const IconData sf_align_vertical_bottom_fill =
      IconData(0x10095B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.center
  static const IconData sf_align_vertical_center =
      IconData(0x100A4C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.center.fill
  static const IconData sf_align_vertical_center_fill =
      IconData(0x10095A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.top
  static const IconData sf_align_vertical_top =
      IconData(0x100A4B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol align.vertical.top.fill
  static const IconData sf_align_vertical_top_fill =
      IconData(0x100959, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol allergens
  static const IconData sf_allergens =
      IconData(0x100B2D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol allergens.fill
  static const IconData sf_allergens_fill =
      IconData(0x101486, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alt
  static const IconData sf_alt =
      IconData(0x100196, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol alternatingcurrent
  static const IconData sf_alternatingcurrent =
      IconData(0x1011AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol amplifier
  static const IconData sf_amplifier =
      IconData(0x1009F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol angle
  static const IconData sf_angle =
      IconData(0x101461, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ant
  static const IconData sf_ant =
      IconData(0x10031A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ant.circle
  static const IconData sf_ant_circle =
      IconData(0x10031C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ant.circle.fill
  static const IconData sf_ant_circle_fill =
      IconData(0x10031D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ant.fill
  static const IconData sf_ant_fill =
      IconData(0x10031B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol antenna.radiowaves.left.and.right
  static const IconData sf_antenna_radiowaves_left_and_right =
      IconData(0x100580, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.circle
  static const IconData sf_antenna_radiowaves_left_and_right_circle =
      IconData(0x100DC8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.circle.fill
  static const IconData sf_antenna_radiowaves_left_and_right_circle_fill =
      IconData(0x100DC9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol antenna.radiowaves.left.and.right.slash
  static const IconData sf_antenna_radiowaves_left_and_right_slash =
      IconData(0x101152, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app
  static const IconData sf_app =
      IconData(0x10044B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.badge
  static const IconData sf_app_badge =
      IconData(0x10044F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.badge.checkmark
  static const IconData sf_app_badge_checkmark =
      IconData(0x1010A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.badge.checkmark.fill
  static const IconData sf_app_badge_checkmark_fill =
      IconData(0x1010A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.badge.fill
  static const IconData sf_app_badge_fill =
      IconData(0x100450, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.connected.to.app.below.fill
  static const IconData sf_app_connected_to_app_below_fill =
      IconData(0x101018, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.dashed
  static const IconData sf_app_dashed =
      IconData(0x100FEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.fill
  static const IconData sf_app_fill =
      IconData(0x10044C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.gift
  static const IconData sf_app_gift =
      IconData(0x100451, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol app.gift.fill
  static const IconData sf_app_gift_fill =
      IconData(0x100452, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appclip
  static const IconData sf_appclip =
      IconData(0x100B68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apple.logo
  static const IconData sf_apple_logo =
      IconData(0x1008FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apple.terminal
  static const IconData sf_apple_terminal =
      IconData(0x100A7C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apple.terminal.fill
  static const IconData sf_apple_terminal_fill =
      IconData(0x100A8F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apple.terminal.on.rectangle
  static const IconData sf_apple_terminal_on_rectangle =
      IconData(0x101E5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apple.terminal.on.rectangle.fill
  static const IconData sf_apple_terminal_on_rectangle_fill =
      IconData(0x101E5C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil
  static const IconData sf_applepencil =
      IconData(0x100EAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.adapter.usb.c
  static const IconData sf_applepencil_adapter_usb_c =
      IconData(0x101C12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.adapter.usb.c.fill
  static const IconData sf_applepencil_adapter_usb_c_fill =
      IconData(0x101C13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.and.scribble
  static const IconData sf_applepencil_and_scribble =
      IconData(0x101911, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.gen1
  static const IconData sf_applepencil_gen1 =
      IconData(0x101C24, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.gen2
  static const IconData sf_applepencil_gen2 =
      IconData(0x101C25, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applepencil.tip
  static const IconData sf_applepencil_tip =
      IconData(0x101913, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applescript
  static const IconData sf_applescript =
      IconData(0x10092D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applescript.fill
  static const IconData sf_applescript_fill =
      IconData(0x10092E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletv
  static const IconData sf_appletv =
      IconData(0x100A2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletv.fill
  static const IconData sf_appletv_fill =
      IconData(0x100874, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen1
  static const IconData sf_appletvremote_gen1 =
      IconData(0x100F29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen1.fill
  static const IconData sf_appletvremote_gen1_fill =
      IconData(0x100F2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen2
  static const IconData sf_appletvremote_gen2 =
      IconData(0x100F2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen2.fill
  static const IconData sf_appletvremote_gen2_fill =
      IconData(0x100F2C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen3
  static const IconData sf_appletvremote_gen3 =
      IconData(0x100769, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen3.fill
  static const IconData sf_appletvremote_gen3_fill =
      IconData(0x10076A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen4
  static const IconData sf_appletvremote_gen4 =
      IconData(0x100F27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appletvremote.gen4.fill
  static const IconData sf_appletvremote_gen4_fill =
      IconData(0x100F28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch
  static const IconData sf_applewatch =
      IconData(0x1007E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.and.arrow.forward
  static const IconData sf_applewatch_and_arrow_forward =
      IconData(0x102105, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.case.inset.filled
  static const IconData sf_applewatch_case_inset_filled =
      IconData(0x100D2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.radiowaves.left.and.right
  static const IconData sf_applewatch_radiowaves_left_and_right =
      IconData(0x1008B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.side.right
  static const IconData sf_applewatch_side_right =
      IconData(0x100E0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.slash
  static const IconData sf_applewatch_slash =
      IconData(0x100A36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol applewatch.watchface
  static const IconData sf_applewatch_watchface =
      IconData(0x100ACB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apps.ipad
  static const IconData sf_apps_ipad =
      IconData(0x100B95, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apps.ipad.landscape
  static const IconData sf_apps_ipad_landscape =
      IconData(0x100B96, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apps.iphone
  static const IconData sf_apps_iphone =
      IconData(0x1007DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apps.iphone.badge.plus
  static const IconData sf_apps_iphone_badge_plus =
      IconData(0x100BD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol apps.iphone.landscape
  static const IconData sf_apps_iphone_landscape =
      IconData(0x100B94, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol appwindow.swipe.rectangle
  static const IconData sf_appwindow_swipe_rectangle =
      IconData(0x101EFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol aqi.high
  static const IconData sf_aqi_high =
      IconData(0x100D40, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol aqi.low
  static const IconData sf_aqi_low =
      IconData(0x100D3E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol aqi.medium
  static const IconData sf_aqi_medium =
      IconData(0x100D3F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick
  static const IconData sf_arcade_stick =
      IconData(0x102062, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.down
  static const IconData sf_arcade_stick_and_arrow_down =
      IconData(0x102068, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.left
  static const IconData sf_arcade_stick_and_arrow_left =
      IconData(0x102064, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.left.and.arrow.right
  static const IconData sf_arcade_stick_and_arrow_left_and_arrow_right =
      IconData(0x102063, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.right
  static const IconData sf_arcade_stick_and_arrow_right =
      IconData(0x102065, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.up
  static const IconData sf_arcade_stick_and_arrow_up =
      IconData(0x102067, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.and.arrow.up.and.arrow.down
  static const IconData sf_arcade_stick_and_arrow_up_and_arrow_down =
      IconData(0x102066, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.console
  static const IconData sf_arcade_stick_console =
      IconData(0x102060, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arcade.stick.console.fill
  static const IconData sf_arcade_stick_console_fill =
      IconData(0x102061, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol archivebox
  static const IconData sf_archivebox =
      IconData(0x10022D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol archivebox.circle
  static const IconData sf_archivebox_circle =
      IconData(0x10022F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol archivebox.circle.fill
  static const IconData sf_archivebox_circle_fill =
      IconData(0x100230, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol archivebox.fill
  static const IconData sf_archivebox_fill =
      IconData(0x10022E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arkit
  static const IconData sf_arkit =
      IconData(0x100638, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arkit.badge.xmark
  static const IconData sf_arkit_badge_xmark =
      IconData(0x101012, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.2.squarepath
  static const IconData sf_arrow_2_squarepath =
      IconData(0x10014C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.3.trianglepath
  static const IconData sf_arrow_3_trianglepath =
      IconData(0x10065B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward
  static const IconData sf_arrow_backward =
      IconData(0x100C0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.circle
  static const IconData sf_arrow_backward_circle =
      IconData(0x100C0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.circle.fill
  static const IconData sf_arrow_backward_circle_fill =
      IconData(0x100C0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.square
  static const IconData sf_arrow_backward_square =
      IconData(0x100C0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.square.fill
  static const IconData sf_arrow_backward_square_fill =
      IconData(0x100C10, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.to.line
  static const IconData sf_arrow_backward_to_line =
      IconData(0x10108A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.to.line.circle
  static const IconData sf_arrow_backward_to_line_circle =
      IconData(0x10108C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.to.line.circle.fill
  static const IconData sf_arrow_backward_to_line_circle_fill =
      IconData(0x10108D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.to.line.square
  static const IconData sf_arrow_backward_to_line_square =
      IconData(0x102155, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.backward.to.line.square.fill
  static const IconData sf_arrow_backward_to_line_square_fill =
      IconData(0x102156, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.circlepath
  static const IconData sf_arrow_circlepath =
      IconData(0x101E60, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise
  static const IconData sf_arrow_clockwise =
      IconData(0x100148, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.circle
  static const IconData sf_arrow_clockwise_circle =
      IconData(0x100681, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.circle.fill
  static const IconData sf_arrow_clockwise_circle_fill =
      IconData(0x100682, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.heart
  static const IconData sf_arrow_clockwise_heart =
      IconData(0x1009E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.heart.fill
  static const IconData sf_arrow_clockwise_heart_fill =
      IconData(0x1009E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.icloud
  static const IconData sf_arrow_clockwise_icloud =
      IconData(0x100677, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.icloud.fill
  static const IconData sf_arrow_clockwise_icloud_fill =
      IconData(0x100678, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.square
  static const IconData sf_arrow_clockwise_square =
      IconData(0x10215B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.clockwise.square.fill
  static const IconData sf_arrow_clockwise_square_fill =
      IconData(0x10215C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise
  static const IconData sf_arrow_counterclockwise =
      IconData(0x100149, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.circle
  static const IconData sf_arrow_counterclockwise_circle =
      IconData(0x100683, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.circle.fill
  static const IconData sf_arrow_counterclockwise_circle_fill =
      IconData(0x100684, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.icloud
  static const IconData sf_arrow_counterclockwise_icloud =
      IconData(0x100679, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.icloud.fill
  static const IconData sf_arrow_counterclockwise_icloud_fill =
      IconData(0x10067A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.square
  static const IconData sf_arrow_counterclockwise_square =
      IconData(0x10215F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.counterclockwise.square.fill
  static const IconData sf_arrow_counterclockwise_square_fill =
      IconData(0x102160, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down
  static const IconData sf_arrow_down =
      IconData(0x100129, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.and.line.horizontal.and.arrow.up
  static const IconData sf_arrow_down_and_line_horizontal_and_arrow_up =
      IconData(0x10068D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.app
  static const IconData sf_arrow_down_app =
      IconData(0x100BF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.app.fill
  static const IconData sf_arrow_down_app_fill =
      IconData(0x100BF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.applewatch
  static const IconData sf_arrow_down_applewatch =
      IconData(0x102118, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward
  static const IconData sf_arrow_down_backward =
      IconData(0x100C43, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward
  static const IconData sf_arrow_down_backward_and_arrow_up_forward =
      IconData(0x102122, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.circle
  static const IconData sf_arrow_down_backward_and_arrow_up_forward_circle =
      IconData(0x102123, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.circle.fill
  static const IconData
      sf_arrow_down_backward_and_arrow_up_forward_circle_fill =
      IconData(0x102124, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.square
  static const IconData sf_arrow_down_backward_and_arrow_up_forward_square =
      IconData(0x102145, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.and.arrow.up.forward.square.fill
  static const IconData
      sf_arrow_down_backward_and_arrow_up_forward_square_fill =
      IconData(0x102146, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.circle
  static const IconData sf_arrow_down_backward_circle =
      IconData(0x100C44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.circle.fill
  static const IconData sf_arrow_down_backward_circle_fill =
      IconData(0x100C45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.square
  static const IconData sf_arrow_down_backward_square =
      IconData(0x100C46, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.square.fill
  static const IconData sf_arrow_down_backward_square_fill =
      IconData(0x100C47, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.toptrailing.rectangle
  static const IconData sf_arrow_down_backward_toptrailing_rectangle =
      IconData(0x101EFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.backward.toptrailing.rectangle.fill
  static const IconData sf_arrow_down_backward_toptrailing_rectangle_fill =
      IconData(0x101F00, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.circle
  static const IconData sf_arrow_down_circle =
      IconData(0x100078, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.circle.dotted
  static const IconData sf_arrow_down_circle_dotted =
      IconData(0x101E5F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.circle.fill
  static const IconData sf_arrow_down_circle_fill =
      IconData(0x100079, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.doc
  static const IconData sf_arrow_down_doc =
      IconData(0x10023D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.doc.fill
  static const IconData sf_arrow_down_doc_fill =
      IconData(0x10023E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward
  static const IconData sf_arrow_down_forward =
      IconData(0x100C48, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward
  static const IconData sf_arrow_down_forward_and_arrow_up_backward =
      IconData(0x100C7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.circle
  static const IconData sf_arrow_down_forward_and_arrow_up_backward_circle =
      IconData(0x100C7C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.circle.fill
  static const IconData
      sf_arrow_down_forward_and_arrow_up_backward_circle_fill =
      IconData(0x100C7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.square
  static const IconData sf_arrow_down_forward_and_arrow_up_backward_square =
      IconData(0x102149, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.and.arrow.up.backward.square.fill
  static const IconData
      sf_arrow_down_forward_and_arrow_up_backward_square_fill =
      IconData(0x10214A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.circle
  static const IconData sf_arrow_down_forward_circle =
      IconData(0x100C49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.circle.fill
  static const IconData sf_arrow_down_forward_circle_fill =
      IconData(0x100C4A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.square
  static const IconData sf_arrow_down_forward_square =
      IconData(0x100C4B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.square.fill
  static const IconData sf_arrow_down_forward_square_fill =
      IconData(0x100C4C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.topleading.rectangle
  static const IconData sf_arrow_down_forward_topleading_rectangle =
      IconData(0x101F0B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.forward.topleading.rectangle.fill
  static const IconData sf_arrow_down_forward_topleading_rectangle_fill =
      IconData(0x101F0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.heart
  static const IconData sf_arrow_down_heart =
      IconData(0x100C97, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.heart.fill
  static const IconData sf_arrow_down_heart_fill =
      IconData(0x100C98, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left
  static const IconData sf_arrow_down_left =
      IconData(0x100130, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right
  static const IconData sf_arrow_down_left_and_arrow_up_right =
      IconData(0x10211D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.circle
  static const IconData sf_arrow_down_left_and_arrow_up_right_circle =
      IconData(0x10211E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.circle.fill
  static const IconData sf_arrow_down_left_and_arrow_up_right_circle_fill =
      IconData(0x10211F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.square
  static const IconData sf_arrow_down_left_and_arrow_up_right_square =
      IconData(0x102143, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.and.arrow.up.right.square.fill
  static const IconData sf_arrow_down_left_and_arrow_up_right_square_fill =
      IconData(0x102144, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.arrow.up.right
  static const IconData sf_arrow_down_left_arrow_up_right =
      IconData(0x101F67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.circle
  static const IconData sf_arrow_down_left_arrow_up_right_circle =
      IconData(0x101F68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.circle.fill
  static const IconData sf_arrow_down_left_arrow_up_right_circle_fill =
      IconData(0x101F69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.square
  static const IconData sf_arrow_down_left_arrow_up_right_square =
      IconData(0x101F6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.arrow.up.right.square.fill
  static const IconData sf_arrow_down_left_arrow_up_right_square_fill =
      IconData(0x101F6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.circle
  static const IconData sf_arrow_down_left_circle =
      IconData(0x100086, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.circle.fill
  static const IconData sf_arrow_down_left_circle_fill =
      IconData(0x100087, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.square
  static const IconData sf_arrow_down_left_square =
      IconData(0x100116, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.square.fill
  static const IconData sf_arrow_down_left_square_fill =
      IconData(0x100117, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.topright.rectangle
  static const IconData sf_arrow_down_left_topright_rectangle =
      IconData(0x101EFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.topright.rectangle.fill
  static const IconData sf_arrow_down_left_topright_rectangle_fill =
      IconData(0x101EFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.video
  static const IconData sf_arrow_down_left_video =
      IconData(0x100351, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.left.video.fill
  static const IconData sf_arrow_down_left_video_fill =
      IconData(0x100352, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.message
  static const IconData sf_arrow_down_message =
      IconData(0x10149E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.message.fill
  static const IconData sf_arrow_down_message_fill =
      IconData(0x10149F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right
  static const IconData sf_arrow_down_right =
      IconData(0x100131, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left
  static const IconData sf_arrow_down_right_and_arrow_up_left =
      IconData(0x10014B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.circle
  static const IconData sf_arrow_down_right_and_arrow_up_left_circle =
      IconData(0x100ADE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.circle.fill
  static const IconData sf_arrow_down_right_and_arrow_up_left_circle_fill =
      IconData(0x100ADF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.square
  static const IconData sf_arrow_down_right_and_arrow_up_left_square =
      IconData(0x102147, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.and.arrow.up.left.square.fill
  static const IconData sf_arrow_down_right_and_arrow_up_left_square_fill =
      IconData(0x102148, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.circle
  static const IconData sf_arrow_down_right_circle =
      IconData(0x100088, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.circle.fill
  static const IconData sf_arrow_down_right_circle_fill =
      IconData(0x100089, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.square
  static const IconData sf_arrow_down_right_square =
      IconData(0x100118, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.square.fill
  static const IconData sf_arrow_down_right_square_fill =
      IconData(0x100119, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.topleft.rectangle
  static const IconData sf_arrow_down_right_topleft_rectangle =
      IconData(0x101F09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.right.topleft.rectangle.fill
  static const IconData sf_arrow_down_right_topleft_rectangle_fill =
      IconData(0x101F0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.square
  static const IconData sf_arrow_down_square =
      IconData(0x100108, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.square.fill
  static const IconData sf_arrow_down_square_fill =
      IconData(0x100109, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line
  static const IconData sf_arrow_down_to_line =
      IconData(0x100140, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line.circle
  static const IconData sf_arrow_down_to_line_circle =
      IconData(0x1004C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line.circle.fill
  static const IconData sf_arrow_down_to_line_circle_fill =
      IconData(0x1004C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line.compact
  static const IconData sf_arrow_down_to_line_compact =
      IconData(0x100144, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line.square
  static const IconData sf_arrow_down_to_line_square =
      IconData(0x102151, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.down.to.line.square.fill
  static const IconData sf_arrow_down_to_line_square_fill =
      IconData(0x102152, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward
  static const IconData sf_arrow_forward =
      IconData(0x100C11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.circle
  static const IconData sf_arrow_forward_circle =
      IconData(0x100C12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.circle.fill
  static const IconData sf_arrow_forward_circle_fill =
      IconData(0x100C13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.square
  static const IconData sf_arrow_forward_square =
      IconData(0x100C14, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.square.fill
  static const IconData sf_arrow_forward_square_fill =
      IconData(0x100C15, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.to.line
  static const IconData sf_arrow_forward_to_line =
      IconData(0x10108E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.to.line.circle
  static const IconData sf_arrow_forward_to_line_circle =
      IconData(0x101090, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.to.line.circle.fill
  static const IconData sf_arrow_forward_to_line_circle_fill =
      IconData(0x101091, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.to.line.square
  static const IconData sf_arrow_forward_to_line_square =
      IconData(0x102159, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.forward.to.line.square.fill
  static const IconData sf_arrow_forward_to_line_square_fill =
      IconData(0x10215A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left
  static const IconData sf_arrow_left =
      IconData(0x10012A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.line.vertical.and.arrow.right
  static const IconData sf_arrow_left_and_line_vertical_and_arrow_right =
      IconData(0x10068B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right
  static const IconData sf_arrow_left_and_right =
      IconData(0x10013E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.circle
  static const IconData sf_arrow_left_and_right_circle =
      IconData(0x10047E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.circle.fill
  static const IconData sf_arrow_left_and_right_circle_fill =
      IconData(0x10047F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.righttriangle.left.righttriangle.right
  static const IconData
      sf_arrow_left_and_right_righttriangle_left_righttriangle_right =
      IconData(0x100792, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.righttriangle.left.righttriangle.right.fill
  static const IconData
      sf_arrow_left_and_right_righttriangle_left_righttriangle_right_fill =
      IconData(0x100793, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.square
  static const IconData sf_arrow_left_and_right_square =
      IconData(0x100480, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.square.fill
  static const IconData sf_arrow_left_and_right_square_fill =
      IconData(0x100481, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.and.right.text.vertical
  static const IconData sf_arrow_left_and_right_text_vertical =
      IconData(0x1015AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.arrow.right
  static const IconData sf_arrow_left_arrow_right =
      IconData(0x10012D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.arrow.right.circle
  static const IconData sf_arrow_left_arrow_right_circle =
      IconData(0x100080, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.arrow.right.circle.fill
  static const IconData sf_arrow_left_arrow_right_circle_fill =
      IconData(0x100081, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.arrow.right.square
  static const IconData sf_arrow_left_arrow_right_square =
      IconData(0x100110, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.arrow.right.square.fill
  static const IconData sf_arrow_left_arrow_right_square_fill =
      IconData(0x100111, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.circle
  static const IconData sf_arrow_left_circle =
      IconData(0x10007A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.circle.fill
  static const IconData sf_arrow_left_circle_fill =
      IconData(0x10007B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.square
  static const IconData sf_arrow_left_square =
      IconData(0x10010A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.square.fill
  static const IconData sf_arrow_left_square_fill =
      IconData(0x10010B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line
  static const IconData sf_arrow_left_to_line =
      IconData(0x100141, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line.circle
  static const IconData sf_arrow_left_to_line_circle =
      IconData(0x1004CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line.circle.fill
  static const IconData sf_arrow_left_to_line_circle_fill =
      IconData(0x1004CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line.compact
  static const IconData sf_arrow_left_to_line_compact =
      IconData(0x100145, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line.square
  static const IconData sf_arrow_left_to_line_square =
      IconData(0x102153, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.left.to.line.square.fill
  static const IconData sf_arrow_left_to_line_square_fill =
      IconData(0x102154, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.rectanglepath
  static const IconData sf_arrow_rectanglepath =
      IconData(0x1008C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right
  static const IconData sf_arrow_right =
      IconData(0x10012B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.and.line.vertical.and.arrow.left
  static const IconData sf_arrow_right_and_line_vertical_and_arrow_left =
      IconData(0x10068C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.circle
  static const IconData sf_arrow_right_circle =
      IconData(0x10007C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.circle.fill
  static const IconData sf_arrow_right_circle_fill =
      IconData(0x10007D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.doc.on.clipboard
  static const IconData sf_arrow_right_doc_on_clipboard =
      IconData(0x100AF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.square
  static const IconData sf_arrow_right_square =
      IconData(0x10010C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.square.fill
  static const IconData sf_arrow_right_square_fill =
      IconData(0x10010D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line
  static const IconData sf_arrow_right_to_line =
      IconData(0x100142, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line.circle
  static const IconData sf_arrow_right_to_line_circle =
      IconData(0x1004CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line.circle.fill
  static const IconData sf_arrow_right_to_line_circle_fill =
      IconData(0x1004CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line.compact
  static const IconData sf_arrow_right_to_line_compact =
      IconData(0x100146, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line.square
  static const IconData sf_arrow_right_to_line_square =
      IconData(0x102157, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.right.to.line.square.fill
  static const IconData sf_arrow_right_to_line_square_fill =
      IconData(0x102158, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath
  static const IconData sf_arrow_triangle_2_circlepath =
      IconData(0x1002AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.camera
  static const IconData sf_arrow_triangle_2_circlepath_camera =
      IconData(0x100322, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.camera.fill
  static const IconData sf_arrow_triangle_2_circlepath_camera_fill =
      IconData(0x100323, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.circle
  static const IconData sf_arrow_triangle_2_circlepath_circle =
      IconData(0x10058A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.circle.fill
  static const IconData sf_arrow_triangle_2_circlepath_circle_fill =
      IconData(0x10058B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.doc.on.clipboard
  static const IconData sf_arrow_triangle_2_circlepath_doc_on_clipboard =
      IconData(0x100AF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.icloud
  static const IconData sf_arrow_triangle_2_circlepath_icloud =
      IconData(0x10218D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.2.circlepath.icloud.fill
  static const IconData sf_arrow_triangle_2_circlepath_icloud_fill =
      IconData(0x10218E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.branch
  static const IconData sf_arrow_triangle_branch =
      IconData(0x100660, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.capsulepath
  static const IconData sf_arrow_triangle_capsulepath =
      IconData(0x100916, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.merge
  static const IconData sf_arrow_triangle_merge =
      IconData(0x100584, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.pull
  static const IconData sf_arrow_triangle_pull =
      IconData(0x100661, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.swap
  static const IconData sf_arrow_triangle_swap =
      IconData(0x100585, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.turn.up.right.circle
  static const IconData sf_arrow_triangle_turn_up_right_circle =
      IconData(0x1007F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.turn.up.right.circle.fill
  static const IconData sf_arrow_triangle_turn_up_right_circle_fill =
      IconData(0x1007F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.turn.up.right.diamond
  static const IconData sf_arrow_triangle_turn_up_right_diamond =
      IconData(0x10065E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.triangle.turn.up.right.diamond.fill
  static const IconData sf_arrow_triangle_turn_up_right_diamond_fill =
      IconData(0x10065F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.down.left
  static const IconData sf_arrow_turn_down_left =
      IconData(0x100134, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.down.right
  static const IconData sf_arrow_turn_down_right =
      IconData(0x100135, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.left.down
  static const IconData sf_arrow_turn_left_down =
      IconData(0x100137, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.left.up
  static const IconData sf_arrow_turn_left_up =
      IconData(0x100136, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.right.down
  static const IconData sf_arrow_turn_right_down =
      IconData(0x100133, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.right.up
  static const IconData sf_arrow_turn_right_up =
      IconData(0x100132, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.up.forward.iphone
  static const IconData sf_arrow_turn_up_forward_iphone =
      IconData(0x100B2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.up.forward.iphone.fill
  static const IconData sf_arrow_turn_up_forward_iphone_fill =
      IconData(0x100B2C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.up.left
  static const IconData sf_arrow_turn_up_left =
      IconData(0x100138, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.turn.up.right
  static const IconData sf_arrow_turn_up_right =
      IconData(0x100139, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up
  static const IconData sf_arrow_up =
      IconData(0x100128, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down
  static const IconData sf_arrow_up_and_down =
      IconData(0x100479, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.and.arrow.left.and.right
  static const IconData sf_arrow_up_and_down_and_arrow_left_and_right =
      IconData(0x1009D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.and.sparkles
  static const IconData sf_arrow_up_and_down_and_sparkles =
      IconData(0x10148F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.circle
  static const IconData sf_arrow_up_and_down_circle =
      IconData(0x10047A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.circle.fill
  static const IconData sf_arrow_up_and_down_circle_fill =
      IconData(0x10047B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.righttriangle.up.righttriangle.down
  static const IconData
      sf_arrow_up_and_down_righttriangle_up_righttriangle_down =
      IconData(0x1007E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.righttriangle.up.righttriangle.down.fill
  static const IconData
      sf_arrow_up_and_down_righttriangle_up_righttriangle_down_fill =
      IconData(0x1007E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.square
  static const IconData sf_arrow_up_and_down_square =
      IconData(0x10047C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.square.fill
  static const IconData sf_arrow_up_and_down_square_fill =
      IconData(0x10047D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.down.text.horizontal
  static const IconData sf_arrow_up_and_down_text_horizontal =
      IconData(0x100D6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.line.horizontal.and.arrow.down
  static const IconData sf_arrow_up_and_line_horizontal_and_arrow_down =
      IconData(0x10068E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.person.rectangle.portrait
  static const IconData sf_arrow_up_and_person_rectangle_portrait =
      IconData(0x100AA8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.person.rectangle.turn.left
  static const IconData sf_arrow_up_and_person_rectangle_turn_left =
      IconData(0x100AAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.and.person.rectangle.turn.right
  static const IconData sf_arrow_up_and_person_rectangle_turn_right =
      IconData(0x100AA9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.arrow.down
  static const IconData sf_arrow_up_arrow_down =
      IconData(0x10012C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.arrow.down.circle
  static const IconData sf_arrow_up_arrow_down_circle =
      IconData(0x10007E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.arrow.down.circle.fill
  static const IconData sf_arrow_up_arrow_down_circle_fill =
      IconData(0x10007F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.arrow.down.square
  static const IconData sf_arrow_up_arrow_down_square =
      IconData(0x10010E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.arrow.down.square.fill
  static const IconData sf_arrow_up_arrow_down_square_fill =
      IconData(0x10010F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward
  static const IconData sf_arrow_up_backward =
      IconData(0x100C39, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward
  static const IconData sf_arrow_up_backward_and_arrow_down_forward =
      IconData(0x100C76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.circle
  static const IconData sf_arrow_up_backward_and_arrow_down_forward_circle =
      IconData(0x100C77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.circle.fill
  static const IconData
      sf_arrow_up_backward_and_arrow_down_forward_circle_fill =
      IconData(0x100C78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.square
  static const IconData sf_arrow_up_backward_and_arrow_down_forward_square =
      IconData(0x102141, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.and.arrow.down.forward.square.fill
  static const IconData
      sf_arrow_up_backward_and_arrow_down_forward_square_fill =
      IconData(0x102142, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.bottomtrailing.rectangle
  static const IconData sf_arrow_up_backward_bottomtrailing_rectangle =
      IconData(0x101F03, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.bottomtrailing.rectangle.fill
  static const IconData sf_arrow_up_backward_bottomtrailing_rectangle_fill =
      IconData(0x101F04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.circle
  static const IconData sf_arrow_up_backward_circle =
      IconData(0x100C3A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.circle.fill
  static const IconData sf_arrow_up_backward_circle_fill =
      IconData(0x100C3B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.square
  static const IconData sf_arrow_up_backward_square =
      IconData(0x100C3C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.backward.square.fill
  static const IconData sf_arrow_up_backward_square_fill =
      IconData(0x100C3D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.bin
  static const IconData sf_arrow_up_bin =
      IconData(0x100235, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.bin.fill
  static const IconData sf_arrow_up_bin_fill =
      IconData(0x100236, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.circle
  static const IconData sf_arrow_up_circle =
      IconData(0x100076, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.circle.badge.clock
  static const IconData sf_arrow_up_circle_badge_clock =
      IconData(0x1013B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.circle.fill
  static const IconData sf_arrow_up_circle_fill =
      IconData(0x100077, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.doc
  static const IconData sf_arrow_up_doc =
      IconData(0x10023B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.doc.fill
  static const IconData sf_arrow_up_doc_fill =
      IconData(0x10023C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.doc.on.clipboard
  static const IconData sf_arrow_up_doc_on_clipboard =
      IconData(0x100AF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward
  static const IconData sf_arrow_up_forward =
      IconData(0x100C3E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward
  static const IconData sf_arrow_up_forward_and_arrow_down_backward =
      IconData(0x10212C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.circle
  static const IconData sf_arrow_up_forward_and_arrow_down_backward_circle =
      IconData(0x10212D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.circle.fill
  static const IconData
      sf_arrow_up_forward_and_arrow_down_backward_circle_fill =
      IconData(0x10212E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.square
  static const IconData sf_arrow_up_forward_and_arrow_down_backward_square =
      IconData(0x10214D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.and.arrow.down.backward.square.fill
  static const IconData
      sf_arrow_up_forward_and_arrow_down_backward_square_fill =
      IconData(0x10214E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.app
  static const IconData sf_arrow_up_forward_app =
      IconData(0x100BB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.app.fill
  static const IconData sf_arrow_up_forward_app_fill =
      IconData(0x100BB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.bottomleading.rectangle
  static const IconData sf_arrow_up_forward_bottomleading_rectangle =
      IconData(0x101F07, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.bottomleading.rectangle.fill
  static const IconData sf_arrow_up_forward_bottomleading_rectangle_fill =
      IconData(0x101F08, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.circle
  static const IconData sf_arrow_up_forward_circle =
      IconData(0x100C3F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.circle.fill
  static const IconData sf_arrow_up_forward_circle_fill =
      IconData(0x100C40, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.square
  static const IconData sf_arrow_up_forward_square =
      IconData(0x100C41, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.forward.square.fill
  static const IconData sf_arrow_up_forward_square_fill =
      IconData(0x100C42, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.heart
  static const IconData sf_arrow_up_heart =
      IconData(0x100C95, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.heart.fill
  static const IconData sf_arrow_up_heart_fill =
      IconData(0x100C96, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left
  static const IconData sf_arrow_up_left =
      IconData(0x10012E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right
  static const IconData sf_arrow_up_left_and_arrow_down_right =
      IconData(0x10014A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.circle
  static const IconData sf_arrow_up_left_and_arrow_down_right_circle =
      IconData(0x1009DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.circle.fill
  static const IconData sf_arrow_up_left_and_arrow_down_right_circle_fill =
      IconData(0x1009DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.square
  static const IconData sf_arrow_up_left_and_arrow_down_right_square =
      IconData(0x10213F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.arrow.down.right.square.fill
  static const IconData sf_arrow_up_left_and_arrow_down_right_square_fill =
      IconData(0x102140, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.down.right.and.arrow.up.right.and.down.left
  static const IconData
      sf_arrow_up_left_and_down_right_and_arrow_up_right_and_down_left =
      IconData(0x100B11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.and.down.right.magnifyingglass
  static const IconData sf_arrow_up_left_and_down_right_magnifyingglass =
      IconData(0x100969, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.arrow.down.right
  static const IconData sf_arrow_up_left_arrow_down_right =
      IconData(0x101F92, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.circle
  static const IconData sf_arrow_up_left_arrow_down_right_circle =
      IconData(0x101F93, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.circle.fill
  static const IconData sf_arrow_up_left_arrow_down_right_circle_fill =
      IconData(0x101F94, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.square
  static const IconData sf_arrow_up_left_arrow_down_right_square =
      IconData(0x101F95, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.arrow.down.right.square.fill
  static const IconData sf_arrow_up_left_arrow_down_right_square_fill =
      IconData(0x101F96, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.bottomright.rectangle
  static const IconData sf_arrow_up_left_bottomright_rectangle =
      IconData(0x101F01, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.bottomright.rectangle.fill
  static const IconData sf_arrow_up_left_bottomright_rectangle_fill =
      IconData(0x101F02, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.circle
  static const IconData sf_arrow_up_left_circle =
      IconData(0x100082, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.circle.fill
  static const IconData sf_arrow_up_left_circle_fill =
      IconData(0x100083, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.square
  static const IconData sf_arrow_up_left_square =
      IconData(0x100112, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.left.square.fill
  static const IconData sf_arrow_up_left_square_fill =
      IconData(0x100113, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.message
  static const IconData sf_arrow_up_message =
      IconData(0x100703, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.message.fill
  static const IconData sf_arrow_up_message_fill =
      IconData(0x100704, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right
  static const IconData sf_arrow_up_right =
      IconData(0x10012F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left
  static const IconData sf_arrow_up_right_and_arrow_down_left =
      IconData(0x102127, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.circle
  static const IconData sf_arrow_up_right_and_arrow_down_left_circle =
      IconData(0x102128, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.circle.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_circle_fill =
      IconData(0x102129, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.rectangle
  static const IconData sf_arrow_up_right_and_arrow_down_left_rectangle =
      IconData(0x1008BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.rectangle.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_rectangle_fill =
      IconData(0x1008C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.square
  static const IconData sf_arrow_up_right_and_arrow_down_left_square =
      IconData(0x10214B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.and.arrow.down.left.square.fill
  static const IconData sf_arrow_up_right_and_arrow_down_left_square_fill =
      IconData(0x10214C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.bottomleft.rectangle
  static const IconData sf_arrow_up_right_bottomleft_rectangle =
      IconData(0x101F05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.bottomleft.rectangle.fill
  static const IconData sf_arrow_up_right_bottomleft_rectangle_fill =
      IconData(0x101F06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.circle
  static const IconData sf_arrow_up_right_circle =
      IconData(0x100084, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.circle.fill
  static const IconData sf_arrow_up_right_circle_fill =
      IconData(0x100085, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.square
  static const IconData sf_arrow_up_right_square =
      IconData(0x100114, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.square.fill
  static const IconData sf_arrow_up_right_square_fill =
      IconData(0x100115, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.video
  static const IconData sf_arrow_up_right_video =
      IconData(0x10034F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.right.video.fill
  static const IconData sf_arrow_up_right_video_fill =
      IconData(0x100350, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.square
  static const IconData sf_arrow_up_square =
      IconData(0x100106, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.square.fill
  static const IconData sf_arrow_up_square_fill =
      IconData(0x100107, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line
  static const IconData sf_arrow_up_to_line =
      IconData(0x10013F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line.circle
  static const IconData sf_arrow_up_to_line_circle =
      IconData(0x1004C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line.circle.fill
  static const IconData sf_arrow_up_to_line_circle_fill =
      IconData(0x1004C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line.compact
  static const IconData sf_arrow_up_to_line_compact =
      IconData(0x100143, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line.square
  static const IconData sf_arrow_up_to_line_square =
      IconData(0x10214F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.to.line.square.fill
  static const IconData sf_arrow_up_to_line_square_fill =
      IconData(0x102150, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.trash
  static const IconData sf_arrow_up_trash =
      IconData(0x1018C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.up.trash.fill
  static const IconData sf_arrow_up_trash_fill =
      IconData(0x1018C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward
  static const IconData sf_arrow_uturn_backward =
      IconData(0x100C4D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward.circle
  static const IconData sf_arrow_uturn_backward_circle =
      IconData(0x100C4E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward.circle.badge.ellipsis
  static const IconData sf_arrow_uturn_backward_circle_badge_ellipsis =
      IconData(0x100C50, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward.circle.fill
  static const IconData sf_arrow_uturn_backward_circle_fill =
      IconData(0x100C4F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward.square
  static const IconData sf_arrow_uturn_backward_square =
      IconData(0x100C51, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.backward.square.fill
  static const IconData sf_arrow_uturn_backward_square_fill =
      IconData(0x100C52, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.down
  static const IconData sf_arrow_uturn_down =
      IconData(0x10013B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.down.circle
  static const IconData sf_arrow_uturn_down_circle =
      IconData(0x10008C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.down.circle.fill
  static const IconData sf_arrow_uturn_down_circle_fill =
      IconData(0x10008D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.down.square
  static const IconData sf_arrow_uturn_down_square =
      IconData(0x10011C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.down.square.fill
  static const IconData sf_arrow_uturn_down_square_fill =
      IconData(0x10011D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.forward
  static const IconData sf_arrow_uturn_forward =
      IconData(0x100C53, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.forward.circle
  static const IconData sf_arrow_uturn_forward_circle =
      IconData(0x100C54, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.forward.circle.fill
  static const IconData sf_arrow_uturn_forward_circle_fill =
      IconData(0x100C55, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.forward.square
  static const IconData sf_arrow_uturn_forward_square =
      IconData(0x100C56, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.forward.square.fill
  static const IconData sf_arrow_uturn_forward_square_fill =
      IconData(0x100C57, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left
  static const IconData sf_arrow_uturn_left =
      IconData(0x10013C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left.circle
  static const IconData sf_arrow_uturn_left_circle =
      IconData(0x10008E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left.circle.badge.ellipsis
  static const IconData sf_arrow_uturn_left_circle_badge_ellipsis =
      IconData(0x1007B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left.circle.fill
  static const IconData sf_arrow_uturn_left_circle_fill =
      IconData(0x10008F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left.square
  static const IconData sf_arrow_uturn_left_square =
      IconData(0x10011E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.left.square.fill
  static const IconData sf_arrow_uturn_left_square_fill =
      IconData(0x10011F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.right
  static const IconData sf_arrow_uturn_right =
      IconData(0x10013D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.right.circle
  static const IconData sf_arrow_uturn_right_circle =
      IconData(0x100090, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.right.circle.fill
  static const IconData sf_arrow_uturn_right_circle_fill =
      IconData(0x100091, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.right.square
  static const IconData sf_arrow_uturn_right_square =
      IconData(0x100120, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.right.square.fill
  static const IconData sf_arrow_uturn_right_square_fill =
      IconData(0x100121, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.up
  static const IconData sf_arrow_uturn_up =
      IconData(0x10013A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.up.circle
  static const IconData sf_arrow_uturn_up_circle =
      IconData(0x10008A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.up.circle.fill
  static const IconData sf_arrow_uturn_up_circle_fill =
      IconData(0x10008B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.up.square
  static const IconData sf_arrow_uturn_up_square =
      IconData(0x10011A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrow.uturn.up.square.fill
  static const IconData sf_arrow_uturn_up_square_fill =
      IconData(0x10011B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys
  static const IconData sf_arrowkeys =
      IconData(0x101FB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys.down.filled
  static const IconData sf_arrowkeys_down_filled =
      IconData(0x101FB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys.fill
  static const IconData sf_arrowkeys_fill =
      IconData(0x101FB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys.left.filled
  static const IconData sf_arrowkeys_left_filled =
      IconData(0x101FB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys.right.filled
  static const IconData sf_arrowkeys_right_filled =
      IconData(0x101FB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowkeys.up.filled
  static const IconData sf_arrowkeys_up_filled =
      IconData(0x101FB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.backward
  static const IconData sf_arrowshape_backward =
      IconData(0x101248, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.backward.circle
  static const IconData sf_arrowshape_backward_circle =
      IconData(0x101FA2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.backward.circle.fill
  static const IconData sf_arrowshape_backward_circle_fill =
      IconData(0x101FA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.backward.fill
  static const IconData sf_arrowshape_backward_fill =
      IconData(0x101249, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.bounce.forward
  static const IconData sf_arrowshape_bounce_forward =
      IconData(0x100C28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.bounce.forward.fill
  static const IconData sf_arrowshape_bounce_forward_fill =
      IconData(0x100C29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.bounce.right
  static const IconData sf_arrowshape_bounce_right =
      IconData(0x100259, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.bounce.right.fill
  static const IconData sf_arrowshape_bounce_right_fill =
      IconData(0x100491, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.down
  static const IconData sf_arrowshape_down =
      IconData(0x101FAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.down.circle
  static const IconData sf_arrowshape_down_circle =
      IconData(0x101FAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.down.circle.fill
  static const IconData sf_arrowshape_down_circle_fill =
      IconData(0x101FAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.down.fill
  static const IconData sf_arrowshape_down_fill =
      IconData(0x101FAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.forward
  static const IconData sf_arrowshape_forward =
      IconData(0x101246, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.forward.circle
  static const IconData sf_arrowshape_forward_circle =
      IconData(0x101FA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.forward.circle.fill
  static const IconData sf_arrowshape_forward_circle_fill =
      IconData(0x101FA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.forward.fill
  static const IconData sf_arrowshape_forward_fill =
      IconData(0x101247, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left
  static const IconData sf_arrowshape_left =
      IconData(0x101244, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left.arrowshape.right
  static const IconData sf_arrowshape_left_arrowshape_right =
      IconData(0x10127E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left.arrowshape.right.fill
  static const IconData sf_arrowshape_left_arrowshape_right_fill =
      IconData(0x10127F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left.circle
  static const IconData sf_arrowshape_left_circle =
      IconData(0x101FA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left.circle.fill
  static const IconData sf_arrowshape_left_circle_fill =
      IconData(0x101FA1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.left.fill
  static const IconData sf_arrowshape_left_fill =
      IconData(0x101245, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.right
  static const IconData sf_arrowshape_right =
      IconData(0x101242, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.right.circle
  static const IconData sf_arrowshape_right_circle =
      IconData(0x101FA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.right.circle.fill
  static const IconData sf_arrowshape_right_circle_fill =
      IconData(0x101FA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.right.fill
  static const IconData sf_arrowshape_right_fill =
      IconData(0x101243, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward
  static const IconData sf_arrowshape_turn_up_backward =
      IconData(0x100C1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.2
  static const IconData sf_arrowshape_turn_up_backward_2 =
      IconData(0x100C22, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.circle
  static const IconData sf_arrowshape_turn_up_backward_2_circle =
      IconData(0x100C24, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.circle.fill
  static const IconData sf_arrowshape_turn_up_backward_2_circle_fill =
      IconData(0x100C25, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.2.fill
  static const IconData sf_arrowshape_turn_up_backward_2_fill =
      IconData(0x100C23, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.badge.clock
  static const IconData sf_arrowshape_turn_up_backward_badge_clock =
      IconData(0x1013B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.badge.clock.fill
  static const IconData sf_arrowshape_turn_up_backward_badge_clock_fill =
      IconData(0x1015BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.circle
  static const IconData sf_arrowshape_turn_up_backward_circle =
      IconData(0x100C1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.circle.fill
  static const IconData sf_arrowshape_turn_up_backward_circle_fill =
      IconData(0x100C1D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.backward.fill
  static const IconData sf_arrowshape_turn_up_backward_fill =
      IconData(0x100C1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.forward
  static const IconData sf_arrowshape_turn_up_forward =
      IconData(0x100C1E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.forward.circle
  static const IconData sf_arrowshape_turn_up_forward_circle =
      IconData(0x100C20, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.forward.circle.fill
  static const IconData sf_arrowshape_turn_up_forward_circle_fill =
      IconData(0x100C21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.forward.fill
  static const IconData sf_arrowshape_turn_up_forward_fill =
      IconData(0x100C1F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left
  static const IconData sf_arrowshape_turn_up_left =
      IconData(0x10024C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.2
  static const IconData sf_arrowshape_turn_up_left_2 =
      IconData(0x100254, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.2.circle
  static const IconData sf_arrowshape_turn_up_left_2_circle =
      IconData(0x100256, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.2.circle.fill
  static const IconData sf_arrowshape_turn_up_left_2_circle_fill =
      IconData(0x100257, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.2.fill
  static const IconData sf_arrowshape_turn_up_left_2_fill =
      IconData(0x100255, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.circle
  static const IconData sf_arrowshape_turn_up_left_circle =
      IconData(0x10024E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.circle.fill
  static const IconData sf_arrowshape_turn_up_left_circle_fill =
      IconData(0x10024F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.left.fill
  static const IconData sf_arrowshape_turn_up_left_fill =
      IconData(0x10024D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.right
  static const IconData sf_arrowshape_turn_up_right =
      IconData(0x100250, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.right.circle
  static const IconData sf_arrowshape_turn_up_right_circle =
      IconData(0x100252, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.right.circle.fill
  static const IconData sf_arrowshape_turn_up_right_circle_fill =
      IconData(0x100253, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.turn.up.right.fill
  static const IconData sf_arrowshape_turn_up_right_fill =
      IconData(0x100251, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.up
  static const IconData sf_arrowshape_up =
      IconData(0x101FA8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.up.circle
  static const IconData sf_arrowshape_up_circle =
      IconData(0x101FAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.up.circle.fill
  static const IconData sf_arrowshape_up_circle_fill =
      IconData(0x101FAB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.up.fill
  static const IconData sf_arrowshape_up_fill =
      IconData(0x101FA9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.zigzag.forward
  static const IconData sf_arrowshape_zigzag_forward =
      IconData(0x100C26, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.zigzag.forward.fill
  static const IconData sf_arrowshape_zigzag_forward_fill =
      IconData(0x100C27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.zigzag.right
  static const IconData sf_arrowshape_zigzag_right =
      IconData(0x100258, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowshape.zigzag.right.fill
  static const IconData sf_arrowshape_zigzag_right_fill =
      IconData(0x100490, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward
  static const IconData sf_arrowtriangle_backward =
      IconData(0x100C00, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward.circle
  static const IconData sf_arrowtriangle_backward_circle =
      IconData(0x100C02, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward.circle.fill
  static const IconData sf_arrowtriangle_backward_circle_fill =
      IconData(0x100C03, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward.fill
  static const IconData sf_arrowtriangle_backward_fill =
      IconData(0x100C01, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward.square
  static const IconData sf_arrowtriangle_backward_square =
      IconData(0x100C04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.backward.square.fill
  static const IconData sf_arrowtriangle_backward_square_fill =
      IconData(0x100C05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down
  static const IconData sf_arrowtriangle_down =
      IconData(0x1004C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down.circle
  static const IconData sf_arrowtriangle_down_circle =
      IconData(0x100068, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down.circle.fill
  static const IconData sf_arrowtriangle_down_circle_fill =
      IconData(0x100069, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down.fill
  static const IconData sf_arrowtriangle_down_fill =
      IconData(0x100125, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down.square
  static const IconData sf_arrowtriangle_down_square =
      IconData(0x1000F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.down.square.fill
  static const IconData sf_arrowtriangle_down_square_fill =
      IconData(0x1000F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward
  static const IconData sf_arrowtriangle_forward =
      IconData(0x100C06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward.circle
  static const IconData sf_arrowtriangle_forward_circle =
      IconData(0x100C08, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward.circle.fill
  static const IconData sf_arrowtriangle_forward_circle_fill =
      IconData(0x100C09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward.fill
  static const IconData sf_arrowtriangle_forward_fill =
      IconData(0x100C07, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward.square
  static const IconData sf_arrowtriangle_forward_square =
      IconData(0x100C0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.forward.square.fill
  static const IconData sf_arrowtriangle_forward_square_fill =
      IconData(0x100C0B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left
  static const IconData sf_arrowtriangle_left =
      IconData(0x1004C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.and.line.vertical.and.arrowtriangle.right
  static const IconData
      sf_arrowtriangle_left_and_line_vertical_and_arrowtriangle_right =
      IconData(0x100809, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill
  static const IconData
      sf_arrowtriangle_left_and_line_vertical_and_arrowtriangle_right_fill =
      IconData(0x1007E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.circle
  static const IconData sf_arrowtriangle_left_circle =
      IconData(0x10006A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.circle.fill
  static const IconData sf_arrowtriangle_left_circle_fill =
      IconData(0x10006B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.fill
  static const IconData sf_arrowtriangle_left_fill =
      IconData(0x100126, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.square
  static const IconData sf_arrowtriangle_left_square =
      IconData(0x1000FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.left.square.fill
  static const IconData sf_arrowtriangle_left_square_fill =
      IconData(0x1000FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right
  static const IconData sf_arrowtriangle_right =
      IconData(0x1004C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.and.line.vertical.and.arrowtriangle.left
  static const IconData
      sf_arrowtriangle_right_and_line_vertical_and_arrowtriangle_left =
      IconData(0x10080A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.and.line.vertical.and.arrowtriangle.left.fill
  static const IconData
      sf_arrowtriangle_right_and_line_vertical_and_arrowtriangle_left_fill =
      IconData(0x1007E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.circle
  static const IconData sf_arrowtriangle_right_circle =
      IconData(0x10006C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.circle.fill
  static const IconData sf_arrowtriangle_right_circle_fill =
      IconData(0x10006D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.fill
  static const IconData sf_arrowtriangle_right_fill =
      IconData(0x100127, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.square
  static const IconData sf_arrowtriangle_right_square =
      IconData(0x1000FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.right.square.fill
  static const IconData sf_arrowtriangle_right_square_fill =
      IconData(0x1000FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up
  static const IconData sf_arrowtriangle_up =
      IconData(0x1004C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.arrowtriangle.down.window.left
  static const IconData sf_arrowtriangle_up_arrowtriangle_down_window_left =
      IconData(0x10129D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.arrowtriangle.down.window.right
  static const IconData sf_arrowtriangle_up_arrowtriangle_down_window_right =
      IconData(0x10125D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.circle
  static const IconData sf_arrowtriangle_up_circle =
      IconData(0x100066, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.circle.fill
  static const IconData sf_arrowtriangle_up_circle_fill =
      IconData(0x100067, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.fill
  static const IconData sf_arrowtriangle_up_fill =
      IconData(0x100124, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.square
  static const IconData sf_arrowtriangle_up_square =
      IconData(0x1000F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol arrowtriangle.up.square.fill
  static const IconData sf_arrowtriangle_up_square_fill =
      IconData(0x1000F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol aspectratio
  static const IconData sf_aspectratio =
      IconData(0x100796, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol aspectratio.fill
  static const IconData sf_aspectratio_fill =
      IconData(0x10078F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol asterisk
  static const IconData sf_asterisk =
      IconData(0x100E13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol asterisk.circle
  static const IconData sf_asterisk_circle =
      IconData(0x10056C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol asterisk.circle.fill
  static const IconData sf_asterisk_circle_fill =
      IconData(0x10056D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol at
  static const IconData sf_at =
      IconData(0x100177, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol at.badge.minus
  static const IconData sf_at_badge_minus =
      IconData(0x100179, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol at.badge.plus
  static const IconData sf_at_badge_plus =
      IconData(0x100178, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol at.circle
  static const IconData sf_at_circle =
      IconData(0x100890, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol at.circle.fill
  static const IconData sf_at_circle_fill =
      IconData(0x100891, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol atom
  static const IconData sf_atom =
      IconData(0x100B1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign
  static const IconData sf_australiandollarsign =
      IconData(0x101F8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign.arrow.circlepath
  static const IconData sf_australiandollarsign_arrow_circlepath =
      IconData(0x102239, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign.circle
  static const IconData sf_australiandollarsign_circle =
      IconData(0x100BA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign.circle.fill
  static const IconData sf_australiandollarsign_circle_fill =
      IconData(0x100BA1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign.square
  static const IconData sf_australiandollarsign_square =
      IconData(0x100BA2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australiandollarsign.square.fill
  static const IconData sf_australiandollarsign_square_fill =
      IconData(0x100BA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign
  static const IconData sf_australsign =
      IconData(0x101450, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign.arrow.circlepath
  static const IconData sf_australsign_arrow_circlepath =
      IconData(0x102223, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign.circle
  static const IconData sf_australsign_circle =
      IconData(0x1005B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign.circle.fill
  static const IconData sf_australsign_circle_fill =
      IconData(0x1005BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign.square
  static const IconData sf_australsign_square =
      IconData(0x1005F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol australsign.square.fill
  static const IconData sf_australsign_square_fill =
      IconData(0x1005FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol automatic.brakesignal
  static const IconData sf_automatic_brakesignal =
      IconData(0x1017C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol automatic.headlight.high.beam
  static const IconData sf_automatic_headlight_high_beam =
      IconData(0x1018A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol automatic.headlight.high.beam.fill
  static const IconData sf_automatic_headlight_high_beam_fill =
      IconData(0x1018A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol automatic.headlight.low.beam
  static const IconData sf_automatic_headlight_low_beam =
      IconData(0x1018A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol automatic.headlight.low.beam.fill
  static const IconData sf_automatic_headlight_low_beam_fill =
      IconData(0x1018AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol autostartstop
  static const IconData sf_autostartstop =
      IconData(0x101262, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol autostartstop.slash
  static const IconData sf_autostartstop_slash =
      IconData(0x101263, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol autostartstop.trianglebadge.exclamationmark
  static const IconData sf_autostartstop_trianglebadge_exclamationmark =
      IconData(0x101280, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol av.remote
  static const IconData sf_av_remote =
      IconData(0x1014FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol av.remote.fill
  static const IconData sf_av_remote_fill =
      IconData(0x1014FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2
  static const IconData sf_axle_2 =
      IconData(0x10189A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.driveshaft.disengaged
  static const IconData sf_axle_2_driveshaft_disengaged =
      IconData(0x101824, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.front.and.rear.engaged
  static const IconData sf_axle_2_front_and_rear_engaged =
      IconData(0x101821, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.front.disengaged
  static const IconData sf_axle_2_front_disengaged =
      IconData(0x101822, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.front.engaged
  static const IconData sf_axle_2_front_engaged =
      IconData(0x10181F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.rear.disengaged
  static const IconData sf_axle_2_rear_disengaged =
      IconData(0x101823, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.rear.engaged
  static const IconData sf_axle_2_rear_engaged =
      IconData(0x101820, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol axle.2.rear.lock
  static const IconData sf_axle_2_rear_lock =
      IconData(0x101828, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol b.circle
  static const IconData sf_b_circle =
      IconData(0x100006, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol b.circle.fill
  static const IconData sf_b_circle_fill =
      IconData(0x100007, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol b.square
  static const IconData sf_b_square =
      IconData(0x100096, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol b.square.fill
  static const IconData sf_b_square_fill =
      IconData(0x100097, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backpack
  static const IconData sf_backpack =
      IconData(0x1012F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backpack.circle
  static const IconData sf_backpack_circle =
      IconData(0x10177A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backpack.circle.fill
  static const IconData sf_backpack_circle_fill =
      IconData(0x10177B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backpack.fill
  static const IconData sf_backpack_fill =
      IconData(0x1012FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward
  static const IconData sf_backward =
      IconData(0x100289, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.circle
  static const IconData sf_backward_circle =
      IconData(0x100E83, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.circle.fill
  static const IconData sf_backward_circle_fill =
      IconData(0x100E84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end
  static const IconData sf_backward_end =
      IconData(0x10028D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end.alt
  static const IconData sf_backward_end_alt =
      IconData(0x100291, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end.alt.fill
  static const IconData sf_backward_end_alt_fill =
      IconData(0x100292, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end.circle
  static const IconData sf_backward_end_circle =
      IconData(0x1012EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end.circle.fill
  static const IconData sf_backward_end_circle_fill =
      IconData(0x1012EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.end.fill
  static const IconData sf_backward_end_fill =
      IconData(0x10028E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.fill
  static const IconData sf_backward_fill =
      IconData(0x10028A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.frame
  static const IconData sf_backward_frame =
      IconData(0x100A68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol backward.frame.fill
  static const IconData sf_backward_frame_fill =
      IconData(0x100A69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol badge.plus.radiowaves.forward
  static const IconData sf_badge_plus_radiowaves_forward =
      IconData(0x100C2E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol badge.plus.radiowaves.right
  static const IconData sf_badge_plus_radiowaves_right =
      IconData(0x1002AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag
  static const IconData sf_bag =
      IconData(0x100363, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.badge.minus
  static const IconData sf_bag_badge_minus =
      IconData(0x100367, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.badge.plus
  static const IconData sf_bag_badge_plus =
      IconData(0x100365, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.badge.questionmark
  static const IconData sf_bag_badge_questionmark =
      IconData(0x1016A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.circle
  static const IconData sf_bag_circle =
      IconData(0x1004AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.circle.fill
  static const IconData sf_bag_circle_fill =
      IconData(0x1004AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.fill
  static const IconData sf_bag_fill =
      IconData(0x100364, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.fill.badge.minus
  static const IconData sf_bag_fill_badge_minus =
      IconData(0x100368, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.fill.badge.plus
  static const IconData sf_bag_fill_badge_plus =
      IconData(0x100366, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bag.fill.badge.questionmark
  static const IconData sf_bag_fill_badge_questionmark =
      IconData(0x1016A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign
  static const IconData sf_bahtsign =
      IconData(0x10145C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign.arrow.circlepath
  static const IconData sf_bahtsign_arrow_circlepath =
      IconData(0x10222F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign.circle
  static const IconData sf_bahtsign_circle =
      IconData(0x1005D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign.circle.fill
  static const IconData sf_bahtsign_circle_fill =
      IconData(0x1005D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign.square
  static const IconData sf_bahtsign_square =
      IconData(0x100611, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bahtsign.square.fill
  static const IconData sf_bahtsign_square_fill =
      IconData(0x100612, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol balloon
  static const IconData sf_balloon =
      IconData(0x10150E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol balloon.2
  static const IconData sf_balloon_2 =
      IconData(0x1014F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol balloon.2.fill
  static const IconData sf_balloon_2_fill =
      IconData(0x1014F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol balloon.fill
  static const IconData sf_balloon_fill =
      IconData(0x10150F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bandage
  static const IconData sf_bandage =
      IconData(0x100393, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bandage.fill
  static const IconData sf_bandage_fill =
      IconData(0x100394, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol banknote
  static const IconData sf_banknote =
      IconData(0x100B7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol banknote.fill
  static const IconData sf_banknote_fill =
      IconData(0x100B80, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol barcode
  static const IconData sf_barcode =
      IconData(0x100631, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol barcode.viewfinder
  static const IconData sf_barcode_viewfinder =
      IconData(0x1003BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol barometer
  static const IconData sf_barometer =
      IconData(0x100B27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol baseball
  static const IconData sf_baseball =
      IconData(0x100875, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol baseball.circle
  static const IconData sf_baseball_circle =
      IconData(0x1016BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol baseball.circle.fill
  static const IconData sf_baseball_circle_fill =
      IconData(0x1016BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol baseball.diamond.bases
  static const IconData sf_baseball_diamond_bases =
      IconData(0x101460, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol baseball.fill
  static const IconData sf_baseball_fill =
      IconData(0x100876, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basket
  static const IconData sf_basket =
      IconData(0x10158A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basket.fill
  static const IconData sf_basket_fill =
      IconData(0x10158B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basketball
  static const IconData sf_basketball =
      IconData(0x1015C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basketball.circle
  static const IconData sf_basketball_circle =
      IconData(0x1016BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basketball.circle.fill
  static const IconData sf_basketball_circle_fill =
      IconData(0x1016BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol basketball.fill
  static const IconData sf_basketball_fill =
      IconData(0x1015CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bathtub
  static const IconData sf_bathtub =
      IconData(0x10143C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bathtub.fill
  static const IconData sf_bathtub_fill =
      IconData(0x10143D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.0percent
  static const IconData sf_battery_0percent =
      IconData(0x1006EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.25percent
  static const IconData sf_battery_25percent =
      IconData(0x1006E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.50percent
  static const IconData sf_battery_50percent =
      IconData(0x100EB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.75percent
  static const IconData sf_battery_75percent =
      IconData(0x100EB8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.100percent
  static const IconData sf_battery_100percent =
      IconData(0x1006E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.100percent.bolt
  static const IconData sf_battery_100percent_bolt =
      IconData(0x10088B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.100percent.circle
  static const IconData sf_battery_100percent_circle =
      IconData(0x101054, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol battery.100percent.circle.fill
  static const IconData sf_battery_100percent_circle_fill =
      IconData(0x101055, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol batteryblock
  static const IconData sf_batteryblock =
      IconData(0x101837, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol batteryblock.fill
  static const IconData sf_batteryblock_fill =
      IconData(0x101838, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol batteryblock.slash
  static const IconData sf_batteryblock_slash =
      IconData(0x101835, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol batteryblock.slash.fill
  static const IconData sf_batteryblock_slash_fill =
      IconData(0x101836, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beach.umbrella
  static const IconData sf_beach_umbrella =
      IconData(0x1012F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beach.umbrella.fill
  static const IconData sf_beach_umbrella_fill =
      IconData(0x1012FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.earphones
  static const IconData sf_beats_earphones =
      IconData(0x100E92, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.fitpro
  static const IconData sf_beats_fitpro =
      IconData(0x10115E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.fitpro.chargingcase
  static const IconData sf_beats_fitpro_chargingcase =
      IconData(0x101161, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.fitpro.chargingcase.fill
  static const IconData sf_beats_fitpro_chargingcase_fill =
      IconData(0x101162, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.fitpro.left
  static const IconData sf_beats_fitpro_left =
      IconData(0x10115F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.fitpro.right
  static const IconData sf_beats_fitpro_right =
      IconData(0x101160, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.headphones
  static const IconData sf_beats_headphones =
      IconData(0x100EAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats
  static const IconData sf_beats_powerbeats =
      IconData(0x100ED4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats.left
  static const IconData sf_beats_powerbeats_left =
      IconData(0x101C3C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats.right
  static const IconData sf_beats_powerbeats_right =
      IconData(0x100ED5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats3
  static const IconData sf_beats_powerbeats3 =
      IconData(0x100EAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats3.left
  static const IconData sf_beats_powerbeats3_left =
      IconData(0x101C3E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeats3.right
  static const IconData sf_beats_powerbeats3_right =
      IconData(0x101C3D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeatspro
  static const IconData sf_beats_powerbeatspro =
      IconData(0x100E6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeatspro.chargingcase
  static const IconData sf_beats_powerbeatspro_chargingcase =
      IconData(0x100E70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeatspro.chargingcase.fill
  static const IconData sf_beats_powerbeatspro_chargingcase_fill =
      IconData(0x100E71, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeatspro.left
  static const IconData sf_beats_powerbeatspro_left =
      IconData(0x100E6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.powerbeatspro.right
  static const IconData sf_beats_powerbeatspro_right =
      IconData(0x100E6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobud.left
  static const IconData sf_beats_studiobud_left =
      IconData(0x100FA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobud.right
  static const IconData sf_beats_studiobud_right =
      IconData(0x100FA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobuds
  static const IconData sf_beats_studiobuds =
      IconData(0x100FA2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobuds.chargingcase
  static const IconData sf_beats_studiobuds_chargingcase =
      IconData(0x100FA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobuds.chargingcase.fill
  static const IconData sf_beats_studiobuds_chargingcase_fill =
      IconData(0x100FA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobudsplus
  static const IconData sf_beats_studiobudsplus =
      IconData(0x101E73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobudsplus.chargingcase
  static const IconData sf_beats_studiobudsplus_chargingcase =
      IconData(0x101E76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobudsplus.chargingcase.fill
  static const IconData sf_beats_studiobudsplus_chargingcase_fill =
      IconData(0x101E77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobudsplus.left
  static const IconData sf_beats_studiobudsplus_left =
      IconData(0x101E74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol beats.studiobudsplus.right
  static const IconData sf_beats_studiobudsplus_right =
      IconData(0x101E75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bed.double
  static const IconData sf_bed_double =
      IconData(0x100669, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bed.double.circle
  static const IconData sf_bed_double_circle =
      IconData(0x10104F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bed.double.circle.fill
  static const IconData sf_bed_double_circle_fill =
      IconData(0x101050, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bed.double.fill
  static const IconData sf_bed_double_fill =
      IconData(0x10066A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell
  static const IconData sf_bell =
      IconData(0x1002D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.and.waves.left.and.right
  static const IconData sf_bell_and_waves_left_and_right =
      IconData(0x101124, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.and.waves.left.and.right.fill
  static const IconData sf_bell_and_waves_left_and_right_fill =
      IconData(0x101120, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge
  static const IconData sf_bell_badge =
      IconData(0x100756, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.circle
  static const IconData sf_bell_badge_circle =
      IconData(0x100C37, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.circle.fill
  static const IconData sf_bell_badge_circle_fill =
      IconData(0x100C38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.fill
  static const IconData sf_bell_badge_fill =
      IconData(0x100757, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.slash
  static const IconData sf_bell_badge_slash =
      IconData(0x102131, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.slash.fill
  static const IconData sf_bell_badge_slash_fill =
      IconData(0x102132, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.waveform
  static const IconData sf_bell_badge_waveform =
      IconData(0x100EFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.badge.waveform.fill
  static const IconData sf_bell_badge_waveform_fill =
      IconData(0x100F00, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.circle
  static const IconData sf_bell_circle =
      IconData(0x1002DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.circle.fill
  static const IconData sf_bell_circle_fill =
      IconData(0x1002DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.fill
  static const IconData sf_bell_fill =
      IconData(0x1002DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.slash
  static const IconData sf_bell_slash =
      IconData(0x1002DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.slash.circle
  static const IconData sf_bell_slash_circle =
      IconData(0x1002DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.slash.circle.fill
  static const IconData sf_bell_slash_circle_fill =
      IconData(0x1002E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.slash.fill
  static const IconData sf_bell_slash_fill =
      IconData(0x1002DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.square
  static const IconData sf_bell_square =
      IconData(0x100F37, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bell.square.fill
  static const IconData sf_bell_square_fill =
      IconData(0x100F38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bicycle
  static const IconData sf_bicycle =
      IconData(0x100865, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bicycle.circle
  static const IconData sf_bicycle_circle =
      IconData(0x100C6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bicycle.circle.fill
  static const IconData sf_bicycle_circle_fill =
      IconData(0x100C6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol binoculars
  static const IconData sf_binoculars =
      IconData(0x10080D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol binoculars.circle
  static const IconData sf_binoculars_circle =
      IconData(0x1018D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol binoculars.circle.fill
  static const IconData sf_binoculars_circle_fill =
      IconData(0x1018DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol binoculars.fill
  static const IconData sf_binoculars_fill =
      IconData(0x10080E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bird
  static const IconData sf_bird =
      IconData(0x1015DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bird.circle
  static const IconData sf_bird_circle =
      IconData(0x101F19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bird.circle.fill
  static const IconData sf_bird_circle_fill =
      IconData(0x101F1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bird.fill
  static const IconData sf_bird_fill =
      IconData(0x1015E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol birthday.cake
  static const IconData sf_birthday_cake =
      IconData(0x1015A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol birthday.cake.fill
  static const IconData sf_birthday_cake_fill =
      IconData(0x1015AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign
  static const IconData sf_bitcoinsign =
      IconData(0x10145E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign.arrow.circlepath
  static const IconData sf_bitcoinsign_arrow_circlepath =
      IconData(0x102231, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign.circle
  static const IconData sf_bitcoinsign_circle =
      IconData(0x1005D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign.circle.fill
  static const IconData sf_bitcoinsign_circle_fill =
      IconData(0x1005D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign.square
  static const IconData sf_bitcoinsign_square =
      IconData(0x100615, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bitcoinsign.square.fill
  static const IconData sf_bitcoinsign_square_fill =
      IconData(0x100616, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol blinds.horizontal.closed
  static const IconData sf_blinds_horizontal_closed =
      IconData(0x101476, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol blinds.horizontal.open
  static const IconData sf_blinds_horizontal_open =
      IconData(0x101475, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol blinds.vertical.closed
  static const IconData sf_blinds_vertical_closed =
      IconData(0x101474, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol blinds.vertical.open
  static const IconData sf_blinds_vertical_open =
      IconData(0x101473, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bold
  static const IconData sf_bold =
      IconData(0x100153, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bold.italic.underline
  static const IconData sf_bold_italic_underline =
      IconData(0x100157, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bold.underline
  static const IconData sf_bold_underline =
      IconData(0x100158, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt
  static const IconData sf_bolt =
      IconData(0x1002E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.automatic
  static const IconData sf_bolt_badge_automatic =
      IconData(0x100633, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.automatic.fill
  static const IconData sf_bolt_badge_automatic_fill =
      IconData(0x100634, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.checkmark
  static const IconData sf_bolt_badge_checkmark =
      IconData(0x101E0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.checkmark.fill
  static const IconData sf_bolt_badge_checkmark_fill =
      IconData(0x101E11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.clock
  static const IconData sf_bolt_badge_clock =
      IconData(0x101413, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.clock.fill
  static const IconData sf_bolt_badge_clock_fill =
      IconData(0x101414, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.xmark
  static const IconData sf_bolt_badge_xmark =
      IconData(0x101E13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.badge.xmark.fill
  static const IconData sf_bolt_badge_xmark_fill =
      IconData(0x101E15, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.batteryblock
  static const IconData sf_bolt_batteryblock =
      IconData(0x100AEE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.batteryblock.fill
  static const IconData sf_bolt_batteryblock_fill =
      IconData(0x100AEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.brakesignal
  static const IconData sf_bolt_brakesignal =
      IconData(0x101289, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.car
  static const IconData sf_bolt_car =
      IconData(0x10085E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.car.circle
  static const IconData sf_bolt_car_circle =
      IconData(0x101132, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.car.circle.fill
  static const IconData sf_bolt_car_circle_fill =
      IconData(0x101133, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.car.fill
  static const IconData sf_bolt_car_fill =
      IconData(0x100743, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.circle
  static const IconData sf_bolt_circle =
      IconData(0x1002E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.circle.fill
  static const IconData sf_bolt_circle_fill =
      IconData(0x1002E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.fill
  static const IconData sf_bolt_fill =
      IconData(0x1002E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.heart
  static const IconData sf_bolt_heart =
      IconData(0x1007BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.heart.fill
  static const IconData sf_bolt_heart_fill =
      IconData(0x1006E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal
  static const IconData sf_bolt_horizontal =
      IconData(0x100497, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal.circle
  static const IconData sf_bolt_horizontal_circle =
      IconData(0x100499, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal.circle.fill
  static const IconData sf_bolt_horizontal_circle_fill =
      IconData(0x10049A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal.fill
  static const IconData sf_bolt_horizontal_fill =
      IconData(0x100498, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal.icloud
  static const IconData sf_bolt_horizontal_icloud =
      IconData(0x10063F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.horizontal.icloud.fill
  static const IconData sf_bolt_horizontal_icloud_fill =
      IconData(0x100640, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.ring.closed
  static const IconData sf_bolt_ring_closed =
      IconData(0x101258, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.shield
  static const IconData sf_bolt_shield =
      IconData(0x1010D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.shield.fill
  static const IconData sf_bolt_shield_fill =
      IconData(0x1010D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.slash
  static const IconData sf_bolt_slash =
      IconData(0x1002E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.slash.circle
  static const IconData sf_bolt_slash_circle =
      IconData(0x1002EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.slash.circle.fill
  static const IconData sf_bolt_slash_circle_fill =
      IconData(0x1002EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.slash.fill
  static const IconData sf_bolt_slash_fill =
      IconData(0x1002EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.square
  static const IconData sf_bolt_square =
      IconData(0x100F35, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.square.fill
  static const IconData sf_bolt_square_fill =
      IconData(0x100F36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.trianglebadge.exclamationmark
  static const IconData sf_bolt_trianglebadge_exclamationmark =
      IconData(0x101771, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bolt.trianglebadge.exclamationmark.fill
  static const IconData sf_bolt_trianglebadge_exclamationmark_fill =
      IconData(0x101772, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bonjour
  static const IconData sf_bonjour =
      IconData(0x100960, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book
  static const IconData sf_book =
      IconData(0x10025A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.and.wrench
  static const IconData sf_book_and_wrench =
      IconData(0x10197D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.and.wrench.fill
  static const IconData sf_book_and_wrench_fill =
      IconData(0x101C38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.circle
  static const IconData sf_book_circle =
      IconData(0x10025C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.circle.fill
  static const IconData sf_book_circle_fill =
      IconData(0x10025D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.closed
  static const IconData sf_book_closed =
      IconData(0x10091E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.closed.circle
  static const IconData sf_book_closed_circle =
      IconData(0x1011E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.closed.circle.fill
  static const IconData sf_book_closed_circle_fill =
      IconData(0x1011E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.closed.fill
  static const IconData sf_book_closed_fill =
      IconData(0x10091F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.fill
  static const IconData sf_book_fill =
      IconData(0x10025B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.pages
  static const IconData sf_book_pages =
      IconData(0x10173E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol book.pages.fill
  static const IconData sf_book_pages_fill =
      IconData(0x10173F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark
  static const IconData sf_bookmark =
      IconData(0x10025E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.circle
  static const IconData sf_bookmark_circle =
      IconData(0x100260, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.circle.fill
  static const IconData sf_bookmark_circle_fill =
      IconData(0x100261, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.fill
  static const IconData sf_bookmark_fill =
      IconData(0x10025F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.slash
  static const IconData sf_bookmark_slash =
      IconData(0x1007CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.slash.fill
  static const IconData sf_bookmark_slash_fill =
      IconData(0x1007CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.square
  static const IconData sf_bookmark_square =
      IconData(0x100F39, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bookmark.square.fill
  static const IconData sf_bookmark_square_fill =
      IconData(0x100F3A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol books.vertical
  static const IconData sf_books_vertical =
      IconData(0x100B12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol books.vertical.circle
  static const IconData sf_books_vertical_circle =
      IconData(0x1011BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol books.vertical.circle.fill
  static const IconData sf_books_vertical_circle_fill =
      IconData(0x1011BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol books.vertical.fill
  static const IconData sf_books_vertical_fill =
      IconData(0x100B13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brain
  static const IconData sf_brain =
      IconData(0x100BD0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brain.fill
  static const IconData sf_brain_fill =
      IconData(0x102087, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brain.filled.head.profile
  static const IconData sf_brain_filled_head_profile =
      IconData(0x1020C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brain.head.profile
  static const IconData sf_brain_head_profile =
      IconData(0x100BCF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brain.head.profile.fill
  static const IconData sf_brain_head_profile_fill =
      IconData(0x102086, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brakesignal
  static const IconData sf_brakesignal =
      IconData(0x100FBE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brakesignal.dashed
  static const IconData sf_brakesignal_dashed =
      IconData(0x101037, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign
  static const IconData sf_brazilianrealsign =
      IconData(0x10145F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign.arrow.circlepath
  static const IconData sf_brazilianrealsign_arrow_circlepath =
      IconData(0x102232, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign.circle
  static const IconData sf_brazilianrealsign_circle =
      IconData(0x100BB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign.circle.fill
  static const IconData sf_brazilianrealsign_circle_fill =
      IconData(0x100BB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign.square
  static const IconData sf_brazilianrealsign_square =
      IconData(0x100BB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol brazilianrealsign.square.fill
  static const IconData sf_brazilianrealsign_square_fill =
      IconData(0x100BB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol briefcase
  static const IconData sf_briefcase =
      IconData(0x10039C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol briefcase.circle
  static const IconData sf_briefcase_circle =
      IconData(0x100DE1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol briefcase.circle.fill
  static const IconData sf_briefcase_circle_fill =
      IconData(0x100DE2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol briefcase.fill
  static const IconData sf_briefcase_fill =
      IconData(0x10039D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble
  static const IconData sf_bubble =
      IconData(0x102139, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.circle
  static const IconData sf_bubble_circle =
      IconData(0x10213B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.circle.fill
  static const IconData sf_bubble_circle_fill =
      IconData(0x10213C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.fill
  static const IconData sf_bubble_fill =
      IconData(0x10213A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left
  static const IconData sf_bubble_left =
      IconData(0x10032A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.bubble.right
  static const IconData sf_bubble_left_and_bubble_right =
      IconData(0x1004A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.bubble.right.fill
  static const IconData sf_bubble_left_and_bubble_right_fill =
      IconData(0x100632, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.exclamationmark.bubble.right
  static const IconData sf_bubble_left_and_exclamationmark_bubble_right =
      IconData(0x1010D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.exclamationmark.bubble.right.fill
  static const IconData sf_bubble_left_and_exclamationmark_bubble_right_fill =
      IconData(0x1010D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.text.bubble.right
  static const IconData sf_bubble_left_and_text_bubble_right =
      IconData(0x1020E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.and.text.bubble.right.fill
  static const IconData sf_bubble_left_and_text_bubble_right_fill =
      IconData(0x1020E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.circle
  static const IconData sf_bubble_left_circle =
      IconData(0x1011D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.circle.fill
  static const IconData sf_bubble_left_circle_fill =
      IconData(0x1011D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.left.fill
  static const IconData sf_bubble_left_fill =
      IconData(0x10032B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.middle.bottom
  static const IconData sf_bubble_middle_bottom =
      IconData(0x100338, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.middle.bottom.fill
  static const IconData sf_bubble_middle_bottom_fill =
      IconData(0x100339, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.middle.top
  static const IconData sf_bubble_middle_top =
      IconData(0x10033C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.middle.top.fill
  static const IconData sf_bubble_middle_top_fill =
      IconData(0x10033D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.right
  static const IconData sf_bubble_right =
      IconData(0x100328, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.right.circle
  static const IconData sf_bubble_right_circle =
      IconData(0x1011CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.right.circle.fill
  static const IconData sf_bubble_right_circle_fill =
      IconData(0x1011CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubble.right.fill
  static const IconData sf_bubble_right_fill =
      IconData(0x100329, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubbles.and.sparkles
  static const IconData sf_bubbles_and_sparkles =
      IconData(0x101489, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bubbles.and.sparkles.fill
  static const IconData sf_bubbles_and_sparkles_fill =
      IconData(0x10148A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building
  static const IconData sf_building =
      IconData(0x100B85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.2
  static const IconData sf_building_2 =
      IconData(0x100752, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.2.crop.circle
  static const IconData sf_building_2_crop_circle =
      IconData(0x100754, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.2.crop.circle.fill
  static const IconData sf_building_2_crop_circle_fill =
      IconData(0x100755, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.2.fill
  static const IconData sf_building_2_fill =
      IconData(0x100753, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.columns
  static const IconData sf_building_columns =
      IconData(0x100928, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.columns.circle
  static const IconData sf_building_columns_circle =
      IconData(0x1011C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.columns.circle.fill
  static const IconData sf_building_columns_circle_fill =
      IconData(0x1011C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.columns.fill
  static const IconData sf_building_columns_fill =
      IconData(0x100929, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol building.fill
  static const IconData sf_building_fill =
      IconData(0x100B86, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol burn
  static const IconData sf_burn =
      IconData(0x1004DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol burst
  static const IconData sf_burst =
      IconData(0x100442, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol burst.fill
  static const IconData sf_burst_fill =
      IconData(0x10061E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bus
  static const IconData sf_bus =
      IconData(0x100748, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bus.doubledecker
  static const IconData sf_bus_doubledecker =
      IconData(0x10071B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bus.doubledecker.fill
  static const IconData sf_bus_doubledecker_fill =
      IconData(0x10071C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol bus.fill
  static const IconData sf_bus_fill =
      IconData(0x100749, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledbottom.horizontal.left
  static const IconData sf_button_angledbottom_horizontal_left =
      IconData(0x101E05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledbottom.horizontal.left.fill
  static const IconData sf_button_angledbottom_horizontal_left_fill =
      IconData(0x101E06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledbottom.horizontal.right
  static const IconData sf_button_angledbottom_horizontal_right =
      IconData(0x101E03, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledbottom.horizontal.right.fill
  static const IconData sf_button_angledbottom_horizontal_right_fill =
      IconData(0x101E04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledtop.vertical.left
  static const IconData sf_button_angledtop_vertical_left =
      IconData(0x101DEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledtop.vertical.left.fill
  static const IconData sf_button_angledtop_vertical_left_fill =
      IconData(0x101DF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledtop.vertical.right
  static const IconData sf_button_angledtop_vertical_right =
      IconData(0x101DF1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.angledtop.vertical.right.fill
  static const IconData sf_button_angledtop_vertical_right_fill =
      IconData(0x101DF2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.horizontal
  static const IconData sf_button_horizontal =
      IconData(0x101E1E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.horizontal.fill
  static const IconData sf_button_horizontal_fill =
      IconData(0x101E1F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.horizontal.top.press
  static const IconData sf_button_horizontal_top_press =
      IconData(0x10206B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.horizontal.top.press.fill
  static const IconData sf_button_horizontal_top_press_fill =
      IconData(0x10206C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.programmable
  static const IconData sf_button_programmable =
      IconData(0x1013F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.programmable.square
  static const IconData sf_button_programmable_square =
      IconData(0x1013E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.programmable.square.fill
  static const IconData sf_button_programmable_square_fill =
      IconData(0x1013E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.roundedbottom.horizontal
  static const IconData sf_button_roundedbottom_horizontal =
      IconData(0x100A7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.roundedbottom.horizontal.fill
  static const IconData sf_button_roundedbottom_horizontal_fill =
      IconData(0x100A7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.roundedtop.horizontal
  static const IconData sf_button_roundedtop_horizontal =
      IconData(0x100A78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.roundedtop.horizontal.fill
  static const IconData sf_button_roundedtop_horizontal_fill =
      IconData(0x100A79, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.vertical.left.press
  static const IconData sf_button_vertical_left_press =
      IconData(0x102089, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.vertical.left.press.fill
  static const IconData sf_button_vertical_left_press_fill =
      IconData(0x10208A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.vertical.right.press
  static const IconData sf_button_vertical_right_press =
      IconData(0x102069, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol button.vertical.right.press.fill
  static const IconData sf_button_vertical_right_press_fill =
      IconData(0x10206A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol c.circle
  static const IconData sf_c_circle =
      IconData(0x100008, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol c.circle.fill
  static const IconData sf_c_circle_fill =
      IconData(0x100009, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol c.square
  static const IconData sf_c_square =
      IconData(0x100098, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol c.square.fill
  static const IconData sf_c_square_fill =
      IconData(0x100099, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cabinet
  static const IconData sf_cabinet =
      IconData(0x10142E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cabinet.fill
  static const IconData sf_cabinet_fill =
      IconData(0x10142F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cable.coaxial
  static const IconData sf_cable_coaxial =
      IconData(0x101292, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cable.connector
  static const IconData sf_cable_connector =
      IconData(0x100EA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cable.connector.horizontal
  static const IconData sf_cable_connector_horizontal =
      IconData(0x100D1E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cable.connector.slash
  static const IconData sf_cable_connector_slash =
      IconData(0x1021E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cablecar
  static const IconData sf_cablecar =
      IconData(0x100DF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cablecar.fill
  static const IconData sf_cablecar_fill =
      IconData(0x100DF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar
  static const IconData sf_calendar =
      IconData(0x100249, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.badge.checkmark
  static const IconData sf_calendar_badge_checkmark =
      IconData(0x101EE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.badge.clock
  static const IconData sf_calendar_badge_clock =
      IconData(0x1009DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.badge.exclamationmark
  static const IconData sf_calendar_badge_exclamationmark =
      IconData(0x100B9D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.badge.minus
  static const IconData sf_calendar_badge_minus =
      IconData(0x10024B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.badge.plus
  static const IconData sf_calendar_badge_plus =
      IconData(0x10024A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.circle
  static const IconData sf_calendar_circle =
      IconData(0x10048E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.circle.fill
  static const IconData sf_calendar_circle_fill =
      IconData(0x10048F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.day.timeline.leading
  static const IconData sf_calendar_day_timeline_leading =
      IconData(0x101043, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.day.timeline.left
  static const IconData sf_calendar_day_timeline_left =
      IconData(0x100EE4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.day.timeline.right
  static const IconData sf_calendar_day_timeline_right =
      IconData(0x100EE3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol calendar.day.timeline.trailing
  static const IconData sf_calendar_day_timeline_trailing =
      IconData(0x101042, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera
  static const IconData sf_camera =
      IconData(0x10031E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.aperture
  static const IconData sf_camera_aperture =
      IconData(0x100A3A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.badge.clock
  static const IconData sf_camera_badge_clock =
      IconData(0x101925, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.badge.clock.fill
  static const IconData sf_camera_badge_clock_fill =
      IconData(0x101926, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.badge.ellipsis
  static const IconData sf_camera_badge_ellipsis =
      IconData(0x100897, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.badge.ellipsis.fill
  static const IconData sf_camera_badge_ellipsis_fill =
      IconData(0x100898, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.circle
  static const IconData sf_camera_circle =
      IconData(0x100320, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.circle.fill
  static const IconData sf_camera_circle_fill =
      IconData(0x100321, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.fill
  static const IconData sf_camera_fill =
      IconData(0x10031F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.filters
  static const IconData sf_camera_filters =
      IconData(0x1007D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.macro
  static const IconData sf_camera_macro =
      IconData(0x101082, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.macro.circle
  static const IconData sf_camera_macro_circle =
      IconData(0x101083, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.macro.circle.fill
  static const IconData sf_camera_macro_circle_fill =
      IconData(0x101084, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.center.weighted
  static const IconData sf_camera_metering_center_weighted =
      IconData(0x1008AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.center.weighted.average
  static const IconData sf_camera_metering_center_weighted_average =
      IconData(0x1007B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.matrix
  static const IconData sf_camera_metering_matrix =
      IconData(0x1008AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.multispot
  static const IconData sf_camera_metering_multispot =
      IconData(0x1008AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.none
  static const IconData sf_camera_metering_none =
      IconData(0x1008AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.partial
  static const IconData sf_camera_metering_partial =
      IconData(0x1008AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.spot
  static const IconData sf_camera_metering_spot =
      IconData(0x1008AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.metering.unknown
  static const IconData sf_camera_metering_unknown =
      IconData(0x1008B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.on.rectangle
  static const IconData sf_camera_on_rectangle =
      IconData(0x100741, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.on.rectangle.fill
  static const IconData sf_camera_on_rectangle_fill =
      IconData(0x100742, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.shutter.button
  static const IconData sf_camera_shutter_button =
      IconData(0x100E7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.shutter.button.fill
  static const IconData sf_camera_shutter_button_fill =
      IconData(0x100E7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol camera.viewfinder
  static const IconData sf_camera_viewfinder =
      IconData(0x1003BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol candybarphone
  static const IconData sf_candybarphone =
      IconData(0x100AB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capslock
  static const IconData sf_capslock =
      IconData(0x1001A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capslock.fill
  static const IconData sf_capslock_fill =
      IconData(0x1001A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule
  static const IconData sf_capsule =
      IconData(0x100776, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.bottomhalf.filled
  static const IconData sf_capsule_bottomhalf_filled =
      IconData(0x100FF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.fill
  static const IconData sf_capsule_fill =
      IconData(0x100777, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.inset.filled
  static const IconData sf_capsule_inset_filled =
      IconData(0x100F9A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.lefthalf.filled
  static const IconData sf_capsule_lefthalf_filled =
      IconData(0x100FF3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait
  static const IconData sf_capsule_portrait =
      IconData(0x1009F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.bottomhalf.filled
  static const IconData sf_capsule_portrait_bottomhalf_filled =
      IconData(0x100FFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.fill
  static const IconData sf_capsule_portrait_fill =
      IconData(0x1009F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.inset.filled
  static const IconData sf_capsule_portrait_inset_filled =
      IconData(0x100F9B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.lefthalf.filled
  static const IconData sf_capsule_portrait_lefthalf_filled =
      IconData(0x100FF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.righthalf.filled
  static const IconData sf_capsule_portrait_righthalf_filled =
      IconData(0x100FF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.portrait.tophalf.filled
  static const IconData sf_capsule_portrait_tophalf_filled =
      IconData(0x100FF9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.righthalf.filled
  static const IconData sf_capsule_righthalf_filled =
      IconData(0x100FF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol capsule.tophalf.filled
  static const IconData sf_capsule_tophalf_filled =
      IconData(0x100FF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol captions.bubble
  static const IconData sf_captions_bubble =
      IconData(0x100334, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol captions.bubble.fill
  static const IconData sf_captions_bubble_fill =
      IconData(0x100335, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car
  static const IconData sf_car =
      IconData(0x100658, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.2
  static const IconData sf_car_2 =
      IconData(0x100744, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.2.fill
  static const IconData sf_car_2_fill =
      IconData(0x100745, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.circle
  static const IconData sf_car_circle =
      IconData(0x100B6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.circle.fill
  static const IconData sf_car_circle_fill =
      IconData(0x100B70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.ferry
  static const IconData sf_car_ferry =
      IconData(0x100E0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.ferry.fill
  static const IconData sf_car_ferry_fill =
      IconData(0x100E0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.fill
  static const IconData sf_car_fill =
      IconData(0x100659, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.front.waves.down
  static const IconData sf_car_front_waves_down =
      IconData(0x102109, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.front.waves.down.fill
  static const IconData sf_car_front_waves_down_fill =
      IconData(0x10210A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.front.waves.up
  static const IconData sf_car_front_waves_up =
      IconData(0x1018B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.front.waves.up.fill
  static const IconData sf_car_front_waves_up_fill =
      IconData(0x1018B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear
  static const IconData sf_car_rear =
      IconData(0x100F5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.and.collision.road.lane
  static const IconData sf_car_rear_and_collision_road_lane =
      IconData(0x1018E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.and.collision.road.lane.slash
  static const IconData sf_car_rear_and_collision_road_lane_slash =
      IconData(0x1018EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.and.tire.marks
  static const IconData sf_car_rear_and_tire_marks =
      IconData(0x100FC8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.and.tire.marks.slash
  static const IconData sf_car_rear_and_tire_marks_slash =
      IconData(0x1018A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.fill
  static const IconData sf_car_rear_fill =
      IconData(0x100F5C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.road.lane
  static const IconData sf_car_rear_road_lane =
      IconData(0x10157F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.road.lane.dashed
  static const IconData sf_car_rear_road_lane_dashed =
      IconData(0x101578, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.waves.up
  static const IconData sf_car_rear_waves_up =
      IconData(0x10159D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.rear.waves.up.fill
  static const IconData sf_car_rear_waves_up_fill =
      IconData(0x10159E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side
  static const IconData sf_car_side =
      IconData(0x1013B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.air.circulate
  static const IconData sf_car_side_air_circulate =
      IconData(0x10126C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.air.circulate.fill
  static const IconData sf_car_side_air_circulate_fill =
      IconData(0x10126D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.air.fresh
  static const IconData sf_car_side_air_fresh =
      IconData(0x10126E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.air.fresh.fill
  static const IconData sf_car_side_air_fresh_fill =
      IconData(0x10126F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.and.exclamationmark
  static const IconData sf_car_side_and_exclamationmark =
      IconData(0x10126A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.and.exclamationmark.fill
  static const IconData sf_car_side_and_exclamationmark_fill =
      IconData(0x101805, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.down
  static const IconData sf_car_side_arrowtriangle_down =
      IconData(0x10180B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.down.fill
  static const IconData sf_car_side_arrowtriangle_down_fill =
      IconData(0x10180C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.up
  static const IconData sf_car_side_arrowtriangle_up =
      IconData(0x101809, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.up.arrowtriangle.down
  static const IconData sf_car_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101807, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData sf_car_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x101808, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.arrowtriangle.up.fill
  static const IconData sf_car_side_arrowtriangle_up_fill =
      IconData(0x10180A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.fill
  static const IconData sf_car_side_fill =
      IconData(0x1013B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.front.open
  static const IconData sf_car_side_front_open =
      IconData(0x101264, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.front.open.fill
  static const IconData sf_car_side_front_open_fill =
      IconData(0x101265, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.hill.down
  static const IconData sf_car_side_hill_down =
      IconData(0x10194E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.hill.down.fill
  static const IconData sf_car_side_hill_down_fill =
      IconData(0x10194F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.hill.up
  static const IconData sf_car_side_hill_up =
      IconData(0x10190D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.hill.up.fill
  static const IconData sf_car_side_hill_up_fill =
      IconData(0x10190E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.lock
  static const IconData sf_car_side_lock =
      IconData(0x1018F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.lock.fill
  static const IconData sf_car_side_lock_fill =
      IconData(0x1018FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.lock.open
  static const IconData sf_car_side_lock_open =
      IconData(0x1018FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.lock.open.fill
  static const IconData sf_car_side_lock_open_fill =
      IconData(0x1018FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.and.collision.and.car.side.front
  static const IconData sf_car_side_rear_and_collision_and_car_side_front =
      IconData(0x101D74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.and.collision.and.car.side.front.slash
  static const IconData
      sf_car_side_rear_and_collision_and_car_side_front_slash =
      IconData(0x101D75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.and.exclamationmark.and.car.side.front
  static const IconData
      sf_car_side_rear_and_exclamationmark_and_car_side_front =
      IconData(0x101D78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.and.wave.3.and.car.side.front
  static const IconData sf_car_side_rear_and_wave_3_and_car_side_front =
      IconData(0x101D77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.open
  static const IconData sf_car_side_rear_open =
      IconData(0x101266, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.side.rear.open.fill
  static const IconData sf_car_side_rear_open_fill =
      IconData(0x101267, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_and_rear_right_open =
      IconData(0x101010, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_and_rear_right_open_fill =
      IconData(0x101011, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_open =
      IconData(0x10185C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.left.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_left_open_fill =
      IconData(0x10185D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_right_open =
      IconData(0x10185E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_front_right_and_rear_right_open_fill =
      IconData(0x10185F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.open
  static const IconData sf_car_top_door_front_left_and_front_right_open =
      IconData(0x101850, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.front.right.open.fill
  static const IconData sf_car_top_door_front_left_and_front_right_open_fill =
      IconData(0x101851, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_left_and_rear_left_and_rear_right_open =
      IconData(0x101860, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_left_and_rear_left_and_rear_right_open_fill =
      IconData(0x101861, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.open
  static const IconData sf_car_top_door_front_left_and_rear_left_open =
      IconData(0x101854, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.left.open.fill
  static const IconData sf_car_top_door_front_left_and_rear_left_open_fill =
      IconData(0x101855, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.right.open
  static const IconData sf_car_top_door_front_left_and_rear_right_open =
      IconData(0x101858, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.and.rear.right.open.fill
  static const IconData sf_car_top_door_front_left_and_rear_right_open_fill =
      IconData(0x101859, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.open
  static const IconData sf_car_top_door_front_left_open =
      IconData(0x100FC2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.left.open.fill
  static const IconData sf_car_top_door_front_left_open_fill =
      IconData(0x100FC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.and.rear.right.open
  static const IconData
      sf_car_top_door_front_right_and_rear_left_and_rear_right_open =
      IconData(0x101862, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.and.rear.right.open.fill
  static const IconData
      sf_car_top_door_front_right_and_rear_left_and_rear_right_open_fill =
      IconData(0x101863, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.open
  static const IconData sf_car_top_door_front_right_and_rear_left_open =
      IconData(0x10185A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.left.open.fill
  static const IconData sf_car_top_door_front_right_and_rear_left_open_fill =
      IconData(0x10185B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.right.open
  static const IconData sf_car_top_door_front_right_and_rear_right_open =
      IconData(0x101856, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.and.rear.right.open.fill
  static const IconData sf_car_top_door_front_right_and_rear_right_open_fill =
      IconData(0x101857, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.open
  static const IconData sf_car_top_door_front_right_open =
      IconData(0x10184A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.front.right.open.fill
  static const IconData sf_car_top_door_front_right_open_fill =
      IconData(0x10184B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.left.and.rear.right.open
  static const IconData sf_car_top_door_rear_left_and_rear_right_open =
      IconData(0x101852, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.left.and.rear.right.open.fill
  static const IconData sf_car_top_door_rear_left_and_rear_right_open_fill =
      IconData(0x101853, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.left.open
  static const IconData sf_car_top_door_rear_left_open =
      IconData(0x10184C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.left.open.fill
  static const IconData sf_car_top_door_rear_left_open_fill =
      IconData(0x10184D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.right.open
  static const IconData sf_car_top_door_rear_right_open =
      IconData(0x10184E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.rear.right.open.fill
  static const IconData sf_car_top_door_rear_right_open_fill =
      IconData(0x10184F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.sliding.left.open
  static const IconData sf_car_top_door_sliding_left_open =
      IconData(0x101D79, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.sliding.left.open.fill
  static const IconData sf_car_top_door_sliding_left_open_fill =
      IconData(0x101D7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.sliding.right.open
  static const IconData sf_car_top_door_sliding_right_open =
      IconData(0x101D7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.door.sliding.right.open.fill
  static const IconData sf_car_top_door_sliding_right_open_fill =
      IconData(0x101D7C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.frontleft.arrowtriangle
  static const IconData sf_car_top_frontleft_arrowtriangle =
      IconData(0x10209B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.frontleft.arrowtriangle.fill
  static const IconData sf_car_top_frontleft_arrowtriangle_fill =
      IconData(0x10209C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.frontright.arrowtriangle
  static const IconData sf_car_top_frontright_arrowtriangle =
      IconData(0x10209D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.frontright.arrowtriangle.fill
  static const IconData sf_car_top_frontright_arrowtriangle_fill =
      IconData(0x10209E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.arrowtriangle.inward
  static const IconData sf_car_top_lane_dashed_arrowtriangle_inward =
      IconData(0x10157E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.arrowtriangle.inward.fill
  static const IconData sf_car_top_lane_dashed_arrowtriangle_inward_fill =
      IconData(0x101583, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.badge.steeringwheel
  static const IconData sf_car_top_lane_dashed_badge_steeringwheel =
      IconData(0x101584, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.badge.steeringwheel.fill
  static const IconData sf_car_top_lane_dashed_badge_steeringwheel_fill =
      IconData(0x101585, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.departure.left
  static const IconData sf_car_top_lane_dashed_departure_left =
      IconData(0x1018AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.departure.left.fill
  static const IconData sf_car_top_lane_dashed_departure_left_fill =
      IconData(0x1018B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.departure.right
  static const IconData sf_car_top_lane_dashed_departure_right =
      IconData(0x10157C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.lane.dashed.departure.right.fill
  static const IconData sf_car_top_lane_dashed_departure_right_fill =
      IconData(0x10157D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.front
  static const IconData sf_car_top_radiowaves_front =
      IconData(0x1015B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.front.fill
  static const IconData sf_car_top_radiowaves_front_fill =
      IconData(0x1015B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear
  static const IconData sf_car_top_radiowaves_rear =
      IconData(0x1015B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.fill
  static const IconData sf_car_top_radiowaves_rear_fill =
      IconData(0x1015BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.left
  static const IconData sf_car_top_radiowaves_rear_left =
      IconData(0x1015B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.left.and.rear.right
  static const IconData sf_car_top_radiowaves_rear_left_and_rear_right =
      IconData(0x1018A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.left.and.rear.right.fill
  static const IconData sf_car_top_radiowaves_rear_left_and_rear_right_fill =
      IconData(0x1018A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.left.fill
  static const IconData sf_car_top_radiowaves_rear_left_fill =
      IconData(0x1015B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right
  static const IconData sf_car_top_radiowaves_rear_right =
      IconData(0x1015B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.exclamationmark
  static const IconData sf_car_top_radiowaves_rear_right_badge_exclamationmark =
      IconData(0x1018A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.exclamationmark.fill
  static const IconData
      sf_car_top_radiowaves_rear_right_badge_exclamationmark_fill =
      IconData(0x1018A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.xmark
  static const IconData sf_car_top_radiowaves_rear_right_badge_xmark =
      IconData(0x1018A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right.badge.xmark.fill
  static const IconData sf_car_top_radiowaves_rear_right_badge_xmark_fill =
      IconData(0x1018A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.radiowaves.rear.right.fill
  static const IconData sf_car_top_radiowaves_rear_right_fill =
      IconData(0x1015B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.rearleft.arrowtriangle
  static const IconData sf_car_top_rearleft_arrowtriangle =
      IconData(0x102091, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.rearleft.arrowtriangle.fill
  static const IconData sf_car_top_rearleft_arrowtriangle_fill =
      IconData(0x102092, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.rearright.arrowtriangle
  static const IconData sf_car_top_rearright_arrowtriangle =
      IconData(0x102093, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.top.rearright.arrowtriangle.fill
  static const IconData sf_car_top_rearright_arrowtriangle_fill =
      IconData(0x102094, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.left
  static const IconData sf_car_window_left =
      IconData(0x10129C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.left.badge.exclamationmark
  static const IconData sf_car_window_left_badge_exclamationmark =
      IconData(0x1012A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.left.badge.xmark
  static const IconData sf_car_window_left_badge_xmark =
      IconData(0x1012A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.left.exclamationmark
  static const IconData sf_car_window_left_exclamationmark =
      IconData(0x10129E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.left.xmark
  static const IconData sf_car_window_left_xmark =
      IconData(0x1012A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.right
  static const IconData sf_car_window_right =
      IconData(0x10125C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.right.badge.exclamationmark
  static const IconData sf_car_window_right_badge_exclamationmark =
      IconData(0x10125F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.right.badge.xmark
  static const IconData sf_car_window_right_badge_xmark =
      IconData(0x101261, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.right.exclamationmark
  static const IconData sf_car_window_right_exclamationmark =
      IconData(0x10125E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol car.window.right.xmark
  static const IconData sf_car_window_right_xmark =
      IconData(0x10129A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carbon.dioxide.cloud
  static const IconData sf_carbon_dioxide_cloud =
      IconData(0x1014B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carbon.dioxide.cloud.fill
  static const IconData sf_carbon_dioxide_cloud_fill =
      IconData(0x1014B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carbon.monoxide.cloud
  static const IconData sf_carbon_monoxide_cloud =
      IconData(0x1014B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carbon.monoxide.cloud.fill
  static const IconData sf_carbon_monoxide_cloud_fill =
      IconData(0x1014B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carrot
  static const IconData sf_carrot =
      IconData(0x10158E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carrot.fill
  static const IconData sf_carrot_fill =
      IconData(0x10158F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left
  static const IconData sf_carseat_left =
      IconData(0x101994, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.1
  static const IconData sf_carseat_left_1 =
      IconData(0x10159F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.1.fill
  static const IconData sf_carseat_left_1_fill =
      IconData(0x1015A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.2
  static const IconData sf_carseat_left_2 =
      IconData(0x1015A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.2.fill
  static const IconData sf_carseat_left_2_fill =
      IconData(0x1015A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.3
  static const IconData sf_carseat_left_3 =
      IconData(0x1015A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.3.fill
  static const IconData sf_carseat_left_3_fill =
      IconData(0x1015A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.and.heat.waves
  static const IconData sf_carseat_left_and_heat_waves =
      IconData(0x1012CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.and.heat.waves.fill
  static const IconData sf_carseat_left_and_heat_waves_fill =
      IconData(0x1012CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.backrest.up.and.down
  static const IconData sf_carseat_left_backrest_up_and_down =
      IconData(0x10198C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.backrest.up.and.down.fill
  static const IconData sf_carseat_left_backrest_up_and_down_fill =
      IconData(0x10198D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.fan
  static const IconData sf_carseat_left_fan =
      IconData(0x1012D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.fan.fill
  static const IconData sf_carseat_left_fan_fill =
      IconData(0x1012D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.fill
  static const IconData sf_carseat_left_fill =
      IconData(0x101995, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.forward.and.backward
  static const IconData sf_carseat_left_forward_and_backward =
      IconData(0x101988, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.forward.and.backward.fill
  static const IconData sf_carseat_left_forward_and_backward_fill =
      IconData(0x101989, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.massage
  static const IconData sf_carseat_left_massage =
      IconData(0x101D7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.massage.fill
  static const IconData sf_carseat_left_massage_fill =
      IconData(0x101D7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.up.and.down
  static const IconData sf_carseat_left_up_and_down =
      IconData(0x101990, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.left.up.and.down.fill
  static const IconData sf_carseat_left_up_and_down_fill =
      IconData(0x101991, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right
  static const IconData sf_carseat_right =
      IconData(0x101996, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.1
  static const IconData sf_carseat_right_1 =
      IconData(0x1012D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.1.fill
  static const IconData sf_carseat_right_1_fill =
      IconData(0x1012D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.2
  static const IconData sf_carseat_right_2 =
      IconData(0x1012D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.2.fill
  static const IconData sf_carseat_right_2_fill =
      IconData(0x1012D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.3
  static const IconData sf_carseat_right_3 =
      IconData(0x1012D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.3.fill
  static const IconData sf_carseat_right_3_fill =
      IconData(0x1012DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.and.heat.waves
  static const IconData sf_carseat_right_and_heat_waves =
      IconData(0x1012CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.and.heat.waves.fill
  static const IconData sf_carseat_right_and_heat_waves_fill =
      IconData(0x1012D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.backrest.up.and.down
  static const IconData sf_carseat_right_backrest_up_and_down =
      IconData(0x10198E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.backrest.up.and.down.fill
  static const IconData sf_carseat_right_backrest_up_and_down_fill =
      IconData(0x10198F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.fan
  static const IconData sf_carseat_right_fan =
      IconData(0x1012D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.fan.fill
  static const IconData sf_carseat_right_fan_fill =
      IconData(0x1012D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.fill
  static const IconData sf_carseat_right_fill =
      IconData(0x101997, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.forward.and.backward
  static const IconData sf_carseat_right_forward_and_backward =
      IconData(0x10198A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.forward.and.backward.fill
  static const IconData sf_carseat_right_forward_and_backward_fill =
      IconData(0x10198B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.massage
  static const IconData sf_carseat_right_massage =
      IconData(0x101D7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.massage.fill
  static const IconData sf_carseat_right_massage_fill =
      IconData(0x101D80, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.up.and.down
  static const IconData sf_carseat_right_up_and_down =
      IconData(0x101992, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol carseat.right.up.and.down.fill
  static const IconData sf_carseat_right_up_and_down_fill =
      IconData(0x101993, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart
  static const IconData sf_cart =
      IconData(0x100369, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.badge.minus
  static const IconData sf_cart_badge_minus =
      IconData(0x10036D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.badge.plus
  static const IconData sf_cart_badge_plus =
      IconData(0x10036B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.badge.questionmark
  static const IconData sf_cart_badge_questionmark =
      IconData(0x1016A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.circle
  static const IconData sf_cart_circle =
      IconData(0x1004AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.circle.fill
  static const IconData sf_cart_circle_fill =
      IconData(0x1004AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.fill
  static const IconData sf_cart_fill =
      IconData(0x10036A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.fill.badge.minus
  static const IconData sf_cart_fill_badge_minus =
      IconData(0x10036E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.fill.badge.plus
  static const IconData sf_cart_fill_badge_plus =
      IconData(0x10036C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cart.fill.badge.questionmark
  static const IconData sf_cart_fill_badge_questionmark =
      IconData(0x1016A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol case
  static const IconData sf_case =
      IconData(0x100BE1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol case.fill
  static const IconData sf_case_fill =
      IconData(0x100BE2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cat
  static const IconData sf_cat =
      IconData(0x10207E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cat.circle
  static const IconData sf_cat_circle =
      IconData(0x102080, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cat.circle.fill
  static const IconData sf_cat_circle_fill =
      IconData(0x102081, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cat.fill
  static const IconData sf_cat_fill =
      IconData(0x10207F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign
  static const IconData sf_cedisign =
      IconData(0x101455, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign.arrow.circlepath
  static const IconData sf_cedisign_arrow_circlepath =
      IconData(0x102228, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign.circle
  static const IconData sf_cedisign_circle =
      IconData(0x1005C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign.circle.fill
  static const IconData sf_cedisign_circle_fill =
      IconData(0x1005C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign.square
  static const IconData sf_cedisign_square =
      IconData(0x100603, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cedisign.square.fill
  static const IconData sf_cedisign_square_fill =
      IconData(0x100604, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cellularbars
  static const IconData sf_cellularbars =
      IconData(0x100B67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign
  static const IconData sf_centsign =
      IconData(0x101440, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign.arrow.circlepath
  static const IconData sf_centsign_arrow_circlepath =
      IconData(0x102213, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign.circle
  static const IconData sf_centsign_circle =
      IconData(0x100599, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign.circle.fill
  static const IconData sf_centsign_circle_fill =
      IconData(0x10059A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign.square
  static const IconData sf_centsign_square =
      IconData(0x1005D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol centsign.square.fill
  static const IconData sf_centsign_square_fill =
      IconData(0x1005DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chair
  static const IconData sf_chair =
      IconData(0x101436, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chair.fill
  static const IconData sf_chair_fill =
      IconData(0x101437, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chair.lounge
  static const IconData sf_chair_lounge =
      IconData(0x101434, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chair.lounge.fill
  static const IconData sf_chair_lounge_fill =
      IconData(0x101435, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chandelier
  static const IconData sf_chandelier =
      IconData(0x101326, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chandelier.fill
  static const IconData sf_chandelier_fill =
      IconData(0x1013D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character
  static const IconData sf_character =
      IconData(0x10014F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.book.closed
  static const IconData sf_character_book_closed =
      IconData(0x100AD5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.book.closed.fill
  static const IconData sf_character_book_closed_fill =
      IconData(0x100AD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.bubble
  static const IconData sf_character_bubble =
      IconData(0x100330, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.bubble.fill
  static const IconData sf_character_bubble_fill =
      IconData(0x100331, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.cursor.ibeam
  static const IconData sf_character_cursor_ibeam =
      IconData(0x10016B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.duployan
  static const IconData sf_character_duployan =
      IconData(0x1014D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.magnify
  static const IconData sf_character_magnify =
      IconData(0x10090D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.phonetic
  static const IconData sf_character_phonetic =
      IconData(0x1014D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.sutton
  static const IconData sf_character_sutton =
      IconData(0x1014D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol character.textbox
  static const IconData sf_character_textbox =
      IconData(0x100176, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar
  static const IconData sf_chart_bar =
      IconData(0x10043E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.doc.horizontal
  static const IconData sf_chart_bar_doc_horizontal =
      IconData(0x10095C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.doc.horizontal.fill
  static const IconData sf_chart_bar_doc_horizontal_fill =
      IconData(0x10098C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.fill
  static const IconData sf_chart_bar_fill =
      IconData(0x10043F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.xaxis
  static const IconData sf_chart_bar_xaxis =
      IconData(0x1008C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.xaxis.ascending
  static const IconData sf_chart_bar_xaxis_ascending =
      IconData(0x10218F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.bar.xaxis.ascending.badge.clock
  static const IconData sf_chart_bar_xaxis_ascending_badge_clock =
      IconData(0x102190, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.dots.scatter
  static const IconData sf_chart_dots_scatter =
      IconData(0x1018C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.downtrend.xyaxis
  static const IconData sf_chart_line_downtrend_xyaxis =
      IconData(0x101633, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.downtrend.xyaxis.circle
  static const IconData sf_chart_line_downtrend_xyaxis_circle =
      IconData(0x101634, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.downtrend.xyaxis.circle.fill
  static const IconData sf_chart_line_downtrend_xyaxis_circle_fill =
      IconData(0x101635, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.flattrend.xyaxis
  static const IconData sf_chart_line_flattrend_xyaxis =
      IconData(0x101636, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.flattrend.xyaxis.circle
  static const IconData sf_chart_line_flattrend_xyaxis_circle =
      IconData(0x101637, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.flattrend.xyaxis.circle.fill
  static const IconData sf_chart_line_flattrend_xyaxis_circle_fill =
      IconData(0x101638, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.uptrend.xyaxis
  static const IconData sf_chart_line_uptrend_xyaxis =
      IconData(0x100441, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.uptrend.xyaxis.circle
  static const IconData sf_chart_line_uptrend_xyaxis_circle =
      IconData(0x100D1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.line.uptrend.xyaxis.circle.fill
  static const IconData sf_chart_line_uptrend_xyaxis_circle_fill =
      IconData(0x100D1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.pie
  static const IconData sf_chart_pie =
      IconData(0x100440, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.pie.fill
  static const IconData sf_chart_pie_fill =
      IconData(0x10070B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chart.xyaxis.line
  static const IconData sf_chart_xyaxis_line =
      IconData(0x1010A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checklist
  static const IconData sf_checklist =
      IconData(0x100DFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checklist.checked
  static const IconData sf_checklist_checked =
      IconData(0x101655, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checklist.unchecked
  static const IconData sf_checklist_unchecked =
      IconData(0x101660, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark
  static const IconData sf_checkmark =
      IconData(0x100185, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.applewatch
  static const IconData sf_checkmark_applewatch =
      IconData(0x102117, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.bubble
  static const IconData sf_checkmark_bubble =
      IconData(0x100FCB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.bubble.fill
  static const IconData sf_checkmark_bubble_fill =
      IconData(0x100FCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle
  static const IconData sf_checkmark_circle =
      IconData(0x100062, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.badge.questionmark
  static const IconData sf_checkmark_circle_badge_questionmark =
      IconData(0x10171E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.badge.questionmark.fill
  static const IconData sf_checkmark_circle_badge_questionmark_fill =
      IconData(0x10171F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.badge.xmark
  static const IconData sf_checkmark_circle_badge_xmark =
      IconData(0x101722, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.badge.xmark.fill
  static const IconData sf_checkmark_circle_badge_xmark_fill =
      IconData(0x101723, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.fill
  static const IconData sf_checkmark_circle_fill =
      IconData(0x100063, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.circle.trianglebadge.exclamationmark
  static const IconData sf_checkmark_circle_trianglebadge_exclamationmark =
      IconData(0x1010CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.diamond
  static const IconData sf_checkmark_diamond =
      IconData(0x10105A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.diamond.fill
  static const IconData sf_checkmark_diamond_fill =
      IconData(0x10105B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.gobackward
  static const IconData sf_checkmark_gobackward =
      IconData(0x1018DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.icloud
  static const IconData sf_checkmark_icloud =
      IconData(0x100893, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.icloud.fill
  static const IconData sf_checkmark_icloud_fill =
      IconData(0x100894, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.message
  static const IconData sf_checkmark_message =
      IconData(0x101415, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.message.fill
  static const IconData sf_checkmark_message_fill =
      IconData(0x101416, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle
  static const IconData sf_checkmark_rectangle =
      IconData(0x1003CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle.fill
  static const IconData sf_checkmark_rectangle_fill =
      IconData(0x1003CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle.portrait
  static const IconData sf_checkmark_rectangle_portrait =
      IconData(0x10086E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle.portrait.fill
  static const IconData sf_checkmark_rectangle_portrait_fill =
      IconData(0x10086F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle.stack
  static const IconData sf_checkmark_rectangle_stack =
      IconData(0x1020BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.rectangle.stack.fill
  static const IconData sf_checkmark_rectangle_stack_fill =
      IconData(0x1020BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.seal
  static const IconData sf_checkmark_seal =
      IconData(0x1001FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.seal.fill
  static const IconData sf_checkmark_seal_fill =
      IconData(0x1001FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.shield
  static const IconData sf_checkmark_shield =
      IconData(0x10079B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.shield.fill
  static const IconData sf_checkmark_shield_fill =
      IconData(0x10079C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.square
  static const IconData sf_checkmark_square =
      IconData(0x1000F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol checkmark.square.fill
  static const IconData sf_checkmark_square_fill =
      IconData(0x1000F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward
  static const IconData sf_chevron_backward =
      IconData(0x100BF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.2
  static const IconData sf_chevron_backward_2 =
      IconData(0x100C2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.circle
  static const IconData sf_chevron_backward_circle =
      IconData(0x100BF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.circle.fill
  static const IconData sf_chevron_backward_circle_fill =
      IconData(0x100BF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.square
  static const IconData sf_chevron_backward_square =
      IconData(0x100BF9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.square.fill
  static const IconData sf_chevron_backward_square_fill =
      IconData(0x100BFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.backward.to.line
  static const IconData sf_chevron_backward_to_line =
      IconData(0x101344, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.backward
  static const IconData sf_chevron_compact_backward =
      IconData(0x10224F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.down
  static const IconData sf_chevron_compact_down =
      IconData(0x100191, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.forward
  static const IconData sf_chevron_compact_forward =
      IconData(0x102250, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.left
  static const IconData sf_chevron_compact_left =
      IconData(0x100192, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.right
  static const IconData sf_chevron_compact_right =
      IconData(0x100193, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.compact.up
  static const IconData sf_chevron_compact_up =
      IconData(0x100190, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.down
  static const IconData sf_chevron_down =
      IconData(0x100188, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.down.circle
  static const IconData sf_chevron_down_circle =
      IconData(0x100070, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.down.circle.fill
  static const IconData sf_chevron_down_circle_fill =
      IconData(0x100071, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.down.square
  static const IconData sf_chevron_down_square =
      IconData(0x100100, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.down.square.fill
  static const IconData sf_chevron_down_square_fill =
      IconData(0x100101, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward
  static const IconData sf_chevron_forward =
      IconData(0x100BFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.2
  static const IconData sf_chevron_forward_2 =
      IconData(0x100C2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.circle
  static const IconData sf_chevron_forward_circle =
      IconData(0x100BFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.circle.fill
  static const IconData sf_chevron_forward_circle_fill =
      IconData(0x100BFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.square
  static const IconData sf_chevron_forward_square =
      IconData(0x100BFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.square.fill
  static const IconData sf_chevron_forward_square_fill =
      IconData(0x100BFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.forward.to.line
  static const IconData sf_chevron_forward_to_line =
      IconData(0x101345, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left
  static const IconData sf_chevron_left =
      IconData(0x100189, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.2
  static const IconData sf_chevron_left_2 =
      IconData(0x10018B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.circle
  static const IconData sf_chevron_left_circle =
      IconData(0x100072, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.circle.fill
  static const IconData sf_chevron_left_circle_fill =
      IconData(0x100073, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.forwardslash.chevron.right
  static const IconData sf_chevron_left_forwardslash_chevron_right =
      IconData(0x10065A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.square
  static const IconData sf_chevron_left_square =
      IconData(0x100102, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.square.fill
  static const IconData sf_chevron_left_square_fill =
      IconData(0x100103, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.left.to.line
  static const IconData sf_chevron_left_to_line =
      IconData(0x101342, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right
  static const IconData sf_chevron_right =
      IconData(0x10018A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.2
  static const IconData sf_chevron_right_2 =
      IconData(0x10018C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.circle
  static const IconData sf_chevron_right_circle =
      IconData(0x100074, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.circle.fill
  static const IconData sf_chevron_right_circle_fill =
      IconData(0x100075, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.square
  static const IconData sf_chevron_right_square =
      IconData(0x100104, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.square.fill
  static const IconData sf_chevron_right_square_fill =
      IconData(0x100105, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.right.to.line
  static const IconData sf_chevron_right_to_line =
      IconData(0x101343, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up
  static const IconData sf_chevron_up =
      IconData(0x100187, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up.chevron.down
  static const IconData sf_chevron_up_chevron_down =
      IconData(0x10018F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up.circle
  static const IconData sf_chevron_up_circle =
      IconData(0x10006E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up.circle.fill
  static const IconData sf_chevron_up_circle_fill =
      IconData(0x10006F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up.square
  static const IconData sf_chevron_up_square =
      IconData(0x1000FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chevron.up.square.fill
  static const IconData sf_chevron_up_square_fill =
      IconData(0x1000FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign
  static const IconData sf_chineseyuanrenminbisign =
      IconData(0x101E91, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign.arrow.circlepath
  static const IconData sf_chineseyuanrenminbisign_arrow_circlepath =
      IconData(0x102233, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign.circle
  static const IconData sf_chineseyuanrenminbisign_circle =
      IconData(0x100BE3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign.circle.fill
  static const IconData sf_chineseyuanrenminbisign_circle_fill =
      IconData(0x100BE4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign.square
  static const IconData sf_chineseyuanrenminbisign_square =
      IconData(0x100BE5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol chineseyuanrenminbisign.square.fill
  static const IconData sf_chineseyuanrenminbisign_square_fill =
      IconData(0x100BE6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle
  static const IconData sf_circle =
      IconData(0x100000, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.and.line.horizontal
  static const IconData sf_circle_and_line_horizontal =
      IconData(0x10080C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.and.line.horizontal.fill
  static const IconData sf_circle_and_line_horizontal_fill =
      IconData(0x10078D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.checkmark
  static const IconData sf_circle_badge_checkmark =
      IconData(0x102002, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.checkmark.fill
  static const IconData sf_circle_badge_checkmark_fill =
      IconData(0x102003, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.exclamationmark
  static const IconData sf_circle_badge_exclamationmark =
      IconData(0x102054, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.exclamationmark.fill
  static const IconData sf_circle_badge_exclamationmark_fill =
      IconData(0x102055, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.minus
  static const IconData sf_circle_badge_minus =
      IconData(0x102044, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.minus.fill
  static const IconData sf_circle_badge_minus_fill =
      IconData(0x102045, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.plus
  static const IconData sf_circle_badge_plus =
      IconData(0x102040, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.plus.fill
  static const IconData sf_circle_badge_plus_fill =
      IconData(0x102041, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.questionmark
  static const IconData sf_circle_badge_questionmark =
      IconData(0x10204C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.questionmark.fill
  static const IconData sf_circle_badge_questionmark_fill =
      IconData(0x10204D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.xmark
  static const IconData sf_circle_badge_xmark =
      IconData(0x102048, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.badge.xmark.fill
  static const IconData sf_circle_badge_xmark_fill =
      IconData(0x102049, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.bottomhalf.filled
  static const IconData sf_circle_bottomhalf_filled =
      IconData(0x100A96, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.bottomhalf.filled.inverse
  static const IconData sf_circle_bottomhalf_filled_inverse =
      IconData(0x101E70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.bottomrighthalf.checkered
  static const IconData sf_circle_bottomrighthalf_checkered =
      IconData(0x101E68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.circle
  static const IconData sf_circle_circle =
      IconData(0x100A01, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.circle.fill
  static const IconData sf_circle_circle_fill =
      IconData(0x100A02, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dashed
  static const IconData sf_circle_dashed =
      IconData(0x1004DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dashed.inset.filled
  static const IconData sf_circle_dashed_inset_filled =
      IconData(0x1009D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dashed.rectangle
  static const IconData sf_circle_dashed_rectangle =
      IconData(0x10166A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dotted
  static const IconData sf_circle_dotted =
      IconData(0x101143, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dotted.and.circle
  static const IconData sf_circle_dotted_and_circle =
      IconData(0x101295, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dotted.circle
  static const IconData sf_circle_dotted_circle =
      IconData(0x101E67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.dotted.circle.fill
  static const IconData sf_circle_dotted_circle_fill =
      IconData(0x101DDF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.fill
  static const IconData sf_circle_fill =
      IconData(0x100001, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.ipad
  static const IconData sf_circle_filled_ipad =
      IconData(0x1020FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.ipad.fill
  static const IconData sf_circle_filled_ipad_fill =
      IconData(0x1020FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.ipad.landscape
  static const IconData sf_circle_filled_ipad_landscape =
      IconData(0x1020FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.ipad.landscape.fill
  static const IconData sf_circle_filled_ipad_landscape_fill =
      IconData(0x1020FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.iphone
  static const IconData sf_circle_filled_iphone =
      IconData(0x1020EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.iphone.fill
  static const IconData sf_circle_filled_iphone_fill =
      IconData(0x1020F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.filled.pattern.diagonalline.rectangle
  static const IconData sf_circle_filled_pattern_diagonalline_rectangle =
      IconData(0x10166F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x1
  static const IconData sf_circle_grid_2x1 =
      IconData(0x100E87, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x1.fill
  static const IconData sf_circle_grid_2x1_fill =
      IconData(0x100E88, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x1.left.filled
  static const IconData sf_circle_grid_2x1_left_filled =
      IconData(0x100E89, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x1.right.filled
  static const IconData sf_circle_grid_2x1_right_filled =
      IconData(0x100E8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x2
  static const IconData sf_circle_grid_2x2 =
      IconData(0x1007BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.2x2.fill
  static const IconData sf_circle_grid_2x2_fill =
      IconData(0x1007BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.3x3
  static const IconData sf_circle_grid_3x3 =
      IconData(0x1001F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.3x3.circle
  static const IconData sf_circle_grid_3x3_circle =
      IconData(0x100EB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.3x3.circle.fill
  static const IconData sf_circle_grid_3x3_circle_fill =
      IconData(0x100EB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.3x3.fill
  static const IconData sf_circle_grid_3x3_fill =
      IconData(0x1001F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross
  static const IconData sf_circle_grid_cross =
      IconData(0x1009F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross.down.filled
  static const IconData sf_circle_grid_cross_down_filled =
      IconData(0x100A47, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross.fill
  static const IconData sf_circle_grid_cross_fill =
      IconData(0x1009F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross.left.filled
  static const IconData sf_circle_grid_cross_left_filled =
      IconData(0x100A44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross.right.filled
  static const IconData sf_circle_grid_cross_right_filled =
      IconData(0x100A46, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.grid.cross.up.filled
  static const IconData sf_circle_grid_cross_up_filled =
      IconData(0x100A45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagongrid
  static const IconData sf_circle_hexagongrid =
      IconData(0x100662, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagongrid.circle
  static const IconData sf_circle_hexagongrid_circle =
      IconData(0x100DD9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagongrid.circle.fill
  static const IconData sf_circle_hexagongrid_circle_fill =
      IconData(0x100DDA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagongrid.fill
  static const IconData sf_circle_hexagongrid_fill =
      IconData(0x100663, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagonpath
  static const IconData sf_circle_hexagonpath =
      IconData(0x100B0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.hexagonpath.fill
  static const IconData sf_circle_hexagonpath_fill =
      IconData(0x100B0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.inset.filled
  static const IconData sf_circle_inset_filled =
      IconData(0x10075C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.filled
  static const IconData sf_circle_lefthalf_filled =
      IconData(0x100002, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.filled.inverse
  static const IconData sf_circle_lefthalf_filled_inverse =
      IconData(0x101E6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.filled.righthalf.striped.horizontal
  static const IconData sf_circle_lefthalf_filled_righthalf_striped_horizontal =
      IconData(0x101E63, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.filled.righthalf.striped.horizontal.inverse
  static const IconData
      sf_circle_lefthalf_filled_righthalf_striped_horizontal_inverse =
      IconData(0x101E64, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.striped.horizontal
  static const IconData sf_circle_lefthalf_striped_horizontal =
      IconData(0x101E65, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.lefthalf.striped.horizontal.inverse
  static const IconData sf_circle_lefthalf_striped_horizontal_inverse =
      IconData(0x101E66, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.rectangle.dashed
  static const IconData sf_circle_rectangle_dashed =
      IconData(0x10166B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.rectangle.filled.pattern.diagonalline
  static const IconData sf_circle_rectangle_filled_pattern_diagonalline =
      IconData(0x10166D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.righthalf.filled
  static const IconData sf_circle_righthalf_filled =
      IconData(0x100003, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.righthalf.filled.inverse
  static const IconData sf_circle_righthalf_filled_inverse =
      IconData(0x101E6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.slash
  static const IconData sf_circle_slash =
      IconData(0x100EC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.slash.fill
  static const IconData sf_circle_slash_fill =
      IconData(0x100EC4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.square
  static const IconData sf_circle_square =
      IconData(0x1009FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.square.fill
  static const IconData sf_circle_square_fill =
      IconData(0x1009FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.tophalf.filled
  static const IconData sf_circle_tophalf_filled =
      IconData(0x100A97, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circle.tophalf.filled.inverse
  static const IconData sf_circle_tophalf_filled_inverse =
      IconData(0x101E6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circlebadge
  static const IconData sf_circlebadge =
      IconData(0x1009D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circlebadge.2
  static const IconData sf_circlebadge_2 =
      IconData(0x100AF2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circlebadge.2.fill
  static const IconData sf_circlebadge_2_fill =
      IconData(0x1008FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol circlebadge.fill
  static const IconData sf_circlebadge_fill =
      IconData(0x10071E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clear
  static const IconData sf_clear =
      IconData(0x100199, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clear.fill
  static const IconData sf_clear_fill =
      IconData(0x10019A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clipboard
  static const IconData sf_clipboard =
      IconData(0x1007F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clipboard.fill
  static const IconData sf_clipboard_fill =
      IconData(0x1007FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock
  static const IconData sf_clock =
      IconData(0x10042B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.arrow.2.circlepath
  static const IconData sf_clock_arrow_2_circlepath =
      IconData(0x100BDB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.arrow.circlepath
  static const IconData sf_clock_arrow_circlepath =
      IconData(0x1008D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge
  static const IconData sf_clock_badge =
      IconData(0x10165C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.checkmark
  static const IconData sf_clock_badge_checkmark =
      IconData(0x100E74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.checkmark.fill
  static const IconData sf_clock_badge_checkmark_fill =
      IconData(0x100E75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.exclamationmark
  static const IconData sf_clock_badge_exclamationmark =
      IconData(0x100E76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.exclamationmark.fill
  static const IconData sf_clock_badge_exclamationmark_fill =
      IconData(0x100E77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.fill
  static const IconData sf_clock_badge_fill =
      IconData(0x10165D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.questionmark
  static const IconData sf_clock_badge_questionmark =
      IconData(0x101731, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.questionmark.fill
  static const IconData sf_clock_badge_questionmark_fill =
      IconData(0x101732, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.xmark
  static const IconData sf_clock_badge_xmark =
      IconData(0x101712, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.badge.xmark.fill
  static const IconData sf_clock_badge_xmark_fill =
      IconData(0x101713, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.circle
  static const IconData sf_clock_circle =
      IconData(0x1011B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.circle.fill
  static const IconData sf_clock_circle_fill =
      IconData(0x1011B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol clock.fill
  static const IconData sf_clock_fill =
      IconData(0x10042C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud
  static const IconData sf_cloud =
      IconData(0x1001C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt
  static const IconData sf_cloud_bolt =
      IconData(0x1001D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.circle
  static const IconData sf_cloud_bolt_circle =
      IconData(0x1016DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.circle.fill
  static const IconData sf_cloud_bolt_circle_fill =
      IconData(0x1016DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.fill
  static const IconData sf_cloud_bolt_fill =
      IconData(0x1001D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.rain
  static const IconData sf_cloud_bolt_rain =
      IconData(0x1001DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.rain.circle
  static const IconData sf_cloud_bolt_rain_circle =
      IconData(0x1016DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.rain.circle.fill
  static const IconData sf_cloud_bolt_rain_circle_fill =
      IconData(0x1016E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.bolt.rain.fill
  static const IconData sf_cloud_bolt_rain_fill =
      IconData(0x1001DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.circle
  static const IconData sf_cloud_circle =
      IconData(0x1016CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.circle.fill
  static const IconData sf_cloud_circle_fill =
      IconData(0x1016CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.drizzle
  static const IconData sf_cloud_drizzle =
      IconData(0x1001C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.drizzle.circle
  static const IconData sf_cloud_drizzle_circle =
      IconData(0x1016CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.drizzle.circle.fill
  static const IconData sf_cloud_drizzle_circle_fill =
      IconData(0x1016D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.drizzle.fill
  static const IconData sf_cloud_drizzle_fill =
      IconData(0x1001C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.fill
  static const IconData sf_cloud_fill =
      IconData(0x1001C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.fog
  static const IconData sf_cloud_fog =
      IconData(0x1001CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.fog.circle
  static const IconData sf_cloud_fog_circle =
      IconData(0x1016D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.fog.circle.fill
  static const IconData sf_cloud_fog_circle_fill =
      IconData(0x1016D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.fog.fill
  static const IconData sf_cloud_fog_fill =
      IconData(0x1001CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.hail
  static const IconData sf_cloud_hail =
      IconData(0x1001CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.hail.circle
  static const IconData sf_cloud_hail_circle =
      IconData(0x1016D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.hail.circle.fill
  static const IconData sf_cloud_hail_circle_fill =
      IconData(0x1016D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.hail.fill
  static const IconData sf_cloud_hail_fill =
      IconData(0x1001CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.heavyrain
  static const IconData sf_cloud_heavyrain =
      IconData(0x1001C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.heavyrain.circle
  static const IconData sf_cloud_heavyrain_circle =
      IconData(0x1016D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.heavyrain.circle.fill
  static const IconData sf_cloud_heavyrain_circle_fill =
      IconData(0x1016D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.heavyrain.fill
  static const IconData sf_cloud_heavyrain_fill =
      IconData(0x1001C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon
  static const IconData sf_cloud_moon =
      IconData(0x1001DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.bolt
  static const IconData sf_cloud_moon_bolt =
      IconData(0x1001E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.bolt.circle
  static const IconData sf_cloud_moon_bolt_circle =
      IconData(0x1016EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.bolt.circle.fill
  static const IconData sf_cloud_moon_bolt_circle_fill =
      IconData(0x1016EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.bolt.fill
  static const IconData sf_cloud_moon_bolt_fill =
      IconData(0x1001E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.circle
  static const IconData sf_cloud_moon_circle =
      IconData(0x1016E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.circle.fill
  static const IconData sf_cloud_moon_circle_fill =
      IconData(0x1016E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.fill
  static const IconData sf_cloud_moon_fill =
      IconData(0x1001DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.rain
  static const IconData sf_cloud_moon_rain =
      IconData(0x1001DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.rain.circle
  static const IconData sf_cloud_moon_rain_circle =
      IconData(0x1016E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.rain.circle.fill
  static const IconData sf_cloud_moon_rain_circle_fill =
      IconData(0x1016EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.moon.rain.fill
  static const IconData sf_cloud_moon_rain_fill =
      IconData(0x1001DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rain
  static const IconData sf_cloud_rain =
      IconData(0x1001C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rain.circle
  static const IconData sf_cloud_rain_circle =
      IconData(0x1016D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rain.circle.fill
  static const IconData sf_cloud_rain_circle_fill =
      IconData(0x1016D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rain.fill
  static const IconData sf_cloud_rain_fill =
      IconData(0x1001C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rainbow.half
  static const IconData sf_cloud_rainbow_half =
      IconData(0x101DDE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.rainbow.half.fill
  static const IconData sf_cloud_rainbow_half_fill =
      IconData(0x101DE0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sleet
  static const IconData sf_cloud_sleet =
      IconData(0x1001D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sleet.circle
  static const IconData sf_cloud_sleet_circle =
      IconData(0x1016DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sleet.circle.fill
  static const IconData sf_cloud_sleet_circle_fill =
      IconData(0x1016DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sleet.fill
  static const IconData sf_cloud_sleet_fill =
      IconData(0x1001D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.snow
  static const IconData sf_cloud_snow =
      IconData(0x1001CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.snow.circle
  static const IconData sf_cloud_snow_circle =
      IconData(0x1016D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.snow.circle.fill
  static const IconData sf_cloud_snow_circle_fill =
      IconData(0x1016DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.snow.fill
  static const IconData sf_cloud_snow_fill =
      IconData(0x1001CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun
  static const IconData sf_cloud_sun =
      IconData(0x1001D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.bolt
  static const IconData sf_cloud_sun_bolt =
      IconData(0x1001D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.bolt.circle
  static const IconData sf_cloud_sun_bolt_circle =
      IconData(0x1016E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.bolt.circle.fill
  static const IconData sf_cloud_sun_bolt_circle_fill =
      IconData(0x1016E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.bolt.fill
  static const IconData sf_cloud_sun_bolt_fill =
      IconData(0x1001D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.circle
  static const IconData sf_cloud_sun_circle =
      IconData(0x1016E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.circle.fill
  static const IconData sf_cloud_sun_circle_fill =
      IconData(0x1016E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.fill
  static const IconData sf_cloud_sun_fill =
      IconData(0x1001D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.rain
  static const IconData sf_cloud_sun_rain =
      IconData(0x1001D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.rain.circle
  static const IconData sf_cloud_sun_rain_circle =
      IconData(0x1016E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.rain.circle.fill
  static const IconData sf_cloud_sun_rain_circle_fill =
      IconData(0x1016E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cloud.sun.rain.fill
  static const IconData sf_cloud_sun_rain_fill =
      IconData(0x1001D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign
  static const IconData sf_coloncurrencysign =
      IconData(0x101454, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign.arrow.circlepath
  static const IconData sf_coloncurrencysign_arrow_circlepath =
      IconData(0x102227, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign.circle
  static const IconData sf_coloncurrencysign_circle =
      IconData(0x1005C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign.circle.fill
  static const IconData sf_coloncurrencysign_circle_fill =
      IconData(0x1005C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign.square
  static const IconData sf_coloncurrencysign_square =
      IconData(0x100601, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol coloncurrencysign.square.fill
  static const IconData sf_coloncurrencysign_square_fill =
      IconData(0x100602, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol comb
  static const IconData sf_comb =
      IconData(0x100988, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol comb.fill
  static const IconData sf_comb_fill =
      IconData(0x100989, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol command
  static const IconData sf_command =
      IconData(0x100194, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol command.circle
  static const IconData sf_command_circle =
      IconData(0x100A7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol command.circle.fill
  static const IconData sf_command_circle_fill =
      IconData(0x100A80, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol command.square
  static const IconData sf_command_square =
      IconData(0x100A81, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol command.square.fill
  static const IconData sf_command_square_fill =
      IconData(0x100A82, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol compass.drawing
  static const IconData sf_compass_drawing =
      IconData(0x101517, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol computermouse
  static const IconData sf_computermouse =
      IconData(0x100EA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol computermouse.fill
  static const IconData sf_computermouse_fill =
      IconData(0x100EA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cone
  static const IconData sf_cone =
      IconData(0x100CC7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cone.fill
  static const IconData sf_cone_fill =
      IconData(0x100CC8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol contact.sensor
  static const IconData sf_contact_sensor =
      IconData(0x1014BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol contact.sensor.fill
  static const IconData sf_contact_sensor_fill =
      IconData(0x1014BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol contextualmenu.and.cursorarrow
  static const IconData sf_contextualmenu_and_cursorarrow =
      IconData(0x100B48, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol control
  static const IconData sf_control =
      IconData(0x10018D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cooktop
  static const IconData sf_cooktop =
      IconData(0x101560, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cooktop.fill
  static const IconData sf_cooktop_fill =
      IconData(0x101561, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cpu
  static const IconData sf_cpu =
      IconData(0x100AE5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cpu.fill
  static const IconData sf_cpu_fill =
      IconData(0x1009D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard
  static const IconData sf_creditcard =
      IconData(0x10036F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.and.123
  static const IconData sf_creditcard_and_123 =
      IconData(0x1010A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.circle
  static const IconData sf_creditcard_circle =
      IconData(0x1004AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.circle.fill
  static const IconData sf_creditcard_circle_fill =
      IconData(0x1004B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.fill
  static const IconData sf_creditcard_fill =
      IconData(0x100370, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.trianglebadge.exclamationmark
  static const IconData sf_creditcard_trianglebadge_exclamationmark =
      IconData(0x10112D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.trianglebadge.exclamationmark.fill
  static const IconData sf_creditcard_trianglebadge_exclamationmark_fill =
      IconData(0x1018D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol creditcard.viewfinder
  static const IconData sf_creditcard_viewfinder =
      IconData(0x101514, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cricket.ball
  static const IconData sf_cricket_ball =
      IconData(0x101701, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cricket.ball.circle
  static const IconData sf_cricket_ball_circle =
      IconData(0x101703, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cricket.ball.circle.fill
  static const IconData sf_cricket_ball_circle_fill =
      IconData(0x101704, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cricket.ball.fill
  static const IconData sf_cricket_ball_fill =
      IconData(0x101702, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol crop
  static const IconData sf_crop =
      IconData(0x100373, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol crop.rotate
  static const IconData sf_crop_rotate =
      IconData(0x100374, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross
  static const IconData sf_cross =
      IconData(0x1008DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.case
  static const IconData sf_cross_case =
      IconData(0x100BD9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.case.circle
  static const IconData sf_cross_case_circle =
      IconData(0x10177E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.case.circle.fill
  static const IconData sf_cross_case_circle_fill =
      IconData(0x10177F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.case.fill
  static const IconData sf_cross_case_fill =
      IconData(0x100BDA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.circle
  static const IconData sf_cross_circle =
      IconData(0x1008DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.circle.fill
  static const IconData sf_cross_circle_fill =
      IconData(0x1008DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.fill
  static const IconData sf_cross_fill =
      IconData(0x1008DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.vial
  static const IconData sf_cross_vial =
      IconData(0x100F18, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cross.vial.fill
  static const IconData sf_cross_vial_fill =
      IconData(0x100F19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol crown
  static const IconData sf_crown =
      IconData(0x100985, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol crown.fill
  static const IconData sf_crown_fill =
      IconData(0x100986, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign
  static const IconData sf_cruzeirosign =
      IconData(0x101456, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign.arrow.circlepath
  static const IconData sf_cruzeirosign_arrow_circlepath =
      IconData(0x102229, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign.circle
  static const IconData sf_cruzeirosign_circle =
      IconData(0x1005C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign.circle.fill
  static const IconData sf_cruzeirosign_circle_fill =
      IconData(0x1005C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign.square
  static const IconData sf_cruzeirosign_square =
      IconData(0x100605, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cruzeirosign.square.fill
  static const IconData sf_cruzeirosign_square_fill =
      IconData(0x100606, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cube
  static const IconData sf_cube =
      IconData(0x100418, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cube.fill
  static const IconData sf_cube_fill =
      IconData(0x100419, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cube.transparent
  static const IconData sf_cube_transparent =
      IconData(0x100B28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cube.transparent.fill
  static const IconData sf_cube_transparent_fill =
      IconData(0x100CF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cup.and.saucer
  static const IconData sf_cup_and_saucer =
      IconData(0x100E18, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cup.and.saucer.fill
  static const IconData sf_cup_and_saucer_fill =
      IconData(0x100E19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol curlybraces
  static const IconData sf_curlybraces =
      IconData(0x100845, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol curlybraces.square
  static const IconData sf_curlybraces_square =
      IconData(0x100918, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol curlybraces.square.fill
  static const IconData sf_curlybraces_square_fill =
      IconData(0x100919, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow
  static const IconData sf_cursorarrow =
      IconData(0x100ACC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.and.square.on.square.dashed
  static const IconData sf_cursorarrow_and_square_on_square_dashed =
      IconData(0x100B90, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.click
  static const IconData sf_cursorarrow_click =
      IconData(0x100B46, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.click.2
  static const IconData sf_cursorarrow_click_2 =
      IconData(0x100B47, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.click.badge.clock
  static const IconData sf_cursorarrow_click_badge_clock =
      IconData(0x100BB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.motionlines
  static const IconData sf_cursorarrow_motionlines =
      IconData(0x1008E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.motionlines.click
  static const IconData sf_cursorarrow_motionlines_click =
      IconData(0x1008E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.rays
  static const IconData sf_cursorarrow_rays =
      IconData(0x1001F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.slash
  static const IconData sf_cursorarrow_slash =
      IconData(0x101DC1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.slash.square
  static const IconData sf_cursorarrow_slash_square =
      IconData(0x101DC2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.slash.square.fill
  static const IconData sf_cursorarrow_slash_square_fill =
      IconData(0x101DC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.square
  static const IconData sf_cursorarrow_square =
      IconData(0x100B45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cursorarrow.square.fill
  static const IconData sf_cursorarrow_square_fill =
      IconData(0x101680, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol curtains.closed
  static const IconData sf_curtains_closed =
      IconData(0x101478, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol curtains.open
  static const IconData sf_curtains_open =
      IconData(0x101477, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cylinder
  static const IconData sf_cylinder =
      IconData(0x100CC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cylinder.fill
  static const IconData sf_cylinder_fill =
      IconData(0x100CC4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cylinder.split.1x2
  static const IconData sf_cylinder_split_1x2 =
      IconData(0x100853, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol cylinder.split.1x2.fill
  static const IconData sf_cylinder_split_1x2_fill =
      IconData(0x100854, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol d.circle
  static const IconData sf_d_circle =
      IconData(0x10000A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol d.circle.fill
  static const IconData sf_d_circle_fill =
      IconData(0x10000B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol d.square
  static const IconData sf_d_square =
      IconData(0x10009A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol d.square.fill
  static const IconData sf_d_square_fill =
      IconData(0x10009B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign
  static const IconData sf_danishkronesign =
      IconData(0x10192E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign.arrow.circlepath
  static const IconData sf_danishkronesign_arrow_circlepath =
      IconData(0x102237, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign.circle
  static const IconData sf_danishkronesign_circle =
      IconData(0x100BAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign.circle.fill
  static const IconData sf_danishkronesign_circle_fill =
      IconData(0x100BAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign.square
  static const IconData sf_danishkronesign_square =
      IconData(0x100BAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol danishkronesign.square.fill
  static const IconData sf_danishkronesign_square_fill =
      IconData(0x100BAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol decrease.indent
  static const IconData sf_decrease_indent =
      IconData(0x1002F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol decrease.quotelevel
  static const IconData sf_decrease_quotelevel =
      IconData(0x10077F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dehumidifier
  static const IconData sf_dehumidifier =
      IconData(0x1014E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dehumidifier.fill
  static const IconData sf_dehumidifier_fill =
      IconData(0x1014E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.backward
  static const IconData sf_delete_backward =
      IconData(0x101088, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.backward.fill
  static const IconData sf_delete_backward_fill =
      IconData(0x101089, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.forward
  static const IconData sf_delete_forward =
      IconData(0x101092, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.forward.fill
  static const IconData sf_delete_forward_fill =
      IconData(0x101093, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.left
  static const IconData sf_delete_left =
      IconData(0x10019B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.left.fill
  static const IconData sf_delete_left_fill =
      IconData(0x10019C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.right
  static const IconData sf_delete_right =
      IconData(0x100197, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol delete.right.fill
  static const IconData sf_delete_right_fill =
      IconData(0x100198, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol deskclock
  static const IconData sf_deskclock =
      IconData(0x100851, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol deskclock.fill
  static const IconData sf_deskclock_fill =
      IconData(0x100852, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol desktopcomputer
  static const IconData sf_desktopcomputer =
      IconData(0x100657, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol desktopcomputer.and.arrow.down
  static const IconData sf_desktopcomputer_and_arrow_down =
      IconData(0x100DBE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol desktopcomputer.trianglebadge.exclamationmark
  static const IconData sf_desktopcomputer_trianglebadge_exclamationmark =
      IconData(0x1010C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol deskview
  static const IconData sf_deskview =
      IconData(0x101663, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol deskview.fill
  static const IconData sf_deskview_fill =
      IconData(0x101664, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.high
  static const IconData sf_dial_high =
      IconData(0x100A90, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.high.fill
  static const IconData sf_dial_high_fill =
      IconData(0x100A91, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.low
  static const IconData sf_dial_low =
      IconData(0x10037A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.low.fill
  static const IconData sf_dial_low_fill =
      IconData(0x10037B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.medium
  static const IconData sf_dial_medium =
      IconData(0x1013B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dial.medium.fill
  static const IconData sf_dial_medium_fill =
      IconData(0x1013B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond
  static const IconData sf_diamond =
      IconData(0x1007C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.bottomhalf.filled
  static const IconData sf_diamond_bottomhalf_filled =
      IconData(0x101006, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.circle
  static const IconData sf_diamond_circle =
      IconData(0x1011E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.circle.fill
  static const IconData sf_diamond_circle_fill =
      IconData(0x1011E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.fill
  static const IconData sf_diamond_fill =
      IconData(0x1007C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.inset.filled
  static const IconData sf_diamond_inset_filled =
      IconData(0x100F97, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.lefthalf.filled
  static const IconData sf_diamond_lefthalf_filled =
      IconData(0x101003, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.righthalf.filled
  static const IconData sf_diamond_righthalf_filled =
      IconData(0x101004, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol diamond.tophalf.filled
  static const IconData sf_diamond_tophalf_filled =
      IconData(0x101005, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dice
  static const IconData sf_dice =
      IconData(0x100EB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dice.fill
  static const IconData sf_dice_fill =
      IconData(0x100EB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.1
  static const IconData sf_die_face_1 =
      IconData(0x1009E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.1.fill
  static const IconData sf_die_face_1_fill =
      IconData(0x1009E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.2
  static const IconData sf_die_face_2 =
      IconData(0x1009E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.2.fill
  static const IconData sf_die_face_2_fill =
      IconData(0x1009E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.3
  static const IconData sf_die_face_3 =
      IconData(0x1009E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.3.fill
  static const IconData sf_die_face_3_fill =
      IconData(0x1009E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.4
  static const IconData sf_die_face_4 =
      IconData(0x1009E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.4.fill
  static const IconData sf_die_face_4_fill =
      IconData(0x1009EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.5
  static const IconData sf_die_face_5 =
      IconData(0x1009EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.5.fill
  static const IconData sf_die_face_5_fill =
      IconData(0x1009EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.6
  static const IconData sf_die_face_6 =
      IconData(0x1009ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol die.face.6.fill
  static const IconData sf_die_face_6_fill =
      IconData(0x1009EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.arrow.clockwise
  static const IconData sf_digitalcrown_arrow_clockwise =
      IconData(0x100ED6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.arrow.clockwise.fill
  static const IconData sf_digitalcrown_arrow_clockwise_fill =
      IconData(0x100ED7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.arrow.counterclockwise
  static const IconData sf_digitalcrown_arrow_counterclockwise =
      IconData(0x100ED8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.arrow.counterclockwise.fill
  static const IconData sf_digitalcrown_arrow_counterclockwise_fill =
      IconData(0x100ED9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.clockwise
  static const IconData sf_digitalcrown_horizontal_arrow_clockwise =
      IconData(0x100EF1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.clockwise.fill
  static const IconData sf_digitalcrown_horizontal_arrow_clockwise_fill =
      IconData(0x100EF2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.counterclockwise
  static const IconData sf_digitalcrown_horizontal_arrow_counterclockwise =
      IconData(0x100EF3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.arrow.counterclockwise.fill
  static const IconData sf_digitalcrown_horizontal_arrow_counterclockwise_fill =
      IconData(0x100EF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.press
  static const IconData sf_digitalcrown_horizontal_press =
      IconData(0x100D23, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.horizontal.press.fill
  static const IconData sf_digitalcrown_horizontal_press_fill =
      IconData(0x100D24, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.press
  static const IconData sf_digitalcrown_press =
      IconData(0x100D21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol digitalcrown.press.fill
  static const IconData sf_digitalcrown_press_fill =
      IconData(0x100D22, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol directcurrent
  static const IconData sf_directcurrent =
      IconData(0x100BDD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dishwasher
  static const IconData sf_dishwasher =
      IconData(0x101422, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dishwasher.circle
  static const IconData sf_dishwasher_circle =
      IconData(0x101FD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dishwasher.circle.fill
  static const IconData sf_dishwasher_circle_fill =
      IconData(0x101FD7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dishwasher.fill
  static const IconData sf_dishwasher_fill =
      IconData(0x101423, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol display
  static const IconData sf_display =
      IconData(0x1008B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol display.2
  static const IconData sf_display_2 =
      IconData(0x100A27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol display.and.arrow.down
  static const IconData sf_display_and_arrow_down =
      IconData(0x100DBD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol display.trianglebadge.exclamationmark
  static const IconData sf_display_trianglebadge_exclamationmark =
      IconData(0x100A26, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.center
  static const IconData sf_distribute_horizontal_center =
      IconData(0x10160A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.center.fill
  static const IconData sf_distribute_horizontal_center_fill =
      IconData(0x10160B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.left
  static const IconData sf_distribute_horizontal_left =
      IconData(0x101608, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.left.fill
  static const IconData sf_distribute_horizontal_left_fill =
      IconData(0x101609, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.right
  static const IconData sf_distribute_horizontal_right =
      IconData(0x10160C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.horizontal.right.fill
  static const IconData sf_distribute_horizontal_right_fill =
      IconData(0x10160D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.bottom
  static const IconData sf_distribute_vertical_bottom =
      IconData(0x101606, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.bottom.fill
  static const IconData sf_distribute_vertical_bottom_fill =
      IconData(0x101607, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.center
  static const IconData sf_distribute_vertical_center =
      IconData(0x101604, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.center.fill
  static const IconData sf_distribute_vertical_center_fill =
      IconData(0x101605, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.top
  static const IconData sf_distribute_vertical_top =
      IconData(0x101602, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol distribute.vertical.top.fill
  static const IconData sf_distribute_vertical_top_fill =
      IconData(0x101603, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol divide
  static const IconData sf_divide =
      IconData(0x10017F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol divide.circle
  static const IconData sf_divide_circle =
      IconData(0x100052, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol divide.circle.fill
  static const IconData sf_divide_circle_fill =
      IconData(0x100053, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol divide.square
  static const IconData sf_divide_square =
      IconData(0x1000E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol divide.square.fill
  static const IconData sf_divide_square_fill =
      IconData(0x1000E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc
  static const IconData sf_doc =
      IconData(0x100237, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.append
  static const IconData sf_doc_append =
      IconData(0x100247, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.append.fill
  static const IconData sf_doc_append_fill =
      IconData(0x10098B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.arrow.up
  static const IconData sf_doc_badge_arrow_up =
      IconData(0x101661, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.arrow.up.fill
  static const IconData sf_doc_badge_arrow_up_fill =
      IconData(0x101662, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.clock
  static const IconData sf_doc_badge_clock =
      IconData(0x100AFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.clock.fill
  static const IconData sf_doc_badge_clock_fill =
      IconData(0x100AFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.ellipsis
  static const IconData sf_doc_badge_ellipsis =
      IconData(0x100A74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.gearshape
  static const IconData sf_doc_badge_gearshape =
      IconData(0x100A5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.gearshape.fill
  static const IconData sf_doc_badge_gearshape_fill =
      IconData(0x100A5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.badge.plus
  static const IconData sf_doc_badge_plus =
      IconData(0x1008D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.circle
  static const IconData sf_doc_circle =
      IconData(0x100239, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.circle.fill
  static const IconData sf_doc_circle_fill =
      IconData(0x10023A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.fill
  static const IconData sf_doc_fill =
      IconData(0x100238, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.fill.badge.ellipsis
  static const IconData sf_doc_fill_badge_ellipsis =
      IconData(0x100A75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.fill.badge.plus
  static const IconData sf_doc_fill_badge_plus =
      IconData(0x1008D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.on.clipboard
  static const IconData sf_doc_on_clipboard =
      IconData(0x100243, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.on.clipboard.fill
  static const IconData sf_doc_on_clipboard_fill =
      IconData(0x100244, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.on.doc
  static const IconData sf_doc_on_doc =
      IconData(0x100241, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.on.doc.fill
  static const IconData sf_doc_on_doc_fill =
      IconData(0x100242, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.plaintext
  static const IconData sf_doc_plaintext =
      IconData(0x100246, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.plaintext.fill
  static const IconData sf_doc_plaintext_fill =
      IconData(0x100968, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.questionmark
  static const IconData sf_doc_questionmark =
      IconData(0x1021F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.questionmark.fill
  static const IconData sf_doc_questionmark_fill =
      IconData(0x1021F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.richtext
  static const IconData sf_doc_richtext =
      IconData(0x100245, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.richtext.fill
  static const IconData sf_doc_richtext_fill =
      IconData(0x10098A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text
  static const IconData sf_doc_text =
      IconData(0x10023F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.below.ecg
  static const IconData sf_doc_text_below_ecg =
      IconData(0x100CFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.below.ecg.fill
  static const IconData sf_doc_text_below_ecg_fill =
      IconData(0x100CFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.fill
  static const IconData sf_doc_text_fill =
      IconData(0x100240, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.image
  static const IconData sf_doc_text_image =
      IconData(0x100A7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.image.fill
  static const IconData sf_doc_text_image_fill =
      IconData(0x100A7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.text.magnifyingglass
  static const IconData sf_doc_text_magnifyingglass =
      IconData(0x100579, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.viewfinder
  static const IconData sf_doc_viewfinder =
      IconData(0x1003BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.viewfinder.fill
  static const IconData sf_doc_viewfinder_fill =
      IconData(0x100862, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol doc.zipper
  static const IconData sf_doc_zipper =
      IconData(0x100927, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dock.arrow.down.rectangle
  static const IconData sf_dock_arrow_down_rectangle =
      IconData(0x1008FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dock.arrow.up.rectangle
  static const IconData sf_dock_arrow_up_rectangle =
      IconData(0x1008FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dock.rectangle
  static const IconData sf_dock_rectangle =
      IconData(0x1003DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dog
  static const IconData sf_dog =
      IconData(0x102006, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dog.circle
  static const IconData sf_dog_circle =
      IconData(0x10203E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dog.circle.fill
  static const IconData sf_dog_circle_fill =
      IconData(0x10203F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dog.fill
  static const IconData sf_dog_fill =
      IconData(0x102007, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign
  static const IconData sf_dollarsign =
      IconData(0x1013A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign.arrow.circlepath
  static const IconData sf_dollarsign_arrow_circlepath =
      IconData(0x1013A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign.circle
  static const IconData sf_dollarsign_circle =
      IconData(0x100597, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign.circle.fill
  static const IconData sf_dollarsign_circle_fill =
      IconData(0x100598, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign.square
  static const IconData sf_dollarsign_square =
      IconData(0x1005D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dollarsign.square.fill
  static const IconData sf_dollarsign_square_fill =
      IconData(0x1005D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign
  static const IconData sf_dongsign =
      IconData(0x101448, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign.arrow.circlepath
  static const IconData sf_dongsign_arrow_circlepath =
      IconData(0x10221B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign.circle
  static const IconData sf_dongsign_circle =
      IconData(0x1005A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign.circle.fill
  static const IconData sf_dongsign_circle_fill =
      IconData(0x1005AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign.square
  static const IconData sf_dongsign_square =
      IconData(0x1005E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dongsign.square.fill
  static const IconData sf_dongsign_square_fill =
      IconData(0x1005EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.french.closed
  static const IconData sf_door_french_closed =
      IconData(0x1013E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.french.open
  static const IconData sf_door_french_open =
      IconData(0x1013E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.closed
  static const IconData sf_door_garage_closed =
      IconData(0x1013E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.closed.trianglebadge.exclamationmark
  static const IconData sf_door_garage_closed_trianglebadge_exclamationmark =
      IconData(0x101621, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.double.bay.closed
  static const IconData sf_door_garage_double_bay_closed =
      IconData(0x1013ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.double.bay.closed.trianglebadge.exclamationmark
  static const IconData
      sf_door_garage_double_bay_closed_trianglebadge_exclamationmark =
      IconData(0x101623, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.double.bay.open
  static const IconData sf_door_garage_double_bay_open =
      IconData(0x1013EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.double.bay.open.trianglebadge.exclamationmark
  static const IconData
      sf_door_garage_double_bay_open_trianglebadge_exclamationmark =
      IconData(0x101622, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.open
  static const IconData sf_door_garage_open =
      IconData(0x1013E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.garage.open.trianglebadge.exclamationmark
  static const IconData sf_door_garage_open_trianglebadge_exclamationmark =
      IconData(0x101620, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.left.hand.closed
  static const IconData sf_door_left_hand_closed =
      IconData(0x1013DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.left.hand.open
  static const IconData sf_door_left_hand_open =
      IconData(0x1013DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.right.hand.closed
  static const IconData sf_door_right_hand_closed =
      IconData(0x1013E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.right.hand.open
  static const IconData sf_door_right_hand_open =
      IconData(0x1013E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.sliding.left.hand.closed
  static const IconData sf_door_sliding_left_hand_closed =
      IconData(0x1013DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.sliding.left.hand.open
  static const IconData sf_door_sliding_left_hand_open =
      IconData(0x1013DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.sliding.right.hand.closed
  static const IconData sf_door_sliding_right_hand_closed =
      IconData(0x1013EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol door.sliding.right.hand.open
  static const IconData sf_door_sliding_right_hand_open =
      IconData(0x1013EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.arrowtriangles.up.right.down.left.circle
  static const IconData sf_dot_arrowtriangles_up_right_down_left_circle =
      IconData(0x10076F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.circle.and.cursorarrow
  static const IconData sf_dot_circle_and_cursorarrow =
      IconData(0x100ACD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.circle.and.hand.point.up.left.fill
  static const IconData sf_dot_circle_and_hand_point_up_left_fill =
      IconData(0x100EAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.circle.viewfinder
  static const IconData sf_dot_circle_viewfinder =
      IconData(0x1011DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.radiowaves.forward
  static const IconData sf_dot_radiowaves_forward =
      IconData(0x100C2D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.radiowaves.left.and.right
  static const IconData sf_dot_radiowaves_left_and_right =
      IconData(0x100319, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.radiowaves.right
  static const IconData sf_dot_radiowaves_right =
      IconData(0x100592, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.radiowaves.up.forward
  static const IconData sf_dot_radiowaves_up_forward =
      IconData(0x100F17, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.scope
  static const IconData sf_dot_scope =
      IconData(0x1021CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.scope.display
  static const IconData sf_dot_scope_display =
      IconData(0x1021CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.scope.laptopcomputer
  static const IconData sf_dot_scope_laptopcomputer =
      IconData(0x101FCD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.square
  static const IconData sf_dot_square =
      IconData(0x100574, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.square.fill
  static const IconData sf_dot_square_fill =
      IconData(0x100575, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.squareshape
  static const IconData sf_dot_squareshape =
      IconData(0x100AB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.squareshape.fill
  static const IconData sf_dot_squareshape_fill =
      IconData(0x100AB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.squareshape.split.2x2
  static const IconData sf_dot_squareshape_split_2x2 =
      IconData(0x100B8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dot.viewfinder
  static const IconData sf_dot_viewfinder =
      IconData(0x1011DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dots.and.line.vertical.and.cursorarrow.rectangle
  static const IconData sf_dots_and_line_vertical_and_cursorarrow_rectangle =
      IconData(0x101462, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad
  static const IconData sf_dpad =
      IconData(0x100A32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad.down.filled
  static const IconData sf_dpad_down_filled =
      IconData(0x100A00, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad.fill
  static const IconData sf_dpad_fill =
      IconData(0x1009FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad.left.filled
  static const IconData sf_dpad_left_filled =
      IconData(0x1009FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad.right.filled
  static const IconData sf_dpad_right_filled =
      IconData(0x1009FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dpad.up.filled
  static const IconData sf_dpad_up_filled =
      IconData(0x1009FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop
  static const IconData sf_drop =
      IconData(0x100811, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.circle
  static const IconData sf_drop_circle =
      IconData(0x1011CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.circle.fill
  static const IconData sf_drop_circle_fill =
      IconData(0x1011CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.degreesign
  static const IconData sf_drop_degreesign =
      IconData(0x10162F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.degreesign.fill
  static const IconData sf_drop_degreesign_fill =
      IconData(0x101630, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.degreesign.slash
  static const IconData sf_drop_degreesign_slash =
      IconData(0x101682, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.degreesign.slash.fill
  static const IconData sf_drop_degreesign_slash_fill =
      IconData(0x101683, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.fill
  static const IconData sf_drop_fill =
      IconData(0x100812, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.halffull
  static const IconData sf_drop_halffull =
      IconData(0x101E61, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.keypad.rectangle
  static const IconData sf_drop_keypad_rectangle =
      IconData(0x1014C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.keypad.rectangle.fill
  static const IconData sf_drop_keypad_rectangle_fill =
      IconData(0x1014C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.transmission
  static const IconData sf_drop_transmission =
      IconData(0x101908, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.triangle
  static const IconData sf_drop_triangle =
      IconData(0x100200, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol drop.triangle.fill
  static const IconData sf_drop_triangle_fill =
      IconData(0x100201, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dryer
  static const IconData sf_dryer =
      IconData(0x101592, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dryer.circle
  static const IconData sf_dryer_circle =
      IconData(0x101FD2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dryer.circle.fill
  static const IconData sf_dryer_circle_fill =
      IconData(0x101FD3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dryer.fill
  static const IconData sf_dryer_fill =
      IconData(0x101593, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dumbbell
  static const IconData sf_dumbbell =
      IconData(0x10158C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol dumbbell.fill
  static const IconData sf_dumbbell_fill =
      IconData(0x10158D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol e.circle
  static const IconData sf_e_circle =
      IconData(0x10000C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol e.circle.fill
  static const IconData sf_e_circle_fill =
      IconData(0x10000D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol e.square
  static const IconData sf_e_square =
      IconData(0x10009C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol e.square.fill
  static const IconData sf_e_square_fill =
      IconData(0x10009D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ear
  static const IconData sf_ear =
      IconData(0x100723, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ear.badge.checkmark
  static const IconData sf_ear_badge_checkmark =
      IconData(0x1009BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ear.badge.waveform
  static const IconData sf_ear_badge_waveform =
      IconData(0x100D63, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ear.fill
  static const IconData sf_ear_fill =
      IconData(0x100787, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ear.trianglebadge.exclamationmark
  static const IconData sf_ear_trianglebadge_exclamationmark =
      IconData(0x1009C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol earbuds
  static const IconData sf_earbuds =
      IconData(0x100E38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol earbuds.case
  static const IconData sf_earbuds_case =
      IconData(0x100E65, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol earbuds.case.fill
  static const IconData sf_earbuds_case_fill =
      IconData(0x100E66, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol earpods
  static const IconData sf_earpods =
      IconData(0x100826, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eject
  static const IconData sf_eject =
      IconData(0x1001A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eject.circle
  static const IconData sf_eject_circle =
      IconData(0x1008A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eject.circle.fill
  static const IconData sf_eject_circle_fill =
      IconData(0x1008A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eject.fill
  static const IconData sf_eject_fill =
      IconData(0x1001A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis
  static const IconData sf_ellipsis =
      IconData(0x100360, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.bubble
  static const IconData sf_ellipsis_bubble =
      IconData(0x10057A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.bubble.fill
  static const IconData sf_ellipsis_bubble_fill =
      IconData(0x10057B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.circle
  static const IconData sf_ellipsis_circle =
      IconData(0x100361, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.circle.fill
  static const IconData sf_ellipsis_circle_fill =
      IconData(0x100362, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.curlybraces
  static const IconData sf_ellipsis_curlybraces =
      IconData(0x1011F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.message
  static const IconData sf_ellipsis_message =
      IconData(0x101498, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.message.fill
  static const IconData sf_ellipsis_message_fill =
      IconData(0x101499, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.rectangle
  static const IconData sf_ellipsis_rectangle =
      IconData(0x100829, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.rectangle.fill
  static const IconData sf_ellipsis_rectangle_fill =
      IconData(0x10082A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.vertical.bubble
  static const IconData sf_ellipsis_vertical_bubble =
      IconData(0x10105F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.vertical.bubble.fill
  static const IconData sf_ellipsis_vertical_bubble_fill =
      IconData(0x101060, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ellipsis.viewfinder
  static const IconData sf_ellipsis_viewfinder =
      IconData(0x10188F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol engine.combustion
  static const IconData sf_engine_combustion =
      IconData(0x100FB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol engine.combustion.badge.exclamationmark
  static const IconData sf_engine_combustion_badge_exclamationmark =
      IconData(0x1012A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol engine.combustion.badge.exclamationmark.fill
  static const IconData sf_engine_combustion_badge_exclamationmark_fill =
      IconData(0x1012A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol engine.combustion.fill
  static const IconData sf_engine_combustion_fill =
      IconData(0x100FB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol entry.lever.keypad
  static const IconData sf_entry_lever_keypad =
      IconData(0x1014B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol entry.lever.keypad.fill
  static const IconData sf_entry_lever_keypad_fill =
      IconData(0x1014B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol entry.lever.keypad.trianglebadge.exclamationmark
  static const IconData sf_entry_lever_keypad_trianglebadge_exclamationmark =
      IconData(0x10164F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol entry.lever.keypad.trianglebadge.exclamationmark.fill
  static const IconData
      sf_entry_lever_keypad_trianglebadge_exclamationmark_fill =
      IconData(0x101650, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope
  static const IconData sf_envelope =
      IconData(0x100355, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.arrow.triangle.branch
  static const IconData sf_envelope_arrow_triangle_branch =
      IconData(0x100997, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.arrow.triangle.branch.fill
  static const IconData sf_envelope_arrow_triangle_branch_fill =
      IconData(0x100998, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge
  static const IconData sf_envelope_badge =
      IconData(0x10035B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge.fill
  static const IconData sf_envelope_badge_fill =
      IconData(0x10035C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge.person.crop
  static const IconData sf_envelope_badge_person_crop =
      IconData(0x101DFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge.person.crop.fill
  static const IconData sf_envelope_badge_person_crop_fill =
      IconData(0x101DFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge.shield.half.filled
  static const IconData sf_envelope_badge_shield_half_filled =
      IconData(0x100AD9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.badge.shield.half.filled.fill
  static const IconData sf_envelope_badge_shield_half_filled_fill =
      IconData(0x100ADA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.circle
  static const IconData sf_envelope_circle =
      IconData(0x100357, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.circle.fill
  static const IconData sf_envelope_circle_fill =
      IconData(0x100358, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.fill
  static const IconData sf_envelope_fill =
      IconData(0x100356, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.open
  static const IconData sf_envelope_open =
      IconData(0x100359, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.open.badge.clock
  static const IconData sf_envelope_open_badge_clock =
      IconData(0x1013A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol envelope.open.fill
  static const IconData sf_envelope_open_fill =
      IconData(0x10035A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol equal
  static const IconData sf_equal =
      IconData(0x100180, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol equal.circle
  static const IconData sf_equal_circle =
      IconData(0x100054, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol equal.circle.fill
  static const IconData sf_equal_circle_fill =
      IconData(0x100055, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol equal.square
  static const IconData sf_equal_square =
      IconData(0x1000E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol equal.square.fill
  static const IconData sf_equal_square_fill =
      IconData(0x1000E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eraser
  static const IconData sf_eraser =
      IconData(0x101740, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eraser.fill
  static const IconData sf_eraser_fill =
      IconData(0x101741, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eraser.line.dashed
  static const IconData sf_eraser_line_dashed =
      IconData(0x10169C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eraser.line.dashed.fill
  static const IconData sf_eraser_line_dashed_fill =
      IconData(0x10169D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol escape
  static const IconData sf_escape =
      IconData(0x1001A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol esim
  static const IconData sf_esim =
      IconData(0x100CB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol esim.fill
  static const IconData sf_esim_fill =
      IconData(0x100CB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign
  static const IconData sf_eurosign =
      IconData(0x101447, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign.arrow.circlepath
  static const IconData sf_eurosign_arrow_circlepath =
      IconData(0x10221A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign.circle
  static const IconData sf_eurosign_circle =
      IconData(0x1005A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign.circle.fill
  static const IconData sf_eurosign_circle_fill =
      IconData(0x1005A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign.square
  static const IconData sf_eurosign_square =
      IconData(0x1005E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurosign.square.fill
  static const IconData sf_eurosign_square_fill =
      IconData(0x1005E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign
  static const IconData sf_eurozonesign =
      IconData(0x101934, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign.arrow.circlepath
  static const IconData sf_eurozonesign_arrow_circlepath =
      IconData(0x102238, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign.circle
  static const IconData sf_eurozonesign_circle =
      IconData(0x101935, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign.circle.fill
  static const IconData sf_eurozonesign_circle_fill =
      IconData(0x101936, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign.square
  static const IconData sf_eurozonesign_square =
      IconData(0x101937, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eurozonesign.square.fill
  static const IconData sf_eurozonesign_square_fill =
      IconData(0x101938, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger
  static const IconData sf_ev_charger =
      IconData(0x1012A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.arrowtriangle.left
  static const IconData sf_ev_charger_arrowtriangle_left =
      IconData(0x101C2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.arrowtriangle.left.fill
  static const IconData sf_ev_charger_arrowtriangle_left_fill =
      IconData(0x101C2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.arrowtriangle.right
  static const IconData sf_ev_charger_arrowtriangle_right =
      IconData(0x101C32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.arrowtriangle.right.fill
  static const IconData sf_ev_charger_arrowtriangle_right_fill =
      IconData(0x101C33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.exclamationmark
  static const IconData sf_ev_charger_exclamationmark =
      IconData(0x101C36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.exclamationmark.fill
  static const IconData sf_ev_charger_exclamationmark_fill =
      IconData(0x101C37, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.fill
  static const IconData sf_ev_charger_fill =
      IconData(0x1012A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.slash
  static const IconData sf_ev_charger_slash =
      IconData(0x101C26, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.charger.slash.fill
  static const IconData sf_ev_charger_slash_fill =
      IconData(0x101C27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.gb.t
  static const IconData sf_ev_plug_ac_gb_t =
      IconData(0x101EB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.gb.t.fill
  static const IconData sf_ev_plug_ac_gb_t_fill =
      IconData(0x101EB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.type.1
  static const IconData sf_ev_plug_ac_type_1 =
      IconData(0x101EAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.type.1.fill
  static const IconData sf_ev_plug_ac_type_1_fill =
      IconData(0x101EAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.type.2
  static const IconData sf_ev_plug_ac_type_2 =
      IconData(0x101EAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.ac.type.2.fill
  static const IconData sf_ev_plug_ac_type_2_fill =
      IconData(0x101EAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.ccs1
  static const IconData sf_ev_plug_dc_ccs1 =
      IconData(0x101EB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.ccs1.fill
  static const IconData sf_ev_plug_dc_ccs1_fill =
      IconData(0x101EB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.ccs2
  static const IconData sf_ev_plug_dc_ccs2 =
      IconData(0x101EB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.ccs2.fill
  static const IconData sf_ev_plug_dc_ccs2_fill =
      IconData(0x101EB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.chademo
  static const IconData sf_ev_plug_dc_chademo =
      IconData(0x101EB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.chademo.fill
  static const IconData sf_ev_plug_dc_chademo_fill =
      IconData(0x101EB7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.gb.t
  static const IconData sf_ev_plug_dc_gb_t =
      IconData(0x101EB8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.gb.t.fill
  static const IconData sf_ev_plug_dc_gb_t_fill =
      IconData(0x101EB9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.nacs
  static const IconData sf_ev_plug_dc_nacs =
      IconData(0x101EBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ev.plug.dc.nacs.fill
  static const IconData sf_ev_plug_dc_nacs_fill =
      IconData(0x101EBB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark
  static const IconData sf_exclamationmark =
      IconData(0x10014E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.2
  static const IconData sf_exclamationmark_2 =
      IconData(0x100892, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.3
  static const IconData sf_exclamationmark_3 =
      IconData(0x1008F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.applewatch
  static const IconData sf_exclamationmark_applewatch =
      IconData(0x100D44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.arrow.circlepath
  static const IconData sf_exclamationmark_arrow_circlepath =
      IconData(0x100C68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.arrow.triangle.2.circlepath
  static const IconData sf_exclamationmark_arrow_triangle_2_circlepath =
      IconData(0x1008A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.brakesignal
  static const IconData sf_exclamationmark_brakesignal =
      IconData(0x100FBF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.bubble
  static const IconData sf_exclamationmark_bubble =
      IconData(0x10032C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.bubble.circle
  static const IconData sf_exclamationmark_bubble_circle =
      IconData(0x1011B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.bubble.circle.fill
  static const IconData sf_exclamationmark_bubble_circle_fill =
      IconData(0x1011B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.bubble.fill
  static const IconData sf_exclamationmark_bubble_fill =
      IconData(0x10032D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.circle
  static const IconData sf_exclamationmark_circle =
      IconData(0x10005E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.circle.fill
  static const IconData sf_exclamationmark_circle_fill =
      IconData(0x10005F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.icloud
  static const IconData sf_exclamationmark_icloud =
      IconData(0x100311, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.icloud.fill
  static const IconData sf_exclamationmark_icloud_fill =
      IconData(0x100312, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.lock
  static const IconData sf_exclamationmark_lock =
      IconData(0x101665, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.lock.fill
  static const IconData sf_exclamationmark_lock_fill =
      IconData(0x101666, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.magnifyingglass
  static const IconData sf_exclamationmark_magnifyingglass =
      IconData(0x102202, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.octagon
  static const IconData sf_exclamationmark_octagon =
      IconData(0x10062F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.octagon.fill
  static const IconData sf_exclamationmark_octagon_fill =
      IconData(0x100630, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.questionmark
  static const IconData sf_exclamationmark_questionmark =
      IconData(0x101463, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.shield
  static const IconData sf_exclamationmark_shield =
      IconData(0x10079F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.shield.fill
  static const IconData sf_exclamationmark_shield_fill =
      IconData(0x1007A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.square
  static const IconData sf_exclamationmark_square =
      IconData(0x1000EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.square.fill
  static const IconData sf_exclamationmark_square_fill =
      IconData(0x1000EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.tirepressure
  static const IconData sf_exclamationmark_tirepressure =
      IconData(0x101013, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.transmission
  static const IconData sf_exclamationmark_transmission =
      IconData(0x100FC1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.triangle
  static const IconData sf_exclamationmark_triangle =
      IconData(0x1001FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.triangle.fill
  static const IconData sf_exclamationmark_triangle_fill =
      IconData(0x1001FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.warninglight
  static const IconData sf_exclamationmark_warninglight =
      IconData(0x10102E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol exclamationmark.warninglight.fill
  static const IconData sf_exclamationmark_warninglight_fill =
      IconData(0x10102F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive
  static const IconData sf_externaldrive =
      IconData(0x100902, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.checkmark
  static const IconData sf_externaldrive_badge_checkmark =
      IconData(0x100A50, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.exclamationmark
  static const IconData sf_externaldrive_badge_exclamationmark =
      IconData(0x101625, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.icloud
  static const IconData sf_externaldrive_badge_icloud =
      IconData(0x100AB9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.minus
  static const IconData sf_externaldrive_badge_minus =
      IconData(0x100A4F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.person.crop
  static const IconData sf_externaldrive_badge_person_crop =
      IconData(0x100A6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.plus
  static const IconData sf_externaldrive_badge_plus =
      IconData(0x100A4E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.questionmark
  static const IconData sf_externaldrive_badge_questionmark =
      IconData(0x100B5F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.timemachine
  static const IconData sf_externaldrive_badge_timemachine =
      IconData(0x10091C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.wifi
  static const IconData sf_externaldrive_badge_wifi =
      IconData(0x100A6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.badge.xmark
  static const IconData sf_externaldrive_badge_xmark =
      IconData(0x100A51, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.connected.to.line.below
  static const IconData sf_externaldrive_connected_to_line_below =
      IconData(0x100A24, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.connected.to.line.below.fill
  static const IconData sf_externaldrive_connected_to_line_below_fill =
      IconData(0x100A25, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill
  static const IconData sf_externaldrive_fill =
      IconData(0x100903, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.checkmark
  static const IconData sf_externaldrive_fill_badge_checkmark =
      IconData(0x100A54, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.exclamationmark
  static const IconData sf_externaldrive_fill_badge_exclamationmark =
      IconData(0x101626, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.icloud
  static const IconData sf_externaldrive_fill_badge_icloud =
      IconData(0x100ABA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.minus
  static const IconData sf_externaldrive_fill_badge_minus =
      IconData(0x100A53, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.person.crop
  static const IconData sf_externaldrive_fill_badge_person_crop =
      IconData(0x100A6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.plus
  static const IconData sf_externaldrive_fill_badge_plus =
      IconData(0x100A52, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.questionmark
  static const IconData sf_externaldrive_fill_badge_questionmark =
      IconData(0x100B60, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.timemachine
  static const IconData sf_externaldrive_fill_badge_timemachine =
      IconData(0x10091D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.wifi
  static const IconData sf_externaldrive_fill_badge_wifi =
      IconData(0x100A6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.badge.xmark
  static const IconData sf_externaldrive_fill_badge_xmark =
      IconData(0x100A55, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.fill.trianglebadge.exclamationmark
  static const IconData sf_externaldrive_fill_trianglebadge_exclamationmark =
      IconData(0x101628, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol externaldrive.trianglebadge.exclamationmark
  static const IconData sf_externaldrive_trianglebadge_exclamationmark =
      IconData(0x101627, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye
  static const IconData sf_eye =
      IconData(0x1002ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.circle
  static const IconData sf_eye_circle =
      IconData(0x1006FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.circle.fill
  static const IconData sf_eye_circle_fill =
      IconData(0x100700, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.fill
  static const IconData sf_eye_fill =
      IconData(0x1002EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.slash
  static const IconData sf_eye_slash =
      IconData(0x1002EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.slash.circle
  static const IconData sf_eye_slash_circle =
      IconData(0x100701, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.slash.circle.fill
  static const IconData sf_eye_slash_circle_fill =
      IconData(0x100702, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.slash.fill
  static const IconData sf_eye_slash_fill =
      IconData(0x1002F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.square
  static const IconData sf_eye_square =
      IconData(0x100F47, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.square.fill
  static const IconData sf_eye_square_fill =
      IconData(0x100F48, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.trianglebadge.exclamationmark
  static const IconData sf_eye_trianglebadge_exclamationmark =
      IconData(0x101094, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eye.trianglebadge.exclamationmark.fill
  static const IconData sf_eye_trianglebadge_exclamationmark_fill =
      IconData(0x101095, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyebrow
  static const IconData sf_eyebrow =
      IconData(0x1009AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyedropper
  static const IconData sf_eyedropper =
      IconData(0x100397, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyedropper.full
  static const IconData sf_eyedropper_full =
      IconData(0x100399, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyedropper.halffull
  static const IconData sf_eyedropper_halffull =
      IconData(0x100398, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyeglasses
  static const IconData sf_eyeglasses =
      IconData(0x100586, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyeglasses.slash
  static const IconData sf_eyeglasses_slash =
      IconData(0x102036, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyes
  static const IconData sf_eyes =
      IconData(0x1009A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol eyes.inverse
  static const IconData sf_eyes_inverse =
      IconData(0x100A2D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.circle
  static const IconData sf_f_circle =
      IconData(0x10000E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.circle.fill
  static const IconData sf_f_circle_fill =
      IconData(0x10000F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.cursive
  static const IconData sf_f_cursive =
      IconData(0x10016D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.cursive.circle
  static const IconData sf_f_cursive_circle =
      IconData(0x100767, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.cursive.circle.fill
  static const IconData sf_f_cursive_circle_fill =
      IconData(0x100768, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.square
  static const IconData sf_f_square =
      IconData(0x10009E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol f.square.fill
  static const IconData sf_f_square_fill =
      IconData(0x10009F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol face.dashed
  static const IconData sf_face_dashed =
      IconData(0x100967, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol face.dashed.fill
  static const IconData sf_face_dashed_fill =
      IconData(0x100A38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol face.smiling
  static const IconData sf_face_smiling =
      IconData(0x1003B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol face.smiling.inverse
  static const IconData sf_face_smiling_inverse =
      IconData(0x10064C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol faceid
  static const IconData sf_faceid =
      IconData(0x1003BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol facemask
  static const IconData sf_facemask =
      IconData(0x1010CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol facemask.fill
  static const IconData sf_facemask_fill =
      IconData(0x1010CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan
  static const IconData sf_fan =
      IconData(0x10104B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.and.light.ceiling
  static const IconData sf_fan_and_light_ceiling =
      IconData(0x10131C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.and.light.ceiling.fill
  static const IconData sf_fan_and_light_ceiling_fill =
      IconData(0x1013BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.badge.automatic
  static const IconData sf_fan_badge_automatic =
      IconData(0x101C89, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.badge.automatic.fill
  static const IconData sf_fan_badge_automatic_fill =
      IconData(0x101C8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.ceiling
  static const IconData sf_fan_ceiling =
      IconData(0x10131B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.ceiling.fill
  static const IconData sf_fan_ceiling_fill =
      IconData(0x1013B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.desk
  static const IconData sf_fan_desk =
      IconData(0x101319, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.desk.fill
  static const IconData sf_fan_desk_fill =
      IconData(0x10149A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.fill
  static const IconData sf_fan_fill =
      IconData(0x10104C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.floor
  static const IconData sf_fan_floor =
      IconData(0x10131A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.floor.fill
  static const IconData sf_fan_floor_fill =
      IconData(0x10149B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.oscillation
  static const IconData sf_fan_oscillation =
      IconData(0x101504, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.oscillation.fill
  static const IconData sf_fan_oscillation_fill =
      IconData(0x101505, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.slash
  static const IconData sf_fan_slash =
      IconData(0x10175A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fan.slash.fill
  static const IconData sf_fan_slash_fill =
      IconData(0x10175B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol faxmachine
  static const IconData sf_faxmachine =
      IconData(0x100A8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol faxmachine.fill
  static const IconData sf_faxmachine_fill =
      IconData(0x100A8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ferry
  static const IconData sf_ferry =
      IconData(0x100E05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ferry.fill
  static const IconData sf_ferry_fill =
      IconData(0x100E06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fibrechannel
  static const IconData sf_fibrechannel =
      IconData(0x100962, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol field.of.view.ultrawide
  static const IconData sf_field_of_view_ultrawide =
      IconData(0x101FFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol field.of.view.ultrawide.fill
  static const IconData sf_field_of_view_ultrawide_fill =
      IconData(0x101FFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol field.of.view.wide
  static const IconData sf_field_of_view_wide =
      IconData(0x101FFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol field.of.view.wide.fill
  static const IconData sf_field_of_view_wide_fill =
      IconData(0x101FFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure
  static const IconData sf_figure =
      IconData(0x10057D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.2
  static const IconData sf_figure_2 =
      IconData(0x100637, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.2.and.child.holdinghands
  static const IconData sf_figure_2_and_child_holdinghands =
      IconData(0x1015C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.2.arms.open
  static const IconData sf_figure_2_arms_open =
      IconData(0x1015C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.2.circle
  static const IconData sf_figure_2_circle =
      IconData(0x100E7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.2.circle.fill
  static const IconData sf_figure_2_circle_fill =
      IconData(0x100E7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.american.football
  static const IconData sf_figure_american_football =
      IconData(0x101490, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.and.child.holdinghands
  static const IconData sf_figure_and_child_holdinghands =
      IconData(0x101601, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.archery
  static const IconData sf_figure_archery =
      IconData(0x101491, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.arms.open
  static const IconData sf_figure_arms_open =
      IconData(0x1015C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.australian.football
  static const IconData sf_figure_australian_football =
      IconData(0x101492, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.badminton
  static const IconData sf_figure_badminton =
      IconData(0x101519, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.barre
  static const IconData sf_figure_barre =
      IconData(0x10130F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.baseball
  static const IconData sf_figure_baseball =
      IconData(0x10151A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.basketball
  static const IconData sf_figure_basketball =
      IconData(0x10151B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.bowling
  static const IconData sf_figure_bowling =
      IconData(0x10151C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.boxing
  static const IconData sf_figure_boxing =
      IconData(0x10151D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child
  static const IconData sf_figure_child =
      IconData(0x1018FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.and.lock
  static const IconData sf_figure_child_and_lock =
      IconData(0x10197E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.and.lock.fill
  static const IconData sf_figure_child_and_lock_fill =
      IconData(0x10197F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.and.lock.open
  static const IconData sf_figure_child_and_lock_open =
      IconData(0x101980, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.and.lock.open.fill
  static const IconData sf_figure_child_and_lock_open_fill =
      IconData(0x101981, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.circle
  static const IconData sf_figure_child_circle =
      IconData(0x1018FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.child.circle.fill
  static const IconData sf_figure_child_circle_fill =
      IconData(0x1018FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.climbing
  static const IconData sf_figure_climbing =
      IconData(0x10151E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.cooldown
  static const IconData sf_figure_cooldown =
      IconData(0x10151F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.core.training
  static const IconData sf_figure_core_training =
      IconData(0x101310, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.cricket
  static const IconData sf_figure_cricket =
      IconData(0x101520, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.cross.training
  static const IconData sf_figure_cross_training =
      IconData(0x101311, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.curling
  static const IconData sf_figure_curling =
      IconData(0x101522, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.dance
  static const IconData sf_figure_dance =
      IconData(0x101312, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.disc.sports
  static const IconData sf_figure_disc_sports =
      IconData(0x101523, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.dress.line.vertical.figure
  static const IconData sf_figure_dress_line_vertical_figure =
      IconData(0x101642, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.elliptical
  static const IconData sf_figure_elliptical =
      IconData(0x10130C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.equestrian.sports
  static const IconData sf_figure_equestrian_sports =
      IconData(0x101525, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.fall
  static const IconData sf_figure_fall =
      IconData(0x100D6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.fall.circle
  static const IconData sf_figure_fall_circle =
      IconData(0x100D6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.fall.circle.fill
  static const IconData sf_figure_fall_circle_fill =
      IconData(0x100D70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.fencing
  static const IconData sf_figure_fencing =
      IconData(0x101526, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.fishing
  static const IconData sf_figure_fishing =
      IconData(0x101527, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.flexibility
  static const IconData sf_figure_flexibility =
      IconData(0x101551, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.golf
  static const IconData sf_figure_golf =
      IconData(0x101529, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.gymnastics
  static const IconData sf_figure_gymnastics =
      IconData(0x10152A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.hand.cycling
  static const IconData sf_figure_hand_cycling =
      IconData(0x10152B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.handball
  static const IconData sf_figure_handball =
      IconData(0x10152C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.highintensity.intervaltraining
  static const IconData sf_figure_highintensity_intervaltraining =
      IconData(0x10130E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.hiking
  static const IconData sf_figure_hiking =
      IconData(0x10152D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.hockey
  static const IconData sf_figure_hockey =
      IconData(0x10152E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.hunting
  static const IconData sf_figure_hunting =
      IconData(0x10152F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.indoor.cycle
  static const IconData sf_figure_indoor_cycle =
      IconData(0x10130A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.jumprope
  static const IconData sf_figure_jumprope =
      IconData(0x101530, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.kickboxing
  static const IconData sf_figure_kickboxing =
      IconData(0x101531, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.lacrosse
  static const IconData sf_figure_lacrosse =
      IconData(0x101532, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.martial.arts
  static const IconData sf_figure_martial_arts =
      IconData(0x101533, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.mind.and.body
  static const IconData sf_figure_mind_and_body =
      IconData(0x101534, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.mixed.cardio
  static const IconData sf_figure_mixed_cardio =
      IconData(0x101535, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.open.water.swim
  static const IconData sf_figure_open_water_swim =
      IconData(0x101307, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.outdoor.cycle
  static const IconData sf_figure_outdoor_cycle =
      IconData(0x101309, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.pickleball
  static const IconData sf_figure_pickleball =
      IconData(0x101537, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.pilates
  static const IconData sf_figure_pilates =
      IconData(0x101313, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.play
  static const IconData sf_figure_play =
      IconData(0x101538, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.pool.swim
  static const IconData sf_figure_pool_swim =
      IconData(0x101306, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.racquetball
  static const IconData sf_figure_racquetball =
      IconData(0x101539, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.roll
  static const IconData sf_figure_roll =
      IconData(0x101211, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.roll.runningpace
  static const IconData sf_figure_roll_runningpace =
      IconData(0x101308, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.rolling
  static const IconData sf_figure_rolling =
      IconData(0x10153A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.rower
  static const IconData sf_figure_rower =
      IconData(0x10130B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.rugby
  static const IconData sf_figure_rugby =
      IconData(0x10153B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.run
  static const IconData sf_figure_run =
      IconData(0x100433, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.run.circle
  static const IconData sf_figure_run_circle =
      IconData(0x100434, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.run.circle.fill
  static const IconData sf_figure_run_circle_fill =
      IconData(0x100435, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.run.square.stack
  static const IconData sf_figure_run_square_stack =
      IconData(0x1017FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.run.square.stack.fill
  static const IconData sf_figure_run_square_stack_fill =
      IconData(0x1017FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.sailing
  static const IconData sf_figure_sailing =
      IconData(0x10153C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.seatbelt
  static const IconData sf_figure_seated_seatbelt =
      IconData(0x100FE6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.seatbelt.and.airbag.off
  static const IconData sf_figure_seated_seatbelt_and_airbag_off =
      IconData(0x101282, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.seatbelt.and.airbag.on
  static const IconData sf_figure_seated_seatbelt_and_airbag_on =
      IconData(0x10179B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side
  static const IconData sf_figure_seated_side =
      IconData(0x101EBC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.lower
  static const IconData sf_figure_seated_side_air_distribution_lower =
      IconData(0x101076, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle
  static const IconData sf_figure_seated_side_air_distribution_middle =
      IconData(0x101075, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle.and.lower
  static const IconData
      sf_figure_seated_side_air_distribution_middle_and_lower =
      IconData(0x101078, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.middle.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_middle_and_lower_angled =
      IconData(0x101EC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper
  static const IconData sf_figure_seated_side_air_distribution_upper =
      IconData(0x101077, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_lower_angled =
      IconData(0x101EBF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.middle
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_middle =
      IconData(0x101EBE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.air.distribution.upper.angled.and.middle.and.lower.angled
  static const IconData
      sf_figure_seated_side_air_distribution_upper_angled_and_middle_and_lower_angled =
      IconData(0x101EBD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.airbag.off
  static const IconData sf_figure_seated_side_airbag_off =
      IconData(0x10128D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.airbag.off.2
  static const IconData sf_figure_seated_side_airbag_off_2 =
      IconData(0x10127B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.airbag.on
  static const IconData sf_figure_seated_side_airbag_on =
      IconData(0x100FE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.airbag.on.2
  static const IconData sf_figure_seated_side_airbag_on_2 =
      IconData(0x10179A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.automatic
  static const IconData sf_figure_seated_side_automatic =
      IconData(0x101C8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves
  static const IconData sf_figure_seated_side_windshield_front_and_heat_waves =
      IconData(0x101079, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_lower =
      IconData(0x101ED2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.middle
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_middle =
      IconData(0x101ED1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.middle.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_middle_and_lower =
      IconData(0x101ECD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper =
      IconData(0x101ED0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_lower =
      IconData(0x101ECF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.middle
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_middle =
      IconData(0x101ECE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.seated.side.windshield.front.and.heat.waves.air.distribution.upper.and.middle.and.lower
  static const IconData
      sf_figure_seated_side_windshield_front_and_heat_waves_air_distribution_upper_and_middle_and_lower =
      IconData(0x101ECC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.skating
  static const IconData sf_figure_skating =
      IconData(0x10153D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.skiing.crosscountry
  static const IconData sf_figure_skiing_crosscountry =
      IconData(0x101521, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.skiing.downhill
  static const IconData sf_figure_skiing_downhill =
      IconData(0x101524, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.snowboarding
  static const IconData sf_figure_snowboarding =
      IconData(0x10153E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.soccer
  static const IconData sf_figure_soccer =
      IconData(0x10153F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.socialdance
  static const IconData sf_figure_socialdance =
      IconData(0x101540, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.softball
  static const IconData sf_figure_softball =
      IconData(0x101541, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.squash
  static const IconData sf_figure_squash =
      IconData(0x101542, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.stair.stepper
  static const IconData sf_figure_stair_stepper =
      IconData(0x10130D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.stairs
  static const IconData sf_figure_stairs =
      IconData(0x101543, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.stand
  static const IconData sf_figure_stand =
      IconData(0x100CFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.stand.line.dotted.figure.stand
  static const IconData sf_figure_stand_line_dotted_figure_stand =
      IconData(0x100CFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.step.training
  static const IconData sf_figure_step_training =
      IconData(0x101544, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.strengthtraining.functional
  static const IconData sf_figure_strengthtraining_functional =
      IconData(0x101528, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.strengthtraining.traditional
  static const IconData sf_figure_strengthtraining_traditional =
      IconData(0x101403, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.surfing
  static const IconData sf_figure_surfing =
      IconData(0x101545, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.table.tennis
  static const IconData sf_figure_table_tennis =
      IconData(0x101314, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.taichi
  static const IconData sf_figure_taichi =
      IconData(0x101546, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.tennis
  static const IconData sf_figure_tennis =
      IconData(0x10148B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.track.and.field
  static const IconData sf_figure_track_and_field =
      IconData(0x101547, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.volleyball
  static const IconData sf_figure_volleyball =
      IconData(0x101548, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk
  static const IconData sf_figure_walk =
      IconData(0x100762, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.arrival
  static const IconData sf_figure_walk_arrival =
      IconData(0x1013DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.circle
  static const IconData sf_figure_walk_circle =
      IconData(0x100763, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.circle.fill
  static const IconData sf_figure_walk_circle_fill =
      IconData(0x100764, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.departure
  static const IconData sf_figure_walk_departure =
      IconData(0x1013DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.diamond
  static const IconData sf_figure_walk_diamond =
      IconData(0x100AA2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.diamond.fill
  static const IconData sf_figure_walk_diamond_fill =
      IconData(0x100AA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.motion
  static const IconData sf_figure_walk_motion =
      IconData(0x101411, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.walk.motion.trianglebadge.exclamationmark
  static const IconData sf_figure_walk_motion_trianglebadge_exclamationmark =
      IconData(0x101DDA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.water.fitness
  static const IconData sf_figure_water_fitness =
      IconData(0x101549, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.waterpolo
  static const IconData sf_figure_waterpolo =
      IconData(0x10154A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.wave
  static const IconData sf_figure_wave =
      IconData(0x10077B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.wave.circle
  static const IconData sf_figure_wave_circle =
      IconData(0x10077C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.wave.circle.fill
  static const IconData sf_figure_wave_circle_fill =
      IconData(0x10077D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.wrestling
  static const IconData sf_figure_wrestling =
      IconData(0x10154C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol figure.yoga
  static const IconData sf_figure_yoga =
      IconData(0x10148C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol filemenu.and.cursorarrow
  static const IconData sf_filemenu_and_cursorarrow =
      IconData(0x100BEA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol filemenu.and.selection
  static const IconData sf_filemenu_and_selection =
      IconData(0x100C62, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film
  static const IconData sf_film =
      IconData(0x1003B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film.circle
  static const IconData sf_film_circle =
      IconData(0x100E0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film.circle.fill
  static const IconData sf_film_circle_fill =
      IconData(0x100E0B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film.fill
  static const IconData sf_film_fill =
      IconData(0x1003B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film.stack
  static const IconData sf_film_stack =
      IconData(0x101496, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol film.stack.fill
  static const IconData sf_film_stack_fill =
      IconData(0x101497, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fireplace
  static const IconData sf_fireplace =
      IconData(0x101438, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fireplace.fill
  static const IconData sf_fireplace_fill =
      IconData(0x101439, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol firewall
  static const IconData sf_firewall =
      IconData(0x10167E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol firewall.fill
  static const IconData sf_firewall_fill =
      IconData(0x10167F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fireworks
  static const IconData sf_fireworks =
      IconData(0x10205E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fish
  static const IconData sf_fish =
      IconData(0x101590, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fish.circle
  static const IconData sf_fish_circle =
      IconData(0x1017B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fish.circle.fill
  static const IconData sf_fish_circle_fill =
      IconData(0x1017B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fish.fill
  static const IconData sf_fish_fill =
      IconData(0x101591, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag
  static const IconData sf_flag =
      IconData(0x1002C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.2.crossed
  static const IconData sf_flag_2_crossed =
      IconData(0x100DB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.2.crossed.circle
  static const IconData sf_flag_2_crossed_circle =
      IconData(0x101705, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.2.crossed.circle.fill
  static const IconData sf_flag_2_crossed_circle_fill =
      IconData(0x101706, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.2.crossed.fill
  static const IconData sf_flag_2_crossed_fill =
      IconData(0x100DB7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.and.flag.filled.crossed
  static const IconData sf_flag_and_flag_filled_crossed =
      IconData(0x10105C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.badge.ellipsis
  static const IconData sf_flag_badge_ellipsis =
      IconData(0x100914, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.badge.ellipsis.fill
  static const IconData sf_flag_badge_ellipsis_fill =
      IconData(0x100915, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.checkered
  static const IconData sf_flag_checkered =
      IconData(0x10164C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.checkered.2.crossed
  static const IconData sf_flag_checkered_2_crossed =
      IconData(0x101714, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.checkered.circle
  static const IconData sf_flag_checkered_circle =
      IconData(0x10177C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.checkered.circle.fill
  static const IconData sf_flag_checkered_circle_fill =
      IconData(0x10177D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.circle
  static const IconData sf_flag_circle =
      IconData(0x1002CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.circle.fill
  static const IconData sf_flag_circle_fill =
      IconData(0x1002CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.fill
  static const IconData sf_flag_fill =
      IconData(0x1002CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.filled.and.flag.crossed
  static const IconData sf_flag_filled_and_flag_crossed =
      IconData(0x100DB8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.slash
  static const IconData sf_flag_slash =
      IconData(0x1002CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.slash.circle
  static const IconData sf_flag_slash_circle =
      IconData(0x1002CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.slash.circle.fill
  static const IconData sf_flag_slash_circle_fill =
      IconData(0x1002D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.slash.fill
  static const IconData sf_flag_slash_fill =
      IconData(0x1002CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.square
  static const IconData sf_flag_square =
      IconData(0x100F33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flag.square.fill
  static const IconData sf_flag_square_fill =
      IconData(0x100F34, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flame
  static const IconData sf_flame =
      IconData(0x10066C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flame.circle
  static const IconData sf_flame_circle =
      IconData(0x1011D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flame.circle.fill
  static const IconData sf_flame_circle_fill =
      IconData(0x1011D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flame.fill
  static const IconData sf_flame_fill =
      IconData(0x10066D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.off.circle
  static const IconData sf_flashlight_off_circle =
      IconData(0x1020F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.off.circle.fill
  static const IconData sf_flashlight_off_circle_fill =
      IconData(0x1020F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.off.fill
  static const IconData sf_flashlight_off_fill =
      IconData(0x10074C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.on.circle
  static const IconData sf_flashlight_on_circle =
      IconData(0x1020F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.on.circle.fill
  static const IconData sf_flashlight_on_circle_fill =
      IconData(0x1020F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.on.fill
  static const IconData sf_flashlight_on_fill =
      IconData(0x10078B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.slash
  static const IconData sf_flashlight_slash =
      IconData(0x1020F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.slash.circle
  static const IconData sf_flashlight_slash_circle =
      IconData(0x1020F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flashlight.slash.circle.fill
  static const IconData sf_flashlight_slash_circle_fill =
      IconData(0x1020F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flask
  static const IconData sf_flask =
      IconData(0x101C0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flask.fill
  static const IconData sf_flask_fill =
      IconData(0x101C0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fleuron
  static const IconData sf_fleuron =
      IconData(0x1014EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fleuron.fill
  static const IconData sf_fleuron_fill =
      IconData(0x1014D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flipphone
  static const IconData sf_flipphone =
      IconData(0x100AB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign
  static const IconData sf_florinsign =
      IconData(0x101444, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign.arrow.circlepath
  static const IconData sf_florinsign_arrow_circlepath =
      IconData(0x102217, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign.circle
  static const IconData sf_florinsign_circle =
      IconData(0x1005A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign.circle.fill
  static const IconData sf_florinsign_circle_fill =
      IconData(0x1005A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign.square
  static const IconData sf_florinsign_square =
      IconData(0x1005E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol florinsign.square.fill
  static const IconData sf_florinsign_square_fill =
      IconData(0x1005E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flowchart
  static const IconData sf_flowchart =
      IconData(0x100415, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol flowchart.fill
  static const IconData sf_flowchart_fill =
      IconData(0x100416, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fluid.brakesignal
  static const IconData sf_fluid_brakesignal =
      IconData(0x10128C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fluid.transmission
  static const IconData sf_fluid_transmission =
      IconData(0x101834, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fn
  static const IconData sf_fn =
      IconData(0x10094C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder
  static const IconData sf_folder =
      IconData(0x100215, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.badge.gearshape
  static const IconData sf_folder_badge_gearshape =
      IconData(0x1008CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.badge.minus
  static const IconData sf_folder_badge_minus =
      IconData(0x10021B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.badge.person.crop
  static const IconData sf_folder_badge_person_crop =
      IconData(0x10021D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.badge.plus
  static const IconData sf_folder_badge_plus =
      IconData(0x100219, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.badge.questionmark
  static const IconData sf_folder_badge_questionmark =
      IconData(0x1009C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.circle
  static const IconData sf_folder_circle =
      IconData(0x100217, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.circle.fill
  static const IconData sf_folder_circle_fill =
      IconData(0x100218, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill
  static const IconData sf_folder_fill =
      IconData(0x100216, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill.badge.gearshape
  static const IconData sf_folder_fill_badge_gearshape =
      IconData(0x1008CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill.badge.minus
  static const IconData sf_folder_fill_badge_minus =
      IconData(0x10021C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill.badge.person.crop
  static const IconData sf_folder_fill_badge_person_crop =
      IconData(0x10021E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill.badge.plus
  static const IconData sf_folder_fill_badge_plus =
      IconData(0x10021A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol folder.fill.badge.questionmark
  static const IconData sf_folder_fill_badge_questionmark =
      IconData(0x1009C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol football
  static const IconData sf_football =
      IconData(0x1015CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol football.circle
  static const IconData sf_football_circle =
      IconData(0x1016BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol football.circle.fill
  static const IconData sf_football_circle_fill =
      IconData(0x1016C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol football.fill
  static const IconData sf_football_fill =
      IconData(0x1015CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fork.knife
  static const IconData sf_fork_knife =
      IconData(0x100E29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fork.knife.circle
  static const IconData sf_fork_knife_circle =
      IconData(0x100E39, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fork.knife.circle.fill
  static const IconData sf_fork_knife_circle_fill =
      IconData(0x100E3A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward
  static const IconData sf_forward =
      IconData(0x10028B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.circle
  static const IconData sf_forward_circle =
      IconData(0x100E85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.circle.fill
  static const IconData sf_forward_circle_fill =
      IconData(0x100E86, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end
  static const IconData sf_forward_end =
      IconData(0x10028F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end.alt
  static const IconData sf_forward_end_alt =
      IconData(0x100293, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end.alt.fill
  static const IconData sf_forward_end_alt_fill =
      IconData(0x100294, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end.circle
  static const IconData sf_forward_end_circle =
      IconData(0x1012F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end.circle.fill
  static const IconData sf_forward_end_circle_fill =
      IconData(0x1012F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.end.fill
  static const IconData sf_forward_end_fill =
      IconData(0x100290, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.fill
  static const IconData sf_forward_fill =
      IconData(0x10028C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.frame
  static const IconData sf_forward_frame =
      IconData(0x100A6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol forward.frame.fill
  static const IconData sf_forward_frame_fill =
      IconData(0x100A6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fossil.shell
  static const IconData sf_fossil_shell =
      IconData(0x101554, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fossil.shell.fill
  static const IconData sf_fossil_shell_fill =
      IconData(0x101555, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign
  static const IconData sf_francsign =
      IconData(0x101443, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign.arrow.circlepath
  static const IconData sf_francsign_arrow_circlepath =
      IconData(0x102216, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign.circle
  static const IconData sf_francsign_circle =
      IconData(0x10059F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign.circle.fill
  static const IconData sf_francsign_circle_fill =
      IconData(0x1005A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign.square
  static const IconData sf_francsign_square =
      IconData(0x1005DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol francsign.square.fill
  static const IconData sf_francsign_square_fill =
      IconData(0x1005E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol frying.pan
  static const IconData sf_frying_pan =
      IconData(0x101405, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol frying.pan.fill
  static const IconData sf_frying_pan_fill =
      IconData(0x101406, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump
  static const IconData sf_fuelpump =
      IconData(0x100D5E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.arrowtriangle.left
  static const IconData sf_fuelpump_arrowtriangle_left =
      IconData(0x10123E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.arrowtriangle.left.fill
  static const IconData sf_fuelpump_arrowtriangle_left_fill =
      IconData(0x10123F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.arrowtriangle.right
  static const IconData sf_fuelpump_arrowtriangle_right =
      IconData(0x10123C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.arrowtriangle.right.fill
  static const IconData sf_fuelpump_arrowtriangle_right_fill =
      IconData(0x10123D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.circle
  static const IconData sf_fuelpump_circle =
      IconData(0x100D60, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.circle.fill
  static const IconData sf_fuelpump_circle_fill =
      IconData(0x100D61, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.exclamationmark
  static const IconData sf_fuelpump_exclamationmark =
      IconData(0x101966, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.exclamationmark.fill
  static const IconData sf_fuelpump_exclamationmark_fill =
      IconData(0x101967, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.fill
  static const IconData sf_fuelpump_fill =
      IconData(0x100D5F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.slash
  static const IconData sf_fuelpump_slash =
      IconData(0x101C1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fuelpump.slash.fill
  static const IconData sf_fuelpump_slash_fill =
      IconData(0x101C1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol function
  static const IconData sf_function =
      IconData(0x10016E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol fx
  static const IconData sf_fx =
      IconData(0x10016C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol g.circle
  static const IconData sf_g_circle =
      IconData(0x100010, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol g.circle.fill
  static const IconData sf_g_circle_fill =
      IconData(0x100011, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol g.square
  static const IconData sf_g_square =
      IconData(0x1000A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol g.square.fill
  static const IconData sf_g_square_fill =
      IconData(0x1000A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gamecontroller
  static const IconData sf_gamecontroller =
      IconData(0x1006F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gamecontroller.fill
  static const IconData sf_gamecontroller_fill =
      IconData(0x1006F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent
  static const IconData sf_gauge_open_with_lines_needle_33percent =
      IconData(0x101ACF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent.and.arrowtriangle
  static const IconData
      sf_gauge_open_with_lines_needle_33percent_and_arrowtriangle =
      IconData(0x101270, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.33percent.and.arrowtriangle.from.0percent.to.50percent
  static const IconData
      sf_gauge_open_with_lines_needle_33percent_and_arrowtriangle_from_0percent_to_50percent =
      IconData(0x101290, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.67percent.and.arrowtriangle
  static const IconData
      sf_gauge_open_with_lines_needle_67percent_and_arrowtriangle =
      IconData(0x101597, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.67percent.and.arrowtriangle.and.car
  static const IconData
      sf_gauge_open_with_lines_needle_67percent_and_arrowtriangle_and_car =
      IconData(0x10159C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.open.with.lines.needle.84percent.exclamation
  static const IconData sf_gauge_open_with_lines_needle_84percent_exclamation =
      IconData(0x101598, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.0percent
  static const IconData sf_gauge_with_dots_needle_0percent =
      IconData(0x101419, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.33percent
  static const IconData sf_gauge_with_dots_needle_33percent =
      IconData(0x101C09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.50percent
  static const IconData sf_gauge_with_dots_needle_50percent =
      IconData(0x10141A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.67percent
  static const IconData sf_gauge_with_dots_needle_67percent =
      IconData(0x10037E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.100percent
  static const IconData sf_gauge_with_dots_needle_100percent =
      IconData(0x10141B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.0percent
  static const IconData sf_gauge_with_dots_needle_bottom_0percent =
      IconData(0x101417, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent
  static const IconData sf_gauge_with_dots_needle_bottom_50percent =
      IconData(0x10037D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent.badge.minus
  static const IconData sf_gauge_with_dots_needle_bottom_50percent_badge_minus =
      IconData(0x1004E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.50percent.badge.plus
  static const IconData sf_gauge_with_dots_needle_bottom_50percent_badge_plus =
      IconData(0x1004D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.dots.needle.bottom.100percent
  static const IconData sf_gauge_with_dots_needle_bottom_100percent =
      IconData(0x101418, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.needle
  static const IconData sf_gauge_with_needle =
      IconData(0x1015AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gauge.with.needle.fill
  static const IconData sf_gauge_with_needle_fill =
      IconData(0x1015AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear
  static const IconData sf_gear =
      IconData(0x10035F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.badge
  static const IconData sf_gear_badge =
      IconData(0x1014F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.badge.checkmark
  static const IconData sf_gear_badge_checkmark =
      IconData(0x101166, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.badge.questionmark
  static const IconData sf_gear_badge_questionmark =
      IconData(0x101168, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.badge.xmark
  static const IconData sf_gear_badge_xmark =
      IconData(0x101167, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.circle
  static const IconData sf_gear_circle =
      IconData(0x100EBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gear.circle.fill
  static const IconData sf_gear_circle_fill =
      IconData(0x100EBB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape
  static const IconData sf_gearshape =
      IconData(0x1008CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.2
  static const IconData sf_gearshape_2 =
      IconData(0x10094E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.2.fill
  static const IconData sf_gearshape_2_fill =
      IconData(0x10094F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.arrow.triangle.2.circlepath
  static const IconData sf_gearshape_arrow_triangle_2_circlepath =
      IconData(0x101402, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.circle
  static const IconData sf_gearshape_circle =
      IconData(0x100EBC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.circle.fill
  static const IconData sf_gearshape_circle_fill =
      IconData(0x100EBD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshape.fill
  static const IconData sf_gearshape_fill =
      IconData(0x1008CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gearshift.layout.sixspeed
  static const IconData sf_gearshift_layout_sixspeed =
      IconData(0x101E1D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gift
  static const IconData sf_gift =
      IconData(0x100449, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gift.circle
  static const IconData sf_gift_circle =
      IconData(0x1004C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gift.circle.fill
  static const IconData sf_gift_circle_fill =
      IconData(0x1004C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gift.fill
  static const IconData sf_gift_fill =
      IconData(0x10044A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol giftcard
  static const IconData sf_giftcard =
      IconData(0x1009A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol giftcard.fill
  static const IconData sf_giftcard_fill =
      IconData(0x1009A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe
  static const IconData sf_globe =
      IconData(0x1001AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.americas
  static const IconData sf_globe_americas =
      IconData(0x100D71, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.americas.fill
  static const IconData sf_globe_americas_fill =
      IconData(0x100D72, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.asia.australia
  static const IconData sf_globe_asia_australia =
      IconData(0x100D75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.asia.australia.fill
  static const IconData sf_globe_asia_australia_fill =
      IconData(0x100D76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.badge.chevron.backward
  static const IconData sf_globe_badge_chevron_backward =
      IconData(0x10114D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.central.south.asia
  static const IconData sf_globe_central_south_asia =
      IconData(0x1011F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.central.south.asia.fill
  static const IconData sf_globe_central_south_asia_fill =
      IconData(0x1011F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.desk
  static const IconData sf_globe_desk =
      IconData(0x101516, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.desk.fill
  static const IconData sf_globe_desk_fill =
      IconData(0x101553, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.europe.africa
  static const IconData sf_globe_europe_africa =
      IconData(0x100D73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol globe.europe.africa.fill
  static const IconData sf_globe_europe_africa_fill =
      IconData(0x100D74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol glowplug
  static const IconData sf_glowplug =
      IconData(0x101031, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward
  static const IconData sf_gobackward =
      IconData(0x100380, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.5
  static const IconData sf_gobackward_5 =
      IconData(0x100DB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.10
  static const IconData sf_gobackward_10 =
      IconData(0x100382, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.15
  static const IconData sf_gobackward_15 =
      IconData(0x100384, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.30
  static const IconData sf_gobackward_30 =
      IconData(0x100386, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.45
  static const IconData sf_gobackward_45 =
      IconData(0x100388, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.60
  static const IconData sf_gobackward_60 =
      IconData(0x10038A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.75
  static const IconData sf_gobackward_75 =
      IconData(0x100625, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.90
  static const IconData sf_gobackward_90 =
      IconData(0x100627, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gobackward.minus
  static const IconData sf_gobackward_minus =
      IconData(0x100629, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward
  static const IconData sf_goforward =
      IconData(0x10037F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.5
  static const IconData sf_goforward_5 =
      IconData(0x100DB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.10
  static const IconData sf_goforward_10 =
      IconData(0x100381, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.15
  static const IconData sf_goforward_15 =
      IconData(0x100383, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.30
  static const IconData sf_goforward_30 =
      IconData(0x100385, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.45
  static const IconData sf_goforward_45 =
      IconData(0x100387, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.60
  static const IconData sf_goforward_60 =
      IconData(0x100389, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.75
  static const IconData sf_goforward_75 =
      IconData(0x100624, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.90
  static const IconData sf_goforward_90 =
      IconData(0x100626, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol goforward.plus
  static const IconData sf_goforward_plus =
      IconData(0x100628, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol graduationcap
  static const IconData sf_graduationcap =
      IconData(0x100AD3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol graduationcap.circle
  static const IconData sf_graduationcap_circle =
      IconData(0x1011BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol graduationcap.circle.fill
  static const IconData sf_graduationcap_circle_fill =
      IconData(0x1011BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol graduationcap.fill
  static const IconData sf_graduationcap_fill =
      IconData(0x100AD4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greaterthan
  static const IconData sf_greaterthan =
      IconData(0x100182, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greaterthan.circle
  static const IconData sf_greaterthan_circle =
      IconData(0x100056, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greaterthan.circle.fill
  static const IconData sf_greaterthan_circle_fill =
      IconData(0x100057, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greaterthan.square
  static const IconData sf_greaterthan_square =
      IconData(0x1000E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greaterthan.square.fill
  static const IconData sf_greaterthan_square_fill =
      IconData(0x1000E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greetingcard
  static const IconData sf_greetingcard =
      IconData(0x100920, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol greetingcard.fill
  static const IconData sf_greetingcard_fill =
      IconData(0x100921, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol grid
  static const IconData sf_grid =
      IconData(0x1004D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol grid.circle
  static const IconData sf_grid_circle =
      IconData(0x1004D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol grid.circle.fill
  static const IconData sf_grid_circle_fill =
      IconData(0x10061F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign
  static const IconData sf_guaranisign =
      IconData(0x101453, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign.arrow.circlepath
  static const IconData sf_guaranisign_arrow_circlepath =
      IconData(0x102226, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign.circle
  static const IconData sf_guaranisign_circle =
      IconData(0x1005BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign.circle.fill
  static const IconData sf_guaranisign_circle_fill =
      IconData(0x1005C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign.square
  static const IconData sf_guaranisign_square =
      IconData(0x1005FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guaranisign.square.fill
  static const IconData sf_guaranisign_square_fill =
      IconData(0x100600, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guitars
  static const IconData sf_guitars =
      IconData(0x10046D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol guitars.fill
  static const IconData sf_guitars_fill =
      IconData(0x1007D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gym.bag
  static const IconData sf_gym_bag =
      IconData(0x1020B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gym.bag.fill
  static const IconData sf_gym_bag_fill =
      IconData(0x1020B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol gyroscope
  static const IconData sf_gyroscope =
      IconData(0x100B17, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.circle
  static const IconData sf_h_circle =
      IconData(0x100012, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.circle.fill
  static const IconData sf_h_circle_fill =
      IconData(0x100013, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.square
  static const IconData sf_h_square =
      IconData(0x1000A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.square.fill
  static const IconData sf_h_square_fill =
      IconData(0x1000A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.square.on.square
  static const IconData sf_h_square_on_square =
      IconData(0x100B5C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol h.square.on.square.fill
  static const IconData sf_h_square_on_square_fill =
      IconData(0x100B5D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hammer
  static const IconData sf_hammer =
      IconData(0x100644, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hammer.circle
  static const IconData sf_hammer_circle =
      IconData(0x100DD4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hammer.circle.fill
  static const IconData sf_hammer_circle_fill =
      IconData(0x100DD5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hammer.fill
  static const IconData sf_hammer_fill =
      IconData(0x100645, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.draw
  static const IconData sf_hand_draw =
      IconData(0x100593, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.draw.fill
  static const IconData sf_hand_draw_fill =
      IconData(0x100594, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.down
  static const IconData sf_hand_point_down =
      IconData(0x10093B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.down.fill
  static const IconData sf_hand_point_down_fill =
      IconData(0x10093C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.left
  static const IconData sf_hand_point_left =
      IconData(0x10067D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.left.fill
  static const IconData sf_hand_point_left_fill =
      IconData(0x10067E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.right
  static const IconData sf_hand_point_right =
      IconData(0x10067F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.right.fill
  static const IconData sf_hand_point_right_fill =
      IconData(0x100680, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up
  static const IconData sf_hand_point_up =
      IconData(0x100939, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.braille
  static const IconData sf_hand_point_up_braille =
      IconData(0x100982, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.braille.fill
  static const IconData sf_hand_point_up_braille_fill =
      IconData(0x100983, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.fill
  static const IconData sf_hand_point_up_fill =
      IconData(0x10093A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.left
  static const IconData sf_hand_point_up_left =
      IconData(0x100770, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.left.and.text
  static const IconData sf_hand_point_up_left_and_text =
      IconData(0x101F80, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.left.and.text.fill
  static const IconData sf_hand_point_up_left_and_text_fill =
      IconData(0x101F81, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.point.up.left.fill
  static const IconData sf_hand_point_up_left_fill =
      IconData(0x100771, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised
  static const IconData sf_hand_raised =
      IconData(0x10027B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.app
  static const IconData sf_hand_raised_app =
      IconData(0x10174C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.app.fill
  static const IconData sf_hand_raised_app_fill =
      IconData(0x10174D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.brakesignal
  static const IconData sf_hand_raised_brakesignal =
      IconData(0x1017C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.brakesignal.slash
  static const IconData sf_hand_raised_brakesignal_slash =
      IconData(0x1017C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.circle
  static const IconData sf_hand_raised_circle =
      IconData(0x100DCA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.circle.fill
  static const IconData sf_hand_raised_circle_fill =
      IconData(0x100DCB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.fill
  static const IconData sf_hand_raised_fill =
      IconData(0x10027C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.fingers.spread
  static const IconData sf_hand_raised_fingers_spread =
      IconData(0x1015E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.fingers.spread.fill
  static const IconData sf_hand_raised_fingers_spread_fill =
      IconData(0x1015EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.slash
  static const IconData sf_hand_raised_slash =
      IconData(0x10027D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.slash.fill
  static const IconData sf_hand_raised_slash_fill =
      IconData(0x10027E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.square
  static const IconData sf_hand_raised_square =
      IconData(0x100F53, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.square.fill
  static const IconData sf_hand_raised_square_fill =
      IconData(0x100F54, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.square.on.square
  static const IconData sf_hand_raised_square_on_square =
      IconData(0x100D28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.raised.square.on.square.fill
  static const IconData sf_hand_raised_square_on_square_fill =
      IconData(0x100D29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.tap
  static const IconData sf_hand_tap =
      IconData(0x100B01, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.tap.fill
  static const IconData sf_hand_tap_fill =
      IconData(0x100B02, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsdown
  static const IconData sf_hand_thumbsdown =
      IconData(0x100281, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsdown.circle
  static const IconData sf_hand_thumbsdown_circle =
      IconData(0x100DDF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsdown.circle.fill
  static const IconData sf_hand_thumbsdown_circle_fill =
      IconData(0x100DE0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsdown.fill
  static const IconData sf_hand_thumbsdown_fill =
      IconData(0x100282, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsup
  static const IconData sf_hand_thumbsup =
      IconData(0x10027F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsup.circle
  static const IconData sf_hand_thumbsup_circle =
      IconData(0x100DDD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsup.circle.fill
  static const IconData sf_hand_thumbsup_circle_fill =
      IconData(0x100DDE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.thumbsup.fill
  static const IconData sf_hand_thumbsup_fill =
      IconData(0x100280, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.wave
  static const IconData sf_hand_wave =
      IconData(0x1007F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hand.wave.fill
  static const IconData sf_hand_wave_fill =
      IconData(0x1007F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol handbag
  static const IconData sf_handbag =
      IconData(0x1017B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol handbag.circle
  static const IconData sf_handbag_circle =
      IconData(0x101FDC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol handbag.circle.fill
  static const IconData sf_handbag_circle_fill =
      IconData(0x101FDD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol handbag.fill
  static const IconData sf_handbag_fill =
      IconData(0x1017B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hands.and.sparkles
  static const IconData sf_hands_and_sparkles =
      IconData(0x100CAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hands.and.sparkles.fill
  static const IconData sf_hands_and_sparkles_fill =
      IconData(0x100CAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hands.clap
  static const IconData sf_hands_clap =
      IconData(0x1007EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hands.clap.fill
  static const IconData sf_hands_clap_fill =
      IconData(0x1007EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hanger
  static const IconData sf_hanger =
      IconData(0x100816, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hare
  static const IconData sf_hare =
      IconData(0x1004CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hare.circle
  static const IconData sf_hare_circle =
      IconData(0x102038, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hare.circle.fill
  static const IconData sf_hare_circle_fill =
      IconData(0x102039, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hare.fill
  static const IconData sf_hare_fill =
      IconData(0x1004CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hazardsign
  static const IconData sf_hazardsign =
      IconData(0x101030, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hazardsign.fill
  static const IconData sf_hazardsign_fill =
      IconData(0x101563, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol head.profile.arrow.forward.and.visionpro
  static const IconData sf_head_profile_arrow_forward_and_visionpro =
      IconData(0x1017F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.daytime
  static const IconData sf_headlight_daytime =
      IconData(0x100FBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.daytime.fill
  static const IconData sf_headlight_daytime_fill =
      IconData(0x100FBB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.fog
  static const IconData sf_headlight_fog =
      IconData(0x100FB6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.fog.fill
  static const IconData sf_headlight_fog_fill =
      IconData(0x100FB7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.high.beam
  static const IconData sf_headlight_high_beam =
      IconData(0x100FB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.high.beam.fill
  static const IconData sf_headlight_high_beam_fill =
      IconData(0x100FB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.low.beam
  static const IconData sf_headlight_low_beam =
      IconData(0x100FB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headlight.low.beam.fill
  static const IconData sf_headlight_low_beam_fill =
      IconData(0x100FB5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headphones
  static const IconData sf_headphones =
      IconData(0x100448, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headphones.circle
  static const IconData sf_headphones_circle =
      IconData(0x1004BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol headphones.circle.fill
  static const IconData sf_headphones_circle_fill =
      IconData(0x1004BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hearingdevice.and.signal.meter
  static const IconData sf_hearingdevice_and_signal_meter =
      IconData(0x10138F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hearingdevice.and.signal.meter.fill
  static const IconData sf_hearingdevice_and_signal_meter_fill =
      IconData(0x101390, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hearingdevice.ear
  static const IconData sf_hearingdevice_ear =
      IconData(0x100A93, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hearingdevice.ear.fill
  static const IconData sf_hearingdevice_ear_fill =
      IconData(0x101257, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart
  static const IconData sf_heart =
      IconData(0x1002B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.circle
  static const IconData sf_heart_circle =
      IconData(0x1002B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.circle.fill
  static const IconData sf_heart_circle_fill =
      IconData(0x1002B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.fill
  static const IconData sf_heart_fill =
      IconData(0x1002B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.rectangle
  static const IconData sf_heart_rectangle =
      IconData(0x1010EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.rectangle.fill
  static const IconData sf_heart_rectangle_fill =
      IconData(0x1010EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.slash
  static const IconData sf_heart_slash =
      IconData(0x1002B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.slash.circle
  static const IconData sf_heart_slash_circle =
      IconData(0x1002BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.slash.circle.fill
  static const IconData sf_heart_slash_circle_fill =
      IconData(0x1002BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.slash.fill
  static const IconData sf_heart_slash_fill =
      IconData(0x1002B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.square
  static const IconData sf_heart_square =
      IconData(0x100F31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.square.fill
  static const IconData sf_heart_square_fill =
      IconData(0x100F32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.text.square
  static const IconData sf_heart_text_square =
      IconData(0x100974, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heart.text.square.fill
  static const IconData sf_heart_text_square_fill =
      IconData(0x100975, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heat.element.windshield
  static const IconData sf_heat_element_windshield =
      IconData(0x1017C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heat.waves
  static const IconData sf_heat_waves =
      IconData(0x101C39, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heater.vertical
  static const IconData sf_heater_vertical =
      IconData(0x1014E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol heater.vertical.fill
  static const IconData sf_heater_vertical_fill =
      IconData(0x1014EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol helm
  static const IconData sf_helm =
      IconData(0x10042A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon
  static const IconData sf_hexagon =
      IconData(0x10075D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon.bottomhalf.filled
  static const IconData sf_hexagon_bottomhalf_filled =
      IconData(0x10103F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon.fill
  static const IconData sf_hexagon_fill =
      IconData(0x10075E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon.lefthalf.filled
  static const IconData sf_hexagon_lefthalf_filled =
      IconData(0x101009, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon.righthalf.filled
  static const IconData sf_hexagon_righthalf_filled =
      IconData(0x10100A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hexagon.tophalf.filled
  static const IconData sf_hexagon_tophalf_filled =
      IconData(0x10103E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifireceiver
  static const IconData sf_hifireceiver =
      IconData(0x1014AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifireceiver.fill
  static const IconData sf_hifireceiver_fill =
      IconData(0x1014AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker
  static const IconData sf_hifispeaker =
      IconData(0x10074E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.2
  static const IconData sf_hifispeaker_2 =
      IconData(0x1007F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.2.fill
  static const IconData sf_hifispeaker_2_fill =
      IconData(0x1007F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.appletv
  static const IconData sf_hifispeaker_and_appletv =
      IconData(0x100EFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.appletv.fill
  static const IconData sf_hifispeaker_and_appletv_fill =
      IconData(0x100EFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.homepod
  static const IconData sf_hifispeaker_and_homepod =
      IconData(0x100B8E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.homepod.fill
  static const IconData sf_hifispeaker_and_homepod_fill =
      IconData(0x1007F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.homepodmini
  static const IconData sf_hifispeaker_and_homepodmini =
      IconData(0x100DED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.and.homepodmini.fill
  static const IconData sf_hifispeaker_and_homepodmini_fill =
      IconData(0x100DEE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hifispeaker.fill
  static const IconData sf_hifispeaker_fill =
      IconData(0x10074F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol highlighter
  static const IconData sf_highlighter =
      IconData(0x100987, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hockey.puck
  static const IconData sf_hockey_puck =
      IconData(0x1016FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hockey.puck.circle
  static const IconData sf_hockey_puck_circle =
      IconData(0x1016FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hockey.puck.circle.fill
  static const IconData sf_hockey_puck_circle_fill =
      IconData(0x101700, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hockey.puck.fill
  static const IconData sf_hockey_puck_fill =
      IconData(0x1016FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hold.brakesignal
  static const IconData sf_hold_brakesignal =
      IconData(0x1012CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homekit
  static const IconData sf_homekit =
      IconData(0x100800, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod
  static const IconData sf_homepod =
      IconData(0x1007E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.2
  static const IconData sf_homepod_2 =
      IconData(0x100B8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.2.fill
  static const IconData sf_homepod_2_fill =
      IconData(0x1007F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.and.appletv
  static const IconData sf_homepod_and_appletv =
      IconData(0x100E8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.and.appletv.fill
  static const IconData sf_homepod_and_appletv_fill =
      IconData(0x100E8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.and.homepodmini
  static const IconData sf_homepod_and_homepodmini =
      IconData(0x100DEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.and.homepodmini.fill
  static const IconData sf_homepod_and_homepodmini_fill =
      IconData(0x100DEC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepod.fill
  static const IconData sf_homepod_fill =
      IconData(0x1007E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini
  static const IconData sf_homepodmini =
      IconData(0x100DE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini.2
  static const IconData sf_homepodmini_2 =
      IconData(0x100DE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini.2.fill
  static const IconData sf_homepodmini_2_fill =
      IconData(0x100DEA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini.and.appletv
  static const IconData sf_homepodmini_and_appletv =
      IconData(0x100EF9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini.and.appletv.fill
  static const IconData sf_homepodmini_and_appletv_fill =
      IconData(0x100EFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol homepodmini.fill
  static const IconData sf_homepodmini_fill =
      IconData(0x100DE8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol horn
  static const IconData sf_horn =
      IconData(0x101135, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol horn.blast
  static const IconData sf_horn_blast =
      IconData(0x101137, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol horn.blast.fill
  static const IconData sf_horn_blast_fill =
      IconData(0x101138, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol horn.fill
  static const IconData sf_horn_fill =
      IconData(0x101136, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass
  static const IconData sf_hourglass =
      IconData(0x100587, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.and.lock
  static const IconData sf_hourglass_and_lock =
      IconData(0x1021D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.badge.plus
  static const IconData sf_hourglass_badge_plus =
      IconData(0x1008EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.bottomhalf.filled
  static const IconData sf_hourglass_bottomhalf_filled =
      IconData(0x100588, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.circle
  static const IconData sf_hourglass_circle =
      IconData(0x1011DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.circle.fill
  static const IconData sf_hourglass_circle_fill =
      IconData(0x1011DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hourglass.tophalf.filled
  static const IconData sf_hourglass_tophalf_filled =
      IconData(0x100589, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house
  static const IconData sf_house =
      IconData(0x10039E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.and.flag
  static const IconData sf_house_and_flag =
      IconData(0x101631, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.and.flag.circle
  static const IconData sf_house_and_flag_circle =
      IconData(0x101788, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.and.flag.circle.fill
  static const IconData sf_house_and_flag_circle_fill =
      IconData(0x101789, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.and.flag.fill
  static const IconData sf_house_and_flag_fill =
      IconData(0x101632, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.circle
  static const IconData sf_house_circle =
      IconData(0x100946, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.circle.fill
  static const IconData sf_house_circle_fill =
      IconData(0x100947, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.fill
  static const IconData sf_house_fill =
      IconData(0x10039F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.lodge
  static const IconData sf_house_lodge =
      IconData(0x10162D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.lodge.circle
  static const IconData sf_house_lodge_circle =
      IconData(0x101786, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.lodge.circle.fill
  static const IconData sf_house_lodge_circle_fill =
      IconData(0x101787, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol house.lodge.fill
  static const IconData sf_house_lodge_fill =
      IconData(0x10162E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign
  static const IconData sf_hryvniasign =
      IconData(0x101451, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign.arrow.circlepath
  static const IconData sf_hryvniasign_arrow_circlepath =
      IconData(0x102224, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign.circle
  static const IconData sf_hryvniasign_circle =
      IconData(0x1005BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign.circle.fill
  static const IconData sf_hryvniasign_circle_fill =
      IconData(0x1005BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign.square
  static const IconData sf_hryvniasign_square =
      IconData(0x1005FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hryvniasign.square.fill
  static const IconData sf_hryvniasign_square_fill =
      IconData(0x1005FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidifier
  static const IconData sf_humidifier =
      IconData(0x101618, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidifier.and.droplets
  static const IconData sf_humidifier_and_droplets =
      IconData(0x101506, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidifier.and.droplets.fill
  static const IconData sf_humidifier_and_droplets_fill =
      IconData(0x101507, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidifier.fill
  static const IconData sf_humidifier_fill =
      IconData(0x101619, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidity
  static const IconData sf_humidity =
      IconData(0x1010DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol humidity.fill
  static const IconData sf_humidity_fill =
      IconData(0x1010DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hurricane
  static const IconData sf_hurricane =
      IconData(0x1001E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hurricane.circle
  static const IconData sf_hurricane_circle =
      IconData(0x1016F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol hurricane.circle.fill
  static const IconData sf_hurricane_circle_fill =
      IconData(0x1016F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol i.circle
  static const IconData sf_i_circle =
      IconData(0x100014, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol i.circle.fill
  static const IconData sf_i_circle_fill =
      IconData(0x100015, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol i.square
  static const IconData sf_i_square =
      IconData(0x1000A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol i.square.fill
  static const IconData sf_i_square_fill =
      IconData(0x1000A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud
  static const IconData sf_icloud =
      IconData(0x10030B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.and.arrow.down
  static const IconData sf_icloud_and_arrow_down =
      IconData(0x100315, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.and.arrow.down.fill
  static const IconData sf_icloud_and_arrow_down_fill =
      IconData(0x100316, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.and.arrow.up
  static const IconData sf_icloud_and_arrow_up =
      IconData(0x100317, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.and.arrow.up.fill
  static const IconData sf_icloud_and_arrow_up_fill =
      IconData(0x100318, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.circle
  static const IconData sf_icloud_circle =
      IconData(0x10030D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.circle.fill
  static const IconData sf_icloud_circle_fill =
      IconData(0x10030E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.fill
  static const IconData sf_icloud_fill =
      IconData(0x10030C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.slash
  static const IconData sf_icloud_slash =
      IconData(0x10030F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.slash.fill
  static const IconData sf_icloud_slash_fill =
      IconData(0x100310, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.square
  static const IconData sf_icloud_square =
      IconData(0x100F51, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol icloud.square.fill
  static const IconData sf_icloud_square_fill =
      IconData(0x100F52, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol increase.indent
  static const IconData sf_increase_indent =
      IconData(0x1002F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol increase.quotelevel
  static const IconData sf_increase_quotelevel =
      IconData(0x100780, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign
  static const IconData sf_indianrupeesign =
      IconData(0x101449, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign.arrow.circlepath
  static const IconData sf_indianrupeesign_arrow_circlepath =
      IconData(0x10221C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign.circle
  static const IconData sf_indianrupeesign_circle =
      IconData(0x1005AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign.circle.fill
  static const IconData sf_indianrupeesign_circle_fill =
      IconData(0x1005AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign.square
  static const IconData sf_indianrupeesign_square =
      IconData(0x1005EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol indianrupeesign.square.fill
  static const IconData sf_indianrupeesign_square_fill =
      IconData(0x1005EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol infinity
  static const IconData sf_infinity =
      IconData(0x100BE0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol infinity.circle
  static const IconData sf_infinity_circle =
      IconData(0x100D4F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol infinity.circle.fill
  static const IconData sf_infinity_circle_fill =
      IconData(0x100D50, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info
  static const IconData sf_info =
      IconData(0x100173, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.bubble
  static const IconData sf_info_bubble =
      IconData(0x101334, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.bubble.fill
  static const IconData sf_info_bubble_fill =
      IconData(0x101335, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.circle
  static const IconData sf_info_circle =
      IconData(0x100174, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.circle.fill
  static const IconData sf_info_circle_fill =
      IconData(0x100175, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.square
  static const IconData sf_info_square =
      IconData(0x101287, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.square.fill
  static const IconData sf_info_square_fill =
      IconData(0x101288, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol info.windshield
  static const IconData sf_info_windshield =
      IconData(0x1017CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol internaldrive
  static const IconData sf_internaldrive =
      IconData(0x10097E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol internaldrive.fill
  static const IconData sf_internaldrive_fill =
      IconData(0x100A2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad
  static const IconData sf_ipad =
      IconData(0x1007E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.and.arrow.forward
  static const IconData sf_ipad_and_arrow_forward =
      IconData(0x100DC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.and.iphone
  static const IconData sf_ipad_and_iphone =
      IconData(0x10111F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.and.iphone.slash
  static const IconData sf_ipad_and_iphone_slash =
      IconData(0x1012DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.badge.play
  static const IconData sf_ipad_badge_play =
      IconData(0x100D13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.case
  static const IconData sf_ipad_case =
      IconData(0x101929, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.case.and.iphone.case
  static const IconData sf_ipad_case_and_iphone_case =
      IconData(0x10192A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen1
  static const IconData sf_ipad_gen1 =
      IconData(0x1007DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen1.badge.play
  static const IconData sf_ipad_gen1_badge_play =
      IconData(0x100D12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen1.landscape
  static const IconData sf_ipad_gen1_landscape =
      IconData(0x100953, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen1.landscape.badge.play
  static const IconData sf_ipad_gen1_landscape_badge_play =
      IconData(0x100D51, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen2
  static const IconData sf_ipad_gen2 =
      IconData(0x1017E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen2.badge.play
  static const IconData sf_ipad_gen2_badge_play =
      IconData(0x1017E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen2.landscape
  static const IconData sf_ipad_gen2_landscape =
      IconData(0x1017E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.gen2.landscape.badge.play
  static const IconData sf_ipad_gen2_landscape_badge_play =
      IconData(0x1017EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.landscape
  static const IconData sf_ipad_landscape =
      IconData(0x100954, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.landscape.badge.play
  static const IconData sf_ipad_landscape_badge_play =
      IconData(0x100D52, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.rear.camera
  static const IconData sf_ipad_rear_camera =
      IconData(0x101032, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipad.sizes
  static const IconData sf_ipad_sizes =
      IconData(0x1018F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone
  static const IconData sf_iphone =
      IconData(0x1007DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.and.arrow.forward
  static const IconData sf_iphone_and_arrow_forward =
      IconData(0x100DBC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.and.arrow.left.and.arrow.right
  static const IconData sf_iphone_and_arrow_left_and_arrow_right =
      IconData(0x101C3F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.badge.play
  static const IconData sf_iphone_badge_play =
      IconData(0x100D11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.case
  static const IconData sf_iphone_case =
      IconData(0x101928, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.circle
  static const IconData sf_iphone_circle =
      IconData(0x101129, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.circle.fill
  static const IconData sf_iphone_circle_fill =
      IconData(0x10112A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1
  static const IconData sf_iphone_gen1 =
      IconData(0x1007DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.badge.play
  static const IconData sf_iphone_gen1_badge_play =
      IconData(0x100436, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.circle
  static const IconData sf_iphone_gen1_circle =
      IconData(0x101125, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.circle.fill
  static const IconData sf_iphone_gen1_circle_fill =
      IconData(0x101126, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.landscape
  static const IconData sf_iphone_gen1_landscape =
      IconData(0x100D0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right
  static const IconData sf_iphone_gen1_radiowaves_left_and_right =
      IconData(0x100846, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen1_radiowaves_left_and_right_circle =
      IconData(0x10115A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen1_radiowaves_left_and_right_circle_fill =
      IconData(0x10115B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.slash
  static const IconData sf_iphone_gen1_slash =
      IconData(0x100A34, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.slash.circle
  static const IconData sf_iphone_gen1_slash_circle =
      IconData(0x101127, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen1.slash.circle.fill
  static const IconData sf_iphone_gen1_slash_circle_fill =
      IconData(0x101128, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2
  static const IconData sf_iphone_gen2 =
      IconData(0x1017DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.badge.play
  static const IconData sf_iphone_gen2_badge_play =
      IconData(0x1017E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.circle
  static const IconData sf_iphone_gen2_circle =
      IconData(0x1017DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.circle.fill
  static const IconData sf_iphone_gen2_circle_fill =
      IconData(0x1017DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.landscape
  static const IconData sf_iphone_gen2_landscape =
      IconData(0x1017DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right
  static const IconData sf_iphone_gen2_radiowaves_left_and_right =
      IconData(0x1017E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen2_radiowaves_left_and_right_circle =
      IconData(0x1017E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen2_radiowaves_left_and_right_circle_fill =
      IconData(0x1017E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.slash
  static const IconData sf_iphone_gen2_slash =
      IconData(0x1017E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.slash.circle
  static const IconData sf_iphone_gen2_slash_circle =
      IconData(0x1017E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen2.slash.circle.fill
  static const IconData sf_iphone_gen2_slash_circle_fill =
      IconData(0x1017E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3
  static const IconData sf_iphone_gen3 =
      IconData(0x1012AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.badge.play
  static const IconData sf_iphone_gen3_badge_play =
      IconData(0x1012B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.circle
  static const IconData sf_iphone_gen3_circle =
      IconData(0x1012AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.circle.fill
  static const IconData sf_iphone_gen3_circle_fill =
      IconData(0x1012B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.landscape
  static const IconData sf_iphone_gen3_landscape =
      IconData(0x1012B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right
  static const IconData sf_iphone_gen3_radiowaves_left_and_right =
      IconData(0x1012B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right.circle
  static const IconData sf_iphone_gen3_radiowaves_left_and_right_circle =
      IconData(0x1012B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_gen3_radiowaves_left_and_right_circle_fill =
      IconData(0x1012B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.slash
  static const IconData sf_iphone_gen3_slash =
      IconData(0x1012B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.slash.circle
  static const IconData sf_iphone_gen3_slash_circle =
      IconData(0x1012B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.gen3.slash.circle.fill
  static const IconData sf_iphone_gen3_slash_circle_fill =
      IconData(0x1012B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.landscape
  static const IconData sf_iphone_landscape =
      IconData(0x100D0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.radiowaves.left.and.right
  static const IconData sf_iphone_radiowaves_left_and_right =
      IconData(0x100847, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.radiowaves.left.and.right.circle
  static const IconData sf_iphone_radiowaves_left_and_right_circle =
      IconData(0x10115C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.radiowaves.left.and.right.circle.fill
  static const IconData sf_iphone_radiowaves_left_and_right_circle_fill =
      IconData(0x10115D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.rear.camera
  static const IconData sf_iphone_rear_camera =
      IconData(0x100F96, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.sizes
  static const IconData sf_iphone_sizes =
      IconData(0x1018F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.slash
  static const IconData sf_iphone_slash =
      IconData(0x100A35, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.slash.circle
  static const IconData sf_iphone_slash_circle =
      IconData(0x10112B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.slash.circle.fill
  static const IconData sf_iphone_slash_circle_fill =
      IconData(0x10112C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.smartbatterycase.gen1
  static const IconData sf_iphone_smartbatterycase_gen1 =
      IconData(0x100E90, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol iphone.smartbatterycase.gen2
  static const IconData sf_iphone_smartbatterycase_gen2 =
      IconData(0x100E8F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipod
  static const IconData sf_ipod =
      IconData(0x1008BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodshuffle.gen1
  static const IconData sf_ipodshuffle_gen1 =
      IconData(0x100AE8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodshuffle.gen2
  static const IconData sf_ipodshuffle_gen2 =
      IconData(0x100AE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodshuffle.gen3
  static const IconData sf_ipodshuffle_gen3 =
      IconData(0x100AEA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodshuffle.gen4
  static const IconData sf_ipodshuffle_gen4 =
      IconData(0x100AEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodtouch
  static const IconData sf_ipodtouch =
      IconData(0x100AE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodtouch.landscape
  static const IconData sf_ipodtouch_landscape =
      IconData(0x100D10, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ipodtouch.slash
  static const IconData sf_ipodtouch_slash =
      IconData(0x1010B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol italic
  static const IconData sf_italic =
      IconData(0x100154, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ivfluid.bag
  static const IconData sf_ivfluid_bag =
      IconData(0x100F0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ivfluid.bag.fill
  static const IconData sf_ivfluid_bag_fill =
      IconData(0x100F0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.circle
  static const IconData sf_j_circle =
      IconData(0x100016, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.circle.fill
  static const IconData sf_j_circle_fill =
      IconData(0x100017, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.square
  static const IconData sf_j_square =
      IconData(0x1000A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.square.fill
  static const IconData sf_j_square_fill =
      IconData(0x1000A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.square.on.square
  static const IconData sf_j_square_on_square =
      IconData(0x100B5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol j.square.on.square.fill
  static const IconData sf_j_square_on_square_fill =
      IconData(0x100B5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol k
  static const IconData sf_k =
      IconData(0x10094B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol k.circle
  static const IconData sf_k_circle =
      IconData(0x100018, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol k.circle.fill
  static const IconData sf_k_circle_fill =
      IconData(0x100019, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol k.square
  static const IconData sf_k_square =
      IconData(0x1000A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol k.square.fill
  static const IconData sf_k_square_fill =
      IconData(0x1000A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kashida.arabic
  static const IconData sf_kashida_arabic =
      IconData(0x1020DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key
  static const IconData sf_key =
      IconData(0x1007D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.fill
  static const IconData sf_key_fill =
      IconData(0x1007D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.horizontal
  static const IconData sf_key_horizontal =
      IconData(0x101831, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.horizontal.fill
  static const IconData sf_key_horizontal_fill =
      IconData(0x101832, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.icloud
  static const IconData sf_key_icloud =
      IconData(0x100895, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.icloud.fill
  static const IconData sf_key_icloud_fill =
      IconData(0x100896, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.radiowaves.forward
  static const IconData sf_key_radiowaves_forward =
      IconData(0x10182F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.radiowaves.forward.fill
  static const IconData sf_key_radiowaves_forward_fill =
      IconData(0x101830, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.radiowaves.forward.slash
  static const IconData sf_key_radiowaves_forward_slash =
      IconData(0x1021EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.radiowaves.forward.slash.fill
  static const IconData sf_key_radiowaves_forward_slash_fill =
      IconData(0x1021F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.slash
  static const IconData sf_key_slash =
      IconData(0x102166, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.slash.fill
  static const IconData sf_key_slash_fill =
      IconData(0x102167, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol key.viewfinder
  static const IconData sf_key_viewfinder =
      IconData(0x101395, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard
  static const IconData sf_keyboard =
      IconData(0x1001F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.badge.ellipsis
  static const IconData sf_keyboard_badge_ellipsis =
      IconData(0x100AD2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.badge.ellipsis.fill
  static const IconData sf_keyboard_badge_ellipsis_fill =
      IconData(0x10168F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.badge.eye
  static const IconData sf_keyboard_badge_eye =
      IconData(0x101515, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.badge.eye.fill
  static const IconData sf_keyboard_badge_eye_fill =
      IconData(0x101690, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.chevron.compact.down
  static const IconData sf_keyboard_chevron_compact_down =
      IconData(0x1004D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.chevron.compact.down.fill
  static const IconData sf_keyboard_chevron_compact_down_fill =
      IconData(0x101691, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.chevron.compact.left
  static const IconData sf_keyboard_chevron_compact_left =
      IconData(0x1008ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.chevron.compact.left.fill
  static const IconData sf_keyboard_chevron_compact_left_fill =
      IconData(0x101692, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.fill
  static const IconData sf_keyboard_fill =
      IconData(0x100E91, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.macwindow
  static const IconData sf_keyboard_macwindow =
      IconData(0x10092F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.onehanded.left
  static const IconData sf_keyboard_onehanded_left =
      IconData(0x1007B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.onehanded.left.fill
  static const IconData sf_keyboard_onehanded_left_fill =
      IconData(0x101693, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.onehanded.right
  static const IconData sf_keyboard_onehanded_right =
      IconData(0x1007BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol keyboard.onehanded.right.fill
  static const IconData sf_keyboard_onehanded_right_fill =
      IconData(0x101694, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign
  static const IconData sf_kipsign =
      IconData(0x10144D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign.arrow.circlepath
  static const IconData sf_kipsign_arrow_circlepath =
      IconData(0x102220, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign.circle
  static const IconData sf_kipsign_circle =
      IconData(0x1005B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign.circle.fill
  static const IconData sf_kipsign_circle_fill =
      IconData(0x1005B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign.square
  static const IconData sf_kipsign_square =
      IconData(0x1005F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kipsign.square.fill
  static const IconData sf_kipsign_square_fill =
      IconData(0x1005F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kph
  static const IconData sf_kph =
      IconData(0x1018BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kph.circle
  static const IconData sf_kph_circle =
      IconData(0x1018BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol kph.circle.fill
  static const IconData sf_kph_circle_fill =
      IconData(0x1018BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.button.roundedbottom.horizontal
  static const IconData sf_l_button_roundedbottom_horizontal =
      IconData(0x100A07, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.button.roundedbottom.horizontal.fill
  static const IconData sf_l_button_roundedbottom_horizontal_fill =
      IconData(0x100A08, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.circle
  static const IconData sf_l_circle =
      IconData(0x10001A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.circle.fill
  static const IconData sf_l_circle_fill =
      IconData(0x10001B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick
  static const IconData sf_l_joystick =
      IconData(0x100992, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.fill
  static const IconData sf_l_joystick_fill =
      IconData(0x100AC1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.press.down
  static const IconData sf_l_joystick_press_down =
      IconData(0x100994, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.press.down.fill
  static const IconData sf_l_joystick_press_down_fill =
      IconData(0x100AC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.down
  static const IconData sf_l_joystick_tilt_down =
      IconData(0x100FDC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.down.fill
  static const IconData sf_l_joystick_tilt_down_fill =
      IconData(0x100FDD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.left
  static const IconData sf_l_joystick_tilt_left =
      IconData(0x100FD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.left.fill
  static const IconData sf_l_joystick_tilt_left_fill =
      IconData(0x100FD7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.right
  static const IconData sf_l_joystick_tilt_right =
      IconData(0x100FD8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.right.fill
  static const IconData sf_l_joystick_tilt_right_fill =
      IconData(0x100FD9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.up
  static const IconData sf_l_joystick_tilt_up =
      IconData(0x100FDA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.joystick.tilt.up.fill
  static const IconData sf_l_joystick_tilt_up_fill =
      IconData(0x100FDB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.square
  static const IconData sf_l_square =
      IconData(0x1000AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l.square.fill
  static const IconData sf_l_square_fill =
      IconData(0x1000AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l1.button.roundedbottom.horizontal
  static const IconData sf_l1_button_roundedbottom_horizontal =
      IconData(0x100A09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l1.button.roundedbottom.horizontal.fill
  static const IconData sf_l1_button_roundedbottom_horizontal_fill =
      IconData(0x100A0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l1.circle
  static const IconData sf_l1_circle =
      IconData(0x101E81, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l1.circle.fill
  static const IconData sf_l1_circle_fill =
      IconData(0x101E82, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.button.angledtop.vertical.left
  static const IconData sf_l2_button_angledtop_vertical_left =
      IconData(0x101DF3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.button.angledtop.vertical.left.fill
  static const IconData sf_l2_button_angledtop_vertical_left_fill =
      IconData(0x101DF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.button.roundedtop.horizontal
  static const IconData sf_l2_button_roundedtop_horizontal =
      IconData(0x100A0B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.button.roundedtop.horizontal.fill
  static const IconData sf_l2_button_roundedtop_horizontal_fill =
      IconData(0x100A0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.circle
  static const IconData sf_l2_circle =
      IconData(0x101E85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l2.circle.fill
  static const IconData sf_l2_circle_fill =
      IconData(0x101E86, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l3.button.angledbottom.horizontal.left
  static const IconData sf_l3_button_angledbottom_horizontal_left =
      IconData(0x101E07, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l3.button.angledbottom.horizontal.left.fill
  static const IconData sf_l3_button_angledbottom_horizontal_left_fill =
      IconData(0x101E08, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l4.button.horizontal
  static const IconData sf_l4_button_horizontal =
      IconData(0x101E20, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol l4.button.horizontal.fill
  static const IconData sf_l4_button_horizontal_fill =
      IconData(0x101E21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ladybug
  static const IconData sf_ladybug =
      IconData(0x100BD4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ladybug.circle
  static const IconData sf_ladybug_circle =
      IconData(0x101F1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ladybug.circle.fill
  static const IconData sf_ladybug_circle_fill =
      IconData(0x101F1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ladybug.fill
  static const IconData sf_ladybug_fill =
      IconData(0x100BD5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.ceiling
  static const IconData sf_lamp_ceiling =
      IconData(0x101321, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.ceiling.fill
  static const IconData sf_lamp_ceiling_fill =
      IconData(0x1013BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.ceiling.inverse
  static const IconData sf_lamp_ceiling_inverse =
      IconData(0x1014A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.desk
  static const IconData sf_lamp_desk =
      IconData(0x1013B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.desk.fill
  static const IconData sf_lamp_desk_fill =
      IconData(0x10131E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.floor
  static const IconData sf_lamp_floor =
      IconData(0x1013BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.floor.fill
  static const IconData sf_lamp_floor_fill =
      IconData(0x101320, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.table
  static const IconData sf_lamp_table =
      IconData(0x1013C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lamp.table.fill
  static const IconData sf_lamp_table_fill =
      IconData(0x10131F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lane
  static const IconData sf_lane =
      IconData(0x1017CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lanyardcard
  static const IconData sf_lanyardcard =
      IconData(0x100C35, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lanyardcard.fill
  static const IconData sf_lanyardcard_fill =
      IconData(0x100C36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laptopcomputer
  static const IconData sf_laptopcomputer =
      IconData(0x1007DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laptopcomputer.and.arrow.down
  static const IconData sf_laptopcomputer_and_arrow_down =
      IconData(0x100DBF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laptopcomputer.slash
  static const IconData sf_laptopcomputer_slash =
      IconData(0x1012AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laptopcomputer.trianglebadge.exclamationmark
  static const IconData sf_laptopcomputer_trianglebadge_exclamationmark =
      IconData(0x1010C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign
  static const IconData sf_larisign =
      IconData(0x10145D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign.arrow.circlepath
  static const IconData sf_larisign_arrow_circlepath =
      IconData(0x102230, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign.circle
  static const IconData sf_larisign_circle =
      IconData(0x1005D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign.circle.fill
  static const IconData sf_larisign_circle_fill =
      IconData(0x1005D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign.square
  static const IconData sf_larisign_square =
      IconData(0x100613, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol larisign.square.fill
  static const IconData sf_larisign_square_fill =
      IconData(0x100614, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laser.burst
  static const IconData sf_laser_burst =
      IconData(0x10205D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lasso
  static const IconData sf_lasso =
      IconData(0x1004E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lasso.badge.sparkles
  static const IconData sf_lasso_badge_sparkles =
      IconData(0x1008F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol latch.2.case
  static const IconData sf_latch_2_case =
      IconData(0x10089F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol latch.2.case.fill
  static const IconData sf_latch_2_case_fill =
      IconData(0x1008A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laurel.leading
  static const IconData sf_laurel_leading =
      IconData(0x101298, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol laurel.trailing
  static const IconData sf_laurel_trailing =
      IconData(0x101299, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lb.button.roundedbottom.horizontal
  static const IconData sf_lb_button_roundedbottom_horizontal =
      IconData(0x100A13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lb.button.roundedbottom.horizontal.fill
  static const IconData sf_lb_button_roundedbottom_horizontal_fill =
      IconData(0x100A14, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lb.circle
  static const IconData sf_lb_circle =
      IconData(0x101E83, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lb.circle.fill
  static const IconData sf_lb_circle_fill =
      IconData(0x101E84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol leaf
  static const IconData sf_leaf =
      IconData(0x100972, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol leaf.arrow.triangle.circlepath
  static const IconData sf_leaf_arrow_triangle_circlepath =
      IconData(0x10065C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol leaf.circle
  static const IconData sf_leaf_circle =
      IconData(0x1010AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol leaf.circle.fill
  static const IconData sf_leaf_circle_fill =
      IconData(0x1010AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol leaf.fill
  static const IconData sf_leaf_fill =
      IconData(0x100973, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol left
  static const IconData sf_left =
      IconData(0x1018E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol left.circle
  static const IconData sf_left_circle =
      IconData(0x1018E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol left.circle.fill
  static const IconData sf_left_circle_fill =
      IconData(0x1018E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lessthan
  static const IconData sf_lessthan =
      IconData(0x100181, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lessthan.circle
  static const IconData sf_lessthan_circle =
      IconData(0x100058, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lessthan.circle.fill
  static const IconData sf_lessthan_circle_fill =
      IconData(0x100059, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lessthan.square
  static const IconData sf_lessthan_square =
      IconData(0x1000E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lessthan.square.fill
  static const IconData sf_lessthan_square_fill =
      IconData(0x1000E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol level
  static const IconData sf_level =
      IconData(0x1007C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol level.fill
  static const IconData sf_level_fill =
      IconData(0x1007C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol licenseplate
  static const IconData sf_licenseplate =
      IconData(0x101EAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol licenseplate.fill
  static const IconData sf_licenseplate_fill =
      IconData(0x101EAB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lifepreserver
  static const IconData sf_lifepreserver =
      IconData(0x100866, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lifepreserver.fill
  static const IconData sf_lifepreserver_fill =
      IconData(0x100867, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.beacon.max
  static const IconData sf_light_beacon_max =
      IconData(0x1014B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.beacon.max.fill
  static const IconData sf_light_beacon_max_fill =
      IconData(0x1014B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.beacon.min
  static const IconData sf_light_beacon_min =
      IconData(0x10172E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.beacon.min.fill
  static const IconData sf_light_beacon_min_fill =
      IconData(0x10172F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.cylindrical.ceiling
  static const IconData sf_light_cylindrical_ceiling =
      IconData(0x1013BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.cylindrical.ceiling.fill
  static const IconData sf_light_cylindrical_ceiling_fill =
      IconData(0x101324, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.cylindrical.ceiling.inverse
  static const IconData sf_light_cylindrical_ceiling_inverse =
      IconData(0x1014AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.max
  static const IconData sf_light_max =
      IconData(0x1001EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.min
  static const IconData sf_light_min =
      IconData(0x1001ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.overhead.left
  static const IconData sf_light_overhead_left =
      IconData(0x1012CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.overhead.left.fill
  static const IconData sf_light_overhead_left_fill =
      IconData(0x1018C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.overhead.right
  static const IconData sf_light_overhead_right =
      IconData(0x1012CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.overhead.right.fill
  static const IconData sf_light_overhead_right_fill =
      IconData(0x1018C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.panel
  static const IconData sf_light_panel =
      IconData(0x1013BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.panel.fill
  static const IconData sf_light_panel_fill =
      IconData(0x101323, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed
  static const IconData sf_light_recessed =
      IconData(0x1013BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed.3
  static const IconData sf_light_recessed_3 =
      IconData(0x1013D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed.3.fill
  static const IconData sf_light_recessed_3_fill =
      IconData(0x1013D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed.3.inverse
  static const IconData sf_light_recessed_3_inverse =
      IconData(0x1014AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed.fill
  static const IconData sf_light_recessed_fill =
      IconData(0x101322, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.recessed.inverse
  static const IconData sf_light_recessed_inverse =
      IconData(0x1014A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.ribbon
  static const IconData sf_light_ribbon =
      IconData(0x10149C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.ribbon.fill
  static const IconData sf_light_ribbon_fill =
      IconData(0x10149D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.strip.2
  static const IconData sf_light_strip_2 =
      IconData(0x101325, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol light.strip.2.fill
  static const IconData sf_light_strip_2_fill =
      IconData(0x1013D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb
  static const IconData sf_lightbulb =
      IconData(0x1006ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.2
  static const IconData sf_lightbulb_2 =
      IconData(0x1014FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.2.fill
  static const IconData sf_lightbulb_2_fill =
      IconData(0x1014FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.circle
  static const IconData sf_lightbulb_circle =
      IconData(0x1011D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.circle.fill
  static const IconData sf_lightbulb_circle_fill =
      IconData(0x1011D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.fill
  static const IconData sf_lightbulb_fill =
      IconData(0x1006EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.led
  static const IconData sf_lightbulb_led =
      IconData(0x1013A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.led.fill
  static const IconData sf_lightbulb_led_fill =
      IconData(0x10131D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.led.wide
  static const IconData sf_lightbulb_led_wide =
      IconData(0x1013C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.led.wide.fill
  static const IconData sf_lightbulb_led_wide_fill =
      IconData(0x1013C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.max
  static const IconData sf_lightbulb_max =
      IconData(0x101DD8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.max.fill
  static const IconData sf_lightbulb_max_fill =
      IconData(0x101DD9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.min
  static const IconData sf_lightbulb_min =
      IconData(0x101DD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.min.badge.exclamationmark
  static const IconData sf_lightbulb_min_badge_exclamationmark =
      IconData(0x101E44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.min.badge.exclamationmark.fill
  static const IconData sf_lightbulb_min_badge_exclamationmark_fill =
      IconData(0x101E45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.min.fill
  static const IconData sf_lightbulb_min_fill =
      IconData(0x101DD7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.slash
  static const IconData sf_lightbulb_slash =
      IconData(0x100783, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightbulb.slash.fill
  static const IconData sf_lightbulb_slash_fill =
      IconData(0x100784, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightrail
  static const IconData sf_lightrail =
      IconData(0x100DFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightrail.fill
  static const IconData sf_lightrail_fill =
      IconData(0x100DFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightspectrum.horizontal
  static const IconData sf_lightspectrum_horizontal =
      IconData(0x101E69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.off
  static const IconData sf_lightswitch_off =
      IconData(0x1013EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.off.fill
  static const IconData sf_lightswitch_off_fill =
      IconData(0x1013FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.off.square
  static const IconData sf_lightswitch_off_square =
      IconData(0x101392, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.off.square.fill
  static const IconData sf_lightswitch_off_square_fill =
      IconData(0x101328, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.on
  static const IconData sf_lightswitch_on =
      IconData(0x1013EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.on.fill
  static const IconData sf_lightswitch_on_fill =
      IconData(0x1013FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.on.square
  static const IconData sf_lightswitch_on_square =
      IconData(0x101391, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lightswitch.on.square.fill
  static const IconData sf_lightswitch_on_square_fill =
      IconData(0x101327, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.2.horizontal.decrease.circle
  static const IconData sf_line_2_horizontal_decrease_circle =
      IconData(0x100635, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.2.horizontal.decrease.circle.fill
  static const IconData sf_line_2_horizontal_decrease_circle_fill =
      IconData(0x100636, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.crossed.swirl.circle
  static const IconData sf_line_3_crossed_swirl_circle =
      IconData(0x100ACE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.crossed.swirl.circle.fill
  static const IconData sf_line_3_crossed_swirl_circle_fill =
      IconData(0x100ACF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal
  static const IconData sf_line_3_horizontal =
      IconData(0x100307, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.button.angledtop.vertical.right
  static const IconData sf_line_3_horizontal_button_angledtop_vertical_right =
      IconData(0x101DF9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.button.angledtop.vertical.right.fill
  static const IconData
      sf_line_3_horizontal_button_angledtop_vertical_right_fill =
      IconData(0x101DFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.circle
  static const IconData sf_line_3_horizontal_circle =
      IconData(0x1009F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.circle.fill
  static const IconData sf_line_3_horizontal_circle_fill =
      IconData(0x1009F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.decrease
  static const IconData sf_line_3_horizontal_decrease =
      IconData(0x100713, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.decrease.circle
  static const IconData sf_line_3_horizontal_decrease_circle =
      IconData(0x100308, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.3.horizontal.decrease.circle.fill
  static const IconData sf_line_3_horizontal_decrease_circle_fill =
      IconData(0x100309, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.diagonal
  static const IconData sf_line_diagonal =
      IconData(0x100AF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.diagonal.arrow
  static const IconData sf_line_diagonal_arrow =
      IconData(0x100AF1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol line.horizontal.star.fill.line.horizontal
  static const IconData sf_line_horizontal_star_fill_line_horizontal =
      IconData(0x10046E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lines.measurement.horizontal
  static const IconData sf_lines_measurement_horizontal =
      IconData(0x100C2C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lines.measurement.vertical
  static const IconData sf_lines_measurement_vertical =
      IconData(0x102019, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lineweight
  static const IconData sf_lineweight =
      IconData(0x100268, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link
  static const IconData sf_link =
      IconData(0x100263, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link.badge.plus
  static const IconData sf_link_badge_plus =
      IconData(0x100955, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link.circle
  static const IconData sf_link_circle =
      IconData(0x1004A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link.circle.fill
  static const IconData sf_link_circle_fill =
      IconData(0x1004A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link.icloud
  static const IconData sf_link_icloud =
      IconData(0x10049E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol link.icloud.fill
  static const IconData sf_link_icloud_fill =
      IconData(0x10049F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign
  static const IconData sf_lirasign =
      IconData(0x10144F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign.arrow.circlepath
  static const IconData sf_lirasign_arrow_circlepath =
      IconData(0x102222, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign.circle
  static const IconData sf_lirasign_circle =
      IconData(0x1005B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign.circle.fill
  static const IconData sf_lirasign_circle_fill =
      IconData(0x1005B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign.square
  static const IconData sf_lirasign_square =
      IconData(0x1005F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lirasign.square.fill
  static const IconData sf_lirasign_square_fill =
      IconData(0x1005F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.and.film
  static const IconData sf_list_and_film =
      IconData(0x100B09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet
  static const IconData sf_list_bullet =
      IconData(0x1002F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.below.rectangle
  static const IconData sf_list_bullet_below_rectangle =
      IconData(0x1002F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.circle
  static const IconData sf_list_bullet_circle =
      IconData(0x100EE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.circle.fill
  static const IconData sf_list_bullet_circle_fill =
      IconData(0x100EE8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.clipboard
  static const IconData sf_list_bullet_clipboard =
      IconData(0x100F0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.clipboard.fill
  static const IconData sf_list_bullet_clipboard_fill =
      IconData(0x100F10, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.indent
  static const IconData sf_list_bullet_indent =
      IconData(0x1002F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.rectangle
  static const IconData sf_list_bullet_rectangle =
      IconData(0x100A73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.rectangle.fill
  static const IconData sf_list_bullet_rectangle_fill =
      IconData(0x100EBF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.rectangle.portrait
  static const IconData sf_list_bullet_rectangle_portrait =
      IconData(0x100E72, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.bullet.rectangle.portrait.fill
  static const IconData sf_list_bullet_rectangle_portrait_fill =
      IconData(0x100E73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.clipboard
  static const IconData sf_list_clipboard =
      IconData(0x10155C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.clipboard.fill
  static const IconData sf_list_clipboard_fill =
      IconData(0x10155D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.dash
  static const IconData sf_list_dash =
      IconData(0x1002F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.dash.header.rectangle
  static const IconData sf_list_dash_header_rectangle =
      IconData(0x100E46, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.number
  static const IconData sf_list_number =
      IconData(0x1002F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.star
  static const IconData sf_list_star =
      IconData(0x1008E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol list.triangle
  static const IconData sf_list_triangle =
      IconData(0x1008BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol livephoto
  static const IconData sf_livephoto =
      IconData(0x100421, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol livephoto.badge.automatic
  static const IconData sf_livephoto_badge_automatic =
      IconData(0x100654, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol livephoto.play
  static const IconData sf_livephoto_play =
      IconData(0x100423, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol livephoto.slash
  static const IconData sf_livephoto_slash =
      IconData(0x100422, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lizard
  static const IconData sf_lizard =
      IconData(0x1015DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lizard.circle
  static const IconData sf_lizard_circle =
      IconData(0x101F35, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lizard.circle.fill
  static const IconData sf_lizard_circle_fill =
      IconData(0x101F36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lizard.fill
  static const IconData sf_lizard_fill =
      IconData(0x1015DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lm.button.horizontal
  static const IconData sf_lm_button_horizontal =
      IconData(0x101E22, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lm.button.horizontal.fill
  static const IconData sf_lm_button_horizontal_fill =
      IconData(0x101E23, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location
  static const IconData sf_location =
      IconData(0x1002D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.circle
  static const IconData sf_location_circle =
      IconData(0x1002D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.circle.fill
  static const IconData sf_location_circle_fill =
      IconData(0x1002D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.fill
  static const IconData sf_location_fill =
      IconData(0x1002D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.fill.viewfinder
  static const IconData sf_location_fill_viewfinder =
      IconData(0x100B84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.magnifyingglass
  static const IconData sf_location_magnifyingglass =
      IconData(0x10121F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north
  static const IconData sf_location_north =
      IconData(0x1002D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north.circle
  static const IconData sf_location_north_circle =
      IconData(0x100DCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north.circle.fill
  static const IconData sf_location_north_circle_fill =
      IconData(0x100DCD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north.fill
  static const IconData sf_location_north_fill =
      IconData(0x1002D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north.line
  static const IconData sf_location_north_line =
      IconData(0x1002D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.north.line.fill
  static const IconData sf_location_north_line_fill =
      IconData(0x1002D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.slash
  static const IconData sf_location_slash =
      IconData(0x10062C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.slash.circle
  static const IconData sf_location_slash_circle =
      IconData(0x101647, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.slash.circle.fill
  static const IconData sf_location_slash_circle_fill =
      IconData(0x101648, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.slash.fill
  static const IconData sf_location_slash_fill =
      IconData(0x10062D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.square
  static const IconData sf_location_square =
      IconData(0x100F3B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.square.fill
  static const IconData sf_location_square_fill =
      IconData(0x100F3C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol location.viewfinder
  static const IconData sf_location_viewfinder =
      IconData(0x100B83, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock
  static const IconData sf_lock =
      IconData(0x1003A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.app.dashed
  static const IconData sf_lock_app_dashed =
      IconData(0x101C0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.applewatch
  static const IconData sf_lock_applewatch =
      IconData(0x100D45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.badge.clock
  static const IconData sf_lock_badge_clock =
      IconData(0x102189, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.badge.clock.fill
  static const IconData sf_lock_badge_clock_fill =
      IconData(0x10218A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.circle
  static const IconData sf_lock_circle =
      IconData(0x1004B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.circle.dotted
  static const IconData sf_lock_circle_dotted =
      IconData(0x10211C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.circle.fill
  static const IconData sf_lock_circle_fill =
      IconData(0x1004B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.desktopcomputer
  static const IconData sf_lock_desktopcomputer =
      IconData(0x100F12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.display
  static const IconData sf_lock_display =
      IconData(0x100F11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.doc
  static const IconData sf_lock_doc =
      IconData(0x10088D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.doc.fill
  static const IconData sf_lock_doc_fill =
      IconData(0x10088E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.fill
  static const IconData sf_lock_fill =
      IconData(0x1003A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.icloud
  static const IconData sf_lock_icloud =
      IconData(0x100675, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.icloud.fill
  static const IconData sf_lock_icloud_fill =
      IconData(0x100676, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.ipad
  static const IconData sf_lock_ipad =
      IconData(0x100F15, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.iphone
  static const IconData sf_lock_iphone =
      IconData(0x100F14, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.laptopcomputer
  static const IconData sf_lock_laptopcomputer =
      IconData(0x100F13, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open
  static const IconData sf_lock_open =
      IconData(0x1003A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.applewatch
  static const IconData sf_lock_open_applewatch =
      IconData(0x100F21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.desktopcomputer
  static const IconData sf_lock_open_desktopcomputer =
      IconData(0x100F1D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.display
  static const IconData sf_lock_open_display =
      IconData(0x100F1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.fill
  static const IconData sf_lock_open_fill =
      IconData(0x1003A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.ipad
  static const IconData sf_lock_open_ipad =
      IconData(0x100F20, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.iphone
  static const IconData sf_lock_open_iphone =
      IconData(0x100F1F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.laptopcomputer
  static const IconData sf_lock_open_laptopcomputer =
      IconData(0x100F1E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.rotation
  static const IconData sf_lock_open_rotation =
      IconData(0x10045A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.trianglebadge.exclamationmark
  static const IconData sf_lock_open_trianglebadge_exclamationmark =
      IconData(0x101717, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.open.trianglebadge.exclamationmark.fill
  static const IconData sf_lock_open_trianglebadge_exclamationmark_fill =
      IconData(0x101718, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle
  static const IconData sf_lock_rectangle =
      IconData(0x100888, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle.fill
  static const IconData sf_lock_rectangle_fill =
      IconData(0x100889, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle.on.rectangle
  static const IconData sf_lock_rectangle_on_rectangle =
      IconData(0x1008B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle.on.rectangle.fill
  static const IconData sf_lock_rectangle_on_rectangle_fill =
      IconData(0x1008B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle.stack
  static const IconData sf_lock_rectangle_stack =
      IconData(0x1008B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rectangle.stack.fill
  static const IconData sf_lock_rectangle_stack_fill =
      IconData(0x1008B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.rotation
  static const IconData sf_lock_rotation =
      IconData(0x100459, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.shield
  static const IconData sf_lock_shield =
      IconData(0x100799, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.shield.fill
  static const IconData sf_lock_shield_fill =
      IconData(0x10079A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.slash
  static const IconData sf_lock_slash =
      IconData(0x1003A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.slash.fill
  static const IconData sf_lock_slash_fill =
      IconData(0x1003A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.square
  static const IconData sf_lock_square =
      IconData(0x1008B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.square.fill
  static const IconData sf_lock_square_fill =
      IconData(0x1008B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.square.stack
  static const IconData sf_lock_square_stack =
      IconData(0x10085C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.square.stack.fill
  static const IconData sf_lock_square_stack_fill =
      IconData(0x10085D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.trianglebadge.exclamationmark
  static const IconData sf_lock_trianglebadge_exclamationmark =
      IconData(0x10164D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lock.trianglebadge.exclamationmark.fill
  static const IconData sf_lock_trianglebadge_exclamationmark_fill =
      IconData(0x10164E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol loupe
  static const IconData sf_loupe =
      IconData(0x10090E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lsb.button.angledbottom.horizontal.left
  static const IconData sf_lsb_button_angledbottom_horizontal_left =
      IconData(0x101E0B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lsb.button.angledbottom.horizontal.left.fill
  static const IconData sf_lsb_button_angledbottom_horizontal_left_fill =
      IconData(0x101E0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lt.button.roundedtop.horizontal
  static const IconData sf_lt_button_roundedtop_horizontal =
      IconData(0x100A17, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lt.button.roundedtop.horizontal.fill
  static const IconData sf_lt_button_roundedtop_horizontal_fill =
      IconData(0x100A18, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lt.circle
  static const IconData sf_lt_circle =
      IconData(0x101E87, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lt.circle.fill
  static const IconData sf_lt_circle_fill =
      IconData(0x101E88, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lungs
  static const IconData sf_lungs =
      IconData(0x10099A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol lungs.fill
  static const IconData sf_lungs_fill =
      IconData(0x10099B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m.circle
  static const IconData sf_m_circle =
      IconData(0x10001C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m.circle.fill
  static const IconData sf_m_circle_fill =
      IconData(0x10001D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m.square
  static const IconData sf_m_square =
      IconData(0x1000AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m.square.fill
  static const IconData sf_m_square_fill =
      IconData(0x1000AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m1.button.horizontal
  static const IconData sf_m1_button_horizontal =
      IconData(0x101E24, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m1.button.horizontal.fill
  static const IconData sf_m1_button_horizontal_fill =
      IconData(0x101E25, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m2.button.horizontal
  static const IconData sf_m2_button_horizontal =
      IconData(0x101E26, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m2.button.horizontal.fill
  static const IconData sf_m2_button_horizontal_fill =
      IconData(0x101E27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m3.button.horizontal
  static const IconData sf_m3_button_horizontal =
      IconData(0x101E28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m3.button.horizontal.fill
  static const IconData sf_m3_button_horizontal_fill =
      IconData(0x101E29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m4.button.horizontal
  static const IconData sf_m4_button_horizontal =
      IconData(0x101E2A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol m4.button.horizontal.fill
  static const IconData sf_m4_button_horizontal_fill =
      IconData(0x101E2B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook
  static const IconData sf_macbook =
      IconData(0x1017EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook.and.ipad
  static const IconData sf_macbook_and_ipad =
      IconData(0x10161E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook.and.iphone
  static const IconData sf_macbook_and_iphone =
      IconData(0x100B29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook.and.visionpro
  static const IconData sf_macbook_and_visionpro =
      IconData(0x101719, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook.gen1
  static const IconData sf_macbook_gen1 =
      IconData(0x1017EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macbook.gen2
  static const IconData sf_macbook_gen2 =
      IconData(0x101238, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macmini
  static const IconData sf_macmini =
      IconData(0x100AAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macmini.fill
  static const IconData sf_macmini_fill =
      IconData(0x100AB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen1
  static const IconData sf_macpro_gen1 =
      IconData(0x100AB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen1.fill
  static const IconData sf_macpro_gen1_fill =
      IconData(0x100F22, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen2
  static const IconData sf_macpro_gen2 =
      IconData(0x1009B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen2.fill
  static const IconData sf_macpro_gen2_fill =
      IconData(0x1009AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen3
  static const IconData sf_macpro_gen3 =
      IconData(0x100AB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen3.fill
  static const IconData sf_macpro_gen3_fill =
      IconData(0x100F23, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macpro.gen3.server
  static const IconData sf_macpro_gen3_server =
      IconData(0x100A33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macstudio
  static const IconData sf_macstudio =
      IconData(0x1013CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macstudio.fill
  static const IconData sf_macstudio_fill =
      IconData(0x1013CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macwindow
  static const IconData sf_macwindow =
      IconData(0x1003DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macwindow.and.cursorarrow
  static const IconData sf_macwindow_and_cursorarrow =
      IconData(0x101778, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macwindow.badge.plus
  static const IconData sf_macwindow_badge_plus =
      IconData(0x100943, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol macwindow.on.rectangle
  static const IconData sf_macwindow_on_rectangle =
      IconData(0x10088C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magazine
  static const IconData sf_magazine =
      IconData(0x1010BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magazine.fill
  static const IconData sf_magazine_fill =
      IconData(0x1010BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magicmouse
  static const IconData sf_magicmouse =
      IconData(0x100EB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magicmouse.fill
  static const IconData sf_magicmouse_fill =
      IconData(0x100EB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magnifyingglass
  static const IconData sf_magnifyingglass =
      IconData(0x1002AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magnifyingglass.circle
  static const IconData sf_magnifyingglass_circle =
      IconData(0x100492, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magnifyingglass.circle.fill
  static const IconData sf_magnifyingglass_circle_fill =
      IconData(0x100493, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magsafe.batterypack
  static const IconData sf_magsafe_batterypack =
      IconData(0x100E93, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol magsafe.batterypack.fill
  static const IconData sf_magsafe_batterypack_fill =
      IconData(0x100E94, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mail
  static const IconData sf_mail =
      IconData(0x1008EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mail.and.text.magnifyingglass
  static const IconData sf_mail_and_text_magnifyingglass =
      IconData(0x1008BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mail.fill
  static const IconData sf_mail_fill =
      IconData(0x1008EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mail.stack
  static const IconData sf_mail_stack =
      IconData(0x10035D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mail.stack.fill
  static const IconData sf_mail_stack_fill =
      IconData(0x10035E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign
  static const IconData sf_manatsign =
      IconData(0x10145A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign.arrow.circlepath
  static const IconData sf_manatsign_arrow_circlepath =
      IconData(0x10222D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign.circle
  static const IconData sf_manatsign_circle =
      IconData(0x1005CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign.circle.fill
  static const IconData sf_manatsign_circle_fill =
      IconData(0x1005CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign.square
  static const IconData sf_manatsign_square =
      IconData(0x10060D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol manatsign.square.fill
  static const IconData sf_manatsign_square_fill =
      IconData(0x10060E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol map
  static const IconData sf_map =
      IconData(0x10064A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol map.circle
  static const IconData sf_map_circle =
      IconData(0x100EEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol map.circle.fill
  static const IconData sf_map_circle_fill =
      IconData(0x100EEC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol map.fill
  static const IconData sf_map_fill =
      IconData(0x10064B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin
  static const IconData sf_mappin =
      IconData(0x1003AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.and.ellipse
  static const IconData sf_mappin_and_ellipse =
      IconData(0x1003AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.and.ellipse.circle
  static const IconData sf_mappin_and_ellipse_circle =
      IconData(0x101F21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.and.ellipse.circle.fill
  static const IconData sf_mappin_and_ellipse_circle_fill =
      IconData(0x101F22, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.circle
  static const IconData sf_mappin_circle =
      IconData(0x100707, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.circle.fill
  static const IconData sf_mappin_circle_fill =
      IconData(0x100708, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.slash
  static const IconData sf_mappin_slash =
      IconData(0x100649, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.slash.circle
  static const IconData sf_mappin_slash_circle =
      IconData(0x1011EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.slash.circle.fill
  static const IconData sf_mappin_slash_circle_fill =
      IconData(0x1011F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.square
  static const IconData sf_mappin_square =
      IconData(0x100F55, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mappin.square.fill
  static const IconData sf_mappin_square_fill =
      IconData(0x100F56, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol medal
  static const IconData sf_medal =
      IconData(0x1013CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol medal.fill
  static const IconData sf_medal_fill =
      IconData(0x1013CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mediastick
  static const IconData sf_mediastick =
      IconData(0x100EA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol medical.thermometer
  static const IconData sf_medical_thermometer =
      IconData(0x101487, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol medical.thermometer.fill
  static const IconData sf_medical_thermometer_fill =
      IconData(0x101488, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol megaphone
  static const IconData sf_megaphone =
      IconData(0x100B32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol megaphone.fill
  static const IconData sf_megaphone_fill =
      IconData(0x100B33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol memories
  static const IconData sf_memories =
      IconData(0x100456, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol memories.badge.minus
  static const IconData sf_memories_badge_minus =
      IconData(0x100458, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol memories.badge.plus
  static const IconData sf_memories_badge_plus =
      IconData(0x100457, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol memorychip
  static const IconData sf_memorychip =
      IconData(0x100AE6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol memorychip.fill
  static const IconData sf_memorychip_fill =
      IconData(0x1009D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menubar.arrow.down.rectangle
  static const IconData sf_menubar_arrow_down_rectangle =
      IconData(0x100901, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menubar.arrow.up.rectangle
  static const IconData sf_menubar_arrow_up_rectangle =
      IconData(0x100900, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menubar.dock.rectangle
  static const IconData sf_menubar_dock_rectangle =
      IconData(0x1008F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menubar.dock.rectangle.badge.record
  static const IconData sf_menubar_dock_rectangle_badge_record =
      IconData(0x1008D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menubar.rectangle
  static const IconData sf_menubar_rectangle =
      IconData(0x10098D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menucard
  static const IconData sf_menucard =
      IconData(0x100ED2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol menucard.fill
  static const IconData sf_menucard_fill =
      IconData(0x100ED3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message
  static const IconData sf_message =
      IconData(0x100324, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge
  static const IconData sf_message_badge =
      IconData(0x1012EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.circle
  static const IconData sf_message_badge_circle =
      IconData(0x1015D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.circle.fill
  static const IconData sf_message_badge_circle_fill =
      IconData(0x1015D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.fill
  static const IconData sf_message_badge_fill =
      IconData(0x1013CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.filled.fill
  static const IconData sf_message_badge_filled_fill =
      IconData(0x1012ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.waveform
  static const IconData sf_message_badge_waveform =
      IconData(0x100F01, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.badge.waveform.fill
  static const IconData sf_message_badge_waveform_fill =
      IconData(0x100F02, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.circle
  static const IconData sf_message_circle =
      IconData(0x100326, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.circle.fill
  static const IconData sf_message_circle_fill =
      IconData(0x100327, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol message.fill
  static const IconData sf_message_fill =
      IconData(0x100325, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol metronome
  static const IconData sf_metronome =
      IconData(0x10038C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol metronome.fill
  static const IconData sf_metronome_fill =
      IconData(0x100815, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic
  static const IconData sf_mic =
      IconData(0x1002B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.and.signal.meter
  static const IconData sf_mic_and_signal_meter =
      IconData(0x101394, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.and.signal.meter.fill
  static const IconData sf_mic_and_signal_meter_fill =
      IconData(0x101393, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.badge.plus
  static const IconData sf_mic_badge_plus =
      IconData(0x100E81, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.badge.xmark
  static const IconData sf_mic_badge_xmark =
      IconData(0x101643, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.circle
  static const IconData sf_mic_circle =
      IconData(0x1004A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.circle.fill
  static const IconData sf_mic_circle_fill =
      IconData(0x1004AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.fill
  static const IconData sf_mic_fill =
      IconData(0x1002B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.fill.badge.plus
  static const IconData sf_mic_fill_badge_plus =
      IconData(0x100E82, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.fill.badge.xmark
  static const IconData sf_mic_fill_badge_xmark =
      IconData(0x101644, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.slash
  static const IconData sf_mic_slash =
      IconData(0x1002B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.slash.circle
  static const IconData sf_mic_slash_circle =
      IconData(0x100EE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.slash.circle.fill
  static const IconData sf_mic_slash_circle_fill =
      IconData(0x100EEA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.slash.fill
  static const IconData sf_mic_slash_fill =
      IconData(0x1002B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.square
  static const IconData sf_mic_square =
      IconData(0x100F3F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mic.square.fill
  static const IconData sf_mic_square_fill =
      IconData(0x100F40, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microbe
  static const IconData sf_microbe =
      IconData(0x101239, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microbe.circle
  static const IconData sf_microbe_circle =
      IconData(0x1016B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microbe.circle.fill
  static const IconData sf_microbe_circle_fill =
      IconData(0x1016B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microbe.fill
  static const IconData sf_microbe_fill =
      IconData(0x101485, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microwave
  static const IconData sf_microwave =
      IconData(0x101428, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol microwave.fill
  static const IconData sf_microwave_fill =
      IconData(0x101429, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign
  static const IconData sf_millsign =
      IconData(0x101458, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign.arrow.circlepath
  static const IconData sf_millsign_arrow_circlepath =
      IconData(0x10222B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign.circle
  static const IconData sf_millsign_circle =
      IconData(0x1005C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign.circle.fill
  static const IconData sf_millsign_circle_fill =
      IconData(0x1005CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign.square
  static const IconData sf_millsign_square =
      IconData(0x100609, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol millsign.square.fill
  static const IconData sf_millsign_square_fill =
      IconData(0x10060A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus
  static const IconData sf_minus =
      IconData(0x10017D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.circle
  static const IconData sf_minus_circle =
      IconData(0x10004E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.circle.fill
  static const IconData sf_minus_circle_fill =
      IconData(0x10004F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.diamond
  static const IconData sf_minus_diamond =
      IconData(0x100881, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.diamond.fill
  static const IconData sf_minus_diamond_fill =
      IconData(0x100882, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.forwardslash.plus
  static const IconData sf_minus_forwardslash_plus =
      IconData(0x10017B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.magnifyingglass
  static const IconData sf_minus_magnifyingglass =
      IconData(0x1002AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.and.fluid.batteryblock
  static const IconData sf_minus_plus_and_fluid_batteryblock =
      IconData(0x101804, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock
  static const IconData sf_minus_plus_batteryblock =
      IconData(0x100AEC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.exclamationmark
  static const IconData sf_minus_plus_batteryblock_exclamationmark =
      IconData(0x10183F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.exclamationmark.fill
  static const IconData sf_minus_plus_batteryblock_exclamationmark_fill =
      IconData(0x101840, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.fill
  static const IconData sf_minus_plus_batteryblock_fill =
      IconData(0x100AED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.slash
  static const IconData sf_minus_plus_batteryblock_slash =
      IconData(0x101839, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.slash.fill
  static const IconData sf_minus_plus_batteryblock_slash_fill =
      IconData(0x10183A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.stack
  static const IconData sf_minus_plus_batteryblock_stack =
      IconData(0x101841, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.stack.exclamationmark
  static const IconData sf_minus_plus_batteryblock_stack_exclamationmark =
      IconData(0x101843, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.stack.exclamationmark.fill
  static const IconData sf_minus_plus_batteryblock_stack_exclamationmark_fill =
      IconData(0x101844, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.plus.batteryblock.stack.fill
  static const IconData sf_minus_plus_batteryblock_stack_fill =
      IconData(0x101842, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.rectangle
  static const IconData sf_minus_rectangle =
      IconData(0x1003C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.rectangle.fill
  static const IconData sf_minus_rectangle_fill =
      IconData(0x1003CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.rectangle.portrait
  static const IconData sf_minus_rectangle_portrait =
      IconData(0x10086C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.rectangle.portrait.fill
  static const IconData sf_minus_rectangle_portrait_fill =
      IconData(0x10086D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.square
  static const IconData sf_minus_square =
      IconData(0x1000DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol minus.square.fill
  static const IconData sf_minus_square_fill =
      IconData(0x1000DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.left
  static const IconData sf_mirror_side_left =
      IconData(0x101271, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.left.and.arrow.turn.down.right
  static const IconData sf_mirror_side_left_and_arrow_turn_down_right =
      IconData(0x101275, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.left.and.heat.waves
  static const IconData sf_mirror_side_left_and_heat_waves =
      IconData(0x101273, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.right
  static const IconData sf_mirror_side_right =
      IconData(0x101272, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.right.and.arrow.turn.down.left
  static const IconData sf_mirror_side_right_and_arrow_turn_down_left =
      IconData(0x101276, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mirror.side.right.and.heat.waves
  static const IconData sf_mirror_side_right_and_heat_waves =
      IconData(0x101274, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon
  static const IconData sf_moon =
      IconData(0x1001B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.circle
  static const IconData sf_moon_circle =
      IconData(0x1001BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.circle.fill
  static const IconData sf_moon_circle_fill =
      IconData(0x1001BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.dust
  static const IconData sf_moon_dust =
      IconData(0x101DBD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.dust.circle
  static const IconData sf_moon_dust_circle =
      IconData(0x101DBF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.dust.circle.fill
  static const IconData sf_moon_dust_circle_fill =
      IconData(0x101DC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.dust.fill
  static const IconData sf_moon_dust_fill =
      IconData(0x101DBE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.fill
  static const IconData sf_moon_fill =
      IconData(0x1001BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.haze
  static const IconData sf_moon_haze =
      IconData(0x10146F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.haze.circle
  static const IconData sf_moon_haze_circle =
      IconData(0x101737, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.haze.circle.fill
  static const IconData sf_moon_haze_circle_fill =
      IconData(0x101738, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.haze.fill
  static const IconData sf_moon_haze_fill =
      IconData(0x101470, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.stars
  static const IconData sf_moon_stars =
      IconData(0x1001C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.stars.circle
  static const IconData sf_moon_stars_circle =
      IconData(0x1016CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.stars.circle.fill
  static const IconData sf_moon_stars_circle_fill =
      IconData(0x1016CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.stars.fill
  static const IconData sf_moon_stars_fill =
      IconData(0x1001C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.zzz
  static const IconData sf_moon_zzz =
      IconData(0x1001BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moon.zzz.fill
  static const IconData sf_moon_zzz_fill =
      IconData(0x1001BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.first.quarter
  static const IconData sf_moonphase_first_quarter =
      IconData(0x10084A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.first.quarter.inverse
  static const IconData sf_moonphase_first_quarter_inverse =
      IconData(0x10140B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.full.moon
  static const IconData sf_moonphase_full_moon =
      IconData(0x10084C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.full.moon.inverse
  static const IconData sf_moonphase_full_moon_inverse =
      IconData(0x10140D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.last.quarter
  static const IconData sf_moonphase_last_quarter =
      IconData(0x10084E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.last.quarter.inverse
  static const IconData sf_moonphase_last_quarter_inverse =
      IconData(0x10140F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.new.moon
  static const IconData sf_moonphase_new_moon =
      IconData(0x100848, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.new.moon.inverse
  static const IconData sf_moonphase_new_moon_inverse =
      IconData(0x101409, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waning.crescent
  static const IconData sf_moonphase_waning_crescent =
      IconData(0x10084F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waning.crescent.inverse
  static const IconData sf_moonphase_waning_crescent_inverse =
      IconData(0x101410, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waning.gibbous
  static const IconData sf_moonphase_waning_gibbous =
      IconData(0x10084D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waning.gibbous.inverse
  static const IconData sf_moonphase_waning_gibbous_inverse =
      IconData(0x10140E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waxing.crescent
  static const IconData sf_moonphase_waxing_crescent =
      IconData(0x100849, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waxing.crescent.inverse
  static const IconData sf_moonphase_waxing_crescent_inverse =
      IconData(0x10140A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waxing.gibbous
  static const IconData sf_moonphase_waxing_gibbous =
      IconData(0x10084B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonphase.waxing.gibbous.inverse
  static const IconData sf_moonphase_waxing_gibbous_inverse =
      IconData(0x10140C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonrise
  static const IconData sf_moonrise =
      IconData(0x1020B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonrise.circle
  static const IconData sf_moonrise_circle =
      IconData(0x1020B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonrise.circle.fill
  static const IconData sf_moonrise_circle_fill =
      IconData(0x1020B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonrise.fill
  static const IconData sf_moonrise_fill =
      IconData(0x1020B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonset
  static const IconData sf_moonset =
      IconData(0x1020B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonset.circle
  static const IconData sf_moonset_circle =
      IconData(0x1020B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonset.circle.fill
  static const IconData sf_moonset_circle_fill =
      IconData(0x1020BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol moonset.fill
  static const IconData sf_moonset_fill =
      IconData(0x1020B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mosaic
  static const IconData sf_mosaic =
      IconData(0x100BEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mosaic.fill
  static const IconData sf_mosaic_fill =
      IconData(0x100BEC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mount
  static const IconData sf_mount =
      IconData(0x1008CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mount.fill
  static const IconData sf_mount_fill =
      IconData(0x1008A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mountain.2
  static const IconData sf_mountain_2 =
      IconData(0x1015DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mountain.2.circle
  static const IconData sf_mountain_2_circle =
      IconData(0x101792, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mountain.2.circle.fill
  static const IconData sf_mountain_2_circle_fill =
      IconData(0x101793, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mountain.2.fill
  static const IconData sf_mountain_2_fill =
      IconData(0x1015DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mouth
  static const IconData sf_mouth =
      IconData(0x1009A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mouth.fill
  static const IconData sf_mouth_fill =
      IconData(0x1009AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol move.3d
  static const IconData sf_move_3d =
      IconData(0x100885, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol movieclapper
  static const IconData sf_movieclapper =
      IconData(0x100724, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol movieclapper.fill
  static const IconData sf_movieclapper_fill =
      IconData(0x101DBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mph
  static const IconData sf_mph =
      IconData(0x1018BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mph.circle
  static const IconData sf_mph_circle =
      IconData(0x1018BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mph.circle.fill
  static const IconData sf_mph_circle_fill =
      IconData(0x1018BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mug
  static const IconData sf_mug =
      IconData(0x1017B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mug.fill
  static const IconData sf_mug_fill =
      IconData(0x1017B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol multiply
  static const IconData sf_multiply =
      IconData(0x10017E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol multiply.circle
  static const IconData sf_multiply_circle =
      IconData(0x100050, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol multiply.circle.fill
  static const IconData sf_multiply_circle_fill =
      IconData(0x100051, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol multiply.square
  static const IconData sf_multiply_square =
      IconData(0x1000E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol multiply.square.fill
  static const IconData sf_multiply_square_fill =
      IconData(0x1000E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.mic
  static const IconData sf_music_mic =
      IconData(0x10046B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.mic.circle
  static const IconData sf_music_mic_circle =
      IconData(0x101051, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.mic.circle.fill
  static const IconData sf_music_mic_circle_fill =
      IconData(0x101052, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note
  static const IconData sf_music_note =
      IconData(0x10046A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note.house
  static const IconData sf_music_note_house =
      IconData(0x1004BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note.house.fill
  static const IconData sf_music_note_house_fill =
      IconData(0x1004BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note.list
  static const IconData sf_music_note_list =
      IconData(0x10046C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note.tv
  static const IconData sf_music_note_tv =
      IconData(0x1003B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.note.tv.fill
  static const IconData sf_music_note_tv_fill =
      IconData(0x1004B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol music.quarternote.3
  static const IconData sf_music_quarternote_3 =
      IconData(0x100AC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mustache
  static const IconData sf_mustache =
      IconData(0x10097F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol mustache.fill
  static const IconData sf_mustache_fill =
      IconData(0x100980, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol n.circle
  static const IconData sf_n_circle =
      IconData(0x10001E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol n.circle.fill
  static const IconData sf_n_circle_fill =
      IconData(0x10001F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol n.square
  static const IconData sf_n_square =
      IconData(0x1000AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol n.square.fill
  static const IconData sf_n_square_fill =
      IconData(0x1000AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign
  static const IconData sf_nairasign =
      IconData(0x101452, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign.arrow.circlepath
  static const IconData sf_nairasign_arrow_circlepath =
      IconData(0x102225, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign.circle
  static const IconData sf_nairasign_circle =
      IconData(0x1005BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign.circle.fill
  static const IconData sf_nairasign_circle_fill =
      IconData(0x1005BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign.square
  static const IconData sf_nairasign_square =
      IconData(0x1005FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nairasign.square.fill
  static const IconData sf_nairasign_square_fill =
      IconData(0x1005FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol network
  static const IconData sf_network =
      IconData(0x100906, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol network.badge.shield.half.filled
  static const IconData sf_network_badge_shield_half_filled =
      IconData(0x10114F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol network.slash
  static const IconData sf_network_slash =
      IconData(0x1018E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol newspaper
  static const IconData sf_newspaper =
      IconData(0x100926, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol newspaper.circle
  static const IconData sf_newspaper_circle =
      IconData(0x1011B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol newspaper.circle.fill
  static const IconData sf_newspaper_circle_fill =
      IconData(0x1011B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol newspaper.fill
  static const IconData sf_newspaper_fill =
      IconData(0x100945, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign
  static const IconData sf_norwegiankronesign =
      IconData(0x10192C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign.arrow.circlepath
  static const IconData sf_norwegiankronesign_arrow_circlepath =
      IconData(0x102235, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign.circle
  static const IconData sf_norwegiankronesign_circle =
      IconData(0x100BA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign.circle.fill
  static const IconData sf_norwegiankronesign_circle_fill =
      IconData(0x100BA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign.square
  static const IconData sf_norwegiankronesign_square =
      IconData(0x100BA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol norwegiankronesign.square.fill
  static const IconData sf_norwegiankronesign_square_fill =
      IconData(0x100BA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nose
  static const IconData sf_nose =
      IconData(0x100A2F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nose.fill
  static const IconData sf_nose_fill =
      IconData(0x100A30, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nosign
  static const IconData sf_nosign =
      IconData(0x10037C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nosign.app
  static const IconData sf_nosign_app =
      IconData(0x10174A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol nosign.app.fill
  static const IconData sf_nosign_app_fill =
      IconData(0x10174B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol note
  static const IconData sf_note =
      IconData(0x1009F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol note.text
  static const IconData sf_note_text =
      IconData(0x1004D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol note.text.badge.plus
  static const IconData sf_note_text_badge_plus =
      IconData(0x1008D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol number
  static const IconData sf_number =
      IconData(0x100183, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol number.circle
  static const IconData sf_number_circle =
      IconData(0x10005A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol number.circle.fill
  static const IconData sf_number_circle_fill =
      IconData(0x10005B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol number.square
  static const IconData sf_number_square =
      IconData(0x1000EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol number.square.fill
  static const IconData sf_number_square_fill =
      IconData(0x1000EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol numbersign
  static const IconData sf_numbersign =
      IconData(0x1014D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol o.circle
  static const IconData sf_o_circle =
      IconData(0x100020, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol o.circle.fill
  static const IconData sf_o_circle_fill =
      IconData(0x100021, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol o.square
  static const IconData sf_o_square =
      IconData(0x1000B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol o.square.fill
  static const IconData sf_o_square_fill =
      IconData(0x1000B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oar.2.crossed
  static const IconData sf_oar_2_crossed =
      IconData(0x101536, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon
  static const IconData sf_octagon =
      IconData(0x1007CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon.bottomhalf.filled
  static const IconData sf_octagon_bottomhalf_filled =
      IconData(0x10103D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon.fill
  static const IconData sf_octagon_fill =
      IconData(0x1007CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon.lefthalf.filled
  static const IconData sf_octagon_lefthalf_filled =
      IconData(0x101007, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon.righthalf.filled
  static const IconData sf_octagon_righthalf_filled =
      IconData(0x101008, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol octagon.tophalf.filled
  static const IconData sf_octagon_tophalf_filled =
      IconData(0x10103C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oilcan
  static const IconData sf_oilcan =
      IconData(0x100FC4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oilcan.fill
  static const IconData sf_oilcan_fill =
      IconData(0x100FC5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticaldisc
  static const IconData sf_opticaldisc =
      IconData(0x1008B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticaldisc.fill
  static const IconData sf_opticaldisc_fill =
      IconData(0x101624, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticaldiscdrive
  static const IconData sf_opticaldiscdrive =
      IconData(0x100904, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticaldiscdrive.fill
  static const IconData sf_opticaldiscdrive_fill =
      IconData(0x100905, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticid
  static const IconData sf_opticid =
      IconData(0x101899, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol opticid.fill
  static const IconData sf_opticid_fill =
      IconData(0x1018C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol option
  static const IconData sf_option =
      IconData(0x100195, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval
  static const IconData sf_oval =
      IconData(0x100C9E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.bottomhalf.filled
  static const IconData sf_oval_bottomhalf_filled =
      IconData(0x100FFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.fill
  static const IconData sf_oval_fill =
      IconData(0x100C9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.inset.filled
  static const IconData sf_oval_inset_filled =
      IconData(0x100F9C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.lefthalf.filled
  static const IconData sf_oval_lefthalf_filled =
      IconData(0x100FFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait
  static const IconData sf_oval_portrait =
      IconData(0x100CA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.bottomhalf.filled
  static const IconData sf_oval_portrait_bottomhalf_filled =
      IconData(0x101002, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.fill
  static const IconData sf_oval_portrait_fill =
      IconData(0x100CA1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.inset.filled
  static const IconData sf_oval_portrait_inset_filled =
      IconData(0x100F9D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.lefthalf.filled
  static const IconData sf_oval_portrait_lefthalf_filled =
      IconData(0x100FFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.righthalf.filled
  static const IconData sf_oval_portrait_righthalf_filled =
      IconData(0x101000, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.portrait.tophalf.filled
  static const IconData sf_oval_portrait_tophalf_filled =
      IconData(0x101001, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.righthalf.filled
  static const IconData sf_oval_righthalf_filled =
      IconData(0x100FFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oval.tophalf.filled
  static const IconData sf_oval_tophalf_filled =
      IconData(0x100FFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oven
  static const IconData sf_oven =
      IconData(0x101424, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol oven.fill
  static const IconData sf_oven_fill =
      IconData(0x101425, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p.circle
  static const IconData sf_p_circle =
      IconData(0x100022, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p.circle.fill
  static const IconData sf_p_circle_fill =
      IconData(0x100023, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p.square
  static const IconData sf_p_square =
      IconData(0x1000B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p.square.fill
  static const IconData sf_p_square_fill =
      IconData(0x1000B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p1.button.horizontal
  static const IconData sf_p1_button_horizontal =
      IconData(0x101E2C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p1.button.horizontal.fill
  static const IconData sf_p1_button_horizontal_fill =
      IconData(0x101E2D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p2.button.horizontal
  static const IconData sf_p2_button_horizontal =
      IconData(0x101E2E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p2.button.horizontal.fill
  static const IconData sf_p2_button_horizontal_fill =
      IconData(0x101E2F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p3.button.horizontal
  static const IconData sf_p3_button_horizontal =
      IconData(0x101E30, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p3.button.horizontal.fill
  static const IconData sf_p3_button_horizontal_fill =
      IconData(0x101E31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p4.button.horizontal
  static const IconData sf_p4_button_horizontal =
      IconData(0x101E32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol p4.button.horizontal.fill
  static const IconData sf_p4_button_horizontal_fill =
      IconData(0x101E33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paddleshifter.left
  static const IconData sf_paddleshifter_left =
      IconData(0x101E34, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paddleshifter.left.fill
  static const IconData sf_paddleshifter_left_fill =
      IconData(0x101E35, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paddleshifter.right
  static const IconData sf_paddleshifter_right =
      IconData(0x101E36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paddleshifter.right.fill
  static const IconData sf_paddleshifter_right_fill =
      IconData(0x101E37, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintbrush
  static const IconData sf_paintbrush =
      IconData(0x100391, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintbrush.fill
  static const IconData sf_paintbrush_fill =
      IconData(0x100392, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintbrush.pointed
  static const IconData sf_paintbrush_pointed =
      IconData(0x1008F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintbrush.pointed.fill
  static const IconData sf_paintbrush_pointed_fill =
      IconData(0x1008F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintpalette
  static const IconData sf_paintpalette =
      IconData(0x100765, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paintpalette.fill
  static const IconData sf_paintpalette_fill =
      IconData(0x100766, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pano
  static const IconData sf_pano =
      IconData(0x10040F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pano.badge.play
  static const IconData sf_pano_badge_play =
      IconData(0x101DFF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pano.badge.play.fill
  static const IconData sf_pano_badge_play_fill =
      IconData(0x101E00, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pano.fill
  static const IconData sf_pano_fill =
      IconData(0x100410, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperclip
  static const IconData sf_paperclip =
      IconData(0x100262, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperclip.badge.ellipsis
  static const IconData sf_paperclip_badge_ellipsis =
      IconData(0x10088F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperclip.circle
  static const IconData sf_paperclip_circle =
      IconData(0x100494, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperclip.circle.fill
  static const IconData sf_paperclip_circle_fill =
      IconData(0x100495, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperplane
  static const IconData sf_paperplane =
      IconData(0x10021F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperplane.circle
  static const IconData sf_paperplane_circle =
      IconData(0x100221, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperplane.circle.fill
  static const IconData sf_paperplane_circle_fill =
      IconData(0x100222, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paperplane.fill
  static const IconData sf_paperplane_fill =
      IconData(0x100220, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol paragraphsign
  static const IconData sf_paragraphsign =
      IconData(0x100486, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parentheses
  static const IconData sf_parentheses =
      IconData(0x100E0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkinglight
  static const IconData sf_parkinglight =
      IconData(0x100FBC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkinglight.fill
  static const IconData sf_parkinglight_fill =
      IconData(0x100FBD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign
  static const IconData sf_parkingsign =
      IconData(0x100D62, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.brakesignal
  static const IconData sf_parkingsign_brakesignal =
      IconData(0x100FC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.brakesignal.slash
  static const IconData sf_parkingsign_brakesignal_slash =
      IconData(0x101250, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.circle
  static const IconData sf_parkingsign_circle =
      IconData(0x100DC1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.circle.fill
  static const IconData sf_parkingsign_circle_fill =
      IconData(0x100DC2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.radiowaves.left.and.right
  static const IconData sf_parkingsign_radiowaves_left_and_right =
      IconData(0x1015B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.radiowaves.right.and.safetycone
  static const IconData sf_parkingsign_radiowaves_right_and_safetycone =
      IconData(0x101968, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol parkingsign.steeringwheel
  static const IconData sf_parkingsign_steeringwheel =
      IconData(0x101268, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol party.popper
  static const IconData sf_party_popper =
      IconData(0x1014F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol party.popper.fill
  static const IconData sf_party_popper_fill =
      IconData(0x1014F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause
  static const IconData sf_pause =
      IconData(0x100285, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause.circle
  static const IconData sf_pause_circle =
      IconData(0x100297, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause.circle.fill
  static const IconData sf_pause_circle_fill =
      IconData(0x100298, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause.fill
  static const IconData sf_pause_fill =
      IconData(0x100286, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause.rectangle
  static const IconData sf_pause_rectangle =
      IconData(0x10029B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pause.rectangle.fill
  static const IconData sf_pause_rectangle_fill =
      IconData(0x10029C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pawprint
  static const IconData sf_pawprint =
      IconData(0x100F9E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pawprint.circle
  static const IconData sf_pawprint_circle =
      IconData(0x1010B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pawprint.circle.fill
  static const IconData sf_pawprint_circle_fill =
      IconData(0x1010B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pawprint.fill
  static const IconData sf_pawprint_fill =
      IconData(0x100F9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pc
  static const IconData sf_pc =
      IconData(0x10097A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol peacesign
  static const IconData sf_peacesign =
      IconData(0x100E8E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.accelerator
  static const IconData sf_pedal_accelerator =
      IconData(0x101E17, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.accelerator.fill
  static const IconData sf_pedal_accelerator_fill =
      IconData(0x101E18, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.brake
  static const IconData sf_pedal_brake =
      IconData(0x101E19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.brake.fill
  static const IconData sf_pedal_brake_fill =
      IconData(0x101E1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.clutch
  static const IconData sf_pedal_clutch =
      IconData(0x101E1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedal.clutch.fill
  static const IconData sf_pedal_clutch_fill =
      IconData(0x101E1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedestrian.gate.closed
  static const IconData sf_pedestrian_gate_closed =
      IconData(0x1014E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pedestrian.gate.open
  static const IconData sf_pedestrian_gate_open =
      IconData(0x1014E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil
  static const IconData sf_pencil =
      IconData(0x10020A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.and.list.clipboard
  static const IconData sf_pencil_and_list_clipboard =
      IconData(0x10154D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.and.outline
  static const IconData sf_pencil_and_outline =
      IconData(0x100210, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.and.ruler
  static const IconData sf_pencil_and_ruler =
      IconData(0x101586, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.and.ruler.fill
  static const IconData sf_pencil_and_ruler_fill =
      IconData(0x101587, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.and.scribble
  static const IconData sf_pencil_and_scribble =
      IconData(0x100912, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.circle
  static const IconData sf_pencil_circle =
      IconData(0x10020B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.circle.fill
  static const IconData sf_pencil_circle_fill =
      IconData(0x10020C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.line
  static const IconData sf_pencil_line =
      IconData(0x10169B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.slash
  static const IconData sf_pencil_slash =
      IconData(0x10020D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip
  static const IconData sf_pencil_tip =
      IconData(0x10048B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle
  static const IconData sf_pencil_tip_crop_circle =
      IconData(0x100265, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.arrow.forward
  static const IconData sf_pencil_tip_crop_circle_badge_arrow_forward =
      IconData(0x1009DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.arrow.forward.fill
  static const IconData sf_pencil_tip_crop_circle_badge_arrow_forward_fill =
      IconData(0x101FF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.minus
  static const IconData sf_pencil_tip_crop_circle_badge_minus =
      IconData(0x100267, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.minus.fill
  static const IconData sf_pencil_tip_crop_circle_badge_minus_fill =
      IconData(0x101FF3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.plus
  static const IconData sf_pencil_tip_crop_circle_badge_plus =
      IconData(0x100266, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.badge.plus.fill
  static const IconData sf_pencil_tip_crop_circle_badge_plus_fill =
      IconData(0x101F9D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pencil.tip.crop.circle.fill
  static const IconData sf_pencil_tip_crop_circle_fill =
      IconData(0x101F9B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon
  static const IconData sf_pentagon =
      IconData(0x100DBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon.bottomhalf.filled
  static const IconData sf_pentagon_bottomhalf_filled =
      IconData(0x10103B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon.fill
  static const IconData sf_pentagon_fill =
      IconData(0x100DBB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon.lefthalf.filled
  static const IconData sf_pentagon_lefthalf_filled =
      IconData(0x10100B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon.righthalf.filled
  static const IconData sf_pentagon_righthalf_filled =
      IconData(0x10100C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pentagon.tophalf.filled
  static const IconData sf_pentagon_tophalf_filled =
      IconData(0x10103A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol percent
  static const IconData sf_percent =
      IconData(0x10063E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person
  static const IconData sf_person =
      IconData(0x100269, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2
  static const IconData sf_person_2 =
      IconData(0x10026B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.badge.gearshape
  static const IconData sf_person_2_badge_gearshape =
      IconData(0x10165A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.badge.gearshape.fill
  static const IconData sf_person_2_badge_gearshape_fill =
      IconData(0x10165B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.badge.key
  static const IconData sf_person_2_badge_key =
      IconData(0x101DE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.badge.key.fill
  static const IconData sf_person_2_badge_key_fill =
      IconData(0x101DEB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.circle
  static const IconData sf_person_2_circle =
      IconData(0x100803, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.circle.fill
  static const IconData sf_person_2_circle_fill =
      IconData(0x100804, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.crop.square.stack
  static const IconData sf_person_2_crop_square_stack =
      IconData(0x1004E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.crop.square.stack.fill
  static const IconData sf_person_2_crop_square_stack_fill =
      IconData(0x1004E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.fill
  static const IconData sf_person_2_fill =
      IconData(0x10026C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.gobackward
  static const IconData sf_person_2_gobackward =
      IconData(0x101659, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.slash
  static const IconData sf_person_2_slash =
      IconData(0x10175E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.slash.fill
  static const IconData sf_person_2_slash_fill =
      IconData(0x10175F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.wave.2
  static const IconData sf_person_2_wave_2 =
      IconData(0x100F8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.2.wave.2.fill
  static const IconData sf_person_2_wave_2_fill =
      IconData(0x100F8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.3
  static const IconData sf_person_3 =
      IconData(0x10074A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.3.fill
  static const IconData sf_person_3_fill =
      IconData(0x10074B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.3.sequence
  static const IconData sf_person_3_sequence =
      IconData(0x100EF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.3.sequence.fill
  static const IconData sf_person_3_sequence_fill =
      IconData(0x100EF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.and.arrow.left.and.arrow.right
  static const IconData sf_person_and_arrow_left_and_arrow_right =
      IconData(0x100ABC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.and.background.dotted
  static const IconData sf_person_and_background_dotted =
      IconData(0x101641, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.and.background.striped.horizontal
  static const IconData sf_person_and_background_striped_horizontal =
      IconData(0x101803, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.clock
  static const IconData sf_person_badge_clock =
      IconData(0x101156, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.clock.fill
  static const IconData sf_person_badge_clock_fill =
      IconData(0x101157, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.key
  static const IconData sf_person_badge_key =
      IconData(0x1013FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.key.fill
  static const IconData sf_person_badge_key_fill =
      IconData(0x1013A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.minus
  static const IconData sf_person_badge_minus =
      IconData(0x100717, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.plus
  static const IconData sf_person_badge_plus =
      IconData(0x100715, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.shield.checkmark
  static const IconData sf_person_badge_shield_checkmark =
      IconData(0x101653, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.badge.shield.checkmark.fill
  static const IconData sf_person_badge_shield_checkmark_fill =
      IconData(0x101654, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bubble
  static const IconData sf_person_bubble =
      IconData(0x10213D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bubble.fill
  static const IconData sf_person_bubble_fill =
      IconData(0x10213E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bust
  static const IconData sf_person_bust =
      IconData(0x1015E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bust.circle
  static const IconData sf_person_bust_circle =
      IconData(0x101F53, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bust.circle.fill
  static const IconData sf_person_bust_circle_fill =
      IconData(0x101F54, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.bust.fill
  static const IconData sf_person_bust_fill =
      IconData(0x1015E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.circle
  static const IconData sf_person_circle =
      IconData(0x1004E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.circle.fill
  static const IconData sf_person_circle_fill =
      IconData(0x1004E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.artframe
  static const IconData sf_person_crop_artframe =
      IconData(0x100FCF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle
  static const IconData sf_person_crop_circle =
      IconData(0x10026D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge
  static const IconData sf_person_crop_circle_badge =
      IconData(0x10109B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.checkmark
  static const IconData sf_person_crop_circle_badge_checkmark =
      IconData(0x100273, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.clock
  static const IconData sf_person_crop_circle_badge_clock =
      IconData(0x101154, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.clock.fill
  static const IconData sf_person_crop_circle_badge_clock_fill =
      IconData(0x101155, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.exclamationmark
  static const IconData sf_person_crop_circle_badge_exclamationmark =
      IconData(0x100277, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.exclamationmark.fill
  static const IconData sf_person_crop_circle_badge_exclamationmark_fill =
      IconData(0x100278, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.fill
  static const IconData sf_person_crop_circle_badge_fill =
      IconData(0x10109C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.minus
  static const IconData sf_person_crop_circle_badge_minus =
      IconData(0x100271, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.moon
  static const IconData sf_person_crop_circle_badge_moon =
      IconData(0x1010C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.moon.fill
  static const IconData sf_person_crop_circle_badge_moon_fill =
      IconData(0x1010C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.plus
  static const IconData sf_person_crop_circle_badge_plus =
      IconData(0x10026F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.questionmark
  static const IconData sf_person_crop_circle_badge_questionmark =
      IconData(0x100B7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.questionmark.fill
  static const IconData sf_person_crop_circle_badge_questionmark_fill =
      IconData(0x100B7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.badge.xmark
  static const IconData sf_person_crop_circle_badge_xmark =
      IconData(0x100275, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.dashed
  static const IconData sf_person_crop_circle_dashed =
      IconData(0x1017AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.dashed.circle
  static const IconData sf_person_crop_circle_dashed_circle =
      IconData(0x10216A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.dashed.circle.fill
  static const IconData sf_person_crop_circle_dashed_circle_fill =
      IconData(0x1020FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.fill
  static const IconData sf_person_crop_circle_fill =
      IconData(0x10026E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.fill.badge.checkmark
  static const IconData sf_person_crop_circle_fill_badge_checkmark =
      IconData(0x100274, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.fill.badge.minus
  static const IconData sf_person_crop_circle_fill_badge_minus =
      IconData(0x100272, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.fill.badge.plus
  static const IconData sf_person_crop_circle_fill_badge_plus =
      IconData(0x100270, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.circle.fill.badge.xmark
  static const IconData sf_person_crop_circle_fill_badge_xmark =
      IconData(0x100276, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle
  static const IconData sf_person_crop_rectangle =
      IconData(0x1003CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle.badge.plus
  static const IconData sf_person_crop_rectangle_badge_plus =
      IconData(0x10159A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle.badge.plus.fill
  static const IconData sf_person_crop_rectangle_badge_plus_fill =
      IconData(0x10159B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle.fill
  static const IconData sf_person_crop_rectangle_fill =
      IconData(0x1003D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle.stack
  static const IconData sf_person_crop_rectangle_stack =
      IconData(0x1003FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.rectangle.stack.fill
  static const IconData sf_person_crop_rectangle_stack_fill =
      IconData(0x1003FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square
  static const IconData sf_person_crop_square =
      IconData(0x100279, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.badge.camera
  static const IconData sf_person_crop_square_badge_camera =
      IconData(0x10225A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.badge.camera.fill
  static const IconData sf_person_crop_square_badge_camera_fill =
      IconData(0x10225B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.badge.video
  static const IconData sf_person_crop_square_badge_video =
      IconData(0x10225C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.badge.video.fill
  static const IconData sf_person_crop_square_badge_video_fill =
      IconData(0x10225D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.fill
  static const IconData sf_person_crop_square_fill =
      IconData(0x10027A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.filled.and.at.rectangle
  static const IconData sf_person_crop_square_filled_and_at_rectangle =
      IconData(0x10098E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.crop.square.filled.and.at.rectangle.fill
  static const IconData sf_person_crop_square_filled_and_at_rectangle_fill =
      IconData(0x100FD0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill
  static const IconData sf_person_fill =
      IconData(0x10026A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.and.arrow.left.and.arrow.right
  static const IconData sf_person_fill_and_arrow_left_and_arrow_right =
      IconData(0x100ABD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.badge.minus
  static const IconData sf_person_fill_badge_minus =
      IconData(0x100718, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.badge.plus
  static const IconData sf_person_fill_badge_plus =
      IconData(0x100716, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.checkmark
  static const IconData sf_person_fill_checkmark =
      IconData(0x100BE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.questionmark
  static const IconData sf_person_fill_questionmark =
      IconData(0x100BE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.turn.down
  static const IconData sf_person_fill_turn_down =
      IconData(0x100BD2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.turn.left
  static const IconData sf_person_fill_turn_left =
      IconData(0x100BD3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.turn.right
  static const IconData sf_person_fill_turn_right =
      IconData(0x100BD1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.viewfinder
  static const IconData sf_person_fill_viewfinder =
      IconData(0x100C8F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.fill.xmark
  static const IconData sf_person_fill_xmark =
      IconData(0x100BE8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.icloud
  static const IconData sf_person_icloud =
      IconData(0x100673, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.icloud.fill
  static const IconData sf_person_icloud_fill =
      IconData(0x100674, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.line.dotted.person
  static const IconData sf_person_line_dotted_person =
      IconData(0x101483, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.line.dotted.person.fill
  static const IconData sf_person_line_dotted_person_fill =
      IconData(0x101484, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.slash
  static const IconData sf_person_slash =
      IconData(0x1018D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.slash.fill
  static const IconData sf_person_slash_fill =
      IconData(0x1018D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.text.rectangle
  static const IconData sf_person_text_rectangle =
      IconData(0x100FD2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.text.rectangle.fill
  static const IconData sf_person_text_rectangle_fill =
      IconData(0x100FD3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.wave.2
  static const IconData sf_person_wave_2 =
      IconData(0x101147, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol person.wave.2.fill
  static const IconData sf_person_wave_2_fill =
      IconData(0x101148, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol personalhotspot
  static const IconData sf_personalhotspot =
      IconData(0x100264, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol personalhotspot.circle
  static const IconData sf_personalhotspot_circle =
      IconData(0x101228, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol personalhotspot.circle.fill
  static const IconData sf_personalhotspot_circle_fill =
      IconData(0x101229, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol perspective
  static const IconData sf_perspective =
      IconData(0x1004B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign
  static const IconData sf_pesetasign =
      IconData(0x10144B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign.arrow.circlepath
  static const IconData sf_pesetasign_arrow_circlepath =
      IconData(0x10221E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign.circle
  static const IconData sf_pesetasign_circle =
      IconData(0x1005AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign.circle.fill
  static const IconData sf_pesetasign_circle_fill =
      IconData(0x1005B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign.square
  static const IconData sf_pesetasign_square =
      IconData(0x1005EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesetasign.square.fill
  static const IconData sf_pesetasign_square_fill =
      IconData(0x1005F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign
  static const IconData sf_pesosign =
      IconData(0x10144C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign.arrow.circlepath
  static const IconData sf_pesosign_arrow_circlepath =
      IconData(0x10221F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign.circle
  static const IconData sf_pesosign_circle =
      IconData(0x1005B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign.circle.fill
  static const IconData sf_pesosign_circle_fill =
      IconData(0x1005B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign.square
  static const IconData sf_pesosign_square =
      IconData(0x1005F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pesosign.square.fill
  static const IconData sf_pesosign_square_fill =
      IconData(0x1005F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone
  static const IconData sf_phone =
      IconData(0x10033E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.down.left
  static const IconData sf_phone_arrow_down_left =
      IconData(0x100342, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.down.left.fill
  static const IconData sf_phone_arrow_down_left_fill =
      IconData(0x100343, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.right
  static const IconData sf_phone_arrow_right =
      IconData(0x100344, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.right.fill
  static const IconData sf_phone_arrow_right_fill =
      IconData(0x100345, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.up.right
  static const IconData sf_phone_arrow_up_right =
      IconData(0x100340, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.up.right.circle
  static const IconData sf_phone_arrow_up_right_circle =
      IconData(0x1013FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.up.right.circle.fill
  static const IconData sf_phone_arrow_up_right_circle_fill =
      IconData(0x1013FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.arrow.up.right.fill
  static const IconData sf_phone_arrow_up_right_fill =
      IconData(0x100341, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.badge.checkmark
  static const IconData sf_phone_badge_checkmark =
      IconData(0x101657, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.badge.plus
  static const IconData sf_phone_badge_plus =
      IconData(0x10058E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.badge.waveform
  static const IconData sf_phone_badge_waveform =
      IconData(0x100F03, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.badge.waveform.fill
  static const IconData sf_phone_badge_waveform_fill =
      IconData(0x100F04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.bubble
  static const IconData sf_phone_bubble =
      IconData(0x100C6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.bubble.fill
  static const IconData sf_phone_bubble_fill =
      IconData(0x100C6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.circle
  static const IconData sf_phone_circle =
      IconData(0x1004A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.circle.fill
  static const IconData sf_phone_circle_fill =
      IconData(0x1004A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.connection
  static const IconData sf_phone_connection =
      IconData(0x100B1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.connection.fill
  static const IconData sf_phone_connection_fill =
      IconData(0x100B1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.down
  static const IconData sf_phone_down =
      IconData(0x100346, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.down.circle
  static const IconData sf_phone_down_circle =
      IconData(0x1004A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.down.circle.fill
  static const IconData sf_phone_down_circle_fill =
      IconData(0x1004A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.down.fill
  static const IconData sf_phone_down_fill =
      IconData(0x100347, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.down.waves.left.and.right
  static const IconData sf_phone_down_waves_left_and_right =
      IconData(0x101085, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.fill
  static const IconData sf_phone_fill =
      IconData(0x10033F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.fill.badge.checkmark
  static const IconData sf_phone_fill_badge_checkmark =
      IconData(0x101658, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol phone.fill.badge.plus
  static const IconData sf_phone_fill_badge_plus =
      IconData(0x10058F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo
  static const IconData sf_photo =
      IconData(0x1003C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.artframe
  static const IconData sf_photo_artframe =
      IconData(0x101036, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.artframe.circle
  static const IconData sf_photo_artframe_circle =
      IconData(0x101F27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.artframe.circle.fill
  static const IconData sf_photo_artframe_circle_fill =
      IconData(0x101F28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.arrow.down
  static const IconData sf_photo_badge_arrow_down =
      IconData(0x1010F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.arrow.down.fill
  static const IconData sf_photo_badge_arrow_down_fill =
      IconData(0x1010F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.checkmark
  static const IconData sf_photo_badge_checkmark =
      IconData(0x101639, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.checkmark.fill
  static const IconData sf_photo_badge_checkmark_fill =
      IconData(0x10163A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.plus
  static const IconData sf_photo_badge_plus =
      IconData(0x1010CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.badge.plus.fill
  static const IconData sf_photo_badge_plus_fill =
      IconData(0x1010D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.circle
  static const IconData sf_photo_circle =
      IconData(0x1010AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.circle.fill
  static const IconData sf_photo_circle_fill =
      IconData(0x1010AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.fill
  static const IconData sf_photo_fill =
      IconData(0x1003C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.fill.on.rectangle.fill
  static const IconData sf_photo_fill_on_rectangle_fill =
      IconData(0x1003EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.on.rectangle
  static const IconData sf_photo_on_rectangle =
      IconData(0x1003EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.on.rectangle.angled
  static const IconData sf_photo_on_rectangle_angled =
      IconData(0x1008F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.stack
  static const IconData sf_photo_stack =
      IconData(0x1003EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.stack.fill
  static const IconData sf_photo_stack_fill =
      IconData(0x1003F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol photo.tv
  static const IconData sf_photo_tv =
      IconData(0x100D6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pianokeys
  static const IconData sf_pianokeys =
      IconData(0x10038F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pianokeys.inverse
  static const IconData sf_pianokeys_inverse =
      IconData(0x1007FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pill
  static const IconData sf_pill =
      IconData(0x1016AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pill.circle
  static const IconData sf_pill_circle =
      IconData(0x1016AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pill.circle.fill
  static const IconData sf_pill_circle_fill =
      IconData(0x1016B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pill.fill
  static const IconData sf_pill_fill =
      IconData(0x1016AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pills
  static const IconData sf_pills =
      IconData(0x100831, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pills.circle
  static const IconData sf_pills_circle =
      IconData(0x1011C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pills.circle.fill
  static const IconData sf_pills_circle_fill =
      IconData(0x1011C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pills.fill
  static const IconData sf_pills_fill =
      IconData(0x100832, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin
  static const IconData sf_pin =
      IconData(0x1003A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.circle
  static const IconData sf_pin_circle =
      IconData(0x1004B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.circle.fill
  static const IconData sf_pin_circle_fill =
      IconData(0x1004B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.fill
  static const IconData sf_pin_fill =
      IconData(0x1003A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.slash
  static const IconData sf_pin_slash =
      IconData(0x1003A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.slash.fill
  static const IconData sf_pin_slash_fill =
      IconData(0x1003A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.square
  static const IconData sf_pin_square =
      IconData(0x100F4B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pin.square.fill
  static const IconData sf_pin_square_fill =
      IconData(0x100F4C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip
  static const IconData sf_pip =
      IconData(0x100833, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip.enter
  static const IconData sf_pip_enter =
      IconData(0x100468, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip.exit
  static const IconData sf_pip_exit =
      IconData(0x100467, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip.fill
  static const IconData sf_pip_fill =
      IconData(0x100834, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip.remove
  static const IconData sf_pip_remove =
      IconData(0x100B72, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pip.swap
  static const IconData sf_pip_swap =
      IconData(0x100B71, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pipe.and.drop
  static const IconData sf_pipe_and_drop =
      IconData(0x1014DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pipe.and.drop.fill
  static const IconData sf_pipe_and_drop_fill =
      IconData(0x1014DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol placeholdertext.fill
  static const IconData sf_placeholdertext_fill =
      IconData(0x100BB7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.2.filled.ipad
  static const IconData sf_platter_2_filled_ipad =
      IconData(0x10104D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.2.filled.ipad.landscape
  static const IconData sf_platter_2_filled_ipad_landscape =
      IconData(0x10104E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.2.filled.iphone
  static const IconData sf_platter_2_filled_iphone =
      IconData(0x100FA9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.2.filled.iphone.landscape
  static const IconData sf_platter_2_filled_iphone_landscape =
      IconData(0x100FAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.bottom.applewatch.case
  static const IconData sf_platter_bottom_applewatch_case =
      IconData(0x1010C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.bottom.and.arrow.down.iphone
  static const IconData sf_platter_filled_bottom_and_arrow_down_iphone =
      IconData(0x1012C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.bottom.applewatch.case
  static const IconData sf_platter_filled_bottom_applewatch_case =
      IconData(0x1010C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.bottom.iphone
  static const IconData sf_platter_filled_bottom_iphone =
      IconData(0x1012C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.top.and.arrow.up.iphone
  static const IconData sf_platter_filled_top_and_arrow_up_iphone =
      IconData(0x1012C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.top.applewatch.case
  static const IconData sf_platter_filled_top_applewatch_case =
      IconData(0x1010C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.filled.top.iphone
  static const IconData sf_platter_filled_top_iphone =
      IconData(0x1012BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol platter.top.applewatch.case
  static const IconData sf_platter_top_applewatch_case =
      IconData(0x1010C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play
  static const IconData sf_play =
      IconData(0x100283, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.circle
  static const IconData sf_play_circle =
      IconData(0x100295, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.circle.fill
  static const IconData sf_play_circle_fill =
      IconData(0x100296, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.desktopcomputer
  static const IconData sf_play_desktopcomputer =
      IconData(0x1013F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.display
  static const IconData sf_play_display =
      IconData(0x1013F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.fill
  static const IconData sf_play_fill =
      IconData(0x100284, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.house
  static const IconData sf_play_house =
      IconData(0x101E59, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.house.fill
  static const IconData sf_play_house_fill =
      IconData(0x101E5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.laptopcomputer
  static const IconData sf_play_laptopcomputer =
      IconData(0x1013F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle
  static const IconData sf_play_rectangle =
      IconData(0x100299, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle.fill
  static const IconData sf_play_rectangle_fill =
      IconData(0x10029A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle.on.rectangle
  static const IconData sf_play_rectangle_on_rectangle =
      IconData(0x100FAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle.on.rectangle.circle
  static const IconData sf_play_rectangle_on_rectangle_circle =
      IconData(0x1010C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle.on.rectangle.circle.fill
  static const IconData sf_play_rectangle_on_rectangle_circle_fill =
      IconData(0x1010C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.rectangle.on.rectangle.fill
  static const IconData sf_play_rectangle_on_rectangle_fill =
      IconData(0x100FAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.slash
  static const IconData sf_play_slash =
      IconData(0x100A85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.slash.fill
  static const IconData sf_play_slash_fill =
      IconData(0x100A86, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.square
  static const IconData sf_play_square =
      IconData(0x100F4D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.square.fill
  static const IconData sf_play_square_fill =
      IconData(0x100F4E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.square.stack
  static const IconData sf_play_square_stack =
      IconData(0x1017FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.square.stack.fill
  static const IconData sf_play_square_stack_fill =
      IconData(0x1017FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.tv
  static const IconData sf_play_tv =
      IconData(0x100D68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol play.tv.fill
  static const IconData sf_play_tv_fill =
      IconData(0x100D69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol playpause
  static const IconData sf_playpause =
      IconData(0x100287, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol playpause.circle
  static const IconData sf_playpause_circle =
      IconData(0x10169E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol playpause.circle.fill
  static const IconData sf_playpause_circle_fill =
      IconData(0x10169F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol playpause.fill
  static const IconData sf_playpause_fill =
      IconData(0x100288, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol playstation.logo
  static const IconData sf_playstation_logo =
      IconData(0x100F88, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus
  static const IconData sf_plus =
      IconData(0x10017C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.app
  static const IconData sf_plus_app =
      IconData(0x10044D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.app.fill
  static const IconData sf_plus_app_fill =
      IconData(0x10044E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.bubble
  static const IconData sf_plus_bubble =
      IconData(0x100336, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.bubble.fill
  static const IconData sf_plus_bubble_fill =
      IconData(0x100337, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.circle
  static const IconData sf_plus_circle =
      IconData(0x10004C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.circle.fill
  static const IconData sf_plus_circle_fill =
      IconData(0x10004D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.diamond
  static const IconData sf_plus_diamond =
      IconData(0x10087F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.diamond.fill
  static const IconData sf_plus_diamond_fill =
      IconData(0x100880, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.forwardslash.minus
  static const IconData sf_plus_forwardslash_minus =
      IconData(0x10017A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.magnifyingglass
  static const IconData sf_plus_magnifyingglass =
      IconData(0x1002AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.message
  static const IconData sf_plus_message =
      IconData(0x100859, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.message.fill
  static const IconData sf_plus_message_fill =
      IconData(0x10085A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle
  static const IconData sf_plus_rectangle =
      IconData(0x1003C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.fill
  static const IconData sf_plus_rectangle_fill =
      IconData(0x1003C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.fill.on.rectangle.fill
  static const IconData sf_plus_rectangle_fill_on_rectangle_fill =
      IconData(0x1003EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.on.folder
  static const IconData sf_plus_rectangle_on_folder =
      IconData(0x100930, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.on.folder.fill
  static const IconData sf_plus_rectangle_on_folder_fill =
      IconData(0x100931, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.on.rectangle
  static const IconData sf_plus_rectangle_on_rectangle =
      IconData(0x1003E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.portrait
  static const IconData sf_plus_rectangle_portrait =
      IconData(0x10086A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.rectangle.portrait.fill
  static const IconData sf_plus_rectangle_portrait_fill =
      IconData(0x10086B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.square
  static const IconData sf_plus_square =
      IconData(0x1000DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.square.dashed
  static const IconData sf_plus_square_dashed =
      IconData(0x100D25, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.square.fill
  static const IconData sf_plus_square_fill =
      IconData(0x1000DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.square.fill.on.square.fill
  static const IconData sf_plus_square_fill_on_square_fill =
      IconData(0x100408, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.square.on.square
  static const IconData sf_plus_square_on_square =
      IconData(0x100407, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plus.viewfinder
  static const IconData sf_plus_viewfinder =
      IconData(0x100944, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plusminus
  static const IconData sf_plusminus =
      IconData(0x1006FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plusminus.circle
  static const IconData sf_plusminus_circle =
      IconData(0x100376, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol plusminus.circle.fill
  static const IconData sf_plusminus_circle_fill =
      IconData(0x10061D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.3.connected.trianglepath.dotted
  static const IconData sf_point_3_connected_trianglepath_dotted =
      IconData(0x1011AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.3.filled.connected.trianglepath.dotted
  static const IconData sf_point_3_filled_connected_trianglepath_dotted =
      IconData(0x101165, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.filled.forward.to.point.topright.scurvepath
  static const IconData
      sf_point_bottomleft_filled_forward_to_point_topright_scurvepath =
      IconData(0x101EF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_arrowtriangle_uturn_scurvepath =
      IconData(0x101EF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill
  static const IconData
      sf_point_bottomleft_forward_to_arrowtriangle_uturn_scurvepath_fill =
      IconData(0x101E39, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.filled.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_filled_scurvepath =
      IconData(0x101EF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.scurvepath
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_scurvepath =
      IconData(0x101EF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.bottomleft.forward.to.point.topright.scurvepath.fill
  static const IconData
      sf_point_bottomleft_forward_to_point_topright_scurvepath_fill =
      IconData(0x101E38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.forward.to.point.capsulepath
  static const IconData sf_point_forward_to_point_capsulepath =
      IconData(0x101EF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.forward.to.point.capsulepath.fill
  static const IconData sf_point_forward_to_point_capsulepath_fill =
      IconData(0x101E3A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.curvepath
  static const IconData sf_point_topleft_down_to_point_bottomright_curvepath =
      IconData(0x1008F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.curvepath.fill
  static const IconData
      sf_point_topleft_down_to_point_bottomright_curvepath_fill =
      IconData(0x100B31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.topleft.down.to.point.bottomright.filled.curvepath
  static const IconData
      sf_point_topleft_down_to_point_bottomright_filled_curvepath =
      IconData(0x100F94, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol point.topleft.filled.down.to.point.bottomright.curvepath
  static const IconData
      sf_point_topleft_filled_down_to_point_bottomright_curvepath =
      IconData(0x100F95, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign
  static const IconData sf_polishzlotysign =
      IconData(0x10192F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign.arrow.circlepath
  static const IconData sf_polishzlotysign_arrow_circlepath =
      IconData(0x102234, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign.circle
  static const IconData sf_polishzlotysign_circle =
      IconData(0x101930, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign.circle.fill
  static const IconData sf_polishzlotysign_circle_fill =
      IconData(0x101931, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign.square
  static const IconData sf_polishzlotysign_square =
      IconData(0x101932, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol polishzlotysign.square.fill
  static const IconData sf_polishzlotysign_square_fill =
      IconData(0x101933, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol popcorn
  static const IconData sf_popcorn =
      IconData(0x101407, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol popcorn.circle
  static const IconData sf_popcorn_circle =
      IconData(0x1016B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol popcorn.circle.fill
  static const IconData sf_popcorn_circle_fill =
      IconData(0x1016B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol popcorn.fill
  static const IconData sf_popcorn_fill =
      IconData(0x101408, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol power
  static const IconData sf_power =
      IconData(0x1001A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol power.circle
  static const IconData sf_power_circle =
      IconData(0x100DC3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol power.circle.fill
  static const IconData sf_power_circle_fill =
      IconData(0x100DC4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol power.dotted
  static const IconData sf_power_dotted =
      IconData(0x1001A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol powercord
  static const IconData sf_powercord =
      IconData(0x1018F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol powercord.fill
  static const IconData sf_powercord_fill =
      IconData(0x1018F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroff
  static const IconData sf_poweroff =
      IconData(0x100965, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweron
  static const IconData sf_poweron =
      IconData(0x100964, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.strip
  static const IconData sf_poweroutlet_strip =
      IconData(0x101332, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.strip.fill
  static const IconData sf_poweroutlet_strip_fill =
      IconData(0x1014DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.a
  static const IconData sf_poweroutlet_type_a =
      IconData(0x10133D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.a.fill
  static const IconData sf_poweroutlet_type_a_fill =
      IconData(0x101340, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.a.square
  static const IconData sf_poweroutlet_type_a_square =
      IconData(0x100F64, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.a.square.fill
  static const IconData sf_poweroutlet_type_a_square_fill =
      IconData(0x101329, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.b
  static const IconData sf_poweroutlet_type_b =
      IconData(0x10133E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.b.fill
  static const IconData sf_poweroutlet_type_b_fill =
      IconData(0x101341, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.b.square
  static const IconData sf_poweroutlet_type_b_square =
      IconData(0x100F65, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.b.square.fill
  static const IconData sf_poweroutlet_type_b_square_fill =
      IconData(0x10133C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.c
  static const IconData sf_poweroutlet_type_c =
      IconData(0x101346, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.c.fill
  static const IconData sf_poweroutlet_type_c_fill =
      IconData(0x101347, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.c.square
  static const IconData sf_poweroutlet_type_c_square =
      IconData(0x100F66, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.c.square.fill
  static const IconData sf_poweroutlet_type_c_square_fill =
      IconData(0x10132B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.d
  static const IconData sf_poweroutlet_type_d =
      IconData(0x101348, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.d.fill
  static const IconData sf_poweroutlet_type_d_fill =
      IconData(0x101349, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.d.square
  static const IconData sf_poweroutlet_type_d_square =
      IconData(0x100F67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.d.square.fill
  static const IconData sf_poweroutlet_type_d_square_fill =
      IconData(0x10134A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.e
  static const IconData sf_poweroutlet_type_e =
      IconData(0x10134B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.e.fill
  static const IconData sf_poweroutlet_type_e_fill =
      IconData(0x10134C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.e.square
  static const IconData sf_poweroutlet_type_e_square =
      IconData(0x100F68, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.e.square.fill
  static const IconData sf_poweroutlet_type_e_square_fill =
      IconData(0x10134D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.f
  static const IconData sf_poweroutlet_type_f =
      IconData(0x10134E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.f.fill
  static const IconData sf_poweroutlet_type_f_fill =
      IconData(0x10134F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.f.square
  static const IconData sf_poweroutlet_type_f_square =
      IconData(0x100F69, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.f.square.fill
  static const IconData sf_poweroutlet_type_f_square_fill =
      IconData(0x101350, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.g
  static const IconData sf_poweroutlet_type_g =
      IconData(0x101351, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.g.fill
  static const IconData sf_poweroutlet_type_g_fill =
      IconData(0x101352, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.g.square
  static const IconData sf_poweroutlet_type_g_square =
      IconData(0x100F6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.g.square.fill
  static const IconData sf_poweroutlet_type_g_square_fill =
      IconData(0x10132F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.h
  static const IconData sf_poweroutlet_type_h =
      IconData(0x101353, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.h.fill
  static const IconData sf_poweroutlet_type_h_fill =
      IconData(0x101354, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.h.square
  static const IconData sf_poweroutlet_type_h_square =
      IconData(0x100F6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.h.square.fill
  static const IconData sf_poweroutlet_type_h_square_fill =
      IconData(0x101355, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.i
  static const IconData sf_poweroutlet_type_i =
      IconData(0x101356, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.i.fill
  static const IconData sf_poweroutlet_type_i_fill =
      IconData(0x101357, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.i.square
  static const IconData sf_poweroutlet_type_i_square =
      IconData(0x100F6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.i.square.fill
  static const IconData sf_poweroutlet_type_i_square_fill =
      IconData(0x101358, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.j
  static const IconData sf_poweroutlet_type_j =
      IconData(0x101359, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.j.fill
  static const IconData sf_poweroutlet_type_j_fill =
      IconData(0x10135A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.j.square
  static const IconData sf_poweroutlet_type_j_square =
      IconData(0x100F6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.j.square.fill
  static const IconData sf_poweroutlet_type_j_square_fill =
      IconData(0x101331, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.k
  static const IconData sf_poweroutlet_type_k =
      IconData(0x10135B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.k.fill
  static const IconData sf_poweroutlet_type_k_fill =
      IconData(0x10135C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.k.square
  static const IconData sf_poweroutlet_type_k_square =
      IconData(0x100F6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.k.square.fill
  static const IconData sf_poweroutlet_type_k_square_fill =
      IconData(0x10132E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.l
  static const IconData sf_poweroutlet_type_l =
      IconData(0x10135D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.l.fill
  static const IconData sf_poweroutlet_type_l_fill =
      IconData(0x10135E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.l.square
  static const IconData sf_poweroutlet_type_l_square =
      IconData(0x100F6F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.l.square.fill
  static const IconData sf_poweroutlet_type_l_square_fill =
      IconData(0x10135F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.m
  static const IconData sf_poweroutlet_type_m =
      IconData(0x10132A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.m.fill
  static const IconData sf_poweroutlet_type_m_fill =
      IconData(0x10132C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.m.square
  static const IconData sf_poweroutlet_type_m_square =
      IconData(0x10107B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.m.square.fill
  static const IconData sf_poweroutlet_type_m_square_fill =
      IconData(0x101333, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.n
  static const IconData sf_poweroutlet_type_n =
      IconData(0x10132D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.n.fill
  static const IconData sf_poweroutlet_type_n_fill =
      IconData(0x101330, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.n.square
  static const IconData sf_poweroutlet_type_n_square =
      IconData(0x10107C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.n.square.fill
  static const IconData sf_poweroutlet_type_n_square_fill =
      IconData(0x101360, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.o
  static const IconData sf_poweroutlet_type_o =
      IconData(0x101361, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.o.fill
  static const IconData sf_poweroutlet_type_o_fill =
      IconData(0x101362, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.o.square
  static const IconData sf_poweroutlet_type_o_square =
      IconData(0x10107D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol poweroutlet.type.o.square.fill
  static const IconData sf_poweroutlet_type_o_square_fill =
      IconData(0x101363, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol powerplug
  static const IconData sf_powerplug =
      IconData(0x100877, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol powerplug.fill
  static const IconData sf_powerplug_fill =
      IconData(0x100878, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol powersleep
  static const IconData sf_powersleep =
      IconData(0x100966, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer
  static const IconData sf_printer =
      IconData(0x10039A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer.dotmatrix
  static const IconData sf_printer_dotmatrix =
      IconData(0x100A9E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer.dotmatrix.fill
  static const IconData sf_printer_dotmatrix_fill =
      IconData(0x100A9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer.dotmatrix.filled.and.paper
  static const IconData sf_printer_dotmatrix_filled_and_paper =
      IconData(0x100ABF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer.fill
  static const IconData sf_printer_fill =
      IconData(0x10039B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol printer.filled.and.paper
  static const IconData sf_printer_filled_and_paper =
      IconData(0x100ABE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol projective
  static const IconData sf_projective =
      IconData(0x10018E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol purchased
  static const IconData sf_purchased =
      IconData(0x100690, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol purchased.circle
  static const IconData sf_purchased_circle =
      IconData(0x100691, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol purchased.circle.fill
  static const IconData sf_purchased_circle_fill =
      IconData(0x100692, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol puzzlepiece
  static const IconData sf_puzzlepiece =
      IconData(0x10091A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol puzzlepiece.extension
  static const IconData sf_puzzlepiece_extension =
      IconData(0x10096D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol puzzlepiece.extension.fill
  static const IconData sf_puzzlepiece_extension_fill =
      IconData(0x10096E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol puzzlepiece.fill
  static const IconData sf_puzzlepiece_fill =
      IconData(0x10091B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pyramid
  static const IconData sf_pyramid =
      IconData(0x100CCB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol pyramid.fill
  static const IconData sf_pyramid_fill =
      IconData(0x100CCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol q.circle
  static const IconData sf_q_circle =
      IconData(0x100024, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol q.circle.fill
  static const IconData sf_q_circle_fill =
      IconData(0x100025, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol q.square
  static const IconData sf_q_square =
      IconData(0x1000B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol q.square.fill
  static const IconData sf_q_square_fill =
      IconData(0x1000B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol qrcode
  static const IconData sf_qrcode =
      IconData(0x100582, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol qrcode.viewfinder
  static const IconData sf_qrcode_viewfinder =
      IconData(0x1003BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark
  static const IconData sf_questionmark =
      IconData(0x10014D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.app
  static const IconData sf_questionmark_app =
      IconData(0x100FE8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.app.dashed
  static const IconData sf_questionmark_app_dashed =
      IconData(0x100FEA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.app.fill
  static const IconData sf_questionmark_app_fill =
      IconData(0x100FE9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.bubble
  static const IconData sf_questionmark_bubble =
      IconData(0x101336, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.bubble.fill
  static const IconData sf_questionmark_bubble_fill =
      IconData(0x101337, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.circle
  static const IconData sf_questionmark_circle =
      IconData(0x10005C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.circle.fill
  static const IconData sf_questionmark_circle_fill =
      IconData(0x10005D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.diamond
  static const IconData sf_questionmark_diamond =
      IconData(0x100122, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.diamond.fill
  static const IconData sf_questionmark_diamond_fill =
      IconData(0x100123, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.folder
  static const IconData sf_questionmark_folder =
      IconData(0x100B14, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.folder.fill
  static const IconData sf_questionmark_folder_fill =
      IconData(0x100B15, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.key.filled
  static const IconData sf_questionmark_key_filled =
      IconData(0x101833, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.square
  static const IconData sf_questionmark_square =
      IconData(0x1000EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.square.dashed
  static const IconData sf_questionmark_square_dashed =
      IconData(0x100B49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.square.fill
  static const IconData sf_questionmark_square_fill =
      IconData(0x1000ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.video
  static const IconData sf_questionmark_video =
      IconData(0x100353, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol questionmark.video.fill
  static const IconData sf_questionmark_video_fill =
      IconData(0x100354, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol quote.bubble
  static const IconData sf_quote_bubble =
      IconData(0x10032E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol quote.bubble.fill
  static const IconData sf_quote_bubble_fill =
      IconData(0x10032F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol quote.closing
  static const IconData sf_quote_closing =
      IconData(0x101210, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol quote.opening
  static const IconData sf_quote_opening =
      IconData(0x10120F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol quotelevel
  static const IconData sf_quotelevel =
      IconData(0x101596, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.button.roundedbottom.horizontal
  static const IconData sf_r_button_roundedbottom_horizontal =
      IconData(0x100A0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.button.roundedbottom.horizontal.fill
  static const IconData sf_r_button_roundedbottom_horizontal_fill =
      IconData(0x100A0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.circle
  static const IconData sf_r_circle =
      IconData(0x100026, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.circle.fill
  static const IconData sf_r_circle_fill =
      IconData(0x100027, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick
  static const IconData sf_r_joystick =
      IconData(0x100993, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.fill
  static const IconData sf_r_joystick_fill =
      IconData(0x100AC2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.press.down
  static const IconData sf_r_joystick_press_down =
      IconData(0x100995, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.press.down.fill
  static const IconData sf_r_joystick_press_down_fill =
      IconData(0x100AC4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.down
  static const IconData sf_r_joystick_tilt_down =
      IconData(0x100FE4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.down.fill
  static const IconData sf_r_joystick_tilt_down_fill =
      IconData(0x100FE5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.left
  static const IconData sf_r_joystick_tilt_left =
      IconData(0x100FDE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.left.fill
  static const IconData sf_r_joystick_tilt_left_fill =
      IconData(0x100FDF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.right
  static const IconData sf_r_joystick_tilt_right =
      IconData(0x100FE0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.right.fill
  static const IconData sf_r_joystick_tilt_right_fill =
      IconData(0x100FE1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.up
  static const IconData sf_r_joystick_tilt_up =
      IconData(0x100FE2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.joystick.tilt.up.fill
  static const IconData sf_r_joystick_tilt_up_fill =
      IconData(0x100FE3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.square
  static const IconData sf_r_square =
      IconData(0x1000B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.square.fill
  static const IconData sf_r_square_fill =
      IconData(0x1000B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.square.on.square
  static const IconData sf_r_square_on_square =
      IconData(0x100B58, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r.square.on.square.fill
  static const IconData sf_r_square_on_square_fill =
      IconData(0x100B59, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r1.button.roundedbottom.horizontal
  static const IconData sf_r1_button_roundedbottom_horizontal =
      IconData(0x100A0F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r1.button.roundedbottom.horizontal.fill
  static const IconData sf_r1_button_roundedbottom_horizontal_fill =
      IconData(0x100A10, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r1.circle
  static const IconData sf_r1_circle =
      IconData(0x101E89, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r1.circle.fill
  static const IconData sf_r1_circle_fill =
      IconData(0x101E8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.button.angledtop.vertical.right
  static const IconData sf_r2_button_angledtop_vertical_right =
      IconData(0x101DF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.button.angledtop.vertical.right.fill
  static const IconData sf_r2_button_angledtop_vertical_right_fill =
      IconData(0x101DF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.button.roundedtop.horizontal
  static const IconData sf_r2_button_roundedtop_horizontal =
      IconData(0x100A11, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.button.roundedtop.horizontal.fill
  static const IconData sf_r2_button_roundedtop_horizontal_fill =
      IconData(0x100A12, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.circle
  static const IconData sf_r2_circle =
      IconData(0x101E8D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r2.circle.fill
  static const IconData sf_r2_circle_fill =
      IconData(0x101E8E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r3.button.angledbottom.horizontal.right
  static const IconData sf_r3_button_angledbottom_horizontal_right =
      IconData(0x101E09, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r3.button.angledbottom.horizontal.right.fill
  static const IconData sf_r3_button_angledbottom_horizontal_right_fill =
      IconData(0x101E0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r4.button.horizontal
  static const IconData sf_r4_button_horizontal =
      IconData(0x101EA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol r4.button.horizontal.fill
  static const IconData sf_r4_button_horizontal_fill =
      IconData(0x101EA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol radio
  static const IconData sf_radio =
      IconData(0x100A94, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol radio.fill
  static const IconData sf_radio_fill =
      IconData(0x100A95, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rainbow
  static const IconData sf_rainbow =
      IconData(0x100F2D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rays
  static const IconData sf_rays =
      IconData(0x1001EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rb.button.roundedbottom.horizontal
  static const IconData sf_rb_button_roundedbottom_horizontal =
      IconData(0x100A15, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rb.button.roundedbottom.horizontal.fill
  static const IconData sf_rb_button_roundedbottom_horizontal_fill =
      IconData(0x100A16, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rb.circle
  static const IconData sf_rb_circle =
      IconData(0x101E8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rb.circle.fill
  static const IconData sf_rb_circle_fill =
      IconData(0x101E8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol record.circle
  static const IconData sf_record_circle =
      IconData(0x100899, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol record.circle.fill
  static const IconData sf_record_circle_fill =
      IconData(0x10089A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol recordingtape
  static const IconData sf_recordingtape =
      IconData(0x10057C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol recordingtape.circle
  static const IconData sf_recordingtape_circle =
      IconData(0x1012EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol recordingtape.circle.fill
  static const IconData sf_recordingtape_circle_fill =
      IconData(0x1012EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle
  static const IconData sf_rectangle =
      IconData(0x1003C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.2.swap
  static const IconData sf_rectangle_2_swap =
      IconData(0x101040, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.3.group
  static const IconData sf_rectangle_3_group =
      IconData(0x1001F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.3.group.bubble
  static const IconData sf_rectangle_3_group_bubble =
      IconData(0x100B04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.3.group.bubble.fill
  static const IconData sf_rectangle_3_group_bubble_fill =
      IconData(0x100B05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.3.group.fill
  static const IconData sf_rectangle_3_group_fill =
      IconData(0x100685, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.arrow.up.right.and.arrow.down.left
  static const IconData sf_rectangle_and_arrow_up_right_and_arrow_down_left =
      IconData(0x10066E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.arrow.up.right.and.arrow.down.left.slash
  static const IconData
      sf_rectangle_and_arrow_up_right_and_arrow_down_left_slash =
      IconData(0x10066F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.hand.point.up.left
  static const IconData sf_rectangle_and_hand_point_up_left =
      IconData(0x100AA4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.hand.point.up.left.fill
  static const IconData sf_rectangle_and_hand_point_up_left_fill =
      IconData(0x100AA5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.hand.point.up.left.filled
  static const IconData sf_rectangle_and_hand_point_up_left_filled =
      IconData(0x100AA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.paperclip
  static const IconData sf_rectangle_and_paperclip =
      IconData(0x100496, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.pencil.and.ellipsis
  static const IconData sf_rectangle_and_pencil_and_ellipsis =
      IconData(0x10020F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.and.text.magnifyingglass
  static const IconData sf_rectangle_and_text_magnifyingglass =
      IconData(0x100B38, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.arrowtriangle.2.inward
  static const IconData sf_rectangle_arrowtriangle_2_inward =
      IconData(0x100AFA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.arrowtriangle.2.outward
  static const IconData sf_rectangle_arrowtriangle_2_outward =
      IconData(0x100AF9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.badge.checkmark
  static const IconData sf_rectangle_badge_checkmark =
      IconData(0x1003D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.badge.minus
  static const IconData sf_rectangle_badge_minus =
      IconData(0x1003D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.badge.person.crop
  static const IconData sf_rectangle_badge_person_crop =
      IconData(0x100D5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.badge.plus
  static const IconData sf_rectangle_badge_plus =
      IconData(0x1003D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.badge.xmark
  static const IconData sf_rectangle_badge_xmark =
      IconData(0x1003D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.bottomhalf.filled
  static const IconData sf_rectangle_bottomhalf_filled =
      IconData(0x100FF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.bottomhalf.inset.filled
  static const IconData sf_rectangle_bottomhalf_inset_filled =
      IconData(0x100FAF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.bottomthird.inset.filled
  static const IconData sf_rectangle_bottomthird_inset_filled =
      IconData(0x100A28, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.center.inset.filled
  static const IconData sf_rectangle_center_inset_filled =
      IconData(0x10095D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.center.inset.filled.badge.plus
  static const IconData sf_rectangle_center_inset_filled_badge_plus =
      IconData(0x101214, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.checkered
  static const IconData sf_rectangle_checkered =
      IconData(0x100AAB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.compress.vertical
  static const IconData sf_rectangle_compress_vertical =
      IconData(0x100437, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.connected.to.line.below
  static const IconData sf_rectangle_connected_to_line_below =
      IconData(0x100A72, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.dashed
  static const IconData sf_rectangle_dashed =
      IconData(0x100941, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.dashed.and.paperclip
  static const IconData sf_rectangle_dashed_and_paperclip =
      IconData(0x10096A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.dashed.badge.record
  static const IconData sf_rectangle_dashed_badge_record =
      IconData(0x100942, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.expand.vertical
  static const IconData sf_rectangle_expand_vertical =
      IconData(0x100438, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill
  static const IconData sf_rectangle_fill =
      IconData(0x1003C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.badge.checkmark
  static const IconData sf_rectangle_fill_badge_checkmark =
      IconData(0x1003D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.badge.minus
  static const IconData sf_rectangle_fill_badge_minus =
      IconData(0x1003D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.badge.person.crop
  static const IconData sf_rectangle_fill_badge_person_crop =
      IconData(0x100D5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.badge.plus
  static const IconData sf_rectangle_fill_badge_plus =
      IconData(0x1003D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.badge.xmark
  static const IconData sf_rectangle_fill_badge_xmark =
      IconData(0x1003D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.on.rectangle.angled.fill
  static const IconData sf_rectangle_fill_on_rectangle_angled_fill =
      IconData(0x100470, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.fill.on.rectangle.fill
  static const IconData sf_rectangle_fill_on_rectangle_fill =
      IconData(0x1003E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.filled.and.hand.point.up.left
  static const IconData sf_rectangle_filled_and_hand_point_up_left =
      IconData(0x100AA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.1x2
  static const IconData sf_rectangle_grid_1x2 =
      IconData(0x1004DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.1x2.fill
  static const IconData sf_rectangle_grid_1x2_fill =
      IconData(0x100689, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.2x2
  static const IconData sf_rectangle_grid_2x2 =
      IconData(0x1006E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.2x2.fill
  static const IconData sf_rectangle_grid_2x2_fill =
      IconData(0x1006E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.3x2
  static const IconData sf_rectangle_grid_3x2 =
      IconData(0x1001F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.grid.3x2.fill
  static const IconData sf_rectangle_grid_3x2_fill =
      IconData(0x100686, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.bottomleading.filled
  static const IconData sf_rectangle_inset_bottomleading_filled =
      IconData(0x10106B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.bottomleft.filled
  static const IconData sf_rectangle_inset_bottomleft_filled =
      IconData(0x100B75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.bottomright.filled
  static const IconData sf_rectangle_inset_bottomright_filled =
      IconData(0x100B76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.bottomtrailing.filled
  static const IconData sf_rectangle_inset_bottomtrailing_filled =
      IconData(0x10106C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.filled
  static const IconData sf_rectangle_inset_filled =
      IconData(0x100933, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.filled.and.cursorarrow
  static const IconData sf_rectangle_inset_filled_and_cursorarrow =
      IconData(0x1021D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.filled.and.person.filled
  static const IconData sf_rectangle_inset_filled_and_person_filled =
      IconData(0x101140, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.filled.badge.record
  static const IconData sf_rectangle_inset_filled_badge_record =
      IconData(0x1020D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.filled.on.rectangle
  static const IconData sf_rectangle_inset_filled_on_rectangle =
      IconData(0x100DA3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.topleading.filled
  static const IconData sf_rectangle_inset_topleading_filled =
      IconData(0x101069, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.topleft.filled
  static const IconData sf_rectangle_inset_topleft_filled =
      IconData(0x100B73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.topright.filled
  static const IconData sf_rectangle_inset_topright_filled =
      IconData(0x100B74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.inset.toptrailing.filled
  static const IconData sf_rectangle_inset_toptrailing_filled =
      IconData(0x10106A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.landscape.rotate
  static const IconData sf_rectangle_landscape_rotate =
      IconData(0x101EEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.leadinghalf.filled
  static const IconData sf_rectangle_leadinghalf_filled =
      IconData(0x1012F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.leadinghalf.inset.filled
  static const IconData sf_rectangle_leadinghalf_inset_filled =
      IconData(0x101063, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.leadinghalf.inset.filled.arrow.leading
  static const IconData sf_rectangle_leadinghalf_inset_filled_arrow_leading =
      IconData(0x101065, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.leadingthird.inset.filled
  static const IconData sf_rectangle_leadingthird_inset_filled =
      IconData(0x101067, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.lefthalf.filled
  static const IconData sf_rectangle_lefthalf_filled =
      IconData(0x100936, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.lefthalf.inset.filled
  static const IconData sf_rectangle_lefthalf_inset_filled =
      IconData(0x100934, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.lefthalf.inset.filled.arrow.left
  static const IconData sf_rectangle_lefthalf_inset_filled_arrow_left =
      IconData(0x10095E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.leftthird.inset.filled
  static const IconData sf_rectangle_leftthird_inset_filled =
      IconData(0x100A31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle
  static const IconData sf_rectangle_on_rectangle =
      IconData(0x1003E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.angled
  static const IconData sf_rectangle_on_rectangle_angled =
      IconData(0x10046F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.badge.gearshape
  static const IconData sf_rectangle_on_rectangle_badge_gearshape =
      IconData(0x1021D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.button.angledtop.vertical.left
  static const IconData
      sf_rectangle_on_rectangle_button_angledtop_vertical_left =
      IconData(0x101DF7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.button.angledtop.vertical.left.fill
  static const IconData
      sf_rectangle_on_rectangle_button_angledtop_vertical_left_fill =
      IconData(0x101DF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.circle
  static const IconData sf_rectangle_on_rectangle_circle =
      IconData(0x10093D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.circle.fill
  static const IconData sf_rectangle_on_rectangle_circle_fill =
      IconData(0x10093E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.slash
  static const IconData sf_rectangle_on_rectangle_slash =
      IconData(0x100940, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.slash.circle
  static const IconData sf_rectangle_on_rectangle_slash_circle =
      IconData(0x100EEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.slash.circle.fill
  static const IconData sf_rectangle_on_rectangle_slash_circle_fill =
      IconData(0x100EF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.slash.fill
  static const IconData sf_rectangle_on_rectangle_slash_fill =
      IconData(0x10093F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.square
  static const IconData sf_rectangle_on_rectangle_square =
      IconData(0x100F4F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.on.rectangle.square.fill
  static const IconData sf_rectangle_on_rectangle_square_fill =
      IconData(0x100F50, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait
  static const IconData sf_rectangle_portrait =
      IconData(0x1007CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.and.arrow.forward
  static const IconData sf_rectangle_portrait_and_arrow_forward =
      IconData(0x1016A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.and.arrow.forward.fill
  static const IconData sf_rectangle_portrait_and_arrow_forward_fill =
      IconData(0x1016A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.and.arrow.right
  static const IconData sf_rectangle_portrait_and_arrow_right =
      IconData(0x100EF5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.and.arrow.right.fill
  static const IconData sf_rectangle_portrait_and_arrow_right_fill =
      IconData(0x100EF6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.arrowtriangle.2.inward
  static const IconData sf_rectangle_portrait_arrowtriangle_2_inward =
      IconData(0x100AFC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.arrowtriangle.2.outward
  static const IconData sf_rectangle_portrait_arrowtriangle_2_outward =
      IconData(0x100AFB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.badge.plus
  static const IconData sf_rectangle_portrait_badge_plus =
      IconData(0x10194B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.badge.plus.fill
  static const IconData sf_rectangle_portrait_badge_plus_fill =
      IconData(0x10194C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomhalf.filled
  static const IconData sf_rectangle_portrait_bottomhalf_filled =
      IconData(0x100FF2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomhalf.inset.filled
  static const IconData sf_rectangle_portrait_bottomhalf_inset_filled =
      IconData(0x100F7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomleading.inset.filled
  static const IconData sf_rectangle_portrait_bottomleading_inset_filled =
      IconData(0x101073, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomleft.inset.filled
  static const IconData sf_rectangle_portrait_bottomleft_inset_filled =
      IconData(0x100F83, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomright.inset.filled
  static const IconData sf_rectangle_portrait_bottomright_inset_filled =
      IconData(0x100F82, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomthird.inset.filled
  static const IconData sf_rectangle_portrait_bottomthird_inset_filled =
      IconData(0x100F7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.bottomtrailing.inset.filled
  static const IconData sf_rectangle_portrait_bottomtrailing_inset_filled =
      IconData(0x101074, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.center.inset.filled
  static const IconData sf_rectangle_portrait_center_inset_filled =
      IconData(0x100F7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.fill
  static const IconData sf_rectangle_portrait_fill =
      IconData(0x1007D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.inset.filled
  static const IconData sf_rectangle_portrait_inset_filled =
      IconData(0x100F78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.leadinghalf.inset.filled
  static const IconData sf_rectangle_portrait_leadinghalf_inset_filled =
      IconData(0x10106D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.leadingthird.inset.filled
  static const IconData sf_rectangle_portrait_leadingthird_inset_filled =
      IconData(0x10106F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.lefthalf.filled
  static const IconData sf_rectangle_portrait_lefthalf_filled =
      IconData(0x100FEC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.lefthalf.inset.filled
  static const IconData sf_rectangle_portrait_lefthalf_inset_filled =
      IconData(0x100F84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.leftthird.inset.filled
  static const IconData sf_rectangle_portrait_leftthird_inset_filled =
      IconData(0x100F7C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait
  static const IconData sf_rectangle_portrait_on_rectangle_portrait =
      IconData(0x100F70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.angled
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_angled =
      IconData(0x101255, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.angled.fill
  static const IconData
      sf_rectangle_portrait_on_rectangle_portrait_angled_fill =
      IconData(0x101256, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.fill
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_fill =
      IconData(0x100F71, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.slash
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_slash =
      IconData(0x100F72, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.on.rectangle.portrait.slash.fill
  static const IconData sf_rectangle_portrait_on_rectangle_portrait_slash_fill =
      IconData(0x100F73, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.righthalf.filled
  static const IconData sf_rectangle_portrait_righthalf_filled =
      IconData(0x100FED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.righthalf.inset.filled
  static const IconData sf_rectangle_portrait_righthalf_inset_filled =
      IconData(0x100F85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.rightthird.inset.filled
  static const IconData sf_rectangle_portrait_rightthird_inset_filled =
      IconData(0x100F7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.rotate
  static const IconData sf_rectangle_portrait_rotate =
      IconData(0x101EEE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.slash
  static const IconData sf_rectangle_portrait_slash =
      IconData(0x100F86, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.slash.fill
  static const IconData sf_rectangle_portrait_slash_fill =
      IconData(0x100F87, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.split.2x1
  static const IconData sf_rectangle_portrait_split_2x1 =
      IconData(0x100F74, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.split.2x1.fill
  static const IconData sf_rectangle_portrait_split_2x1_fill =
      IconData(0x100F75, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.split.2x1.slash
  static const IconData sf_rectangle_portrait_split_2x1_slash =
      IconData(0x100F76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.split.2x1.slash.fill
  static const IconData sf_rectangle_portrait_split_2x1_slash_fill =
      IconData(0x100F77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.tophalf.filled
  static const IconData sf_rectangle_portrait_tophalf_filled =
      IconData(0x100FF1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.tophalf.inset.filled
  static const IconData sf_rectangle_portrait_tophalf_inset_filled =
      IconData(0x100F79, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.topleading.inset.filled
  static const IconData sf_rectangle_portrait_topleading_inset_filled =
      IconData(0x101071, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.topleft.inset.filled
  static const IconData sf_rectangle_portrait_topleft_inset_filled =
      IconData(0x100F80, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.topright.inset.filled
  static const IconData sf_rectangle_portrait_topright_inset_filled =
      IconData(0x100F81, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.topthird.inset.filled
  static const IconData sf_rectangle_portrait_topthird_inset_filled =
      IconData(0x100F7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.toptrailing.inset.filled
  static const IconData sf_rectangle_portrait_toptrailing_inset_filled =
      IconData(0x101072, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.trailinghalf.inset.filled
  static const IconData sf_rectangle_portrait_trailinghalf_inset_filled =
      IconData(0x10106E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.portrait.trailingthird.inset.filled
  static const IconData sf_rectangle_portrait_trailingthird_inset_filled =
      IconData(0x101070, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.3.to.4
  static const IconData sf_rectangle_ratio_3_to_4 =
      IconData(0x101F78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.3.to.4.fill
  static const IconData sf_rectangle_ratio_3_to_4_fill =
      IconData(0x101F79, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.4.to.3
  static const IconData sf_rectangle_ratio_4_to_3 =
      IconData(0x101F7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.4.to.3.fill
  static const IconData sf_rectangle_ratio_4_to_3_fill =
      IconData(0x101F7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.9.to.16
  static const IconData sf_rectangle_ratio_9_to_16 =
      IconData(0x101F7C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.9.to.16.fill
  static const IconData sf_rectangle_ratio_9_to_16_fill =
      IconData(0x101F7D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.16.to.9
  static const IconData sf_rectangle_ratio_16_to_9 =
      IconData(0x101F7E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.ratio.16.to.9.fill
  static const IconData sf_rectangle_ratio_16_to_9_fill =
      IconData(0x101F7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.righthalf.filled
  static const IconData sf_rectangle_righthalf_filled =
      IconData(0x100937, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.righthalf.inset.filled
  static const IconData sf_rectangle_righthalf_inset_filled =
      IconData(0x100935, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.righthalf.inset.filled.arrow.right
  static const IconData sf_rectangle_righthalf_inset_filled_arrow_right =
      IconData(0x10095F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.rightthird.inset.filled
  static const IconData sf_rectangle_rightthird_inset_filled =
      IconData(0x100A29, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.slash
  static const IconData sf_rectangle_slash =
      IconData(0x1008E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.slash.fill
  static const IconData sf_rectangle_slash_fill =
      IconData(0x1008E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.1x2
  static const IconData sf_rectangle_split_1x2 =
      IconData(0x1009CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.1x2.fill
  static const IconData sf_rectangle_split_1x2_fill =
      IconData(0x1009CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x1
  static const IconData sf_rectangle_split_2x1 =
      IconData(0x1009C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x1.fill
  static const IconData sf_rectangle_split_2x1_fill =
      IconData(0x1009C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x1.slash
  static const IconData sf_rectangle_split_2x1_slash =
      IconData(0x100F8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x1.slash.fill
  static const IconData sf_rectangle_split_2x1_slash_fill =
      IconData(0x100F8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x2
  static const IconData sf_rectangle_split_2x2 =
      IconData(0x1009CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.2x2.fill
  static const IconData sf_rectangle_split_2x2_fill =
      IconData(0x1009CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.3x1
  static const IconData sf_rectangle_split_3x1 =
      IconData(0x1003DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.3x1.fill
  static const IconData sf_rectangle_split_3x1_fill =
      IconData(0x100578, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.3x3
  static const IconData sf_rectangle_split_3x3 =
      IconData(0x1003E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.split.3x3.fill
  static const IconData sf_rectangle_split_3x3_fill =
      IconData(0x10062E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack
  static const IconData sf_rectangle_stack =
      IconData(0x1003ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.minus
  static const IconData sf_rectangle_stack_badge_minus =
      IconData(0x1003F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.person.crop
  static const IconData sf_rectangle_stack_badge_person_crop =
      IconData(0x1003F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.person.crop.fill
  static const IconData sf_rectangle_stack_badge_person_crop_fill =
      IconData(0x1003FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.play
  static const IconData sf_rectangle_stack_badge_play =
      IconData(0x100F59, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.play.fill
  static const IconData sf_rectangle_stack_badge_play_fill =
      IconData(0x100F5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.badge.plus
  static const IconData sf_rectangle_stack_badge_plus =
      IconData(0x1003F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.fill
  static const IconData sf_rectangle_stack_fill =
      IconData(0x1003EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.fill.badge.minus
  static const IconData sf_rectangle_stack_fill_badge_minus =
      IconData(0x1003F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.stack.fill.badge.plus
  static const IconData sf_rectangle_stack_fill_badge_plus =
      IconData(0x1003F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.tophalf.filled
  static const IconData sf_rectangle_tophalf_filled =
      IconData(0x100FEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.tophalf.inset.filled
  static const IconData sf_rectangle_tophalf_inset_filled =
      IconData(0x100FAE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.topthird.inset.filled
  static const IconData sf_rectangle_topthird_inset_filled =
      IconData(0x100D0A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.trailinghalf.filled
  static const IconData sf_rectangle_trailinghalf_filled =
      IconData(0x1012F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.trailinghalf.inset.filled
  static const IconData sf_rectangle_trailinghalf_inset_filled =
      IconData(0x101064, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.trailinghalf.inset.filled.arrow.trailing
  static const IconData sf_rectangle_trailinghalf_inset_filled_arrow_trailing =
      IconData(0x101066, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rectangle.trailingthird.inset.filled
  static const IconData sf_rectangle_trailingthird_inset_filled =
      IconData(0x101068, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol refrigerator
  static const IconData sf_refrigerator =
      IconData(0x10141E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol refrigerator.fill
  static const IconData sf_refrigerator_fill =
      IconData(0x10141F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat
  static const IconData sf_repeat =
      IconData(0x10029E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat.1
  static const IconData sf_repeat_1 =
      IconData(0x10029F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat.1.circle
  static const IconData sf_repeat_1_circle =
      IconData(0x100D4D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat.1.circle.fill
  static const IconData sf_repeat_1_circle_fill =
      IconData(0x100D4E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat.circle
  static const IconData sf_repeat_circle =
      IconData(0x100D4B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol repeat.circle.fill
  static const IconData sf_repeat_circle_fill =
      IconData(0x100D4C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol restart
  static const IconData sf_restart =
      IconData(0x100BC6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol restart.circle
  static const IconData sf_restart_circle =
      IconData(0x1008E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol restart.circle.fill
  static const IconData sf_restart_circle_fill =
      IconData(0x100D9E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol retarder.brakesignal
  static const IconData sf_retarder_brakesignal =
      IconData(0x1017C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol retarder.brakesignal.and.exclamationmark
  static const IconData sf_retarder_brakesignal_and_exclamationmark =
      IconData(0x1017C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol retarder.brakesignal.slash
  static const IconData sf_retarder_brakesignal_slash =
      IconData(0x1017CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol return
  static const IconData sf_return =
      IconData(0x100147, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol return.left
  static const IconData sf_return_left =
      IconData(0x101086, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol return.right
  static const IconData sf_return_right =
      IconData(0x101087, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rhombus
  static const IconData sf_rhombus =
      IconData(0x1002C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rhombus.fill
  static const IconData sf_rhombus_fill =
      IconData(0x1002C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol right
  static const IconData sf_right =
      IconData(0x1018E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol right.circle
  static const IconData sf_right_circle =
      IconData(0x1018E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol right.circle.fill
  static const IconData sf_right_circle_fill =
      IconData(0x1018E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol righttriangle
  static const IconData sf_righttriangle =
      IconData(0x101E6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol righttriangle.fill
  static const IconData sf_righttriangle_fill =
      IconData(0x101E6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol righttriangle.split.diagonal
  static const IconData sf_righttriangle_split_diagonal =
      IconData(0x100378, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol righttriangle.split.diagonal.fill
  static const IconData sf_righttriangle_split_diagonal_fill =
      IconData(0x100379, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rm.button.horizontal
  static const IconData sf_rm_button_horizontal =
      IconData(0x101EA6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rm.button.horizontal.fill
  static const IconData sf_rm_button_horizontal_fill =
      IconData(0x101EA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol road.lane.arrowtriangle.2.inward
  static const IconData sf_road_lane_arrowtriangle_2_inward =
      IconData(0x101576, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol road.lanes
  static const IconData sf_road_lanes =
      IconData(0x101577, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol road.lanes.curved.left
  static const IconData sf_road_lanes_curved_left =
      IconData(0x10157A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol road.lanes.curved.right
  static const IconData sf_road_lanes_curved_right =
      IconData(0x10157B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol roller.shade.closed
  static const IconData sf_roller_shade_closed =
      IconData(0x10147A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol roller.shade.open
  static const IconData sf_roller_shade_open =
      IconData(0x101479, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol roman.shade.closed
  static const IconData sf_roman_shade_closed =
      IconData(0x10147C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol roman.shade.open
  static const IconData sf_roman_shade_open =
      IconData(0x10147B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rosette
  static const IconData sf_rosette =
      IconData(0x1006EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.3d
  static const IconData sf_rotate_3d =
      IconData(0x100887, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.3d.circle
  static const IconData sf_rotate_3d_circle =
      IconData(0x101C40, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.3d.circle.fill
  static const IconData sf_rotate_3d_circle_fill =
      IconData(0x101C41, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.3d.fill
  static const IconData sf_rotate_3d_fill =
      IconData(0x101C42, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.left
  static const IconData sf_rotate_left =
      IconData(0x1003AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.left.fill
  static const IconData sf_rotate_left_fill =
      IconData(0x1003AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.right
  static const IconData sf_rotate_right =
      IconData(0x1003B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rotate.right.fill
  static const IconData sf_rotate_right_fill =
      IconData(0x1003B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rsb.button.angledbottom.horizontal.right
  static const IconData sf_rsb_button_angledbottom_horizontal_right =
      IconData(0x101E0D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rsb.button.angledbottom.horizontal.right.fill
  static const IconData sf_rsb_button_angledbottom_horizontal_right_fill =
      IconData(0x101E0E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rt.button.roundedtop.horizontal
  static const IconData sf_rt_button_roundedtop_horizontal =
      IconData(0x100A19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rt.button.roundedtop.horizontal.fill
  static const IconData sf_rt_button_roundedtop_horizontal_fill =
      IconData(0x100A1A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rt.circle
  static const IconData sf_rt_circle =
      IconData(0x101E8F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rt.circle.fill
  static const IconData sf_rt_circle_fill =
      IconData(0x101E90, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign
  static const IconData sf_rublesign =
      IconData(0x101446, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign.arrow.circlepath
  static const IconData sf_rublesign_arrow_circlepath =
      IconData(0x102219, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign.circle
  static const IconData sf_rublesign_circle =
      IconData(0x1005A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign.circle.fill
  static const IconData sf_rublesign_circle_fill =
      IconData(0x1005A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign.square
  static const IconData sf_rublesign_square =
      IconData(0x1005E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rublesign.square.fill
  static const IconData sf_rublesign_square_fill =
      IconData(0x1005E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ruler
  static const IconData sf_ruler =
      IconData(0x1007C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ruler.fill
  static const IconData sf_ruler_fill =
      IconData(0x1007C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign
  static const IconData sf_rupeesign =
      IconData(0x10145B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign.arrow.circlepath
  static const IconData sf_rupeesign_arrow_circlepath =
      IconData(0x10222E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign.circle
  static const IconData sf_rupeesign_circle =
      IconData(0x1005CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign.circle.fill
  static const IconData sf_rupeesign_circle_fill =
      IconData(0x1005D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign.square
  static const IconData sf_rupeesign_square =
      IconData(0x10060F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol rupeesign.square.fill
  static const IconData sf_rupeesign_square_fill =
      IconData(0x100610, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol s.circle
  static const IconData sf_s_circle =
      IconData(0x100028, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol s.circle.fill
  static const IconData sf_s_circle_fill =
      IconData(0x100029, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol s.square
  static const IconData sf_s_square =
      IconData(0x1000B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol s.square.fill
  static const IconData sf_s_square_fill =
      IconData(0x1000B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol safari
  static const IconData sf_safari =
      IconData(0x1003AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol safari.fill
  static const IconData sf_safari_fill =
      IconData(0x1003AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sailboat
  static const IconData sf_sailboat =
      IconData(0x1012F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sailboat.circle
  static const IconData sf_sailboat_circle =
      IconData(0x101798, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sailboat.circle.fill
  static const IconData sf_sailboat_circle_fill =
      IconData(0x101799, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sailboat.fill
  static const IconData sf_sailboat_fill =
      IconData(0x1012F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scale.3d
  static const IconData sf_scale_3d =
      IconData(0x100886, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scalemass
  static const IconData sf_scalemass =
      IconData(0x100B6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scalemass.fill
  static const IconData sf_scalemass_fill =
      IconData(0x100B6E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scanner
  static const IconData sf_scanner =
      IconData(0x100A8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scanner.fill
  static const IconData sf_scanner_fill =
      IconData(0x100A8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scissors
  static const IconData sf_scissors =
      IconData(0x100248, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scissors.badge.ellipsis
  static const IconData sf_scissors_badge_ellipsis =
      IconData(0x1007B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scissors.circle
  static const IconData sf_scissors_circle =
      IconData(0x1011D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scissors.circle.fill
  static const IconData sf_scissors_circle_fill =
      IconData(0x1011D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scooter
  static const IconData sf_scooter =
      IconData(0x10120C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scope
  static const IconData sf_scope =
      IconData(0x100429, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol screwdriver
  static const IconData sf_screwdriver =
      IconData(0x100908, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol screwdriver.fill
  static const IconData sf_screwdriver_fill =
      IconData(0x100909, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scribble
  static const IconData sf_scribble =
      IconData(0x1004E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scribble.variable
  static const IconData sf_scribble_variable =
      IconData(0x100911, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scroll
  static const IconData sf_scroll =
      IconData(0x10090F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol scroll.fill
  static const IconData sf_scroll_fill =
      IconData(0x100910, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sdcard
  static const IconData sf_sdcard =
      IconData(0x100A87, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sdcard.fill
  static const IconData sf_sdcard_fill =
      IconData(0x100A88, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol seal
  static const IconData sf_seal =
      IconData(0x1007C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol seal.fill
  static const IconData sf_seal_fill =
      IconData(0x1007C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol selection.pin.in.out
  static const IconData sf_selection_pin_in_out =
      IconData(0x100460, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sensor
  static const IconData sf_sensor =
      IconData(0x101509, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sensor.fill
  static const IconData sf_sensor_fill =
      IconData(0x10150A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sensor.tag.radiowaves.forward
  static const IconData sf_sensor_tag_radiowaves_forward =
      IconData(0x10105D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sensor.tag.radiowaves.forward.fill
  static const IconData sf_sensor_tag_radiowaves_forward_fill =
      IconData(0x10105E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol server.rack
  static const IconData sf_server_rack =
      IconData(0x100AAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shadow
  static const IconData sf_shadow =
      IconData(0x100A21, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shared.with.you
  static const IconData sf_shared_with_you =
      IconData(0x101141, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shared.with.you.circle
  static const IconData sf_shared_with_you_circle =
      IconData(0x1021C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shared.with.you.circle.fill
  static const IconData sf_shared_with_you_circle_fill =
      IconData(0x102100, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shared.with.you.slash
  static const IconData sf_shared_with_you_slash =
      IconData(0x1011E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shareplay
  static const IconData sf_shareplay =
      IconData(0x1010D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shareplay.slash
  static const IconData sf_shareplay_slash =
      IconData(0x100D14, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shazam.logo
  static const IconData sf_shazam_logo =
      IconData(0x101234, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shazam.logo.fill
  static const IconData sf_shazam_logo_fill =
      IconData(0x101235, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign
  static const IconData sf_shekelsign =
      IconData(0x101459, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign.arrow.circlepath
  static const IconData sf_shekelsign_arrow_circlepath =
      IconData(0x10222C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign.circle
  static const IconData sf_shekelsign_circle =
      IconData(0x1005CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign.circle.fill
  static const IconData sf_shekelsign_circle_fill =
      IconData(0x1005CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign.square
  static const IconData sf_shekelsign_square =
      IconData(0x10060B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shekelsign.square.fill
  static const IconData sf_shekelsign_square_fill =
      IconData(0x10060C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield
  static const IconData sf_shield =
      IconData(0x100666, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.checkered
  static const IconData sf_shield_checkered =
      IconData(0x100D54, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.fill
  static const IconData sf_shield_fill =
      IconData(0x100667, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.lefthalf.filled
  static const IconData sf_shield_lefthalf_filled =
      IconData(0x100668, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.lefthalf.filled.badge.checkmark
  static const IconData sf_shield_lefthalf_filled_badge_checkmark =
      IconData(0x101DE5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.lefthalf.filled.slash
  static const IconData sf_shield_lefthalf_filled_slash =
      IconData(0x100C8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.lefthalf.filled.trianglebadge.exclamationmark
  static const IconData
      sf_shield_lefthalf_filled_trianglebadge_exclamationmark =
      IconData(0x101DE7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.righthalf.filled
  static const IconData sf_shield_righthalf_filled =
      IconData(0x100FEE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.slash
  static const IconData sf_shield_slash =
      IconData(0x1007A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shield.slash.fill
  static const IconData sf_shield_slash_fill =
      IconData(0x1007A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shift
  static const IconData sf_shift =
      IconData(0x10019D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shift.fill
  static const IconData sf_shift_fill =
      IconData(0x10019E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox
  static const IconData sf_shippingbox =
      IconData(0x10041A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox.and.arrow.backward
  static const IconData sf_shippingbox_and_arrow_backward =
      IconData(0x1007C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox.and.arrow.backward.fill
  static const IconData sf_shippingbox_and_arrow_backward_fill =
      IconData(0x1007C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox.circle
  static const IconData sf_shippingbox_circle =
      IconData(0x1011C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox.circle.fill
  static const IconData sf_shippingbox_circle_fill =
      IconData(0x1011C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shippingbox.fill
  static const IconData sf_shippingbox_fill =
      IconData(0x10041B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe
  static const IconData sf_shoe =
      IconData(0x1018EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe.2
  static const IconData sf_shoe_2 =
      IconData(0x1018F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe.2.fill
  static const IconData sf_shoe_2_fill =
      IconData(0x1018F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe.circle
  static const IconData sf_shoe_circle =
      IconData(0x101904, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe.circle.fill
  static const IconData sf_shoe_circle_fill =
      IconData(0x101905, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoe.fill
  static const IconData sf_shoe_fill =
      IconData(0x1018F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shoeprints.fill
  static const IconData sf_shoeprints_fill =
      IconData(0x101508, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower
  static const IconData sf_shower =
      IconData(0x1014C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower.fill
  static const IconData sf_shower_fill =
      IconData(0x1014C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower.handheld
  static const IconData sf_shower_handheld =
      IconData(0x1014CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower.handheld.fill
  static const IconData sf_shower_handheld_fill =
      IconData(0x1014CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower.sidejet
  static const IconData sf_shower_sidejet =
      IconData(0x1014C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shower.sidejet.fill
  static const IconData sf_shower_sidejet_fill =
      IconData(0x1014C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shuffle
  static const IconData sf_shuffle =
      IconData(0x10029D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shuffle.circle
  static const IconData sf_shuffle_circle =
      IconData(0x100D49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol shuffle.circle.fill
  static const IconData sf_shuffle_circle_fill =
      IconData(0x100D4A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.leading
  static const IconData sf_sidebar_leading =
      IconData(0x100C31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.left
  static const IconData sf_sidebar_left =
      IconData(0x1003DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.right
  static const IconData sf_sidebar_right =
      IconData(0x1003DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.squares.leading
  static const IconData sf_sidebar_squares_leading =
      IconData(0x100C66, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.squares.left
  static const IconData sf_sidebar_squares_left =
      IconData(0x100C64, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.squares.right
  static const IconData sf_sidebar_squares_right =
      IconData(0x100C65, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.squares.trailing
  static const IconData sf_sidebar_squares_trailing =
      IconData(0x100C67, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sidebar.trailing
  static const IconData sf_sidebar_trailing =
      IconData(0x100C32, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signature
  static const IconData sf_signature =
      IconData(0x100664, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.and.arrowtriangle.up
  static const IconData sf_signpost_and_arrowtriangle_up =
      IconData(0x101773, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.circle
  static const IconData sf_signpost_and_arrowtriangle_up_circle =
      IconData(0x101790, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.circle.fill
  static const IconData sf_signpost_and_arrowtriangle_up_circle_fill =
      IconData(0x101791, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.and.arrowtriangle.up.fill
  static const IconData sf_signpost_and_arrowtriangle_up_fill =
      IconData(0x101774, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.left
  static const IconData sf_signpost_left =
      IconData(0x100C2F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.left.circle
  static const IconData sf_signpost_left_circle =
      IconData(0x10178A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.left.circle.fill
  static const IconData sf_signpost_left_circle_fill =
      IconData(0x10178B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.left.fill
  static const IconData sf_signpost_left_fill =
      IconData(0x100C30, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right
  static const IconData sf_signpost_right =
      IconData(0x100BCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.and.left
  static const IconData sf_signpost_right_and_left =
      IconData(0x10176E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.and.left.circle
  static const IconData sf_signpost_right_and_left_circle =
      IconData(0x10178E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.and.left.circle.fill
  static const IconData sf_signpost_right_and_left_circle_fill =
      IconData(0x10178F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.and.left.fill
  static const IconData sf_signpost_right_and_left_fill =
      IconData(0x10176D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.circle
  static const IconData sf_signpost_right_circle =
      IconData(0x10178C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.circle.fill
  static const IconData sf_signpost_right_circle_fill =
      IconData(0x10178D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol signpost.right.fill
  static const IconData sf_signpost_right_fill =
      IconData(0x100BCD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol simcard
  static const IconData sf_simcard =
      IconData(0x100805, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol simcard.2
  static const IconData sf_simcard_2 =
      IconData(0x100879, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol simcard.2.fill
  static const IconData sf_simcard_2_fill =
      IconData(0x10087A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol simcard.fill
  static const IconData sf_simcard_fill =
      IconData(0x100806, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sink
  static const IconData sf_sink =
      IconData(0x10142A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sink.fill
  static const IconData sf_sink_fill =
      IconData(0x10142B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol skateboard
  static const IconData sf_skateboard =
      IconData(0x1020A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol skateboard.fill
  static const IconData sf_skateboard_fill =
      IconData(0x1020AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol skew
  static const IconData sf_skew =
      IconData(0x100375, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol skis
  static const IconData sf_skis =
      IconData(0x1020AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol skis.fill
  static const IconData sf_skis_fill =
      IconData(0x1020AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slash.circle
  static const IconData sf_slash_circle =
      IconData(0x100567, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slash.circle.fill
  static const IconData sf_slash_circle_fill =
      IconData(0x100568, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sleep
  static const IconData sf_sleep =
      IconData(0x10071A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sleep.circle
  static const IconData sf_sleep_circle =
      IconData(0x100D9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sleep.circle.fill
  static const IconData sf_sleep_circle_fill =
      IconData(0x100DA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.2.gobackward
  static const IconData sf_slider_horizontal_2_gobackward =
      IconData(0x10168C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.2.rectangle.and.arrow.triangle.2.circlepath
  static const IconData
      sf_slider_horizontal_2_rectangle_and_arrow_triangle_2_circlepath =
      IconData(0x10114A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.2.square
  static const IconData sf_slider_horizontal_2_square =
      IconData(0x101D64, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.2.square.badge.arrow.down
  static const IconData sf_slider_horizontal_2_square_badge_arrow_down =
      IconData(0x10168B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.2.square.on.square
  static const IconData sf_slider_horizontal_2_square_on_square =
      IconData(0x10168A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.3
  static const IconData sf_slider_horizontal_3 =
      IconData(0x100306, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.below.rectangle
  static const IconData sf_slider_horizontal_below_rectangle =
      IconData(0x100417, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.below.square.and.square.filled
  static const IconData sf_slider_horizontal_below_square_and_square_filled =
      IconData(0x101404, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.below.square.filled.and.square
  static const IconData sf_slider_horizontal_below_square_filled_and_square =
      IconData(0x100C17, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.horizontal.below.sun.max
  static const IconData sf_slider_horizontal_below_sun_max =
      IconData(0x101FCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slider.vertical.3
  static const IconData sf_slider_vertical_3 =
      IconData(0x1007F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol slowmo
  static const IconData sf_slowmo =
      IconData(0x1001F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smallcircle.circle
  static const IconData sf_smallcircle_circle =
      IconData(0x10056A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smallcircle.circle.fill
  static const IconData sf_smallcircle_circle_fill =
      IconData(0x10056B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smallcircle.filled.circle
  static const IconData sf_smallcircle_filled_circle =
      IconData(0x100377, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smallcircle.filled.circle.fill
  static const IconData sf_smallcircle_filled_circle_fill =
      IconData(0x100569, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smartphone
  static const IconData sf_smartphone =
      IconData(0x10192B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smoke
  static const IconData sf_smoke =
      IconData(0x1001E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smoke.circle
  static const IconData sf_smoke_circle =
      IconData(0x1016ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smoke.circle.fill
  static const IconData sf_smoke_circle_fill =
      IconData(0x1016EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol smoke.fill
  static const IconData sf_smoke_fill =
      IconData(0x1001E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowboard
  static const IconData sf_snowboard =
      IconData(0x1020AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowboard.fill
  static const IconData sf_snowboard_fill =
      IconData(0x1020AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake
  static const IconData sf_snowflake =
      IconData(0x1001E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake.circle
  static const IconData sf_snowflake_circle =
      IconData(0x1011CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake.circle.fill
  static const IconData sf_snowflake_circle_fill =
      IconData(0x1011CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake.road.lane
  static const IconData sf_snowflake_road_lane =
      IconData(0x101579, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake.road.lane.dashed
  static const IconData sf_snowflake_road_lane_dashed =
      IconData(0x101580, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol snowflake.slash
  static const IconData sf_snowflake_slash =
      IconData(0x101802, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball
  static const IconData sf_soccerball =
      IconData(0x1009A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball.circle
  static const IconData sf_soccerball_circle =
      IconData(0x1016B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball.circle.fill
  static const IconData sf_soccerball_circle_fill =
      IconData(0x1016B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball.circle.fill.inverse
  static const IconData sf_soccerball_circle_fill_inverse =
      IconData(0x10173D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball.circle.inverse
  static const IconData sf_soccerball_circle_inverse =
      IconData(0x1016BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol soccerball.inverse
  static const IconData sf_soccerball_inverse =
      IconData(0x1015C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sofa
  static const IconData sf_sofa =
      IconData(0x101432, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sofa.fill
  static const IconData sf_sofa_fill =
      IconData(0x101433, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sos
  static const IconData sf_sos =
      IconData(0x100725, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sos.circle
  static const IconData sf_sos_circle =
      IconData(0x1017AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sos.circle.fill
  static const IconData sf_sos_circle_fill =
      IconData(0x1017AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol space
  static const IconData sf_space =
      IconData(0x10107A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkle
  static const IconData sf_sparkle =
      IconData(0x100AF8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkle.magnifyingglass
  static const IconData sf_sparkle_magnifyingglass =
      IconData(0x1011E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles
  static const IconData sf_sparkles =
      IconData(0x1001BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles.rectangle.stack
  static const IconData sf_sparkles_rectangle_stack =
      IconData(0x100CB3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles.rectangle.stack.fill
  static const IconData sf_sparkles_rectangle_stack_fill =
      IconData(0x100CB4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles.square.filled.on.square
  static const IconData sf_sparkles_square_filled_on_square =
      IconData(0x100C19, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles.tv
  static const IconData sf_sparkles_tv =
      IconData(0x10114B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sparkles.tv.fill
  static const IconData sf_sparkles_tv_fill =
      IconData(0x10114C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker
  static const IconData sf_speaker =
      IconData(0x1002A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.badge.exclamationmark
  static const IconData sf_speaker_badge_exclamationmark =
      IconData(0x100F8F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.badge.exclamationmark.fill
  static const IconData sf_speaker_badge_exclamationmark_fill =
      IconData(0x100F90, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.circle
  static const IconData sf_speaker_circle =
      IconData(0x100EC1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.circle.fill
  static const IconData sf_speaker_circle_fill =
      IconData(0x100EC2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.fill
  static const IconData sf_speaker_fill =
      IconData(0x1002A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.minus
  static const IconData sf_speaker_minus =
      IconData(0x10170C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.minus.fill
  static const IconData sf_speaker_minus_fill =
      IconData(0x10170D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.plus
  static const IconData sf_speaker_plus =
      IconData(0x10170A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.plus.fill
  static const IconData sf_speaker_plus_fill =
      IconData(0x10170B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.slash
  static const IconData sf_speaker_slash =
      IconData(0x1002A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.slash.circle
  static const IconData sf_speaker_slash_circle =
      IconData(0x100AE0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.slash.circle.fill
  static const IconData sf_speaker_slash_circle_fill =
      IconData(0x100AE1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.slash.fill
  static const IconData sf_speaker_slash_fill =
      IconData(0x1002A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.square
  static const IconData sf_speaker_square =
      IconData(0x100F45, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.square.fill
  static const IconData sf_speaker_square_fill =
      IconData(0x100F46, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.1
  static const IconData sf_speaker_wave_1 =
      IconData(0x1002A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.1.fill
  static const IconData sf_speaker_wave_1_fill =
      IconData(0x1002A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2
  static const IconData sf_speaker_wave_2 =
      IconData(0x1002A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2.bubble
  static const IconData sf_speaker_wave_2_bubble =
      IconData(0x1015EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2.bubble.fill
  static const IconData sf_speaker_wave_2_bubble_fill =
      IconData(0x1015EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2.circle
  static const IconData sf_speaker_wave_2_circle =
      IconData(0x100951, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2.circle.fill
  static const IconData sf_speaker_wave_2_circle_fill =
      IconData(0x100952, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.2.fill
  static const IconData sf_speaker_wave_2_fill =
      IconData(0x1002A7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.3
  static const IconData sf_speaker_wave_3 =
      IconData(0x1002A8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.wave.3.fill
  static const IconData sf_speaker_wave_3_fill =
      IconData(0x1002A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.zzz
  static const IconData sf_speaker_zzz =
      IconData(0x10030A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol speaker.zzz.fill
  static const IconData sf_speaker_zzz_fill =
      IconData(0x10045E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol spigot
  static const IconData sf_spigot =
      IconData(0x1014BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol spigot.fill
  static const IconData sf_spigot_fill =
      IconData(0x1014BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sportscourt
  static const IconData sf_sportscourt =
      IconData(0x100750, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sportscourt.circle
  static const IconData sf_sportscourt_circle =
      IconData(0x101707, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sportscourt.circle.fill
  static const IconData sf_sportscourt_circle_fill =
      IconData(0x101708, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sportscourt.fill
  static const IconData sf_sportscourt_fill =
      IconData(0x100751, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sprinkler
  static const IconData sf_sprinkler =
      IconData(0x10150C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sprinkler.and.droplets
  static const IconData sf_sprinkler_and_droplets =
      IconData(0x1014BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sprinkler.and.droplets.fill
  static const IconData sf_sprinkler_and_droplets_fill =
      IconData(0x1014BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sprinkler.fill
  static const IconData sf_sprinkler_fill =
      IconData(0x10150D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square
  static const IconData sf_square =
      IconData(0x100092, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.2.layers.3d
  static const IconData sf_square_2_layers_3d =
      IconData(0x100BED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.2.layers.3d.bottom.filled
  static const IconData sf_square_2_layers_3d_bottom_filled =
      IconData(0x100BEF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.2.layers.3d.fill
  static const IconData sf_square_2_layers_3d_fill =
      IconData(0x101E3C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.2.layers.3d.top.filled
  static const IconData sf_square_2_layers_3d_top_filled =
      IconData(0x100BEE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d
  static const IconData sf_square_3_layers_3d =
      IconData(0x100BF0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.bottom.filled
  static const IconData sf_square_3_layers_3d_bottom_filled =
      IconData(0x100BF3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.backward
  static const IconData sf_square_3_layers_3d_down_backward =
      IconData(0x1012DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.forward
  static const IconData sf_square_3_layers_3d_down_forward =
      IconData(0x1012DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.left
  static const IconData sf_square_3_layers_3d_down_left =
      IconData(0x10127C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.left.slash
  static const IconData sf_square_3_layers_3d_down_left_slash =
      IconData(0x1012FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.right
  static const IconData sf_square_3_layers_3d_down_right =
      IconData(0x10127D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.down.right.slash
  static const IconData sf_square_3_layers_3d_down_right_slash =
      IconData(0x1012FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.middle.filled
  static const IconData sf_square_3_layers_3d_middle_filled =
      IconData(0x100BF2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.slash
  static const IconData sf_square_3_layers_3d_slash =
      IconData(0x101305, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.3.layers.3d.top.filled
  static const IconData sf_square_3_layers_3d_top_filled =
      IconData(0x100BF1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.down
  static const IconData sf_square_and_arrow_down =
      IconData(0x100204, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.down.fill
  static const IconData sf_square_and_arrow_down_fill =
      IconData(0x100205, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.down.on.square
  static const IconData sf_square_and_arrow_down_on_square =
      IconData(0x100208, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.down.on.square.fill
  static const IconData sf_square_and_arrow_down_on_square_fill =
      IconData(0x100209, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up
  static const IconData sf_square_and_arrow_up =
      IconData(0x100202, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.badge.clock
  static const IconData sf_square_and_arrow_up_badge_clock =
      IconData(0x1022CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.circle
  static const IconData sf_square_and_arrow_up_circle =
      IconData(0x101145, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.circle.fill
  static const IconData sf_square_and_arrow_up_circle_fill =
      IconData(0x101146, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.fill
  static const IconData sf_square_and_arrow_up_fill =
      IconData(0x100203, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.on.square
  static const IconData sf_square_and_arrow_up_on_square =
      IconData(0x100206, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.on.square.fill
  static const IconData sf_square_and_arrow_up_on_square_fill =
      IconData(0x100207, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.arrow.up.trianglebadge.exclamationmark
  static const IconData sf_square_and_arrow_up_trianglebadge_exclamationmark =
      IconData(0x10109A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.at.rectangle
  static const IconData sf_square_and_at_rectangle =
      IconData(0x10098F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.at.rectangle.fill
  static const IconData sf_square_and_at_rectangle_fill =
      IconData(0x100FD1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.line.vertical.and.square
  static const IconData sf_square_and_line_vertical_and_square =
      IconData(0x100411, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.line.vertical.and.square.filled
  static const IconData sf_square_and_line_vertical_and_square_filled =
      IconData(0x100414, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.pencil
  static const IconData sf_square_and_pencil =
      IconData(0x10020E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.pencil.circle
  static const IconData sf_square_and_pencil_circle =
      IconData(0x1015D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.and.pencil.circle.fill
  static const IconData sf_square_and_pencil_circle_fill =
      IconData(0x1015DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.arrowtriangle.4.outward
  static const IconData sf_square_arrowtriangle_4_outward =
      IconData(0x100839, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.badge.plus
  static const IconData sf_square_badge_plus =
      IconData(0x101949, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.badge.plus.fill
  static const IconData sf_square_badge_plus_fill =
      IconData(0x10194A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.bottomhalf.filled
  static const IconData sf_square_bottomhalf_filled =
      IconData(0x100A9A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.bottomthird.inset.filled
  static const IconData sf_square_bottomthird_inset_filled =
      IconData(0x1014A1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.circle
  static const IconData sf_square_circle =
      IconData(0x100A03, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.circle.fill
  static const IconData sf_square_circle_fill =
      IconData(0x100A04, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.dashed
  static const IconData sf_square_dashed =
      IconData(0x1004D4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.dashed.inset.filled
  static const IconData sf_square_dashed_inset_filled =
      IconData(0x1009D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.dotted
  static const IconData sf_square_dotted =
      IconData(0x101293, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.fill
  static const IconData sf_square_fill =
      IconData(0x100093, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.fill.and.line.vertical.and.square.fill
  static const IconData sf_square_fill_and_line_vertical_and_square_fill =
      IconData(0x100412, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.fill.on.circle.fill
  static const IconData sf_square_fill_on_circle_fill =
      IconData(0x10040A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.fill.on.square.fill
  static const IconData sf_square_fill_on_square_fill =
      IconData(0x100406, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.fill.text.grid.1x2
  static const IconData sf_square_fill_text_grid_1x2 =
      IconData(0x100B5E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.filled.and.line.vertical.and.square
  static const IconData sf_square_filled_and_line_vertical_and_square =
      IconData(0x100413, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.filled.on.square
  static const IconData sf_square_filled_on_square =
      IconData(0x100ADD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.2x2
  static const IconData sf_square_grid_2x2 =
      IconData(0x1001F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.2x2.fill
  static const IconData sf_square_grid_2x2_fill =
      IconData(0x100688, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x1.below.line.grid.1x2
  static const IconData sf_square_grid_3x1_below_line_grid_1x2 =
      IconData(0x1004D9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x1.below.line.grid.1x2.fill
  static const IconData sf_square_grid_3x1_below_line_grid_1x2_fill =
      IconData(0x100932, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x1.folder.badge.plus
  static const IconData sf_square_grid_3x1_folder_badge_plus =
      IconData(0x1008D5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x1.folder.fill.badge.plus
  static const IconData sf_square_grid_3x1_folder_fill_badge_plus =
      IconData(0x1008D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x2
  static const IconData sf_square_grid_3x2 =
      IconData(0x1001F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x2.fill
  static const IconData sf_square_grid_3x2_fill =
      IconData(0x100687, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3
  static const IconData sf_square_grid_3x3 =
      IconData(0x1009B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.bottomleft.filled
  static const IconData sf_square_grid_3x3_bottomleft_filled =
      IconData(0x1009BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.bottommiddle.filled
  static const IconData sf_square_grid_3x3_bottommiddle_filled =
      IconData(0x1009BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.bottomright.filled
  static const IconData sf_square_grid_3x3_bottomright_filled =
      IconData(0x1009BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.fill
  static const IconData sf_square_grid_3x3_fill =
      IconData(0x1009B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.middle.filled
  static const IconData sf_square_grid_3x3_middle_filled =
      IconData(0x1009B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.middleleft.filled
  static const IconData sf_square_grid_3x3_middleleft_filled =
      IconData(0x1009B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.middleright.filled
  static const IconData sf_square_grid_3x3_middleright_filled =
      IconData(0x1009B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.square
  static const IconData sf_square_grid_3x3_square =
      IconData(0x100AD0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.topleft.filled
  static const IconData sf_square_grid_3x3_topleft_filled =
      IconData(0x1009B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.topmiddle.filled
  static const IconData sf_square_grid_3x3_topmiddle_filled =
      IconData(0x1009B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.3x3.topright.filled
  static const IconData sf_square_grid_3x3_topright_filled =
      IconData(0x1009B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.grid.4x3.fill
  static const IconData sf_square_grid_4x3_fill =
      IconData(0x1004DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.inset.filled
  static const IconData sf_square_inset_filled =
      IconData(0x100F98, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.leadingthird.inset.filled
  static const IconData sf_square_leadingthird_inset_filled =
      IconData(0x1014A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.lefthalf.filled
  static const IconData sf_square_lefthalf_filled =
      IconData(0x100693, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.leftthird.inset.filled
  static const IconData sf_square_leftthird_inset_filled =
      IconData(0x1014A2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.circle
  static const IconData sf_square_on_circle =
      IconData(0x100409, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square
  static const IconData sf_square_on_square =
      IconData(0x100405, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square.badge.person.crop
  static const IconData sf_square_on_square_badge_person_crop =
      IconData(0x101670, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square.badge.person.crop.fill
  static const IconData sf_square_on_square_badge_person_crop_fill =
      IconData(0x101671, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square.dashed
  static const IconData sf_square_on_square_dashed =
      IconData(0x100BC7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square.intersection.dashed
  static const IconData sf_square_on_square_intersection_dashed =
      IconData(0x10113B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.on.square.squareshape.controlhandles
  static const IconData sf_square_on_square_squareshape_controlhandles =
      IconData(0x100A76, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.resize
  static const IconData sf_square_resize =
      IconData(0x10205F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.resize.down
  static const IconData sf_square_resize_down =
      IconData(0x101EA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.resize.up
  static const IconData sf_square_resize_up =
      IconData(0x101E9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.righthalf.filled
  static const IconData sf_square_righthalf_filled =
      IconData(0x100694, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.rightthird.inset.filled
  static const IconData sf_square_rightthird_inset_filled =
      IconData(0x1014A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.slash
  static const IconData sf_square_slash =
      IconData(0x1008E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.slash.fill
  static const IconData sf_square_slash_fill =
      IconData(0x1008E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.1x2
  static const IconData sf_square_split_1x2 =
      IconData(0x100570, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.1x2.fill
  static const IconData sf_square_split_1x2_fill =
      IconData(0x100571, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.2x1
  static const IconData sf_square_split_2x1 =
      IconData(0x1003E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.2x1.fill
  static const IconData sf_square_split_2x1_fill =
      IconData(0x10061C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.2x2
  static const IconData sf_square_split_2x2 =
      IconData(0x10056E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.2x2.fill
  static const IconData sf_square_split_2x2_fill =
      IconData(0x10056F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.bottomrightquarter
  static const IconData sf_square_split_bottomrightquarter =
      IconData(0x1007FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.bottomrightquarter.fill
  static const IconData sf_square_split_bottomrightquarter_fill =
      IconData(0x1007FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.diagonal
  static const IconData sf_square_split_diagonal =
      IconData(0x100857, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.diagonal.2x2
  static const IconData sf_square_split_diagonal_2x2 =
      IconData(0x100572, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.diagonal.2x2.fill
  static const IconData sf_square_split_diagonal_2x2_fill =
      IconData(0x100573, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.split.diagonal.fill
  static const IconData sf_square_split_diagonal_fill =
      IconData(0x100858, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack
  static const IconData sf_square_stack =
      IconData(0x10040B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.down.forward
  static const IconData sf_square_stack_3d_down_forward =
      IconData(0x100C33, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.down.forward.fill
  static const IconData sf_square_stack_3d_down_forward_fill =
      IconData(0x100C34, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.down.right
  static const IconData sf_square_stack_3d_down_right =
      IconData(0x10041C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.down.right.fill
  static const IconData sf_square_stack_3d_down_right_fill =
      IconData(0x10041D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.forward.dottedline
  static const IconData sf_square_stack_3d_forward_dottedline =
      IconData(0x100420, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.forward.dottedline.fill
  static const IconData sf_square_stack_3d_forward_dottedline_fill =
      IconData(0x1009CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up
  static const IconData sf_square_stack_3d_up =
      IconData(0x10041E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.badge.automatic
  static const IconData sf_square_stack_3d_up_badge_automatic =
      IconData(0x100650, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.badge.automatic.fill
  static const IconData sf_square_stack_3d_up_badge_automatic_fill =
      IconData(0x100651, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.fill
  static const IconData sf_square_stack_3d_up_fill =
      IconData(0x10041F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.slash
  static const IconData sf_square_stack_3d_up_slash =
      IconData(0x100652, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.slash.fill
  static const IconData sf_square_stack_3d_up_slash_fill =
      IconData(0x100653, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.trianglebadge.exclamationmark
  static const IconData sf_square_stack_3d_up_trianglebadge_exclamationmark =
      IconData(0x102161, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.3d.up.trianglebadge.exclamationmark.fill
  static const IconData
      sf_square_stack_3d_up_trianglebadge_exclamationmark_fill =
      IconData(0x102162, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.stack.fill
  static const IconData sf_square_stack_fill =
      IconData(0x10040C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.text.square
  static const IconData sf_square_text_square =
      IconData(0x100EE1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.text.square.fill
  static const IconData sf_square_text_square_fill =
      IconData(0x100EE2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.tophalf.filled
  static const IconData sf_square_tophalf_filled =
      IconData(0x100A9B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.topthird.inset.filled
  static const IconData sf_square_topthird_inset_filled =
      IconData(0x1014A0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol square.trailingthird.inset.filled
  static const IconData sf_square_trailingthird_inset_filled =
      IconData(0x1014A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squares.below.rectangle
  static const IconData sf_squares_below_rectangle =
      IconData(0x1003E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squares.leading.rectangle
  static const IconData sf_squares_leading_rectangle =
      IconData(0x1016AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squares.leading.rectangle.fill
  static const IconData sf_squares_leading_rectangle_fill =
      IconData(0x102185, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape
  static const IconData sf_squareshape =
      IconData(0x1008EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.controlhandles.on.squareshape.controlhandles
  static const IconData
      sf_squareshape_controlhandles_on_squareshape_controlhandles =
      IconData(0x100A77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.dotted.split.2x2
  static const IconData sf_squareshape_dotted_split_2x2 =
      IconData(0x1014D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.dotted.squareshape
  static const IconData sf_squareshape_dotted_squareshape =
      IconData(0x100A62, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.fill
  static const IconData sf_squareshape_fill =
      IconData(0x1008EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.split.2x2
  static const IconData sf_squareshape_split_2x2 =
      IconData(0x100B9E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.split.2x2.dotted
  static const IconData sf_squareshape_split_2x2_dotted =
      IconData(0x100B8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.split.3x3
  static const IconData sf_squareshape_split_3x3 =
      IconData(0x100B9F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol squareshape.squareshape.dotted
  static const IconData sf_squareshape_squareshape_dotted =
      IconData(0x100AF4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stairs
  static const IconData sf_stairs =
      IconData(0x10154B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star
  static const IconData sf_star =
      IconData(0x1002C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.bubble
  static const IconData sf_star_bubble =
      IconData(0x1010AA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.bubble.fill
  static const IconData sf_star_bubble_fill =
      IconData(0x1010AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.circle
  static const IconData sf_star_circle =
      IconData(0x1002C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.circle.fill
  static const IconData sf_star_circle_fill =
      IconData(0x1002C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.fill
  static const IconData sf_star_fill =
      IconData(0x1002C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.leadinghalf.filled
  static const IconData sf_star_leadinghalf_filled =
      IconData(0x1002C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.slash
  static const IconData sf_star_slash =
      IconData(0x1002C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.slash.fill
  static const IconData sf_star_slash_fill =
      IconData(0x1002C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.square
  static const IconData sf_star_square =
      IconData(0x100827, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.square.fill
  static const IconData sf_star_square_fill =
      IconData(0x100828, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.square.on.square
  static const IconData sf_star_square_on_square =
      IconData(0x10168D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol star.square.on.square.fill
  static const IconData sf_star_square_on_square_fill =
      IconData(0x10168E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife
  static const IconData sf_staroflife =
      IconData(0x100446, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife.circle
  static const IconData sf_staroflife_circle =
      IconData(0x1004BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife.circle.fill
  static const IconData sf_staroflife_circle_fill =
      IconData(0x1004BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife.fill
  static const IconData sf_staroflife_fill =
      IconData(0x100447, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife.shield
  static const IconData sf_staroflife_shield =
      IconData(0x1018D6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol staroflife.shield.fill
  static const IconData sf_staroflife_shield_fill =
      IconData(0x1018D7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel
  static const IconData sf_steeringwheel =
      IconData(0x1010A9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.and.heat.waves
  static const IconData sf_steeringwheel_and_heat_waves =
      IconData(0x101259, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.and.key
  static const IconData sf_steeringwheel_and_key =
      IconData(0x1017BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.and.liquid.wave
  static const IconData sf_steeringwheel_and_liquid_wave =
      IconData(0x10189F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.and.lock
  static const IconData sf_steeringwheel_and_lock =
      IconData(0x1017C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.arrowtriangle.left
  static const IconData sf_steeringwheel_arrowtriangle_left =
      IconData(0x1015B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.arrowtriangle.right
  static const IconData sf_steeringwheel_arrowtriangle_right =
      IconData(0x1015B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.badge.exclamationmark
  static const IconData sf_steeringwheel_badge_exclamationmark =
      IconData(0x10125B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.circle
  static const IconData sf_steeringwheel_circle =
      IconData(0x101FE2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.circle.fill
  static const IconData sf_steeringwheel_circle_fill =
      IconData(0x101FE3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.exclamationmark
  static const IconData sf_steeringwheel_exclamationmark =
      IconData(0x10125A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.road.lane
  static const IconData sf_steeringwheel_road_lane =
      IconData(0x1015A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.road.lane.dashed
  static const IconData sf_steeringwheel_road_lane_dashed =
      IconData(0x1015A6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol steeringwheel.slash
  static const IconData sf_steeringwheel_slash =
      IconData(0x101849, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign
  static const IconData sf_sterlingsign =
      IconData(0x101442, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign.arrow.circlepath
  static const IconData sf_sterlingsign_arrow_circlepath =
      IconData(0x102215, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign.circle
  static const IconData sf_sterlingsign_circle =
      IconData(0x10059D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign.circle.fill
  static const IconData sf_sterlingsign_circle_fill =
      IconData(0x10059E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign.square
  static const IconData sf_sterlingsign_square =
      IconData(0x1005DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sterlingsign.square.fill
  static const IconData sf_sterlingsign_square_fill =
      IconData(0x1005DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stethoscope
  static const IconData sf_stethoscope =
      IconData(0x10077E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stethoscope.circle
  static const IconData sf_stethoscope_circle =
      IconData(0x1011C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stethoscope.circle.fill
  static const IconData sf_stethoscope_circle_fill =
      IconData(0x1011C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stop
  static const IconData sf_stop =
      IconData(0x1006F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stop.circle
  static const IconData sf_stop_circle =
      IconData(0x10072A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stop.circle.fill
  static const IconData sf_stop_circle_fill =
      IconData(0x10072B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stop.fill
  static const IconData sf_stop_fill =
      IconData(0x1006F7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stopwatch
  static const IconData sf_stopwatch =
      IconData(0x10042F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stopwatch.fill
  static const IconData sf_stopwatch_fill =
      IconData(0x100430, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol storefront
  static const IconData sf_storefront =
      IconData(0x101F47, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol storefront.circle
  static const IconData sf_storefront_circle =
      IconData(0x101F49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol storefront.circle.fill
  static const IconData sf_storefront_circle_fill =
      IconData(0x101F4A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol storefront.fill
  static const IconData sf_storefront_fill =
      IconData(0x101F48, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stove
  static const IconData sf_stove =
      IconData(0x101426, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stove.fill
  static const IconData sf_stove_fill =
      IconData(0x101427, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol strikethrough
  static const IconData sf_strikethrough =
      IconData(0x100156, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stroller
  static const IconData sf_stroller =
      IconData(0x101796, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol stroller.fill
  static const IconData sf_stroller_fill =
      IconData(0x101797, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol studentdesk
  static const IconData sf_studentdesk =
      IconData(0x100454, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.club
  static const IconData sf_suit_club =
      IconData(0x100483, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.club.fill
  static const IconData sf_suit_club_fill =
      IconData(0x1002BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.diamond
  static const IconData sf_suit_diamond =
      IconData(0x100484, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.diamond.fill
  static const IconData sf_suit_diamond_fill =
      IconData(0x1002BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.heart
  static const IconData sf_suit_heart =
      IconData(0x100482, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.heart.fill
  static const IconData sf_suit_heart_fill =
      IconData(0x1002BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.spade
  static const IconData sf_suit_spade =
      IconData(0x100485, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suit.spade.fill
  static const IconData sf_suit_spade_fill =
      IconData(0x1002BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase
  static const IconData sf_suitcase =
      IconData(0x100D89, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase.cart
  static const IconData sf_suitcase_cart =
      IconData(0x100D8B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase.cart.fill
  static const IconData sf_suitcase_cart_fill =
      IconData(0x100D8C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase.fill
  static const IconData sf_suitcase_fill =
      IconData(0x100D8A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase.rolling
  static const IconData sf_suitcase_rolling =
      IconData(0x1017AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suitcase.rolling.fill
  static const IconData sf_suitcase_rolling_fill =
      IconData(0x1017B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sum
  static const IconData sf_sum =
      IconData(0x10063D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.dust
  static const IconData sf_sun_dust =
      IconData(0x1001B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.dust.circle
  static const IconData sf_sun_dust_circle =
      IconData(0x1016C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.dust.circle.fill
  static const IconData sf_sun_dust_circle_fill =
      IconData(0x1016C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.dust.fill
  static const IconData sf_sun_dust_fill =
      IconData(0x1001B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.haze
  static const IconData sf_sun_haze =
      IconData(0x1001B7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.haze.circle
  static const IconData sf_sun_haze_circle =
      IconData(0x1016C9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.haze.circle.fill
  static const IconData sf_sun_haze_circle_fill =
      IconData(0x1016CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.haze.fill
  static const IconData sf_sun_haze_fill =
      IconData(0x1001B8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.horizon
  static const IconData sf_sun_horizon =
      IconData(0x100EDE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.horizon.circle
  static const IconData sf_sun_horizon_circle =
      IconData(0x1016C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.horizon.circle.fill
  static const IconData sf_sun_horizon_circle_fill =
      IconData(0x1016C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.horizon.fill
  static const IconData sf_sun_horizon_fill =
      IconData(0x100EDF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max
  static const IconData sf_sun_max =
      IconData(0x1001AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max.circle
  static const IconData sf_sun_max_circle =
      IconData(0x100DCE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max.circle.fill
  static const IconData sf_sun_max_circle_fill =
      IconData(0x100DCF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max.fill
  static const IconData sf_sun_max_fill =
      IconData(0x1001AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max.trianglebadge.exclamationmark
  static const IconData sf_sun_max_trianglebadge_exclamationmark =
      IconData(0x10170E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.max.trianglebadge.exclamationmark.fill
  static const IconData sf_sun_max_trianglebadge_exclamationmark_fill =
      IconData(0x10170F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.min
  static const IconData sf_sun_min =
      IconData(0x1001AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.min.fill
  static const IconData sf_sun_min_fill =
      IconData(0x1001AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.rain
  static const IconData sf_sun_rain =
      IconData(0x101DCC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.rain.circle
  static const IconData sf_sun_rain_circle =
      IconData(0x101DCE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.rain.circle.fill
  static const IconData sf_sun_rain_circle_fill =
      IconData(0x101DCF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.rain.fill
  static const IconData sf_sun_rain_fill =
      IconData(0x101DCD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.snow
  static const IconData sf_sun_snow =
      IconData(0x101DD0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.snow.circle
  static const IconData sf_sun_snow_circle =
      IconData(0x101DD2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.snow.circle.fill
  static const IconData sf_sun_snow_circle_fill =
      IconData(0x101DD3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sun.snow.fill
  static const IconData sf_sun_snow_fill =
      IconData(0x101DD1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunglasses
  static const IconData sf_sunglasses =
      IconData(0x101EC8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunglasses.fill
  static const IconData sf_sunglasses_fill =
      IconData(0x101EC9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunrise
  static const IconData sf_sunrise =
      IconData(0x1001B1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunrise.circle
  static const IconData sf_sunrise_circle =
      IconData(0x1016C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunrise.circle.fill
  static const IconData sf_sunrise_circle_fill =
      IconData(0x1016C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunrise.fill
  static const IconData sf_sunrise_fill =
      IconData(0x1001B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunset
  static const IconData sf_sunset =
      IconData(0x1001B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunset.circle
  static const IconData sf_sunset_circle =
      IconData(0x1016C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunset.circle.fill
  static const IconData sf_sunset_circle_fill =
      IconData(0x1016C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol sunset.fill
  static const IconData sf_sunset_fill =
      IconData(0x1001B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol surfboard
  static const IconData sf_surfboard =
      IconData(0x1020AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol surfboard.fill
  static const IconData sf_surfboard_fill =
      IconData(0x1020B0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side
  static const IconData sf_suv_side =
      IconData(0x101800, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.air.circulate
  static const IconData sf_suv_side_air_circulate =
      IconData(0x101811, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.air.circulate.fill
  static const IconData sf_suv_side_air_circulate_fill =
      IconData(0x101812, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.air.fresh
  static const IconData sf_suv_side_air_fresh =
      IconData(0x101813, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.air.fresh.fill
  static const IconData sf_suv_side_air_fresh_fill =
      IconData(0x101814, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.and.exclamationmark
  static const IconData sf_suv_side_and_exclamationmark =
      IconData(0x101815, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.and.exclamationmark.fill
  static const IconData sf_suv_side_and_exclamationmark_fill =
      IconData(0x101816, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.down
  static const IconData sf_suv_side_arrowtriangle_down =
      IconData(0x10181D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.down.fill
  static const IconData sf_suv_side_arrowtriangle_down_fill =
      IconData(0x10181E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.up
  static const IconData sf_suv_side_arrowtriangle_up =
      IconData(0x10181B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.up.arrowtriangle.down
  static const IconData sf_suv_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101819, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData sf_suv_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x10181A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.arrowtriangle.up.fill
  static const IconData sf_suv_side_arrowtriangle_up_fill =
      IconData(0x10181C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.fill
  static const IconData sf_suv_side_fill =
      IconData(0x101801, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.front.open
  static const IconData sf_suv_side_front_open =
      IconData(0x10180D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.front.open.fill
  static const IconData sf_suv_side_front_open_fill =
      IconData(0x10180E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.hill.down
  static const IconData sf_suv_side_hill_down =
      IconData(0x101950, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.hill.down.fill
  static const IconData sf_suv_side_hill_down_fill =
      IconData(0x101951, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.hill.up
  static const IconData sf_suv_side_hill_up =
      IconData(0x10190F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.hill.up.fill
  static const IconData sf_suv_side_hill_up_fill =
      IconData(0x101910, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.lock
  static const IconData sf_suv_side_lock =
      IconData(0x101900, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.lock.fill
  static const IconData sf_suv_side_lock_fill =
      IconData(0x101901, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.lock.open
  static const IconData sf_suv_side_lock_open =
      IconData(0x101902, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.lock.open.fill
  static const IconData sf_suv_side_lock_open_fill =
      IconData(0x101903, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.rear.open
  static const IconData sf_suv_side_rear_open =
      IconData(0x10180F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol suv.side.rear.open.fill
  static const IconData sf_suv_side_rear_open_fill =
      IconData(0x101810, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swatchpalette
  static const IconData sf_swatchpalette =
      IconData(0x101667, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swatchpalette.fill
  static const IconData sf_swatchpalette_fill =
      IconData(0x101668, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign
  static const IconData sf_swedishkronasign =
      IconData(0x10192D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign.arrow.circlepath
  static const IconData sf_swedishkronasign_arrow_circlepath =
      IconData(0x102236, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign.circle
  static const IconData sf_swedishkronasign_circle =
      IconData(0x100BA8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign.circle.fill
  static const IconData sf_swedishkronasign_circle_fill =
      IconData(0x100BA9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign.square
  static const IconData sf_swedishkronasign_square =
      IconData(0x100BAA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swedishkronasign.square.fill
  static const IconData sf_swedishkronasign_square_fill =
      IconData(0x100BAB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swift
  static const IconData sf_swift =
      IconData(0x100ACA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swiftdata
  static const IconData sf_swiftdata =
      IconData(0x1015EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swirl.circle.righthalf.filled
  static const IconData sf_swirl_circle_righthalf_filled =
      IconData(0x101E62, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol swirl.circle.righthalf.filled.inverse
  static const IconData sf_swirl_circle_righthalf_filled_inverse =
      IconData(0x101E6A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol switch.2
  static const IconData sf_switch_2 =
      IconData(0x10070A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol switch.programmable
  static const IconData sf_switch_programmable =
      IconData(0x101573, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol switch.programmable.fill
  static const IconData sf_switch_programmable_fill =
      IconData(0x101600, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol switch.programmable.square
  static const IconData sf_switch_programmable_square =
      IconData(0x101574, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol switch.programmable.square.fill
  static const IconData sf_switch_programmable_square_fill =
      IconData(0x101575, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol syringe
  static const IconData sf_syringe =
      IconData(0x100837, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol syringe.fill
  static const IconData sf_syringe_fill =
      IconData(0x100838, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol t.circle
  static const IconData sf_t_circle =
      IconData(0x10002A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol t.circle.fill
  static const IconData sf_t_circle_fill =
      IconData(0x10002B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol t.square
  static const IconData sf_t_square =
      IconData(0x1000BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol t.square.fill
  static const IconData sf_t_square_fill =
      IconData(0x1000BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol table.furniture
  static const IconData sf_table_furniture =
      IconData(0x101430, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol table.furniture.fill
  static const IconData sf_table_furniture_fill =
      IconData(0x101431, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tablecells
  static const IconData sf_tablecells =
      IconData(0x1003E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tablecells.badge.ellipsis
  static const IconData sf_tablecells_badge_ellipsis =
      IconData(0x1003E5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tablecells.fill
  static const IconData sf_tablecells_fill =
      IconData(0x1003E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tablecells.fill.badge.ellipsis
  static const IconData sf_tablecells_fill_badge_ellipsis =
      IconData(0x1003E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag
  static const IconData sf_tag =
      IconData(0x1002E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.circle
  static const IconData sf_tag_circle =
      IconData(0x1002E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.circle.fill
  static const IconData sf_tag_circle_fill =
      IconData(0x1002E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.fill
  static const IconData sf_tag_fill =
      IconData(0x1002E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.slash
  static const IconData sf_tag_slash =
      IconData(0x1009AB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.slash.fill
  static const IconData sf_tag_slash_fill =
      IconData(0x1009AC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.square
  static const IconData sf_tag_square =
      IconData(0x100F41, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tag.square.fill
  static const IconData sf_tag_square_fill =
      IconData(0x100F42, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol taillight.fog
  static const IconData sf_taillight_fog =
      IconData(0x100FB8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol taillight.fog.fill
  static const IconData sf_taillight_fog_fill =
      IconData(0x100FB9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol takeoutbag.and.cup.and.straw
  static const IconData sf_takeoutbag_and_cup_and_straw =
      IconData(0x100ED0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol takeoutbag.and.cup.and.straw.fill
  static const IconData sf_takeoutbag_and_cup_and_straw_fill =
      IconData(0x100ED1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol target
  static const IconData sf_target =
      IconData(0x10088A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teddybear
  static const IconData sf_teddybear =
      IconData(0x100CAC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teddybear.fill
  static const IconData sf_teddybear_fill =
      IconData(0x100CAD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype
  static const IconData sf_teletype =
      IconData(0x100348, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype.answer
  static const IconData sf_teletype_answer =
      IconData(0x100670, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype.answer.circle
  static const IconData sf_teletype_answer_circle =
      IconData(0x100D26, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype.answer.circle.fill
  static const IconData sf_teletype_answer_circle_fill =
      IconData(0x100D27, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype.circle
  static const IconData sf_teletype_circle =
      IconData(0x100705, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol teletype.circle.fill
  static const IconData sf_teletype_circle_fill =
      IconData(0x100706, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign
  static const IconData sf_tengesign =
      IconData(0x10144A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign.arrow.circlepath
  static const IconData sf_tengesign_arrow_circlepath =
      IconData(0x10221D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign.circle
  static const IconData sf_tengesign_circle =
      IconData(0x1005AD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign.circle.fill
  static const IconData sf_tengesign_circle_fill =
      IconData(0x1005AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign.square
  static const IconData sf_tengesign_square =
      IconData(0x1005ED, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tengesign.square.fill
  static const IconData sf_tengesign_square_fill =
      IconData(0x1005EE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennis.racket
  static const IconData sf_tennis_racket =
      IconData(0x1015CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennis.racket.circle
  static const IconData sf_tennis_racket_circle =
      IconData(0x101724, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennis.racket.circle.fill
  static const IconData sf_tennis_racket_circle_fill =
      IconData(0x101725, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennisball
  static const IconData sf_tennisball =
      IconData(0x101726, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennisball.circle
  static const IconData sf_tennisball_circle =
      IconData(0x101728, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennisball.circle.fill
  static const IconData sf_tennisball_circle_fill =
      IconData(0x101729, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tennisball.fill
  static const IconData sf_tennisball_fill =
      IconData(0x101727, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent
  static const IconData sf_tent =
      IconData(0x1012E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.2
  static const IconData sf_tent_2 =
      IconData(0x101510, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.2.circle
  static const IconData sf_tent_2_circle =
      IconData(0x101784, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.2.circle.fill
  static const IconData sf_tent_2_circle_fill =
      IconData(0x101785, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.2.fill
  static const IconData sf_tent_2_fill =
      IconData(0x101511, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.circle
  static const IconData sf_tent_circle =
      IconData(0x101782, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.circle.fill
  static const IconData sf_tent_circle_fill =
      IconData(0x101783, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tent.fill
  static const IconData sf_tent_fill =
      IconData(0x1012E9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol testtube.2
  static const IconData sf_testtube_2 =
      IconData(0x1010B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.aligncenter
  static const IconData sf_text_aligncenter =
      IconData(0x100301, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.alignleft
  static const IconData sf_text_alignleft =
      IconData(0x100300, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.alignright
  static const IconData sf_text_alignright =
      IconData(0x100302, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.and.command.macwindow
  static const IconData sf_text_and_command_macwindow =
      IconData(0x1008DA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.append
  static const IconData sf_text_append =
      IconData(0x1002FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.badge.checkmark
  static const IconData sf_text_badge_checkmark =
      IconData(0x1002FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.badge.minus
  static const IconData sf_text_badge_minus =
      IconData(0x1002F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.badge.plus
  static const IconData sf_text_badge_plus =
      IconData(0x1002F8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.badge.star
  static const IconData sf_text_badge_star =
      IconData(0x1002FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.badge.xmark
  static const IconData sf_text_badge_xmark =
      IconData(0x1002FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.below.photo
  static const IconData sf_text_below_photo =
      IconData(0x100CB1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.below.photo.fill
  static const IconData sf_text_below_photo_fill =
      IconData(0x100CB2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.book.closed
  static const IconData sf_text_book_closed =
      IconData(0x100AD7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.book.closed.fill
  static const IconData sf_text_book_closed_fill =
      IconData(0x100AD8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.bubble
  static const IconData sf_text_bubble =
      IconData(0x100332, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.bubble.fill
  static const IconData sf_text_bubble_fill =
      IconData(0x100333, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.insert
  static const IconData sf_text_insert =
      IconData(0x1002FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.justify
  static const IconData sf_text_justify =
      IconData(0x100303, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.justify.leading
  static const IconData sf_text_justify_leading =
      IconData(0x101240, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.justify.left
  static const IconData sf_text_justify_left =
      IconData(0x100304, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.justify.right
  static const IconData sf_text_justify_right =
      IconData(0x100305, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.justify.trailing
  static const IconData sf_text_justify_trailing =
      IconData(0x101241, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.line.first.and.arrowtriangle.forward
  static const IconData sf_text_line_first_and_arrowtriangle_forward =
      IconData(0x10163F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.line.last.and.arrowtriangle.forward
  static const IconData sf_text_line_last_and_arrowtriangle_forward =
      IconData(0x101640, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.magnifyingglass
  static const IconData sf_text_magnifyingglass =
      IconData(0x100B65, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.quote
  static const IconData sf_text_quote =
      IconData(0x1002FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.redaction
  static const IconData sf_text_redaction =
      IconData(0x1009CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.viewfinder
  static const IconData sf_text_viewfinder =
      IconData(0x100E43, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol text.word.spacing
  static const IconData sf_text_word_spacing =
      IconData(0x100D6B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat
  static const IconData sf_textformat =
      IconData(0x100152, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.12
  static const IconData sf_textformat_12 =
      IconData(0x1015BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.123
  static const IconData sf_textformat_123 =
      IconData(0x100171, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.abc
  static const IconData sf_textformat_abc =
      IconData(0x10016F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.abc.dottedunderline
  static const IconData sf_textformat_abc_dottedunderline =
      IconData(0x100170, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.alt
  static const IconData sf_textformat_alt =
      IconData(0x100151, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.size
  static const IconData sf_textformat_size =
      IconData(0x100150, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.size.larger
  static const IconData sf_textformat_size_larger =
      IconData(0x100D7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.size.smaller
  static const IconData sf_textformat_size_smaller =
      IconData(0x100D77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.subscript
  static const IconData sf_textformat_subscript =
      IconData(0x1004E1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol textformat.superscript
  static const IconData sf_textformat_superscript =
      IconData(0x1004E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermask.and.paintbrush
  static const IconData sf_theatermask_and_paintbrush =
      IconData(0x101518, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermask.and.paintbrush.fill
  static const IconData sf_theatermask_and_paintbrush_fill =
      IconData(0x101552, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermasks
  static const IconData sf_theatermasks =
      IconData(0x100EA7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermasks.circle
  static const IconData sf_theatermasks_circle =
      IconData(0x1010BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermasks.circle.fill
  static const IconData sf_theatermasks_circle_fill =
      IconData(0x1010BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol theatermasks.fill
  static const IconData sf_theatermasks_fill =
      IconData(0x100EA8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.and.liquid.waves
  static const IconData sf_thermometer_and_liquid_waves =
      IconData(0x101033, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.brakesignal
  static const IconData sf_thermometer_brakesignal =
      IconData(0x101035, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.high
  static const IconData sf_thermometer_high =
      IconData(0x1013C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.low
  static const IconData sf_thermometer_low =
      IconData(0x1013C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.medium
  static const IconData sf_thermometer_medium =
      IconData(0x1001EC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.medium.slash
  static const IconData sf_thermometer_medium_slash =
      IconData(0x1015C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.snowflake
  static const IconData sf_thermometer_snowflake =
      IconData(0x1001EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.snowflake.circle
  static const IconData sf_thermometer_snowflake_circle =
      IconData(0x1016FB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.snowflake.circle.fill
  static const IconData sf_thermometer_snowflake_circle_fill =
      IconData(0x1016FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.sun
  static const IconData sf_thermometer_sun =
      IconData(0x1001EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.sun.circle
  static const IconData sf_thermometer_sun_circle =
      IconData(0x1016F9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.sun.circle.fill
  static const IconData sf_thermometer_sun_circle_fill =
      IconData(0x1016FA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.sun.fill
  static const IconData sf_thermometer_sun_fill =
      IconData(0x10099C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.transmission
  static const IconData sf_thermometer_transmission =
      IconData(0x101281, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.variable.and.figure
  static const IconData sf_thermometer_variable_and_figure =
      IconData(0x101DC9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.variable.and.figure.circle
  static const IconData sf_thermometer_variable_and_figure_circle =
      IconData(0x101DCA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol thermometer.variable.and.figure.circle.fill
  static const IconData sf_thermometer_variable_and_figure_circle_fill =
      IconData(0x101DCB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ticket
  static const IconData sf_ticket =
      IconData(0x100A83, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol ticket.fill
  static const IconData sf_ticket_fill =
      IconData(0x100A84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timelapse
  static const IconData sf_timelapse =
      IconData(0x1001F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timeline.selection
  static const IconData sf_timeline_selection =
      IconData(0x1008C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timer
  static const IconData sf_timer =
      IconData(0x100431, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timer.circle
  static const IconData sf_timer_circle =
      IconData(0x101645, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timer.circle.fill
  static const IconData sf_timer_circle_fill =
      IconData(0x101646, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol timer.square
  static const IconData sf_timer_square =
      IconData(0x100B44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tirepressure
  static const IconData sf_tirepressure =
      IconData(0x1018B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol togglepower
  static const IconData sf_togglepower =
      IconData(0x100963, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol toilet
  static const IconData sf_toilet =
      IconData(0x10143E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol toilet.circle
  static const IconData sf_toilet_circle =
      IconData(0x101780, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol toilet.circle.fill
  static const IconData sf_toilet_circle_fill =
      IconData(0x101781, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol toilet.fill
  static const IconData sf_toilet_fill =
      IconData(0x10143F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tornado
  static const IconData sf_tornado =
      IconData(0x1001E7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tornado.circle
  static const IconData sf_tornado_circle =
      IconData(0x1016F3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tornado.circle.fill
  static const IconData sf_tornado_circle_fill =
      IconData(0x1016F4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tortoise
  static const IconData sf_tortoise =
      IconData(0x1004D0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tortoise.circle
  static const IconData sf_tortoise_circle =
      IconData(0x10203C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tortoise.circle.fill
  static const IconData sf_tortoise_circle_fill =
      IconData(0x10203D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tortoise.fill
  static const IconData sf_tortoise_fill =
      IconData(0x1004D1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol torus
  static const IconData sf_torus =
      IconData(0x100D0C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol touchid
  static const IconData sf_touchid =
      IconData(0x1007D2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol traction.control.tirepressure
  static const IconData sf_traction_control_tirepressure =
      IconData(0x1018B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol traction.control.tirepressure.exclamationmark
  static const IconData sf_traction_control_tirepressure_exclamationmark =
      IconData(0x1018B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol traction.control.tirepressure.slash
  static const IconData sf_traction_control_tirepressure_slash =
      IconData(0x1018B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol train.side.front.car
  static const IconData sf_train_side_front_car =
      IconData(0x100F2E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol train.side.middle.car
  static const IconData sf_train_side_middle_car =
      IconData(0x100F2F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol train.side.rear.car
  static const IconData sf_train_side_rear_car =
      IconData(0x100F30, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tram
  static const IconData sf_tram =
      IconData(0x100746, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tram.circle
  static const IconData sf_tram_circle =
      IconData(0x100C9B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tram.circle.fill
  static const IconData sf_tram_circle_fill =
      IconData(0x100C9C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tram.fill
  static const IconData sf_tram_fill =
      IconData(0x100747, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tram.fill.tunnel
  static const IconData sf_tram_fill_tunnel =
      IconData(0x10071D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol transmission
  static const IconData sf_transmission =
      IconData(0x1017CC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trapezoid.and.line.horizontal
  static const IconData sf_trapezoid_and_line_horizontal =
      IconData(0x10085B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trapezoid.and.line.horizontal.fill
  static const IconData sf_trapezoid_and_line_horizontal_fill =
      IconData(0x100791, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trapezoid.and.line.vertical
  static const IconData sf_trapezoid_and_line_vertical =
      IconData(0x100860, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trapezoid.and.line.vertical.fill
  static const IconData sf_trapezoid_and_line_vertical_fill =
      IconData(0x100790, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash
  static const IconData sf_trash =
      IconData(0x100211, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.circle
  static const IconData sf_trash_circle =
      IconData(0x100213, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.circle.fill
  static const IconData sf_trash_circle_fill =
      IconData(0x100214, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.fill
  static const IconData sf_trash_fill =
      IconData(0x100212, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash
  static const IconData sf_trash_slash =
      IconData(0x100727, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash.circle
  static const IconData sf_trash_slash_circle =
      IconData(0x100FCD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash.circle.fill
  static const IconData sf_trash_slash_circle_fill =
      IconData(0x100FCE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash.fill
  static const IconData sf_trash_slash_fill =
      IconData(0x100728, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash.square
  static const IconData sf_trash_slash_square =
      IconData(0x100FD4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.slash.square.fill
  static const IconData sf_trash_slash_square_fill =
      IconData(0x100FD5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.square
  static const IconData sf_trash_square =
      IconData(0x100F3D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trash.square.fill
  static const IconData sf_trash_square_fill =
      IconData(0x100F3E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray
  static const IconData sf_tray =
      IconData(0x100223, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.2
  static const IconData sf_tray_2 =
      IconData(0x100229, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.2.fill
  static const IconData sf_tray_2_fill =
      IconData(0x10022A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.and.arrow.down
  static const IconData sf_tray_and_arrow_down =
      IconData(0x100227, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.and.arrow.down.fill
  static const IconData sf_tray_and_arrow_down_fill =
      IconData(0x100228, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.and.arrow.up
  static const IconData sf_tray_and_arrow_up =
      IconData(0x100225, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.and.arrow.up.fill
  static const IconData sf_tray_and_arrow_up_fill =
      IconData(0x100226, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.circle
  static const IconData sf_tray_circle =
      IconData(0x10048C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.circle.fill
  static const IconData sf_tray_circle_fill =
      IconData(0x10048D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.fill
  static const IconData sf_tray_fill =
      IconData(0x100224, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.full
  static const IconData sf_tray_full =
      IconData(0x10022B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tray.full.fill
  static const IconData sf_tray_full_fill =
      IconData(0x10022C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tree
  static const IconData sf_tree =
      IconData(0x10176F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tree.circle
  static const IconData sf_tree_circle =
      IconData(0x101794, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tree.circle.fill
  static const IconData sf_tree_circle_fill =
      IconData(0x101795, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tree.fill
  static const IconData sf_tree_fill =
      IconData(0x101770, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle
  static const IconData sf_triangle =
      IconData(0x1006E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.bottomhalf.filled
  static const IconData sf_triangle_bottomhalf_filled =
      IconData(0x101039, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.circle
  static const IconData sf_triangle_circle =
      IconData(0x100A05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.circle.fill
  static const IconData sf_triangle_circle_fill =
      IconData(0x100A06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.fill
  static const IconData sf_triangle_fill =
      IconData(0x1006E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.inset.filled
  static const IconData sf_triangle_inset_filled =
      IconData(0x100F99, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.lefthalf.filled
  static const IconData sf_triangle_lefthalf_filled =
      IconData(0x100695, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.righthalf.filled
  static const IconData sf_triangle_righthalf_filled =
      IconData(0x100696, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangle.tophalf.filled
  static const IconData sf_triangle_tophalf_filled =
      IconData(0x101038, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangleshape
  static const IconData sf_triangleshape =
      IconData(0x100970, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol triangleshape.fill
  static const IconData sf_triangleshape_fill =
      IconData(0x100971, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trophy
  static const IconData sf_trophy =
      IconData(0x10080F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trophy.circle
  static const IconData sf_trophy_circle =
      IconData(0x101494, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trophy.circle.fill
  static const IconData sf_trophy_circle_fill =
      IconData(0x101495, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol trophy.fill
  static const IconData sf_trophy_fill =
      IconData(0x100810, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tropicalstorm
  static const IconData sf_tropicalstorm =
      IconData(0x1001E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tropicalstorm.circle
  static const IconData sf_tropicalstorm_circle =
      IconData(0x1016F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tropicalstorm.circle.fill
  static const IconData sf_tropicalstorm_circle_fill =
      IconData(0x1016F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.box
  static const IconData sf_truck_box =
      IconData(0x10107E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.box.badge.clock
  static const IconData sf_truck_box_badge_clock =
      IconData(0x101080, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.box.badge.clock.fill
  static const IconData sf_truck_box_badge_clock_fill =
      IconData(0x101081, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.box.fill
  static const IconData sf_truck_box_fill =
      IconData(0x10107F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side
  static const IconData sf_truck_pickup_side =
      IconData(0x101969, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.air.circulate
  static const IconData sf_truck_pickup_side_air_circulate =
      IconData(0x10196D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.air.circulate.fill
  static const IconData sf_truck_pickup_side_air_circulate_fill =
      IconData(0x10196E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.air.fresh
  static const IconData sf_truck_pickup_side_air_fresh =
      IconData(0x10196F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.air.fresh.fill
  static const IconData sf_truck_pickup_side_air_fresh_fill =
      IconData(0x101970, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.and.exclamationmark
  static const IconData sf_truck_pickup_side_and_exclamationmark =
      IconData(0x101971, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.and.exclamationmark.fill
  static const IconData sf_truck_pickup_side_and_exclamationmark_fill =
      IconData(0x101972, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.down
  static const IconData sf_truck_pickup_side_arrowtriangle_down =
      IconData(0x101977, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.down.fill
  static const IconData sf_truck_pickup_side_arrowtriangle_down_fill =
      IconData(0x101978, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up
  static const IconData sf_truck_pickup_side_arrowtriangle_up =
      IconData(0x101975, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.arrowtriangle.down
  static const IconData
      sf_truck_pickup_side_arrowtriangle_up_arrowtriangle_down =
      IconData(0x101973, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.arrowtriangle.down.fill
  static const IconData
      sf_truck_pickup_side_arrowtriangle_up_arrowtriangle_down_fill =
      IconData(0x101974, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.arrowtriangle.up.fill
  static const IconData sf_truck_pickup_side_arrowtriangle_up_fill =
      IconData(0x101976, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.fill
  static const IconData sf_truck_pickup_side_fill =
      IconData(0x10196A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.front.open
  static const IconData sf_truck_pickup_side_front_open =
      IconData(0x10196B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.front.open.fill
  static const IconData sf_truck_pickup_side_front_open_fill =
      IconData(0x10196C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.hill.down
  static const IconData sf_truck_pickup_side_hill_down =
      IconData(0x101986, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.hill.down.fill
  static const IconData sf_truck_pickup_side_hill_down_fill =
      IconData(0x101987, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.hill.up
  static const IconData sf_truck_pickup_side_hill_up =
      IconData(0x101817, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.hill.up.fill
  static const IconData sf_truck_pickup_side_hill_up_fill =
      IconData(0x101818, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.lock
  static const IconData sf_truck_pickup_side_lock =
      IconData(0x101979, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.lock.fill
  static const IconData sf_truck_pickup_side_lock_fill =
      IconData(0x10197A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.lock.open
  static const IconData sf_truck_pickup_side_lock_open =
      IconData(0x10197B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol truck.pickup.side.lock.open.fill
  static const IconData sf_truck_pickup_side_lock_open_fill =
      IconData(0x10197C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tshirt
  static const IconData sf_tshirt =
      IconData(0x100FA0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tshirt.circle
  static const IconData sf_tshirt_circle =
      IconData(0x101F6C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tshirt.circle.fill
  static const IconData sf_tshirt_circle_fill =
      IconData(0x101F6D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tshirt.fill
  static const IconData sf_tshirt_fill =
      IconData(0x100FA1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign
  static const IconData sf_tugriksign =
      IconData(0x101457, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign.arrow.circlepath
  static const IconData sf_tugriksign_arrow_circlepath =
      IconData(0x10222A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign.circle
  static const IconData sf_tugriksign_circle =
      IconData(0x1005C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign.circle.fill
  static const IconData sf_tugriksign_circle_fill =
      IconData(0x1005C8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign.square
  static const IconData sf_tugriksign_square =
      IconData(0x100607, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tugriksign.square.fill
  static const IconData sf_tugriksign_square_fill =
      IconData(0x100608, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tuningfork
  static const IconData sf_tuningfork =
      IconData(0x100390, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign
  static const IconData sf_turkishlirasign =
      IconData(0x101445, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign.arrow.circlepath
  static const IconData sf_turkishlirasign_arrow_circlepath =
      IconData(0x102218, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign.circle
  static const IconData sf_turkishlirasign_circle =
      IconData(0x1005A3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign.circle.fill
  static const IconData sf_turkishlirasign_circle_fill =
      IconData(0x1005A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign.square
  static const IconData sf_turkishlirasign_square =
      IconData(0x1005E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol turkishlirasign.square.fill
  static const IconData sf_turkishlirasign_square_fill =
      IconData(0x1005E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv
  static const IconData sf_tv =
      IconData(0x1003B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.and.hifispeaker.fill
  static const IconData sf_tv_and_hifispeaker_fill =
      IconData(0x100AD1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.and.mediabox
  static const IconData sf_tv_and_mediabox =
      IconData(0x100CB0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.and.mediabox.fill
  static const IconData sf_tv_and_mediabox_fill =
      IconData(0x101761, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.badge.wifi
  static const IconData sf_tv_badge_wifi =
      IconData(0x102181, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.badge.wifi.fill
  static const IconData sf_tv_badge_wifi_fill =
      IconData(0x102182, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.circle
  static const IconData sf_tv_circle =
      IconData(0x1003B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.circle.fill
  static const IconData sf_tv_circle_fill =
      IconData(0x1003B4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.fill
  static const IconData sf_tv_fill =
      IconData(0x1004B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.inset.filled
  static const IconData sf_tv_inset_filled =
      IconData(0x100DD8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.slash
  static const IconData sf_tv_slash =
      IconData(0x1012DE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol tv.slash.fill
  static const IconData sf_tv_slash_fill =
      IconData(0x1018D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol u.circle
  static const IconData sf_u_circle =
      IconData(0x10002C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol u.circle.fill
  static const IconData sf_u_circle_fill =
      IconData(0x10002D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol u.square
  static const IconData sf_u_square =
      IconData(0x1000BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol u.square.fill
  static const IconData sf_u_square_fill =
      IconData(0x1000BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol uiwindow.split.2x1
  static const IconData sf_uiwindow_split_2x1 =
      IconData(0x1003DD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol umbrella
  static const IconData sf_umbrella =
      IconData(0x100655, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol umbrella.fill
  static const IconData sf_umbrella_fill =
      IconData(0x100656, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol umbrella.percent
  static const IconData sf_umbrella_percent =
      IconData(0x100E30, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol umbrella.percent.fill
  static const IconData sf_umbrella_percent_fill =
      IconData(0x100E31, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol underline
  static const IconData sf_underline =
      IconData(0x100155, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol v.circle
  static const IconData sf_v_circle =
      IconData(0x10002E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol v.circle.fill
  static const IconData sf_v_circle_fill =
      IconData(0x10002F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol v.square
  static const IconData sf_v_square =
      IconData(0x1000BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol v.square.fill
  static const IconData sf_v_square_fill =
      IconData(0x1000BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol vial.viewfinder
  static const IconData sf_vial_viewfinder =
      IconData(0x10166E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video
  static const IconData sf_video =
      IconData(0x100349, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.badge.checkmark
  static const IconData sf_video_badge_checkmark =
      IconData(0x100BBA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.badge.ellipsis
  static const IconData sf_video_badge_ellipsis =
      IconData(0x1010CA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.badge.plus
  static const IconData sf_video_badge_plus =
      IconData(0x10072E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.badge.waveform
  static const IconData sf_video_badge_waveform =
      IconData(0x100F05, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.badge.waveform.fill
  static const IconData sf_video_badge_waveform_fill =
      IconData(0x100F06, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.bubble
  static const IconData sf_video_bubble =
      IconData(0x100C70, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.bubble.fill
  static const IconData sf_video_bubble_fill =
      IconData(0x100C71, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.circle
  static const IconData sf_video_circle =
      IconData(0x10034B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.circle.fill
  static const IconData sf_video_circle_fill =
      IconData(0x10034C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.doorbell
  static const IconData sf_video_doorbell =
      IconData(0x1014DF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.doorbell.fill
  static const IconData sf_video_doorbell_fill =
      IconData(0x1014E0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.fill
  static const IconData sf_video_fill =
      IconData(0x10034A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.fill.badge.checkmark
  static const IconData sf_video_fill_badge_checkmark =
      IconData(0x100BBB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.fill.badge.ellipsis
  static const IconData sf_video_fill_badge_ellipsis =
      IconData(0x1010CB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.fill.badge.plus
  static const IconData sf_video_fill_badge_plus =
      IconData(0x10072F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.slash
  static const IconData sf_video_slash =
      IconData(0x10034D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.slash.circle
  static const IconData sf_video_slash_circle =
      IconData(0x101F84, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.slash.circle.fill
  static const IconData sf_video_slash_circle_fill =
      IconData(0x101F85, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.slash.fill
  static const IconData sf_video_slash_fill =
      IconData(0x10034E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.square
  static const IconData sf_video_square =
      IconData(0x100F49, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol video.square.fill
  static const IconData sf_video_square_fill =
      IconData(0x100F4A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol videoprojector
  static const IconData sf_videoprojector =
      IconData(0x1014AE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol videoprojector.fill
  static const IconData sf_videoprojector_fill =
      IconData(0x1014AF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol view.2d
  static const IconData sf_view_2d =
      IconData(0x100159, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol view.3d
  static const IconData sf_view_3d =
      IconData(0x10016A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol viewfinder
  static const IconData sf_viewfinder =
      IconData(0x1003B9, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol viewfinder.circle
  static const IconData sf_viewfinder_circle =
      IconData(0x1003BF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol viewfinder.circle.fill
  static const IconData sf_viewfinder_circle_fill =
      IconData(0x1003C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol viewfinder.rectangular
  static const IconData sf_viewfinder_rectangular =
      IconData(0x101E7F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol viewfinder.trianglebadge.exclamationmark
  static const IconData sf_viewfinder_trianglebadge_exclamationmark =
      IconData(0x1018D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro
  static const IconData sf_visionpro =
      IconData(0x101396, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.and.arrow.forward
  static const IconData sf_visionpro_and_arrow_forward =
      IconData(0x101CD4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.and.arrow.forward.fill
  static const IconData sf_visionpro_and_arrow_forward_fill =
      IconData(0x101CD5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.badge.exclamationmark
  static const IconData sf_visionpro_badge_exclamationmark =
      IconData(0x101DC7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.badge.exclamationmark.fill
  static const IconData sf_visionpro_badge_exclamationmark_fill =
      IconData(0x101DC8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.badge.play
  static const IconData sf_visionpro_badge_play =
      IconData(0x101F3F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.badge.play.fill
  static const IconData sf_visionpro_badge_play_fill =
      IconData(0x101F40, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.circle
  static const IconData sf_visionpro_circle =
      IconData(0x10217F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.circle.fill
  static const IconData sf_visionpro_circle_fill =
      IconData(0x102180, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.fill
  static const IconData sf_visionpro_fill =
      IconData(0x101398, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.slash
  static const IconData sf_visionpro_slash =
      IconData(0x101F43, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.slash.circle
  static const IconData sf_visionpro_slash_circle =
      IconData(0x10219E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.slash.circle.fill
  static const IconData sf_visionpro_slash_circle_fill =
      IconData(0x10219F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol visionpro.slash.fill
  static const IconData sf_visionpro_slash_fill =
      IconData(0x101F44, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol voiceover
  static const IconData sf_voiceover =
      IconData(0x100B7B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol volleyball
  static const IconData sf_volleyball =
      IconData(0x10172A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol volleyball.circle
  static const IconData sf_volleyball_circle =
      IconData(0x10172C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol volleyball.circle.fill
  static const IconData sf_volleyball_circle_fill =
      IconData(0x10172D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol volleyball.fill
  static const IconData sf_volleyball_fill =
      IconData(0x10172B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol w.circle
  static const IconData sf_w_circle =
      IconData(0x100030, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol w.circle.fill
  static const IconData sf_w_circle_fill =
      IconData(0x100031, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol w.square
  static const IconData sf_w_square =
      IconData(0x1000C0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol w.square.fill
  static const IconData sf_w_square_fill =
      IconData(0x1000C1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wake
  static const IconData sf_wake =
      IconData(0x100A92, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wake.circle
  static const IconData sf_wake_circle =
      IconData(0x100DA1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wake.circle.fill
  static const IconData sf_wake_circle_fill =
      IconData(0x100DA2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wallet.pass
  static const IconData sf_wallet_pass =
      IconData(0x1007FE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wallet.pass.fill
  static const IconData sf_wallet_pass_fill =
      IconData(0x1007FF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wand.and.rays
  static const IconData sf_wand_and_rays =
      IconData(0x100371, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wand.and.rays.inverse
  static const IconData sf_wand_and_rays_inverse =
      IconData(0x100372, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wand.and.stars
  static const IconData sf_wand_and_stars =
      IconData(0x10070D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wand.and.stars.inverse
  static const IconData sf_wand_and_stars_inverse =
      IconData(0x10070E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol warninglight
  static const IconData sf_warninglight =
      IconData(0x10102C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol warninglight.fill
  static const IconData sf_warninglight_fill =
      IconData(0x10102D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol washer
  static const IconData sf_washer =
      IconData(0x101420, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol washer.circle
  static const IconData sf_washer_circle =
      IconData(0x101FCE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol washer.circle.fill
  static const IconData sf_washer_circle_fill =
      IconData(0x101FCF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol washer.fill
  static const IconData sf_washer_fill =
      IconData(0x101421, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol watch.analog
  static const IconData sf_watch_analog =
      IconData(0x1017BA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol watchface.applewatch.case
  static const IconData sf_watchface_applewatch_case =
      IconData(0x100E97, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol water.waves
  static const IconData sf_water_waves =
      IconData(0x101384, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol water.waves.and.arrow.down
  static const IconData sf_water_waves_and_arrow_down =
      IconData(0x101386, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol water.waves.and.arrow.down.trianglebadge.exclamationmark
  static const IconData
      sf_water_waves_and_arrow_down_trianglebadge_exclamationmark =
      IconData(0x101730, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol water.waves.and.arrow.up
  static const IconData sf_water_waves_and_arrow_up =
      IconData(0x101385, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol water.waves.slash
  static const IconData sf_water_waves_slash =
      IconData(0x1015C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waterbottle
  static const IconData sf_waterbottle =
      IconData(0x101ECA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waterbottle.fill
  static const IconData sf_waterbottle_fill =
      IconData(0x101ECB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.backward
  static const IconData sf_wave_3_backward =
      IconData(0x100C58, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.backward.circle
  static const IconData sf_wave_3_backward_circle =
      IconData(0x100C59, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.backward.circle.fill
  static const IconData sf_wave_3_backward_circle_fill =
      IconData(0x100C5A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.forward
  static const IconData sf_wave_3_forward =
      IconData(0x100C5B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.forward.circle
  static const IconData sf_wave_3_forward_circle =
      IconData(0x100C5C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.forward.circle.fill
  static const IconData sf_wave_3_forward_circle_fill =
      IconData(0x100C5D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.left
  static const IconData sf_wave_3_left =
      IconData(0x100671, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.left.circle
  static const IconData sf_wave_3_left_circle =
      IconData(0x100B77, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.left.circle.fill
  static const IconData sf_wave_3_left_circle_fill =
      IconData(0x100B78, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.right
  static const IconData sf_wave_3_right =
      IconData(0x100672, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.right.circle
  static const IconData sf_wave_3_right_circle =
      IconData(0x100B79, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wave.3.right.circle.fill
  static const IconData sf_wave_3_right_circle_fill =
      IconData(0x100B7A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform
  static const IconData sf_waveform =
      IconData(0x10066B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.and.person.filled
  static const IconData sf_waveform_and_person_filled =
      IconData(0x1020D3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.badge.exclamationmark
  static const IconData sf_waveform_badge_exclamationmark =
      IconData(0x100EFD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.badge.magnifyingglass
  static const IconData sf_waveform_badge_magnifyingglass =
      IconData(0x100EFE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.badge.mic
  static const IconData sf_waveform_badge_mic =
      IconData(0x1010E8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.badge.minus
  static const IconData sf_waveform_badge_minus =
      IconData(0x100E37, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.badge.plus
  static const IconData sf_waveform_badge_plus =
      IconData(0x100E36, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.circle
  static const IconData sf_waveform_circle =
      IconData(0x100788, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.circle.fill
  static const IconData sf_waveform_circle_fill =
      IconData(0x100789, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path
  static const IconData sf_waveform_path =
      IconData(0x100443, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path.badge.minus
  static const IconData sf_waveform_path_badge_minus =
      IconData(0x100445, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path.badge.plus
  static const IconData sf_waveform_path_badge_plus =
      IconData(0x100444, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path.ecg
  static const IconData sf_waveform_path_ecg =
      IconData(0x10071F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path.ecg.rectangle
  static const IconData sf_waveform_path_ecg_rectangle =
      IconData(0x1007EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.path.ecg.rectangle.fill
  static const IconData sf_waveform_path_ecg_rectangle_fill =
      IconData(0x1007EB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol waveform.slash
  static const IconData sf_waveform_slash =
      IconData(0x1013CF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol web.camera
  static const IconData sf_web_camera =
      IconData(0x1014B2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol web.camera.fill
  static const IconData sf_web_camera_fill =
      IconData(0x1014B3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi
  static const IconData sf_wifi =
      IconData(0x100647, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.circle
  static const IconData sf_wifi_circle =
      IconData(0x100DD6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.circle.fill
  static const IconData sf_wifi_circle_fill =
      IconData(0x100DD7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.exclamationmark
  static const IconData sf_wifi_exclamationmark =
      IconData(0x100665, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.exclamationmark.circle
  static const IconData sf_wifi_exclamationmark_circle =
      IconData(0x102101, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.exclamationmark.circle.fill
  static const IconData sf_wifi_exclamationmark_circle_fill =
      IconData(0x102102, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.router
  static const IconData sf_wifi_router =
      IconData(0x1014E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.router.fill
  static const IconData sf_wifi_router_fill =
      IconData(0x1014E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.slash
  static const IconData sf_wifi_slash =
      IconData(0x100648, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.square
  static const IconData sf_wifi_square =
      IconData(0x100F57, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wifi.square.fill
  static const IconData sf_wifi_square_fill =
      IconData(0x100F58, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind
  static const IconData sf_wind =
      IconData(0x1001E4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind.circle
  static const IconData sf_wind_circle =
      IconData(0x1016EF, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind.circle.fill
  static const IconData sf_wind_circle_fill =
      IconData(0x1016F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind.snow
  static const IconData sf_wind_snow =
      IconData(0x1001E6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind.snow.circle
  static const IconData sf_wind_snow_circle =
      IconData(0x1016F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wind.snow.circle.fill
  static const IconData sf_wind_snow_circle_fill =
      IconData(0x1016F2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.awning
  static const IconData sf_window_awning =
      IconData(0x10147D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.awning.closed
  static const IconData sf_window_awning_closed =
      IconData(0x10147E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.casement
  static const IconData sf_window_casement =
      IconData(0x10147F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.casement.closed
  static const IconData sf_window_casement_closed =
      IconData(0x101480, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.ceiling
  static const IconData sf_window_ceiling =
      IconData(0x101481, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.ceiling.closed
  static const IconData sf_window_ceiling_closed =
      IconData(0x101482, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.horizontal
  static const IconData sf_window_horizontal =
      IconData(0x10146D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.horizontal.closed
  static const IconData sf_window_horizontal_closed =
      IconData(0x10146E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.shade.closed
  static const IconData sf_window_shade_closed =
      IconData(0x1013E3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.shade.open
  static const IconData sf_window_shade_open =
      IconData(0x1013E2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.vertical.closed
  static const IconData sf_window_vertical_closed =
      IconData(0x10146C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol window.vertical.open
  static const IconData sf_window_vertical_open =
      IconData(0x10146B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.fluid.and.spray
  static const IconData sf_windshield_front_and_fluid_and_spray =
      IconData(0x1017BC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.heat.waves
  static const IconData sf_windshield_front_and_heat_waves =
      IconData(0x10101F, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.spray
  static const IconData sf_windshield_front_and_spray =
      IconData(0x101015, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.wiper
  static const IconData sf_windshield_front_and_wiper =
      IconData(0x101014, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.wiper.and.drop
  static const IconData sf_windshield_front_and_wiper_and_drop =
      IconData(0x101017, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.wiper.and.spray
  static const IconData sf_windshield_front_and_wiper_and_spray =
      IconData(0x1017BB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.wiper.exclamationmark
  static const IconData sf_windshield_front_and_wiper_exclamationmark =
      IconData(0x10124D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.front.and.wiper.intermittent
  static const IconData sf_windshield_front_and_wiper_intermittent =
      IconData(0x101016, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.fluid.and.spray
  static const IconData sf_windshield_rear_and_fluid_and_spray =
      IconData(0x1017BE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.heat.waves
  static const IconData sf_windshield_rear_and_heat_waves =
      IconData(0x101024, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.spray
  static const IconData sf_windshield_rear_and_spray =
      IconData(0x101021, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.wiper
  static const IconData sf_windshield_rear_and_wiper =
      IconData(0x101020, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.wiper.and.drop
  static const IconData sf_windshield_rear_and_wiper_and_drop =
      IconData(0x101023, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.wiper.and.spray
  static const IconData sf_windshield_rear_and_wiper_and_spray =
      IconData(0x1017BD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.wiper.exclamationmark
  static const IconData sf_windshield_rear_and_wiper_exclamationmark =
      IconData(0x101251, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol windshield.rear.and.wiper.intermittent
  static const IconData sf_windshield_rear_and_wiper_intermittent =
      IconData(0x101022, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wineglass
  static const IconData sf_wineglass =
      IconData(0x1013A4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wineglass.fill
  static const IconData sf_wineglass_fill =
      IconData(0x1013A5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign
  static const IconData sf_wonsign =
      IconData(0x10144E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign.arrow.circlepath
  static const IconData sf_wonsign_arrow_circlepath =
      IconData(0x102221, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign.circle
  static const IconData sf_wonsign_circle =
      IconData(0x1005B5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign.circle.fill
  static const IconData sf_wonsign_circle_fill =
      IconData(0x1005B6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign.square
  static const IconData sf_wonsign_square =
      IconData(0x1005F5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wonsign.square.fill
  static const IconData sf_wonsign_square_fill =
      IconData(0x1005F6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrench.adjustable
  static const IconData sf_wrench_adjustable =
      IconData(0x100395, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrench.adjustable.fill
  static const IconData sf_wrench_adjustable_fill =
      IconData(0x100396, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrench.and.screwdriver
  static const IconData sf_wrench_and_screwdriver =
      IconData(0x10090A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrench.and.screwdriver.fill
  static const IconData sf_wrench_and_screwdriver_fill =
      IconData(0x10090B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrongwaysign
  static const IconData sf_wrongwaysign =
      IconData(0x101566, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol wrongwaysign.fill
  static const IconData sf_wrongwaysign_fill =
      IconData(0x101567, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol x.circle
  static const IconData sf_x_circle =
      IconData(0x100032, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol x.circle.fill
  static const IconData sf_x_circle_fill =
      IconData(0x100033, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol x.square
  static const IconData sf_x_square =
      IconData(0x1000C2, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol x.square.fill
  static const IconData sf_x_square_fill =
      IconData(0x1000C3, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol x.squareroot
  static const IconData sf_x_squareroot =
      IconData(0x1004EA, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xbox.logo
  static const IconData sf_xbox_logo =
      IconData(0x100F89, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark
  static const IconData sf_xmark =
      IconData(0x100184, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.app
  static const IconData sf_xmark_app =
      IconData(0x100EBE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.app.fill
  static const IconData sf_xmark_app_fill =
      IconData(0x100EC0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.bin
  static const IconData sf_xmark_bin =
      IconData(0x100231, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.bin.circle
  static const IconData sf_xmark_bin_circle =
      IconData(0x100233, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.bin.circle.fill
  static const IconData sf_xmark_bin_circle_fill =
      IconData(0x100234, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.bin.fill
  static const IconData sf_xmark_bin_fill =
      IconData(0x100232, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.circle
  static const IconData sf_xmark_circle =
      IconData(0x100060, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.circle.fill
  static const IconData sf_xmark_circle_fill =
      IconData(0x100061, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.diamond
  static const IconData sf_xmark_diamond =
      IconData(0x100883, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.diamond.fill
  static const IconData sf_xmark_diamond_fill =
      IconData(0x100884, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.icloud
  static const IconData sf_xmark_icloud =
      IconData(0x100313, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.icloud.fill
  static const IconData sf_xmark_icloud_fill =
      IconData(0x100314, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.octagon
  static const IconData sf_xmark_octagon =
      IconData(0x100489, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.octagon.fill
  static const IconData sf_xmark_octagon_fill =
      IconData(0x10048A, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.rectangle
  static const IconData sf_xmark_rectangle =
      IconData(0x1003CD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.rectangle.fill
  static const IconData sf_xmark_rectangle_fill =
      IconData(0x1003CE, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.rectangle.portrait
  static const IconData sf_xmark_rectangle_portrait =
      IconData(0x100870, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.rectangle.portrait.fill
  static const IconData sf_xmark_rectangle_portrait_fill =
      IconData(0x100871, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.seal
  static const IconData sf_xmark_seal =
      IconData(0x1001FC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.seal.fill
  static const IconData sf_xmark_seal_fill =
      IconData(0x1001FD, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.shield
  static const IconData sf_xmark_shield =
      IconData(0x10079D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.shield.fill
  static const IconData sf_xmark_shield_fill =
      IconData(0x10079E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.square
  static const IconData sf_xmark_square =
      IconData(0x1000F0, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xmark.square.fill
  static const IconData sf_xmark_square_fill =
      IconData(0x1000F1, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xserve
  static const IconData sf_xserve =
      IconData(0x1009D8, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol xserve.raid
  static const IconData sf_xserve_raid =
      IconData(0x101EC7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol y.circle
  static const IconData sf_y_circle =
      IconData(0x100034, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol y.circle.fill
  static const IconData sf_y_circle_fill =
      IconData(0x100035, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol y.square
  static const IconData sf_y_square =
      IconData(0x1000C4, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol y.square.fill
  static const IconData sf_y_square_fill =
      IconData(0x1000C5, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign
  static const IconData sf_yensign =
      IconData(0x101441, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign.arrow.circlepath
  static const IconData sf_yensign_arrow_circlepath =
      IconData(0x102214, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign.circle
  static const IconData sf_yensign_circle =
      IconData(0x10059B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign.circle.fill
  static const IconData sf_yensign_circle_fill =
      IconData(0x10059C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign.square
  static const IconData sf_yensign_square =
      IconData(0x1005DB, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yensign.square.fill
  static const IconData sf_yensign_square_fill =
      IconData(0x1005DC, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yieldsign
  static const IconData sf_yieldsign =
      IconData(0x101564, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol yieldsign.fill
  static const IconData sf_yieldsign_fill =
      IconData(0x101565, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol z.circle
  static const IconData sf_z_circle =
      IconData(0x100036, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol z.circle.fill
  static const IconData sf_z_circle_fill =
      IconData(0x100037, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol z.square
  static const IconData sf_z_square =
      IconData(0x1000C6, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol z.square.fill
  static const IconData sf_z_square_fill =
      IconData(0x1000C7, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol zl.button.roundedtop.horizontal
  static const IconData sf_zl_button_roundedtop_horizontal =
      IconData(0x100A1B, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol zl.button.roundedtop.horizontal.fill
  static const IconData sf_zl_button_roundedtop_horizontal_fill =
      IconData(0x100A1C, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol zr.button.roundedtop.horizontal
  static const IconData sf_zr_button_roundedtop_horizontal =
      IconData(0x100A1D, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol zr.button.roundedtop.horizontal.fill
  static const IconData sf_zr_button_roundedtop_horizontal_fill =
      IconData(0x100A1E, fontFamily: 'sficons', fontPackage: 'flutter_sficon');

  /// IconData for SF Symbol zzz
  static const IconData sf_zzz =
      IconData(0x100583, fontFamily: 'sficons', fontPackage: 'flutter_sficon');
}

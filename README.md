# Flutter SFIcon

Render SF Symbols on every platform, similar to the regular `Icon` widget. Supports all nine weights and SF Symbols 27.
Icons are tree shakable: an app only ships the symbols it uses.

Symbols are drawn as vector paths, so no font is bundled with the app. Apps that bundle an Apple font get the ITMS-91182 "Disallowed font" warning from App Store Connect (see Apple's TN3214), and from October 1, 2027 such builds are rejected. Versions 1.x bundled one; 2.0 doesn't.

## Install

```
flutter pub add flutter_sficon
```

## How to use

All icons are static constants of the `SFIcons` class, so unused ones are tree-shaken away.
Naming convention for retrieving SF symbol is as follows:

1. SF Symbol name is prefixed with 'sf\_'.
2. Dots are replaced with underscores.

Examples:

-   SF Symbol `0.circle` is named as `sf_0_circle`
-   SF Symbol `heart.fill` is named as `sf_heart_fill`

```dart
import 'package:flutter_sficon/flutter_sficon.dart';

// use SFIcon instead of regular Icon widget
const SFIcon(
    SFIcons.sf_heart_fill, // 'heart.fill'
    fontSize: 40, // fontSize instead of size
    fontWeight: FontWeight.bold, // fontWeight instead of weight
    color: Colors.red,
);
```

`SFIcon` lays out like text of the same `fontSize`: same width, height and baseline, so it lines up with text in a `Row` aligned by baseline, and it follows the platform text size.

It colours like an icon: `color`, then `IconTheme` color and opacity. `ShaderMask` and `shadows` work too. Symbols are monochrome; hierarchical, palette and multicolour rendering modes aren't supported.

Every weight from `w100` to `w900` is drawn from Apple's own weight masters, the same way the font interpolates them.

## Migrating from 1.x

The API is the same, so most code needs no changes. Things to check:

-   **Use `SFIcon`, not `Icon`.** `SFIcons` constants carry vector data instead of a font, so Flutter's `Icon` widget can't draw them. Replace `Icon(SFIcons.sf_x)` with `SFIcon(SFIcons.sf_x)`.
-   **Renamed symbols.** Names Apple renamed or removed still compile but are deprecated; the warning names the replacement when there is one.
-   **Real weights.** 1.x bundled only the Regular weight, so lighter weights looked Regular and heavier ones were synthetic bold. 2.0 draws Apple's real weights, so `w100` to `w300` look lighter than before and `w600` to `w900` look a bit different.
-   **Newer artwork.** Symbols come from SF Pro 22.0, so some look slightly different from 1.x.
-   **New symbols.** 172 symbols introduced in SF Symbols 27 aren't included yet, because Apple hasn't shipped their outlines in SF Pro.

## Size

An app pays only for the symbols it uses: about 0.6 KB of path data per symbol on average. The package itself has no assets.

## Updating the symbols

For maintainers. `tool/symbols.tsv` lists every name and code point. `tool/update_symbols.py` updates it from lists copied out of the SF Symbols app, and `tool/generate.py` regenerates `lib/src/sf_icons.g.dart` from Apple's variable `SF-Pro.ttf`. Both scripts describe their usage at the top.

## IMPORTANT

All SF Symbols shall be considered to be system-provided images as defined in the Xcode and Apple SDKs license agreements and are subject to the terms and conditions set forth therein. You may not use SF Symbols or glyphs that are substantially or confusingly similar in your app icons, logos, or any other trademark-related use. Apple reserves the right to review and, in its sole discretion, require modification or discontinuance of use of any Symbol used in violation of the foregoing restrictions, and you agree to promptly comply with any such request.

## Notes

This package is inspired by https://github.com/virskor/flutter_sfsymbols. Also thanks for the legal note used here.

# Flutter SFIcon

Render SF Symbols on both platforms simuliar to regular `Icon` widget. Supports weight and latest SF Symbols version 5.1
Icons are tree shakable. Keep in mind, that `SFIcon` widget is based on `Text`.

## Install

add flutter_sf_symbols into your pubspec.yaml

```
flutter pub add flutter_sficon
```

## How to use

For correct use of flutter tree shaking all icons stored inside `SFIcons` class as static constants.
Naming convention for retrieving SF symbol is as follows:

1. SF Symbol name is prefixed with 'sf\_'.
2. Dots are replaced with underscores.
   Examples:
   — SF Symbol 0.circle is named as sf_0_circle.
   — SF Symbol heart.fill is named as sf_heart_fill.

```dart
import 'package:flutter_sficon/flutter_sficon.dart';

// use SFSymbol instead of regular Icon widget
const SFIcon(
    SFIcons.sf_heart_fill,
    fontSize: 40, // fontSize instead of size
    fontWeight: FontWeight.bold, // fontWeight instead of weight
    color: Colors.red,
);
```

## IMPORTANT

All SF Symbols shall be considered to be system-provided images as defined in the Xcode and Apple SDKs license agreements and are subject to the terms and conditions set forth therein. You may not use SF Symbols or glyphs that are substantially or confusingly similar in your app icons, logos, or any other trademark-related use. Apple reserves the right to review and, in its sole discretion, require modification or discontinuance of use of any Symbol used in violation of the foregoing restrictions, and you agree to promptly comply with any such request.

## Notes

This package is inspired by https://github.com/virskor/flutter_sfsymbols. Also thanks for the legal note used here.

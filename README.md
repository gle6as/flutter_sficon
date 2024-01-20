# Flutter SFIcon

Render SF Symbols on both platforms just like regular `Icon` widget. Supports weight and latest SF Symbols version 5.1
Includes SF Pro font, which is tree shakable.

## Install

add flutter_sf_symbols into your pubspec.yaml

```
flutter pub add flutter_sficon
```

don't forget to add font from the package to your app's pubspec.yaml

```yaml
fonts:
    - family: sfsymbols
      fonts:
          - asset: packages/flutter_sficon/fonts/sfsymbols.ttf
```

## How to use

```dart
import 'package:flutter_sficon/flutter_sficon.dart';

// use SFSymbol instead of regular Icon widget
const SFIcon(
    'lasso.badge.sparkles', // use symbol name from SF Symbols app
    size: 40, // control size of the symbol
    weight: 600, // control weight of the symbol, ranging from 0 to 1000
    color: Colors.red, // color your symbol
),
```

## IMPORTANT

All SF Symbols shall be considered to be system-provided images as defined in the Xcode and Apple SDKs license agreements and are subject to the terms and conditions set forth therein. You may not use SF Symbols—or glyphs that are substantially or confusingly similar—in your app icons, logos, or any other trademark-related use. Apple reserves the right to review and, in its sole discretion, require modification or discontinuance of use of any Symbol used in violation of the foregoing restrictions, and you agree to promptly comply with any such request.

## Notes

This package is inspired by https://github.com/virskor/flutter_sfsymbols. Also thanks for the legal note used here.

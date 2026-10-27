## 2.0.0 — October 27, 2026

-   No bundled font. Symbols are vector paths embedded in each `SFIcons` constant, so iOS builds no longer get ITMS-91182 "Disallowed font" from App Store Connect, and unused symbols are still tree-shaken away
-   Upgrade to SF Symbols 27 (SF Pro 22.0). 172 symbols new in SF Symbols 27 aren't included yet: SF Pro has no outlines for them
-   All nine weights are drawn from Apple's weight masters instead of a single Regular font
-   Breaking: Flutter's `Icon` widget can no longer draw `SFIcons` constants, use `SFIcon`
-   Renamed and removed symbols are kept as deprecated constants
-   Requires Flutter 3.27

## 1.3.0 — January 26, 2026

-   Upgrade to SF Symbols 7.1

## 1.2.1 — July 15, 2025

-   Resolving [#4](https://github.com/gle6as/flutter_sficon/issues/4). Thanks to [just-doit](https://github.com/just-doit)

## 1.2.0 — May 30, 2025

-   Upgrade to SF Symbols 6.0. Minor update to example icons

## 1.1.2 — April 14, 2024

-   Fixed missing fontFamily and fontPackage in IconData, required by tree shaker in newer versions of Flutter

## 1.1.1 — January 21, 2024

-   Font weight works correctly, SFIcon now supports IconTheme. Thanks to @iSa1vatore

## 1.1.0 — January 21, 2024

-   Changed widget from Icon to Text to keep correct size of symbol

## 1.0.1 — January 20, 2024

-   Adding platforms for pub.dev

## 1.0.0 — January 20, 2024

-   Initial release

library flutter_sf_symbols;

import 'package:flutter/widgets.dart';
import './icons.dart';

class SFSymbol extends StatelessWidget {
  final String name;
  final double? size;
  final Color? color;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;

  const SFSymbol(
    this.name, {
    Key? key,
    this.size,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icons[name] ?? icons['questionmark.circle'],
      size: size,
      color: color,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      shadows: shadows,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }
}

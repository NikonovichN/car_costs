import 'package:flutter/material.dart';

class ShadowsExt extends ThemeExtension<ShadowsExt> {
  final BoxShadow button;

  ShadowsExt({required this.button});

  @override
  ThemeExtension<ShadowsExt> copyWith({BoxShadow? button}) {
    return ShadowsExt(button: button ?? this.button);
  }

  @override
  ThemeExtension<ShadowsExt> lerp(
    covariant ThemeExtension<ShadowsExt>? other,
    double t,
  ) {
    if (other is! ShadowsExt) {
      return this;
    }
    return ShadowsExt(button: BoxShadow.lerp(button, other.button, t)!);
  }
}

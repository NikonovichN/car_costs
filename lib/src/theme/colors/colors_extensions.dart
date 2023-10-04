import 'package:flutter/material.dart';

class ColorsAppExt extends ThemeExtension<ColorsAppExt> {
  final Color? backgroundBar;
  final Color? onBackgroundBar;
  final Color? activeButtonBar;
  final Color? onActiveButtonBar;
  final Color? startBackgroundGradient;
  final Color? endBackgroundGradient;
  final Color? onBackgroundInverse;
  final Color? placeholder;

  ColorsAppExt({
    required this.backgroundBar,
    required this.onBackgroundBar,
    required this.activeButtonBar,
    required this.onActiveButtonBar,
    required this.startBackgroundGradient,
    required this.endBackgroundGradient,
    required this.onBackgroundInverse,
    required this.placeholder,
  });

  @override
  ThemeExtension<ColorsAppExt> copyWith({
    Color? backgroundBar,
    Color? onBackgroundBar,
    Color? activeButtonBar,
    Color? onActiveButtonBar,
    Color? startBackgroundGradient,
    Color? endBackgroundGradient,
    Color? onBackgroundInverse,
    Color? placeholder,
  }) {
    return ColorsAppExt(
      backgroundBar: backgroundBar ?? this.backgroundBar,
      onBackgroundBar: onBackgroundBar ?? this.onBackgroundBar,
      activeButtonBar: activeButtonBar ?? this.activeButtonBar,
      onActiveButtonBar: onActiveButtonBar ?? this.onActiveButtonBar,
      startBackgroundGradient:
          startBackgroundGradient ?? this.startBackgroundGradient,
      endBackgroundGradient:
          endBackgroundGradient ?? this.endBackgroundGradient,
      onBackgroundInverse: onBackgroundInverse ?? this.onBackgroundInverse,
      placeholder: placeholder ?? this.placeholder,
    );
  }

  @override
  ThemeExtension<ColorsAppExt> lerp(
    covariant ThemeExtension<ColorsAppExt>? other,
    double t,
  ) {
    if (other is! ColorsAppExt) {
      return this;
    }
    return ColorsAppExt(
      backgroundBar: Color.lerp(backgroundBar, other.backgroundBar, t),
      onBackgroundBar: Color.lerp(onBackgroundBar, other.onBackgroundBar, t),
      activeButtonBar: Color.lerp(activeButtonBar, other.activeButtonBar, t),
      onActiveButtonBar:
          Color.lerp(onActiveButtonBar, other.onActiveButtonBar, t),
      startBackgroundGradient:
          Color.lerp(startBackgroundGradient, other.startBackgroundGradient, t),
      endBackgroundGradient:
          Color.lerp(endBackgroundGradient, other.endBackgroundGradient, t),
      onBackgroundInverse:
          Color.lerp(onBackgroundInverse, other.onBackgroundInverse, t),
      placeholder: Color.lerp(placeholder, other.placeholder, t),
    );
  }
}

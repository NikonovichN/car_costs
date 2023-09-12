import 'package:flutter/material.dart';

class ColorsAppExt extends ThemeExtension<ColorsAppExt> {
  final Color? backgroundBar;
  final Color? onBackgroundBar;
  final Color? activeButtonBar;
  final Color? onActiveButtonBar;

  ColorsAppExt({
    required this.backgroundBar,
    required this.onBackgroundBar,
    required this.activeButtonBar,
    required this.onActiveButtonBar,
  });

  @override
  ThemeExtension<ColorsAppExt> copyWith({
    Color? backgroundBar,
    Color? onBackgroundBar,
    Color? activeButtonBar,
    Color? onActiveButtonBar,
  }) {
    return ColorsAppExt(
      backgroundBar: backgroundBar ?? this.backgroundBar,
      onBackgroundBar: onBackgroundBar ?? this.onBackgroundBar,
      activeButtonBar: activeButtonBar ?? this.activeButtonBar,
      onActiveButtonBar: onActiveButtonBar ?? this.onActiveButtonBar,
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
      onActiveButtonBar: Color.lerp(
        onActiveButtonBar,
        other.onActiveButtonBar,
        t,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextStylesExt extends ThemeExtension<TextStylesExt> {
  final TextStyle openSansRegular;
  final TextStyle merriweatherBold;

  TextStylesExt(
      {required this.openSansRegular, required this.merriweatherBold});

  @override
  ThemeExtension<TextStylesExt> copyWith({
    TextStyle? openSansRegular,
    TextStyle? merriweatherBold,
  }) {
    return TextStylesExt(
      openSansRegular: openSansRegular ?? this.openSansRegular,
      merriweatherBold: merriweatherBold ?? this.merriweatherBold,
    );
  }

  @override
  ThemeExtension<TextStylesExt> lerp(
    covariant ThemeExtension<TextStylesExt>? other,
    double t,
  ) {
    if (other is! TextStylesExt) {
      return this;
    }
    return TextStylesExt(
      openSansRegular: TextStyle.lerp(
        openSansRegular,
        other.openSansRegular,
        t,
      )!,
      merriweatherBold: TextStyle.lerp(
        merriweatherBold,
        other.merriweatherBold,
        t,
      )!,
    );
  }
}

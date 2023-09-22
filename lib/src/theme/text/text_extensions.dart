import 'package:flutter/material.dart';

class TextExt extends ThemeExtension<TextExt> {
  final TextStyle openSansRegular;

  TextExt({required this.openSansRegular});

  @override
  ThemeExtension<TextExt> copyWith({TextStyle? openSansRegular}) {
    return TextExt(openSansRegular: openSansRegular ?? this.openSansRegular);
  }

  @override
  ThemeExtension<TextExt> lerp(
    covariant ThemeExtension<TextExt>? other,
    double t,
  ) {
    if (other is! TextExt) {
      return this;
    }
    return TextExt(
      openSansRegular: TextStyle.lerp(
        openSansRegular,
        other.openSansRegular,
        t,
      )!,
    );
  }
}

import 'package:flutter/material.dart';

import 'predefined_text_styles.dart';
import 'text_extensions.dart';

class TextThemeApp extends TextTheme {
  static TextThemeApp? _instance;

  TextThemeApp._internal() {
    _instance = this;
  }

  factory TextThemeApp() => _instance ?? TextThemeApp._internal();

  @override
  TextStyle? get titleLarge => PredefinedTextStyle.openSansTitle;

  @override
  TextStyle? get titleMedium => PredefinedTextStyle.openSansMediumTitle;

  @override
  TextStyle? get labelSmall => PredefinedTextStyle.openSansSmallRegular;

  @override
  TextStyle? get bodyMedium => PredefinedTextStyle.merriweatherRegular;

  @override
  TextStyle? get bodySmall => PredefinedTextStyle.merriweatherSmall;
}

class TextThemeExtApp extends TextStylesExt {
  TextThemeExtApp()
      : super(
          openSansRegular: PredefinedTextStyle.openSansRegular,
          merriweatherBold: PredefinedTextStyle.merriweatherBold,
        );
}

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'colors/colors_scheme.dart';
import 'shadow/shadows_scheme.dart';
import 'text/text_themes.dart';

final lightThemeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorScheme: const ColorsAppLight(),
    textTheme: TextThemeApp(),
    extensions: [
      ColorsAppLightExt(),
      ShadowsLightAppExt(),
      TextThemeExtApp(),
    ],
  ),
);

final darkThemeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorScheme: const ColorsAppDark(),
    textTheme: TextThemeApp(),
    extensions: [
      ColorsAppDarkExt(),
      ShadowsDarkAppExt(),
      TextThemeExtApp(),
    ],
  ),
);

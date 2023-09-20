import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'colors/colors_scheme.dart';
import 'text.dart';

final lightThemeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorScheme: const ColorsAppLight(),
    textTheme: TextThemeApp(),
    extensions: [ColorsAppLightExt()],
  ),
);

final darkThemeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorScheme: const ColorsAppDark(),
    textTheme: TextThemeApp(),
    extensions: [ColorsAppDarkExt()],
  ),
);

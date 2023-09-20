import 'package:flutter/material.dart';

import 'colors_extensions.dart';

final class NamedColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const accentBrown = Color(0xFF5E454B);
  static const secondary = Color(0xFFD8B384);
  static const error = Color(0xFFC60C22);
  static const lemonChiffon = Color(0xFFF3F0D7);
  static const oldBurgundy = Color(0xFF242020);
  static const lightGrey = Color(0xFFD9D9D9);
  static const darkGrey = Color(0xFF414141);
  static const snow = Color(0xFFF6F6F6);
}

class ColorsAppLight extends ColorScheme {
  const ColorsAppLight()
      : super(
          brightness: Brightness.light,
          shadow: const Color.fromARGB(146, 180, 180, 180),
          primary: NamedColors.accentBrown,
          onPrimary: NamedColors.white,
          secondary: NamedColors.secondary,
          onSecondary: NamedColors.white,
          error: NamedColors.error,
          onError: NamedColors.white,
          background: NamedColors.white,
          onBackground: NamedColors.black,
          surface: NamedColors.white,
          onSurface: NamedColors.black,
        );
}

class ColorsAppDark extends ColorScheme {
  const ColorsAppDark()
      : super(
          brightness: Brightness.dark,
          shadow: const Color.fromARGB(95, 83, 76, 76),
          primary: NamedColors.black,
          onPrimary: NamedColors.lemonChiffon,
          secondary: NamedColors.secondary,
          onSecondary: NamedColors.white,
          error: NamedColors.error,
          onError: NamedColors.white,
          background: NamedColors.oldBurgundy,
          onBackground: NamedColors.lightGrey,
          surface: NamedColors.darkGrey,
          onSurface: NamedColors.white,
        );
}

class ColorsAppLightExt extends ColorsAppExt {
  ColorsAppLightExt()
      : super(
          backgroundBar: NamedColors.snow,
          onBackgroundBar: NamedColors.accentBrown,
          activeButtonBar: NamedColors.accentBrown,
          onActiveButtonBar: NamedColors.snow,
          startBackgroundGradient: NamedColors.darkGrey.withOpacity(.5),
          endBackgroundGradient: NamedColors.darkGrey.withOpacity(0),
        );
}

class ColorsAppDarkExt extends ColorsAppExt {
  ColorsAppDarkExt()
      : super(
          backgroundBar: NamedColors.black,
          onBackgroundBar: NamedColors.secondary,
          activeButtonBar: NamedColors.secondary,
          onActiveButtonBar: NamedColors.black,
          startBackgroundGradient: NamedColors.accentBrown.withOpacity(.5),
          endBackgroundGradient: NamedColors.accentBrown.withOpacity(0),
        );
}

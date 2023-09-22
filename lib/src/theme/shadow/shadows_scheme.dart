import 'package:flutter/material.dart';

import 'shadow_extensions.dart';
import '../colors/colors_scheme.dart';

class ShadowsLightAppExt extends ShadowsExt {
  ShadowsLightAppExt()
      : super(
          button: const BoxShadow(
            color: NamedColors.darkGrey,
            offset: Offset.zero,
            blurRadius: 6,
            spreadRadius: 0.5,
          ),
        );
}

class ShadowsDarkAppExt extends ShadowsExt {
  ShadowsDarkAppExt()
      : super(
          button: const BoxShadow(
            color: NamedColors.secondary,
            offset: Offset.zero,
            blurRadius: 6,
            spreadRadius: 0.5,
          ),
        );
}

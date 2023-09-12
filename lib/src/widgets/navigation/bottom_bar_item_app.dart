import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/string_extensions.dart';

class BottomBarItemApp extends StatelessWidget {
  final String iconPath;
  final String label;

  const BottomBarItemApp({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(
            Theme.of(context).iconTheme.color!,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(height: 5),
        Text(label.firstLetterToUpperCase()),
      ],
    );
  }
}

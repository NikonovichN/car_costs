import 'package:flutter/material.dart';

import 'package:car_costs/src/theme/colors/colors_extensions.dart';

class OutFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;

  const OutFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: colorSchemeExt.onBackgroundInverse!,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      onPressed: onPressed,
      child: DefaultTextStyle.merge(
        child: text,
        style: TextStyle(color: colorSchemeExt.onBackgroundInverse),
      ),
    );
  }
}

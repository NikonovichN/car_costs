import 'package:flutter/material.dart';

import 'package:car_costs/src/theme/colors/colors_extensions.dart';

class FullFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;

  const FullFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;
    
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          colorSchemeExt.onBackgroundInverse,
        ),
      ),
      onPressed: onPressed,
      child: text,
    );
  }
}

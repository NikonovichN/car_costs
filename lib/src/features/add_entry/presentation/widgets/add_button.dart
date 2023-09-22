import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:car_costs/src/config/providers.dart';

class AddButton extends ConsumerWidget {
  final void Function() onPressed;
  final double turns;
  final Duration duration;

  const AddButton({
    super.key,
    required this.onPressed,
    required this.turns,
    required this.duration,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconPaths = ref.read(iconPathsProvider);

    return AnimatedRotation(
      turns: turns,
      duration: duration,
      child: GestureDetector(
        onTap: onPressed,
        child: SvgPicture.asset(iconPaths.operationAddSvg),
      ),
    );
  }
}

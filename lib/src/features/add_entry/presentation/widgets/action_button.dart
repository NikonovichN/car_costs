import 'package:flutter/material.dart';

import '/src/theme/text/text_extensions.dart';
import '/src/theme/shadow/shadow_extensions.dart';

class ActionButton extends StatelessWidget {
  final Widget icon;
  final Text text;
  final void Function() onPress;

  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeExt = Theme.of(context).extension<TextExt>()!;
    final shadowSchemeExt = Theme.of(context).extension<ShadowsExt>()!;

    return Material(
      elevation: 8,
      color: colorScheme.background,
      shadowColor: shadowSchemeExt.button.color,
      borderRadius: BorderRadius.circular(4),
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 12),
              DefaultTextStyle(
                style: textThemeExt.openSansRegular.copyWith(
                  color: colorScheme.onBackground,
                ),
                child: text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

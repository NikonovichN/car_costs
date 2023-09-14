import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/localization_controller.dart';
import 'package:car_costs/src/utils/string_extensions.dart';

class LanguageSetting extends ConsumerWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizationController = ref.watch(localizationControllerProvider);
    final currentLocale = localizationController.readValue();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.of(context)!.language),
        DropdownMenu<Locale>(
          initialSelection: currentLocale,
          onSelected: (locale) {
            ref
                .read(localizationControllerProvider.notifier)
                .setValue(locale ?? currentLocale);
          },
          dropdownMenuEntries: AppLocalizations.supportedLocales
              .map((Locale locale) => DropdownMenuEntry<Locale>(
                    value: locale,
                    label: locale.languageCode.firstLetterToUpperCase(),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

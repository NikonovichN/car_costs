import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/src/navigation/route_paths.dart';
import '/src/navigation/router.dart';
import '/src/config/providers.dart';

final addEntryController = Provider.autoDispose<List<AddEntryAction>>((ref) {
  final routerInformation = ref.watch(routerInformationProvider);
  final routePaths = ref.read(routePathsProvider);
  final configActions = ref.read(configActionsProvider);

  // TODO: to think about a better logic for this
  switch (routerInformation.value.uri.path.split('/')) {
    case (List<String> values) when values[1] == routePaths.dashboard:
      return [
        configActions[ActionTypes.waste]!,
        configActions[ActionTypes.odometer]!,
        configActions[ActionTypes.journal]!,
      ];
    case (List<String> values) when values[1] == routePaths.journal:
      return [configActions[ActionTypes.journal]!];
    case (List<String> values) when values[1] == routePaths.expenses:
      return [configActions[ActionTypes.waste]!];
    case (List<String> values)
        when values[1] == routePaths.garage && values.length == 2:
      return [configActions[ActionTypes.addCar]!];
    default:
      return [];
  }
});

final configActionsProvider = Provider.autoDispose((ref) {
  final iconPaths = ref.read(iconPathsProvider);

  return {
    ActionTypes.odometer: AddEntryAction(
      generateLabel: (context) =>
          AppLocalizations.of(context)!.actionButton_odometer,
      iconPathSvg: iconPaths.odometerSvg,
      onPress: () => print('Odometer'),
    ),
    ActionTypes.waste: AddEntryAction(
      generateLabel: (context) =>
          AppLocalizations.of(context)!.actionButton_waste,
      iconPathSvg: iconPaths.recycleSvg,
      onPress: () => print('Add waste'),
    ),
    ActionTypes.journal: AddEntryAction(
      generateLabel: (context) =>
          AppLocalizations.of(context)!.actionButton_journal,
      iconPathSvg: iconPaths.carSvg,
      onPress: () => print('Add active'),
    ),
    ActionTypes.addCar: AddEntryAction(
      generateLabel: (context) =>
          AppLocalizations.of(context)!.actionButton_add_car,
      iconPathSvg: iconPaths.garageWithCarSvg,
      onPress: () => print('Add car'),
    ),
  };
});

enum ActionTypes {
  odometer,
  waste,
  journal,
  addCar,
}

class AddEntryAction {
  final String Function(BuildContext context) generateLabel;
  final String iconPathSvg;
  final void Function() onPress;

  AddEntryAction({
    required this.generateLabel,
    required this.iconPathSvg,
    required this.onPress,
  });
}

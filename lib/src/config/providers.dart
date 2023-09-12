import 'package:car_costs/src/config/icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'default_values.dart';

final sharedPreferencesProvider = FutureProvider<SharedPreferences>(
  (ref) => SharedPreferences.getInstance(),
);

final defaultValuesProvider = Provider((ref) => const DefaultValues());
final iconPathsProvider = Provider((ref) => const IconsPaths());

Future<void> initializeProviders(ProviderContainer container) async {
  await container.read(sharedPreferencesProvider.future);
  container.read(defaultValuesProvider);
  container.read(iconPathsProvider);
}

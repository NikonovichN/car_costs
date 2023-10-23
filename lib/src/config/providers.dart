import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_database/firebase_database.dart';

import 'default_values.dart';
import 'icons.dart';
import 'firebase_database_paths.dart';

final sharedPreferencesProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

final dataBasePathsProvider = Provider((ref) => DataBasePaths());
final firebaseDatabaseProvider = Provider((ref) => FirebaseDatabase.instance);

final defaultValuesProvider = Provider((ref) => const DefaultValues());
final iconPathsProvider = Provider((ref) => const IconsPaths());

Future<void> initializeProviders(ProviderContainer container) async {
  await container.read(sharedPreferencesProvider.future);
}

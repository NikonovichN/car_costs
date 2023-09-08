import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/application_settings_entity.dart';
import 'local_application_settings_datasource.dart';
import 'package:car_costs/src/managers/persist_key_value_manager.dart';

final darkThemeRepositoryProvider = StateProvider<DarkThemeRepository>(
  (ref) => DarkThemeRepositoryImpl(
    LocalApplicationSettingsDataSourceImpl(
      ref.read(persistKeyValueManagerProvider),
    ),
  ),
);

abstract class DarkThemeRepository {
  Future<void> setValue(DarkThemeEntity darkTheme);
  DarkThemeEntity readValue();
}

class DarkThemeRepositoryImpl implements DarkThemeRepository {
  static const storeKey = 'isDarkTheme';

  final LocalApplicationSettingsDataSource _localDataSource;

  DarkThemeRepositoryImpl(
    LocalApplicationSettingsDataSource localDataSource,
  ) : _localDataSource = localDataSource;

  @override
  Future<void> setValue(DarkThemeEntity darkTheme) async {
    await _localDataSource.saveBoolValue(storeKey, darkTheme.isDarkTheme);
  }

  @override
  DarkThemeEntity readValue() {
    final isDarkTheme = _localDataSource.readBoolValue(storeKey);
    return DarkThemeEntity(isDarkTheme: isDarkTheme ?? false);
  }
}

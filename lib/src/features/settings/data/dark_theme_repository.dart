import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/dark_theme_entity.dart';
import 'local_settings_datasource.dart';
import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/config/default_values.dart';
import 'package:car_costs/src/managers/persist_key_value_manager.dart';

final darkThemeRepositoryProvider = StateProvider<DarkThemeRepository>((ref) {
  final defaultValues = ref.watch(defaultValuesProvider);
  final localDataSource = LocalSettingsDataSourceImpl(
    ref.watch(persistKeyValueManagerProvider),
  );

  return DarkThemeRepositoryImpl(defaultValues, localDataSource);
});

abstract class DarkThemeRepository {
  Future<void> setValue(DarkThemeEntity darkTheme);
  DarkThemeEntity readValue();
}

class DarkThemeRepositoryImpl implements DarkThemeRepository {
  static const _storeKey = 'isDarkTheme';

  final DefaultValues _defaultValues;
  final LocalSettingsDataSource _localDataSource;

  DarkThemeRepositoryImpl(
    DefaultValues defaultValues,
    LocalSettingsDataSource localDataSource,
  )   : _defaultValues = defaultValues,
        _localDataSource = localDataSource;

  @override
  Future<void> setValue(DarkThemeEntity darkTheme) async {
    await _localDataSource.saveBoolValue(_storeKey, darkTheme.isDarkTheme);
  }

  @override
  DarkThemeEntity readValue() {
    final isDarkTheme = _localDataSource.readBoolValue(_storeKey);
    return DarkThemeEntity(
      isDarkTheme: isDarkTheme ?? _defaultValues.isDarkTheme,
    );
  }
}

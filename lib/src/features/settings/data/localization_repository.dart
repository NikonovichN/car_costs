import 'package:car_costs/src/config/providers.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local_settings_datasource.dart';
import 'package:car_costs/src/config/default_values.dart';
import 'package:car_costs/src/managers/persist_key_value_manager.dart';

final localizationRepositoryProvider = Provider((ref) {
  final defaultValues = ref.watch(defaultValuesProvider);
  final localDataSource = LocalSettingsDataSourceImpl(
    ref.watch(persistKeyValueManagerProvider),
  );

  return LocalizationRepositoryImpl(
    defaultValues: defaultValues,
    localSettingsDataSource: localDataSource,
  );
});

abstract class LocalizationRepository {
  Future<void> setValue(Locale locale);
  Locale readValue();
}

class LocalizationRepositoryImpl implements LocalizationRepository {
  static const _storeKey = 'locale';

  final DefaultValues _defaultValues;
  final LocalSettingsDataSource _localDataSource;

  const LocalizationRepositoryImpl({
    required DefaultValues defaultValues,
    required LocalSettingsDataSource localSettingsDataSource,
  })  : _defaultValues = defaultValues,
        _localDataSource = localSettingsDataSource;

  @override
  Future<void> setValue(Locale locale) async {
    await _localDataSource.saveStringValue(_storeKey, locale.languageCode);
  }

  @override
  Locale readValue() {
    final languageCode = _localDataSource.readStringValue(_storeKey);
    return Locale(languageCode ?? _defaultValues.languageCode);
  }
}

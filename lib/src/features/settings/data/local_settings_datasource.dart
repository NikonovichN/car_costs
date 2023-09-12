import 'package:car_costs/src/managers/persist_key_value_manager.dart';

abstract class LocalSettingsDataSource {
  Future<void> saveBoolValue(String key, bool value);
  Future<void> saveStringValue(String key, String value);
  bool? readBoolValue(String key);
  String? readStringValue(String key);
}

class LocalSettingsDataSourceImpl implements LocalSettingsDataSource {
  final PersistKeyValueManager _persistKeyValueManager;

  LocalSettingsDataSourceImpl(
    PersistKeyValueManager persistKeyValueManager,
  ) : _persistKeyValueManager = persistKeyValueManager;

  @override
  Future<void> saveBoolValue(String key, value) =>
      _persistKeyValueManager.setBool(key, value);

  @override
  Future<void> saveStringValue(String key, String value) =>
      _persistKeyValueManager.setString(key, value);

  @override
  bool? readBoolValue(String key) => _persistKeyValueManager.readBool(key);

  @override
  String? readStringValue(String key) =>
      _persistKeyValueManager.readString(key);
}

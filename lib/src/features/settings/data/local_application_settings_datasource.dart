import 'package:car_costs/src/managers/persist_key_value_manager.dart';

abstract class LocalApplicationSettingsDataSource {
  Future<void> saveBoolValue(String key, bool value);
  bool? readBoolValue(String key);
}

class LocalApplicationSettingsDataSourceImpl
    implements LocalApplicationSettingsDataSource {
  final PersistKeyValueManager _persistKeyValueManager;

  LocalApplicationSettingsDataSourceImpl(
    PersistKeyValueManager persistKeyValueManager,
  ) : _persistKeyValueManager = persistKeyValueManager;

  @override
  Future<void> saveBoolValue(String key, value) =>
      _persistKeyValueManager.setBool(key, value);

  @override
  bool? readBoolValue(String key) => _persistKeyValueManager.readBool(key);
}

import 'package:car_costs/src/config/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final persistKeyValueManagerProvider =
    Provider<PersistKeyValueManager>(PersistKeyValueManagerImpl.new);

abstract class PersistKeyValueManager {
  Future<void> setBool(String key, bool value);
  Future<void> setInt(String key, int value);
  Future<void> setDouble(String key, double value);
  Future<void> setString(String key, String value);
  Future<void> setStringList(String key, List<String> value);

  bool? readBool(String key);
  int? readInt(String key);
  double? readDouble(String key);
  String? readString(String key);
  List<String>? readStringList(String key);
}

class PersistKeyValueManagerImpl implements PersistKeyValueManager {
  final SharedPreferences _prefs;

  PersistKeyValueManagerImpl(Ref ref)
      : _prefs = ref.read(sharedPreferencesProvider).asData!.value;

  @override
  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  @override
  bool? readBool(String key) => _prefs.getBool(key);

  @override
  int? readInt(String key) => _prefs.getInt(key);

  @override
  double? readDouble(String key) => _prefs.getDouble(key);

  @override
  String? readString(String key) => _prefs.getString(key);

  @override
  List<String>? readStringList(String key) => _prefs.getStringList(key);
}

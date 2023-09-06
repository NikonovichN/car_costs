import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final persistKeyValueManagerProvider = Provider<PersistKeyValueManager>(
  (ref) => PersistKeyValueManagerImpl(),
);

abstract class PersistKeyValueManager {
  Future<void> setBool(String key, bool value);
  Future<void> setInt(String key, int value);
  Future<void> setDouble(String key, double value);
  Future<void> setString(String key, String value);
  Future<void> setStringList(String key, List<String> value);

  Future<bool?> readBool(String key);
  Future<int?> readInt(String key);
  Future<double?> readDouble(String key);
  Future<String?> readString(String key);
  Future<List<String>?> readStringList(String key);
}

class PersistKeyValueManagerImpl implements PersistKeyValueManager {
  SharedPreferences? _prefs;

  Future<SharedPreferences> _getPrefsInstance() async {
    if (_prefs == null) {
      return await SharedPreferences.getInstance();
    }
    return _prefs!;
  }

  @override
  Future<void> setBool(String key, bool value) async {
    final prefs = await _getPrefsInstance();
    prefs.setBool(key, value);
  }

  @override
  Future<void> setInt(String key, int value) async {
    final prefs = await _getPrefsInstance();
    prefs.setInt(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    final prefs = await _getPrefsInstance();
    prefs.setDouble(key, value);
  }

  @override
  Future<void> setString(String key, String value) async {
    final prefs = await _getPrefsInstance();
    prefs.setString(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    final prefs = await _getPrefsInstance();
    prefs.setStringList(key, value);
  }

  @override
  Future<bool?> readBool(String key) async {
    final prefs = await _getPrefsInstance();
    return prefs.getBool(key);
  }

  @override
  Future<int?> readInt(String key) async {
    final prefs = await _getPrefsInstance();
    return prefs.getInt(key);
  }

  @override
  Future<double?> readDouble(String key) async {
    final prefs = await _getPrefsInstance();
    return prefs.getDouble(key);
  }

  @override
  Future<String?> readString(String key) async {
    final prefs = await _getPrefsInstance();
    return prefs.getString(key);
  }

  @override
  Future<List<String>?> readStringList(String key) async {
    final prefs = await _getPrefsInstance();
    return prefs.getStringList(key);
  }
}

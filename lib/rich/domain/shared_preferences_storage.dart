import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {

     late SharedPreferences preferences;

  Future<void> setPreferences() async {
    preferences = await SharedPreferences.getInstance();
  }

     Future<bool> clear() {
    return preferences.clear();
  }

     bool containsKey(String key) {
    return  preferences.containsKey(key);
  }

     dynamic get(String key) {
    return  preferences.get(key);
  }

     bool? getBool(String key) {
    return  preferences.getBool(key);
  }

     double? getDouble(String key) {
    return  preferences.getDouble(key);
  }

     int? getInt(String key) {
    return  preferences.getInt(key);
  }

     Set<String> getKeys() {
    return  preferences.getKeys();
  }

     String? getString(String key) {
    return  preferences.getString(key);
  }

     List<String>? getStringList(String key) {
    return  preferences.getStringList(key);
  }

     Future<void> reload() {
    return  preferences.reload();
  }

     Future<bool> remove(String key) {
    return  preferences.remove(key);
  }

     Future<bool> setBool(String key, bool value) {
    return  preferences.setBool(key, value);
  }

     Future<bool> setDouble(String key, double value) {
    return  preferences.setDouble(key, value);
  }

     Future<bool> setInt(String key, int value) {
    return  preferences.setInt(key, value);
  }

     Future<bool> setString(String key, String value) {
    return  preferences.setString(key, value);
  }

     Future<bool> setStringList(String key, List<String> value) {
    return  preferences.setStringList(key, value);
  }
  
  
}

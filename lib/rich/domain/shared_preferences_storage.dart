import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {


  Future<bool> clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.clear();
  }

  Future<bool> containsKey(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.containsKey(key);
  }

  dynamic get(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.get(key);
  }

  Future<bool?> getBool(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.getBool(key);
  }

  // double? getDouble(String key  ) async {
  //   return  preferences.getDouble(key);
  // }
  //
  // int? getInt(String key  ) async {
  //   return  preferences.getInt(key);
  // }
  //
  // Set<String> getKeys(  ) async {
  //   return  preferences.getKeys();
  // }
  //
  // String? getString(String key  ) async {
  //   return  preferences.getString(key);
  // }
  //
  // List<String>? getStringList(String key  ) async {
  //   return  preferences.getStringList(key);
  // }

  Future<void> reload(  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.reload();
  }

  Future<bool> remove(String key  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.remove(key);
  }

  Future<bool> setBool(String key, bool value  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.setBool(key, value);
  }

  Future<bool> setDouble(String key, double value  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.setDouble(key, value);
  }

  Future<bool> setInt(String key, int value  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.setInt(key, value);
  }

  Future<bool> setString(String key, String value  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.setString(key, value);
  }

  Future<bool> setStringList(String key, List<String> value  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.setStringList(key, value);
  }
  
  
}

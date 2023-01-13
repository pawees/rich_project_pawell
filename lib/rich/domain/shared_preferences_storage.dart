import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {
  static final _sp = Get.find<SharedPreferences>();

  Future<bool> clear() async {
    return _sp.clear();
  }

  Future<bool> containsKey(String key) async {
    return _sp.containsKey(key);
  }

  dynamic get(String key) async {
    return _sp.get(key);
  }

  Future<bool?> getBool(String key) async {
    return _sp.getBool(key);
  }

  // double? getDouble(String key  ) async {
  //   return _sp.getDouble(key);
  // }
  //
  // int? getInt(String key  ) async {
  //   return _sp.getInt(key);
  // }
  //
  // Set<String> getKeys(  ) async {
  //   return _sp.getKeys();
  // }
  //
  // String? getString(String key  ) async {
  //   return _sp.getString(key);
  // }
  //
  // List<String>? getStringList(String key  ) async {
  //   return _sp.getStringList(key);
  // }

  Future<void> reload(  ) async {
    return _sp.reload();
  }

  Future<bool> remove(String key  ) async {
    return _sp.remove(key);
  }

  Future<bool> setBool(String key, bool value  ) async {
    return _sp.setBool(key, value);
  }

  Future<bool> setDouble(String key, double value  ) async {
    return _sp.setDouble(key, value);
  }

  Future<bool> setInt(String key, int value  ) async {
    return _sp.setInt(key, value);
  }

  Future<bool> setString(String key, String value  ) async {
    return _sp.setString(key, value);
  }

  Future<bool> setStringList(String key, List<String> value  ) async {
    return _sp.setStringList(key, value);
  }
  
  
}

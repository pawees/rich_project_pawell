import 'package:get/get.dart';
import '../../../domain/shared_preferences_storage.dart';


class SessionStorage {

  static final _storage = Get.find<SharedPreferencesStorage>();

  init() {
  //todo init fuction init in class
    _storage.setPreferences();
  }

  Future<bool> getAccessToken() =>
      _storage.get('accessToken');


  Future<void> setAccessToken(String key, String value) =>
      _storage.setString(key, value);


  Future<bool> getFBToken(String key) =>
      _storage.get(key);

  Future<void> setFBToken(String key, String value) =>
      _storage.setString(key, value);


}



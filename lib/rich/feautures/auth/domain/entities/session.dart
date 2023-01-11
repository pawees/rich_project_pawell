import '../enums/auth_status.dart';

class Session {
  static String name = '';
  static AuthStatus auth = AuthStatus.notAuthorise;

  AuthStatus get authStatus => auth;
  set authStatus(AuthStatus val) => auth = val;

  
}
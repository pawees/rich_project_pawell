import 'package:rich_project_pawell/rich/features/auth/domain/entities/session.dart';
import 'package:rich_project_pawell/rich/features/auth/domain/enums/auth_status.dart';
import 'package:rich_project_pawell/rich/features/auth/service/session_storage.dart';

class AuthService {
  final _session = SessionStorage();

  checkAuth() async {
    bool result = await _session.getAccessToken();
    updateAuthStatus(result);

  }

  updateAuthStatus(res) {
    res ? Session.auth = AuthStatus.authorise : Session.auth = AuthStatus.notAuthorise;
  }

  finishAuth() {}

}
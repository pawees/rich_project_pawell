import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/data/sevices/auth_service_impl.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/routes/navigation.dart';

void inicialAdditionals () {
  Get.put<ScreenFactory>(ScreenFactory());
  Get.put<MainNavigation>(MainNavigation());
  Get.put<AuthService>(AuthService());

  //Get.put<NavigationRouters>(NavigationRoutes);
  // Get.put<AllBlocs>(AllBlocs);
  // Get.put<FirebaseMessaging>(FirebaseInstance);
  //
  // Get.lazyPut<AuthService>(AuthService);
  // Get.lazyPut<MockAuthService>(MockAuthService);

  Get.putAsync<SharedPreferences>( () async => await SharedPreferences.getInstance() );
}
import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/domain/shared_preferences_storage.dart';
import 'package:rich_project_pawell/rich/feautures/auth/service/auth_service_impl.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../feautures/firebase_cloud_messaging/service/push_notification_service.dart';
import '../feautures/navigation/service/main_navigation.dart';


void inicialAdditionals () {
  Get.put<ScreenFactory>(ScreenFactory());
  Get.put<MainNavigation>(MainNavigation());
  Get.put<AuthService>(AuthService());
  //Get.put<PushNotificationService>(PushNotificationService());
  Get.put<SharedPreferencesStorage>(SharedPreferencesStorage());

  ///contants
  //TODO add Images and Text classes.

  //Get.put<NavigationRouters>(NavigationRoutes);
  // Get.put<AllBlocs>(AllBlocs);
  // Get.put<FirebaseMessaging>(FirebaseInstance);
  //
  // Get.lazyPut<AuthService>(AuthService);
  // Get.lazyPut<MockAuthService>(MockAuthService);

  Get.putAsync<SharedPreferences>( () async => await SharedPreferences.getInstance() );
}
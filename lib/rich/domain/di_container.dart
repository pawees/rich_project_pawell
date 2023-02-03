import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/domain/shared_preferences_storage.dart';
import 'package:rich_project_pawell/rich/features/auth/service/auth_service_impl.dart';
import 'package:rich_project_pawell/rich/domain/screen_factory.dart';
import 'package:rich_project_pawell/rich/features/news/domain/i_news_api.dart';
import 'package:rich_project_pawell/rich/features/news/data/api/news_api_json_rpc.dart';
import 'package:rich_project_pawell/rich/features/news/data/api/news_api_mock.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../features/navigation/service/main_navigation.dart';
import '../features/news/domain/i_news_repository.dart';
import '../features/news/data/repository/news_mock_repository.dart';
import '../features/news/data/repository/news_repository.dart';


void inicialAdditionals () {

  Get.put<ScreenFactory>(ScreenFactory());
  Get.put<MainNavigation>(MainNavigation());
  Get.put<AuthService>(AuthService());
  //Get.put<PushNotificationService>(PushNotificationService());
  Get.put<SharedPreferencesStorage>(SharedPreferencesStorage());
  Get.put<INewsRepository>(NewsRepo());
  Get.put<INewsApi>(NewsApiJsonRpc());


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


void inicialAdditionals_Moke () {
  Get.put<ScreenFactory>(ScreenFactory());
  Get.put<MainNavigation>(MainNavigation());
  Get.put<AuthService>(AuthService());
  //Get.put<PushNotificationService>(PushNotificationService());
  Get.put<SharedPreferencesStorage>(SharedPreferencesStorage());
  Get.put<INewsRepository>(NewsMockRepository());
  Get.put<INewsApi>(NewsApiMock());


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
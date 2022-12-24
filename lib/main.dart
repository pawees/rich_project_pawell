import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/routes/navigation.dart';
import 'package:rich_project_pawell/rich/core/theme/theme.dart';
import 'package:rich_project_pawell/rich/domain/di_container.dart';
import 'package:rich_project_pawell/rich/presentation/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  inicialAdditionals();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final mainNavigation = Get.find<MainNavigation>();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DLiteTheme.themeLight,
      darkTheme: DLiteTheme.themeDark,
      themeMode: ThemeMode.system,
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.auth,
    );
  }
}






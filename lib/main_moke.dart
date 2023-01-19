import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/constants/sizes.dart';
import 'package:rich_project_pawell/rich/core/theme/theme.dart';
import 'package:rich_project_pawell/rich/domain/di_container.dart';
import 'package:rich_project_pawell/rich/features/navigation/domain/entity/main_navigation_route_names.dart';
import 'package:rich_project_pawell/rich/features/navigation/service/main_navigation.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  inicialAdditionals_Moke();
  runApp(AppBuilder());
}

class AppBuilder extends StatelessWidget {
  const AppBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MyApp();
      });
    });
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final mainNavigation = Get.find<MainNavigation>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyAppTheme.themeLight,
      darkTheme: MyAppTheme.themeDark,
      themeMode: ThemeMode.system,
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.auth,
    );
  }
}

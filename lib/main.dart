import 'package:cloud_messaging_service/cloud_messaging_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/constants/sizes.dart';
import 'package:rich_project_pawell/rich/core/theme/theme.dart';
import 'package:rich_project_pawell/rich/domain/di_container.dart';
import 'package:rich_project_pawell/rich/features/navigation/service/go_route/routes.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  inicialAdditionals_Moke(); //TODO rename to serviceLocator
  runApp(const AppBuilder());
}

class AppBuilder extends StatelessWidget {
  const AppBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return  ScreenUtilInit(
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          minTextAdapt: true,
          //scaleByHeight: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MyApp();
          }

        );
      });
    });
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // static final _cloudMessagingService = Get.find<CloudMessagingService>();




  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'The Flow',
      theme: MyAppTheme.themeLight,
      darkTheme: MyAppTheme.themeDark,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter().router,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/domain/i_builder.dart';

import '../../../features/navigation/service/go_route/routes.dart';
import '../../constants/sizes.dart';
import '../../theme/theme.dart';

class LocalBuilder implements AppBuilderInterface {

  @override
  Widget buildApp() {
    return AppBuilder();
  }

}


class AppBuilder extends StatelessWidget {
  const AppBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        //SizeConfig().init(constraints, orientation);
        return MyApp();
      });
    });
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'mocked data',
      theme: MyAppTheme.themeLight,
      routerConfig: router,
    );
  }
}
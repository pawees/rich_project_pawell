
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/domain/i_builder.dart';
import 'package:rich_project_pawell/rich/domain/i_runner.dart';
import 'package:flutter/material.dart';
import 'package:rich_project_pawell/rich/core/config/urls.dart';


import '../../../domain/di_container.dart';
import '../app_config.dart';
import '../debug_options.dart';
import '../environment/build_types.dart';
import '../environment/environment.dart';


class LocalRunner implements AppRunner {

  @override
  Future<void> preloadData() async {
    ///set environment
    AppConfig config = AppConfig(
      url: Url.testUrl,
      proxyUrl: Url.devProxyUrl,
      debugOptions: DebugOptions(
        debugShowCheckedModeBanner: true,
      ),
    );
    Get.put<Enviroment>(Enviroment(buildType: BuildType.debug, appConfig: config));

    WidgetsFlutterBinding.ensureInitialized();

    ///di
    inicialAdditionals_Moke();

  }

  @override
  Future<void> run(AppBuilderInterface appBuilder) async {
    await preloadData();
    runApp(appBuilder.buildApp());

  }

}

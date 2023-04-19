import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/constants/images.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';

import 'controller/splash_screen_controller.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return SafeArea(child:
    Scaffold(
      body: Stack(
        children: [
          Obx( () =>
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              top: splashController.animate.value ? 149.5 : -30,
              left: splashController.animate.value ? 59.5 : -30,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Images.splash_part_of_logo6,
              ),
            ),
          ),
          Obx( () =>
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1200),
                top: splashController.animate.value ? 151 : -150,
                left: splashController.animate.value ? 59.5 : -30,
                child: AnimatedOpacity(
                  opacity: splashController.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Images.splash_part_of_logo6,
                ),

              ),
          ),
          Obx( () =>
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1200),
                top: splashController.animate.value ? 173 : -400,
                left: splashController.animate.value ? 59 : -30,
                child: AnimatedOpacity(
                  opacity: splashController.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Images.splash_part_of_logo6,
                )
              ),),
          Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  top: splashController.animate.value ? 200 : -300,
                  left: splashController.animate.value ? 59 : -30,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: const Duration(milliseconds: 1600),
                    child: Images.splash_part_of_logo6,
                  )
              ),
          ),
          // Obx( () =>
          //     AnimatedPositioned(
          //         duration: const Duration(milliseconds: 1200),
          //         bottom: splashController.animate.value ? -280 : -320,
          //         right: splashController.animate.value ? -70 : -130,
          //         child: AnimatedOpacity(
          //           opacity: splashController.animate.value ? 1 : 0,
          //           duration: const Duration(milliseconds: 2500),
          //           child: Images.splash_part_of_logo5,
          //         )
          //     ),
          // ),
          Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  top: splashController.animate.value ? 285 : 250,
                  left: splashController.animate.value ? 15 : 45,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: const Duration(milliseconds: 2100),
                    child: Text(greeting_splash, style: Theme.of(context).textTheme.headline5),
                  )
              ),
          ),

        ],
      ),)
    );
  }
}

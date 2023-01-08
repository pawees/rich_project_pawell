import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rich_project_pawell/rich/core/constants/images.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/presentation/splash/controller/splash_screen_controller.dart';


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
              left: splashController.animate.value ? 199.5 : -30,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: SplashImage.part_of_logo1,
              ),
            ),
          ),
          Obx( () =>
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1200),
                top: splashController.animate.value ? 151 : -150,
                left: splashController.animate.value ? 199.5 : -30,
                child: AnimatedOpacity(
                  opacity: splashController.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: SplashImage.part_of_logo2,
                ),

              ),
          ),
          Obx( () =>
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1200),
                top: splashController.animate.value ? 173 : -400,
                left: splashController.animate.value ? 200 : -30,
                child: AnimatedOpacity(
                  opacity: splashController.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: SplashImage.part_of_logo3,
                )
              ),),
          Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  top: splashController.animate.value ? 200 : -300,
                  left: splashController.animate.value ? 200 : -30,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: const Duration(milliseconds: 1600),
                    child: SplashImage.part_of_logo4,
                  )
              ),
          ),
          Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  bottom: splashController.animate.value ? -280 : -320,
                  right: splashController.animate.value ? -70 : -130,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: const Duration(milliseconds: 2500),
                    child: SplashImage.part_of_logo5,
                  )
              ),
          ),
          Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  top: splashController.animate.value ? 250 : 250,
                  left: splashController.animate.value ? 45 : 45,
                  child: AnimatedOpacity(
                    opacity: splashController.animate.value ? 1 : 0,
                    duration: const Duration(milliseconds: 2100),
                    child: Text(greeting_splash, style: Theme.of(context).textTheme.headline4),
                  )
              ),
          ),

        ],
      ),)
    );
  }
}

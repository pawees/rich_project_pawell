import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/feautures/news/presentation/news_screen.dart';
import '../../../core/constants/images.dart';
import '../../../domain/screen_factory.dart';
import 'controller/navigator_bar_controller.dart';

class BottomNavigation extends StatelessWidget {
  static final _screenFactory = Get.find<ScreenFactory>();


  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  @override
  Widget build(BuildContext context) {


    final NavigatorBarController navigatorBarController =
        Get.put(NavigatorBarController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, navigatorBarController),
      body: Obx(() => IndexedStack(
            index: navigatorBarController.tabIndex.value,
            children: [
              _screenFactory.makeNews(),
              _screenFactory.makeNews(),
              _screenFactory.makeNews(),
              _screenFactory.makeNews(),
              _screenFactory.makeNews(),
              _screenFactory.makeNews(),
            ],
          )),
    ));
  }

  buildBottomNavigationMenu(context, navigatorBarController) {
    //todo probably set this in controller
    final colorsTheme = Theme.of(context).colorScheme;

    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,//todo make adaptive
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: navigatorBarController.changeTabIndex,
            currentIndex: navigatorBarController.tabIndex.value,
            unselectedItemColor: colorsTheme.primary.withOpacity(0.5),
            selectedItemColor: colorsTheme.primary,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Images.nav_bar_news,
                ),
                label: nb_news,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Images.nav_bar_promo,
                ),
                label: nb_promo,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Images.nav_bar_card,
                ),
                label: nb_card,
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Images.nav_bar_map),
                label: nb_map,
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Images.nav_bar_catalog),
                label: nb_catalog,
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Images.nav_bar_profiile),
                label: nb_profile,
              ),
            ],
          ),
        )));
  }
}

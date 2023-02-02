import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:rich_project_pawell/rich/core/constants/texts.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/news_screen.dart';
import '../../../core/constants/images.dart';
import '../../../core/test_keys.dart';
import '../../../domain/screen_factory.dart';
import '../../news/domain/entities/news.dart';
import 'controller/navigator_bar_controller.dart';

class BottomNavigation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final NavigatorBarController navigatorBarController =
            Get.put(NavigatorBarController(), permanent: false);


    final colorsTheme = Theme.of(context).colorScheme;


    return Obx(() => BottomNavigationBar(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      //onTap: navigatorBarController.changeTabIndex,
      onTap: (value) {
        navigatorBarController.tabIndex.value = value;
        switch (navigatorBarController.tabIndex.value) {
          case 0:
            context.go('/news');
            break;
          case 1:
            context.go('/promo');
            break;
          case 2:
            context.go('/card');
            break;
          case 3:
            context.go('/map');
            break;
          default:
        }
      },
      currentIndex: navigatorBarController.tabIndex.value,
      unselectedItemColor: colorsTheme.primary.withOpacity(0.5),
      selectedItemColor: colorsTheme.primary,
      unselectedLabelStyle: navigatorBarController.unselectedLabelStyle,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: navigatorBarController.selectedLabelStyle,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            key: HomeTestKeys.newsBtn,
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
    )
    );


  }
}

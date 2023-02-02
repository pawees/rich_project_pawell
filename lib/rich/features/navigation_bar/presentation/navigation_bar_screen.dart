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

class BottomNavigation extends StatefulWidget {

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    int _index = 1;

    final colorsTheme = Theme.of(context).colorScheme;


    return BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            //onTap: navigatorBarController.changeTabIndex,
            onTap: (value) {
              switch (value) {
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
            currentIndex: _index,
            unselectedItemColor: colorsTheme.primary.withOpacity(0.5),
            selectedItemColor: colorsTheme.primary,
            unselectedLabelStyle: unselectedLabelStyle,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: selectedLabelStyle,
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
          );

  }
}

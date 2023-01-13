import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_project_pawell/rich/feautures/news/presentation/news_screen.dart';
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
            ],
          )),
        ));
  }


  buildBottomNavigationMenu(context, navigatorBarController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: navigatorBarController.changeTabIndex,
            currentIndex: navigatorBarController.tabIndex.value,
            backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child:   Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child:   Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                ),
                label: 'Explore',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child:   Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
                label: 'Places',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child:   Icon(
                    Icons.settings,
                    size: 20.0,
                  ),
                ),
                label: 'Settings',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }

}
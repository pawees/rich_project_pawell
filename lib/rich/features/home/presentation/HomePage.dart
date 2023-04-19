import 'package:flutter/material.dart';

import '../../../core/constants/sizes.dart';
import '../../navigation_bar/presentation/navigation_bar_screen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.child, required this.bottomNavigation});

  final Widget child;
  final bool bottomNavigation;
  static get navigator => SizedBox(height: SizeConfig.bottomNavSize, child: BottomNavigation(),);

  @override
  Widget build(BuildContext context) {
    switch (bottomNavigation) {
      case true:
        return Scaffold(
          body: child,
          bottomNavigationBar: HomePage.navigator,
        );
      case false:
        return Scaffold(
          body: child,
        );
      default:
        return Scaffold(
          body: child,
          bottomNavigationBar: HomePage.navigator,
        );
    }
    return Scaffold(
            body: child,
             );
  }
}

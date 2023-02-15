import 'package:flutter/material.dart';

import '../../navigation_bar/presentation/navigation_bar_screen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigation());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/screens/entering_page/entering_page.dart';
import 'package:todoapp/screens/home/home_body.dart';
import 'package:todoapp/screens/home/home_page.dart';

import 'cubit/bottom_nav_bar_cubit/bottom_nav_bar_view.dart';

class RouteManager {
  static generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const EnteringPage(),
        );
        case '/bottom_nav_bar_view':
        return MaterialPageRoute(
          builder: (_) => const BottomNavBarView(),
        );
      case '/home_page':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case '/home_body':
        return MaterialPageRoute(
          builder: (_) => const HomeBodyPage(),
        );
    }
  }
}

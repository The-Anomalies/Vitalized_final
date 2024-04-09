import 'package:flutter/material.dart';
import 'package:onboard_animation/pages/home.dart';
import 'package:onboard_animation/pages/findProj.dart';

class Routes {
  
  static const home = "/home";
  static const findProj = "/task/todays";
}

class RouterGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        );
      case Routes.findProj:
        return MaterialPageRoute(
          builder: ((context) => const findProj()),
        );
      default:
        return MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        );
    }
  }
}
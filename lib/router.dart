
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'module/intro/intro.dart';
import 'module/main/main.dart';

const String homeRoute = '/';
const String introRoute = '/intro';

class Router {
  static Route<Map<String, String>> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case introRoute:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MainScreen());
    }
  }
}

/// Remove over scroll effect
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

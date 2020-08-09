import 'package:flutter/material.dart';
import 'package:flutter_mobile_base/router.dart';

import 'define/color.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      theme: ThemeData(
        primaryColor: Color(colorMain),
        accentColor: Color(colorMain),
        dividerColor: Colors.transparent,
        cursorColor: Color(colorMain),
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: introRoute,
    );
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
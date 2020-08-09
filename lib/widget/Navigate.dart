import 'package:flutter/material.dart';

class Na {
  static void pop(BuildContext context) {
    Navigator.maybePop(context);
  }

  static void replace(BuildContext context, String route) async {
    await Navigator.pushReplacementNamed(context, route, arguments: null);
  }

  static void push(BuildContext context, String route) async {
    await Navigator.pushNamed(context, route, arguments: null);
  }
}

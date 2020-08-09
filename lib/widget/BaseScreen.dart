import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Scaffold BaseScreen({Widget body, Color backgroundColor}) {
  return Scaffold(
    backgroundColor: backgroundColor ?? Color(0xffffffff),
    body: SafeArea(
      child: body,
    ),
  );
}

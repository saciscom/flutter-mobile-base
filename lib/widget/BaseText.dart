import 'package:flutter/cupertino.dart';

// ignore: non_constant_identifier_names
StatelessWidget BaseText(String text, {FontWeight fontWeight}) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Quicksand',
      fontWeight: fontWeight,
    ),
  );
}

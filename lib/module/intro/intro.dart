
import 'package:flutter/material.dart';
import 'package:flutter_mobile_base/generated/r.dart';
import 'package:flutter_mobile_base/widget/base_image.dart';
import 'package:flutter_mobile_base/widget/base_stateless_widget.dart';
import 'package:flutter_mobile_base/widget/navigate.dart';

import '../../router.dart';

class IntroScreen extends BaseStatelessWidget {
  void _openMain(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Na.replace(context, homeRoute);
    });
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BaseImage(R.logo),
    );
  }

  @override
  void onStartup(BuildContext context) {
    _openMain(context);
  }
}

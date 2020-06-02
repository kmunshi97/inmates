export 'package:flutter/material.dart';
export './splash_widget.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inmates/ui/login/login_screen.dart';

class SplashHelper {
  void navigateHelper(context) {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }
}

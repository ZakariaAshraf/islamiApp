import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';

class SplashScreen extends StatelessWidget {
static const String routeName = "Splash-Screen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    });
    var mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      body:Image.asset(
          "assets/images/splash.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ) ,

    );
  }
}

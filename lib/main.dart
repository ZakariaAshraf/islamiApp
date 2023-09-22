import 'package:flutter/material.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/modules/splashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: AppTheme.lightAppTheme,
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName ,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      }
    );


  }
}

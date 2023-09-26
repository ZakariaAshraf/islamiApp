import 'package:flutter/material.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/modules/Hadeth/hadeth_details.dart';
import 'package:islami_app/modules/Quran/quran_details_view.dart';
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
        QuranDetailsView.routeName:(context) => QuranDetailsView(),
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        HadethDetailsView.routeName:(context)=>HadethDetailsView(),
      }
    );


  }
}

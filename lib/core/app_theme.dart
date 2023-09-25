import 'package:flutter/material.dart';

class AppTheme {
 static ThemeData lightAppTheme = ThemeData(


   primaryColor: const Color(0xFFB7935F),
   bottomNavigationBarTheme:BottomNavigationBarThemeData(
     type: BottomNavigationBarType.fixed,
     selectedItemColor: Colors.black,
     unselectedItemColor: Colors.white,
     backgroundColor: Color(0xFFB7935F),
     selectedIconTheme: IconThemeData(
       color:  Colors.black,
       size: 34,
     ),
     unselectedIconTheme:IconThemeData(
       color:  Colors.white,
       size: 28,
     ) ,
   ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(
                color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle:
              TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30)));

}

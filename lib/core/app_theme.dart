import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(color: Color(0xffFFFFFF)),
      selectedItemColor:Color(0xffFFFFFF),
      unselectedIconTheme: IconThemeData(color: Color(0xff727477)),
      unselectedItemColor: Color(0xff727477)
    ),
  );
}

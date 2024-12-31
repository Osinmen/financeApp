import 'package:flutter/material.dart';

//custom button for the beginning pages
Container _customButton() {
  return Container();
}

ThemeData appTheme = ThemeData(
    primaryColor: Colors.red,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
            fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: primaryPurple,
        ),
        headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle()));

//This is one of the primary colors of the app

Color primaryPurple = Color(0XFF62248F);
Color lineColor = Color(0XFFE0E0E0);

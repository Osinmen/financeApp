import 'package:flutter/material.dart';

//custom button for the beginning pages
Container _customButton() {
  return Container();
}

ThemeData appTheme = ThemeData(
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

Widget build(BuildContext context) {
  var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;
  var screenPadding = MediaQuery.of(context).padding;
  return Container();
}

Padding paddingarrowIcon() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 20),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      height: 48,
      width: 48,
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
  );
}

//padding fot the texts at the beginnning
Padding paddinText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Back at your finger tips",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 7),
            Text(
              "Login Method",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white, width: 2)),
          child: Image.asset(
            "assets/majorLogo.png",
            width: 48,
            height: 48,
          ),
        )
      ],
    ),
  );
}

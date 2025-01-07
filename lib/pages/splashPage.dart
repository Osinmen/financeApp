import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryPurple,
      body: Stack(
        children: [
          Image.asset("assets/splash_image.png"),
          Center(child: Image.asset("assets/majorLogo.png")),
        ],
      ),
    );
  }
}

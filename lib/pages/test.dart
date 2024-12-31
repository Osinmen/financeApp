import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // https://pro-api.coingecko.com/api/v3/ping?x_cg_pro_api_key=YOUR_API_KEY

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF1B232A), Color(0xFF5ED5A8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.9, 0.1]),
          color: Color(0xFF1B232A),
        ),
        child: Center(
          child: SvgPicture.asset("assets/svg.svg"),
        ),
      ),
    );
  }
}

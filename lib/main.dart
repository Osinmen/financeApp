import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';
import 'package:porfolio/pages/home.dart';
import 'package:porfolio/pages/login.dart';
import 'package:porfolio/pages/test.dart';
import 'package:porfolio/pages/tester.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        home: const Tester());
  }
}

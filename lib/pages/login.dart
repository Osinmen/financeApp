import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryPurple,
        body: Stack(
          children: [
            Positioned(
              top: 15,
              right: 10,
              child: Image.asset(
                fit: BoxFit.cover,
                "assets/invisibleWallet.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

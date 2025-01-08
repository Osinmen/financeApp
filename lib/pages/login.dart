import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porfolio/constants.dart';
import 'package:porfolio/Widgets/formfieldpadding.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: primaryPurple,
          body: Stack(
            children: [
              Image.asset(
                "assets/invisibleWallet.png",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
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
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
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
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Image.asset(
                            "assets/majorLogo.png",
                            width: 48,
                            height: 48,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: TabBar(
                              unselectedLabelColor: lineColor,
                              labelColor: primaryPurple,
                              indicator: UnderlineTabIndicator(
                                  insets: EdgeInsets.symmetric(horizontal: 130),
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: primaryPurple,
                                    width: 4,
                                  )),
                              dividerColor: Colors.white,
                              tabs: [
                                Tab(
                                  child: Text("Quick Access MPIN"),
                                ),
                                Tab(
                                  child: Text("Customer ID"),
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: TabBarView(
                          children: [
                            Column(
                              children: <Widget>[
                                FormFieldPadding(), // this is the four horizontal container in the tab controller
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Forgot MPIN?",
                                  style: TextStyle(
                                      color: primaryPurple, fontSize: 13),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primaryPurple,
                                        borderRadius: BorderRadius.circular(8)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: lineColor, width: 1.5),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    alignment: Alignment.center,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/faceid.png"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Login with face ID",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Create an account?",
                                  style: TextStyle(
                                      color: primaryPurple, fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 60,
                                    width: double.infinity,
                                    color: lineColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                            "assets/lock_black_24dp 1.png"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Secure Banking - Privacy Policy",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text("this is to test the second one")
                          ],
                        ))
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

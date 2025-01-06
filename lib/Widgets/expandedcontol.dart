import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';
import 'package:porfolio/Widgets/formfieldpadding.dart';

class tabControllerWidget extends StatelessWidget {
  const tabControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
                    FormFieldPadding(),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Forgot MPIN?",
                      style: TextStyle(color: primaryPurple, fontSize: 13),
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
                            border: Border.all(color: lineColor, width: 1.5),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/faceid.png"),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Login with face ID",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Create an account?",
                      style: TextStyle(color: primaryPurple, fontSize: 14),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/lock_black_24dp 1.png"),
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
      ),
    ));
  }
}

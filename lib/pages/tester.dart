import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    double tabHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: primaryPurple,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: tabHeight * 0.66,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: lineColor,
                  ),
                  child: TabBar(
                      indicator: UnderlineTabIndicator(
                          insets: const EdgeInsets.symmetric(horizontal: 100),
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: primaryPurple,
                            width: 4,
                          )),
                      dividerColor: Colors.white,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.home),
                        ),
                        Tab(
                          icon: Icon(Icons.edit),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Hey"),
                const SizedBox(
                  height: 50,
                ),
                Text("dont do this to me"),
                const SizedBox(
                  height: 50,
                ),
                Text("last")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

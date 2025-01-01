import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    double screenlenght = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: DefaultTabController(
          length: 3,
          child: Container(
            height: screenlenght * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.red,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide:
                                BorderSide(width: 4.0, color: Colors.black),
                            insets: const EdgeInsets.symmetric(horizontal: 15)),
                        tabs: [
                          Tab(
                            icon: Icon(Icons.home),
                          ),
                          Tab(
                            icon: Icon(Icons.search),
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("na you be net")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

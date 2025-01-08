import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';
import 'package:porfolio/pages/home.dart';
import 'package:porfolio/pages/login.dart';
import 'package:porfolio/pages/moneyTransfer.dart';
import 'package:porfolio/pages/splashPage.dart';

void main() {
  runApp(const MyApp());
}
//the only written code is this app is just UI
//it is a project done just to test my UI skills in flutter

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        home: const Moneytransfer());
  }
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.purple,
    Colors.black,
    Colors.indigo,
    Colors.indigoAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: 20,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, index) => SizedBox(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors[index]),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("check this")
                          ],
                        ),
                      )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.black,
              width: double.infinity,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

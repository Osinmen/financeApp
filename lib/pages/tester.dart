import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:porfolio/constants.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: ScreenHeight * 0.2,
              decoration: BoxDecoration(
                  color: primaryPurple,
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/invisiblelogo.png")),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$ScreenHeight"),
                        Row(
                          children: [
                            Text(
                              "192,405.30",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/eyes.png")
                          ],
                        ),
                        Text("JOHN SMITH"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: "enter text to copy",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final String textToCopty = _controller.text;
                  if (_controller.text.isNotEmpty) {
                    try {
                      if (mounted) {
                        await Clipboard.setData(
                            ClipboardData(text: textToCopty));
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Text copied to clip Boarad")));
                      }
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("text failed to copy`")));
                      }
                    }
                  }
                  ;
                },
                child: Text("click to copy text"))
          ],
        ),
      )),
    );
  }
}

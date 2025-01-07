import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<String> drawerIcons = [
    "assets/person_black_24dp 1.png",
    "assets/transfer_management.png",
    "assets/qr_code_scanner_black_24dp 1.png",
    "assets/bolt_black_24dp 1.png",
    "assets/QuickLoan (2).png",
    "assets/receipt_long_black_24dp 1.png",
    "assets/selfTop_up.png",
    "assets/locator.png",
    "assets/call center.png",
    "assets/share_black_24dp 1.png"
  ];

  final List<String> labelTexts = [
    "Person Management",
    "Transfer",
    "Scan to Pay",
    "Utilities",
    "Quick Loan",
    "Statement",
    "Self Top-Up",
    "Locator",
    "Contact Us",
    "Refer"
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
            child: Column(
          children: <Widget>[
            Text("Welcome"),
            Text(""),
            ListTile(
              title: Text("William Huffman"),
              trailing: Image.asset("assets/Frame.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A/C No: 6484297489758397",
              style: TextStyle(color: primaryPurple),
            ),
          ],
        )),
        Expanded(
          child: ListView.builder(
              itemCount: drawerIcons.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  leading: Image.asset(drawerIcons[index]),
                  title: Text(labelTexts[index]),
                  trailing: Image.asset("assets/Frame.png"),
                );
              }),
        )
      ],
    ));
  }
}

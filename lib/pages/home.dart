import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porfolio/Widgets/textfieldSearch.dart';
import 'package:porfolio/Widgets/topRow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> IconAssets = [
    "assets/transfer.png",
    "assets/Airtime.png",
    "assets/ScantoPay.png",
    "assets/utilities.png",
    "assets/QuickLoan.png",
    "assets/Statement.png",
    "assets/payBll.png",
    "assets/events.png"
  ];

  List<String> labelTexts = [
    "Transfer",
    "Airtime",
    "Scan To Pay",
    "Utilities",
    "Quick Loan",
    "Statement",
    "Pay Bill",
    "Events"
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TopRow(), // Header Row with Menu, App Name, and Notification Icon
              const SizedBox(height: 20),
              // Horizontal ListView for Account Information
              Container(
                height: screenHeight * 0.23,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.circular(15)),
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
                          Text(
                            "BASIC CURRENT ACCOUNT",
                            style: GoogleFonts.inter(
                              letterSpacing: 1.0,
                              fontSize: 12, // Customize font size
                              fontWeight:
                                  FontWeight.w300, // Customize font weight
                              color: Colors.white, // Customize font color
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "192,405.30",
                                style: GoogleFonts.inter(
                                  fontSize: 12, // Customize font size
                                  fontWeight:
                                      FontWeight.bold, // Customize font weight
                                  color: Colors.white, // Customize font color
                                ),
                              ),
                              const SizedBox(width: 20),
                              Image.asset("assets/eyes.png")
                            ],
                          ),
                          Text("JOHN SMITH")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Search TextField
              TextFieldSearch(),
              const SizedBox(height: 15),

              // Quick Access Title and View All Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Quick Access",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "View All",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // GridView for Quick Access Icons
              SizedBox(
                height: 180,
                child: GridView.builder(
                  itemCount: IconAssets.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: lineColor,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Image.asset(IconAssets[index]),
                          const SizedBox(height: 7),
                          Text(labelTexts[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Transactions Title and View All Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "View All",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // ListView for Transactions (inside Expanded)
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Adjust the number of transactions here
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: Image.asset("assets/mainbell.jpg"),
                      title: Text("Transaction $index"),
                      trailing: Text("Amount $index"), // Replace with real data
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

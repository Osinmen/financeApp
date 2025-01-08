import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class Moneytransfer extends StatefulWidget {
  const Moneytransfer({super.key});

  @override
  State<Moneytransfer> createState() => _MoneytransferState();
}

class _MoneytransferState extends State<Moneytransfer> {
  List<String> fullNames = [
    'Alice\nJohnson',
    'Bob\nSmith',
    'Charlie\nBrown',
    'Diana\nEvans',
    'Ethan\nWilliams',
    'Fiona\nDavis',
    'George\nWilson',
    'Hannah\nMoore',
    'Isla\nTaylor',
    'Jack\nAnderson'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transfer Money",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        elevation: 1.5,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: lineColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Text("Available Balance"),
                        Spacer(),
                        Text("#203901840")
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Frequent Beneficiaries"),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: fullNames.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: lineColor,
                                  ),
                                  child: Image.asset(
                                      "assets/person_black_24dp 1.png"),
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                fullNames[index],
                                style: TextStyle(),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Bank"),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    hintText: "Select bank",
                    hintStyle: TextStyle(
                        color: lineColor, fontWeight: FontWeight.w100),
                    prefixIcon:
                        Image.asset("assets/account_balance_black_24dp 1.png"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                Text("Beneficiary's account number"),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 20),
                    hintText: "Enter account number",
                    hintStyle: TextStyle(
                        color: lineColor, fontWeight: FontWeight.w100),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Text("Description"),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 20),
                    hintText: "Enter Description",
                    hintStyle: TextStyle(
                        color: lineColor, fontWeight: FontWeight.w100),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: lineColor)),
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Make Transfer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

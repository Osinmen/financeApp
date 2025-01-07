import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class Moneytransfer extends StatefulWidget {
  const Moneytransfer({super.key});

  @override
  State<Moneytransfer> createState() => _MoneytransferState();
}

class _MoneytransferState extends State<Moneytransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: lineColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Available balance"),
                Text("some certain amount of money")
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Frequent Beneficiaries"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: lineColor, shape: BoxShape.circle),
                        child: Image.asset("assets/person_black_24dp 1.png"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("some\n names"),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Bank"),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.house),
                              hintText: "Select Bank"),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

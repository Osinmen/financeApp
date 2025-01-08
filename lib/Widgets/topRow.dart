import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: lineColor),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.menu),
        ),
        Text(
          "FNBC",
          style: TextStyle(
              letterSpacing: 2.0,
              color: primaryPurple,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: lineColor),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset("assets/mainbell.jpg"))
      ],
    );
  }
}

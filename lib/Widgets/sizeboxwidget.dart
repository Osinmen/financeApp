import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({
    super.key,
    required this.fullNames,
  });

  final List<String> fullNames;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      child: Image.asset("assets/person_black_24dp 1.png"),
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
    );
  }
}

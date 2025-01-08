import 'package:flutter/material.dart';
import 'package:porfolio/constants.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: lineColor),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search here...",
          hintStyle: TextStyle(color: lineColor, fontWeight: FontWeight.w300),
          prefixIcon: Image.asset("assets/searchButton.png"),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }
}

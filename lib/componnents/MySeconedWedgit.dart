// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MySeconedWidget extends StatelessWidget {
  MySeconedWidget({this.TrealingText, this.LeadingText});
  String? TrealingText;
  String? LeadingText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        LeadingText!,
        style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular"),
      ),
      trailing: Text(TrealingText!,
          style: TextStyle(fontSize: 20, fontFamily: "Combo-Regular")),
    );
  }
}

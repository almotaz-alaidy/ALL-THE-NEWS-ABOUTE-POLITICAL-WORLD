// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({this.MyWord});
  String? MyWord;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      MyWord!,
      style: TextStyle(fontSize: 20, fontFamily: "Anton-Regular"),
    ));
  }
}

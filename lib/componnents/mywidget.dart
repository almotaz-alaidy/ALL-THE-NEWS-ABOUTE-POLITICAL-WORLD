// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  Mywidget(
      {this.MyText,
      this.image,
      this.MyTextColor,
      this.MyTextSize,
      this.MyTextFont,
      required this.OnTap});
  String? MyText;
  String? image;
  Color? MyTextColor;
  double? MyTextSize;
  String? MyTextFont;
  Function() OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image!), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          MyText!,
          style: TextStyle(
              color: MyTextColor, fontSize: MyTextSize, fontFamily: MyTextFont),
        ),
      ),
    );
  }
}

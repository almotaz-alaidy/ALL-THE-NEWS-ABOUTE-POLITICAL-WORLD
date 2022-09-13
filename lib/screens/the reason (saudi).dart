import 'package:flutter/material.dart';
import 'package:lec/screens/Saudi%20VS%20Yemen.dart';

class ReasonsSaudi extends StatefulWidget {
  const ReasonsSaudi({super.key});

  @override
  State<ReasonsSaudi> createState() => _ReasonsSaudiState();
}

class _ReasonsSaudiState extends State<ReasonsSaudi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "the reasons of the war",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "DancingScript-VariableFont_wght",
              color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 200, 255, 0),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(172, 124, 135, 4),
            Color.fromARGB(255, 200, 255, 0)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "في يونيو/ حزيران 2018، بدأت القوات الحكومية المدعومة من السعودية هجوماً على ميناء الحديدة الرئيسي الذي يسيطر عليه الحوثيون( بحجة القضاء على التواجد الحوثي في الاراضي اليمنية )، وهو نقطة دخول معظم المساعدات الإنسانية إلى اليمن، وشريان الحياة لتجنب المجاعة. وحذرت وكالات الإغاثة من أن الهجوم قد يجعل الكارثة الإنسانية في اليمن أسوأ بكثير",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "DancingScript-VariableFont_wght"),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.alshahedpress.net/storage/images/%D9%A2%D9%A0%D9%A2%D9%A1%D9%A1%D9%A1%D9%A0%D9%A8_%D9%A0%D9%A1%D9%A4%D9%A0%D9%A5%D9%A3-1636325423.jpg"),
                  ),
                ),
              ),
              Divider(
                height: 40,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Yemen();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(172, 124, 135, 4),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(172, 124, 135, 4),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 200, 255, 0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

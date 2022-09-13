import 'package:flutter/material.dart';

import '../componnents/container Text widget.dart';
import '../componnents/mywidget.dart';
import 'event happened(saudi).dart';
import 'home.dart';
import 'the latest event (saudi).dart';
import 'the reason (saudi).dart';

class Yemen extends StatefulWidget {
  const Yemen({super.key});

  @override
  State<Yemen> createState() => _YemenState();
}

class _YemenState extends State<Yemen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(246, 185, 96, 96),
        title: Text(
          "war between Saudi and Yeman",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "DancingScript-VariableFont_wght",
              color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 99, 69, 64),
              Color.fromARGB(246, 185, 96, 96),
            ],
          ),
        ),
        child: ListView(
          children: [
            MyContainer(
                MyWord:
                    "The reasons that led to the war between Saudi and Yeman : "),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ReasonsSaudi();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://www.hrw.org/sites/default/files/styles/embed_xxl/public/media_2022/04/202204mena_yemen_main.jpeg?itok=pMbe6sCJ",
            ),
            Divider(
              height: 20,
            ),
            MyContainer(
              MyWord: "The most important events in this war : ",
            ),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return EventtdSuadi();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://i0.wp.com/asiatimes.com/wp-content/uploads/2018/01/Houthis-copy.jpg?fit=1200%2C800&ssl=1",
            ),
            Divider(
              height: 20,
            ),
            MyContainer(MyWord: "The latest events of this war :"),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LastSaudi();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://i.guim.co.uk/img/media/4fef6ac06a49bb84fb278551aaf1e0e39d6b5ff9/0_5_5760_3455/master/5760.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=8f89d07cac4661114381034e259b23b3",
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 99, 69, 64),
              ),
              label: Text(
                "Go back to Home page ",
                style: TextStyle(color: Color.fromARGB(255, 99, 69, 64)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(246, 185, 96, 96))),
            )
          ],
        ),
      ),
    );
  }
}

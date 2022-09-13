import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

import '../componnents/container Text widget.dart';
import '../componnents/mywidget.dart';
import 'latest event (syria).dart';
import 'reason war (syria).dart';
import 'the event in war (syria).dart';

class Syria extends StatefulWidget {
  const Syria({super.key});

  @override
  State<Syria> createState() => _SyriaState();
}

class _SyriaState extends State<Syria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(246, 73, 114, 118),
        title: Text(
          "the syrian war ",
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
              Color.fromARGB(255, 51, 191, 246),
              Color.fromARGB(246, 73, 114, 118),
            ],
          ),
        ),
        child: ListView(
          children: [
            MyContainer(MyWord: "The reasons that led to the war : "),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ReasonsSyria();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://cdn.enabbaladi.net/arabic/wp-content/uploads/2017/12/kobaneny.jpg",
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
                    return EventsSyria();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://ar.qantara.de/sites/default/files/styles/slideshow_wide/public/uploads/2015/11/16/zivilistenfliehenvorassadsbombeninaleppofotoreuters_1.jpg?itok=uJB8ThLE",
            ),
            Divider(
              height: 20,
            ),
            MyContainer(MyWord: "The latest events of this war :"),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return lastSyria();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://www.washingtoninstitute.org/sites/default/files/styles/square_720/public/imports/IranTehranFlagsSyriaHezbollahRTX26GX6.jpg?h=b69e0e0e&itok=pS2zRNza",
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 51, 191, 246),
              ),
              label: Text(
                "Go Back to Home page",
                style: TextStyle(color: Color.fromARGB(255, 51, 191, 246)),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(246, 73, 114, 118)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

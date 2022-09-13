import 'package:flutter/material.dart';

import '../componnents/container Text widget.dart';
import '../componnents/mywidget.dart';
import 'events hapened (pelastine).dart';
import 'home.dart';
import 'latest event (pelstine).dart';
import 'the reason (pelstine).dart';

class Pelstine extends StatefulWidget {
  const Pelstine({super.key});

  @override
  State<Pelstine> createState() => _PelstineState();
}

class _PelstineState extends State<Pelstine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(246, 148, 255, 113),
        title: Text(
          "war between Pelastine and Israel ",
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
              Color.fromARGB(255, 209, 63, 38),
              Color.fromARGB(246, 148, 255, 113),
            ],
          ),
        ),
        child: ListView(
          children: [
            MyContainer(
                MyWord:
                    "The reasons that led to the war between Pelstine and Israel : "),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ReasonPelstine();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://aqlam-moqawema.org/wp-content/uploads/2021/11/%D9%88%D8%B9%D8%AF-%D8%A8%D9%84%D9%81%D9%88%D8%B1.jpg",
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
                    return EventPelstine();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "http://media.linkonlineworld.com/img/large/2018/5/15/2018_5_15_21_12_11_167.jpg",
            ),
            Divider(
              height: 20,
            ),
            MyContainer(MyWord: "The latest events of this war :"),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LastEventPelstine();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://i0.wp.com/fimeddernegi.com/wp-content/uploads/2021/05/thumbs_b_c_830dd91f52f6fde4f5dc189feedfba9f-12.jpg?fit=864%2C486&ssl=1",
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
                color: Color.fromARGB(255, 209, 63, 38),
              ),
              label: Text(
                "Go Back to Home page ",
                style: TextStyle(color: Color.fromARGB(255, 209, 63, 38)),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(246, 148, 255, 113)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

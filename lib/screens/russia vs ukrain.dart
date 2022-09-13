import 'package:flutter/material.dart';

import '../componnents/container Text widget.dart';
import '../componnents/mywidget.dart';
import 'home.dart';
import 'the events happened russia.dart';
import 'the latest event russia.dart';
import 'the reasons (russia).dart';

class Russia extends StatefulWidget {
  const Russia({super.key});

  @override
  State<Russia> createState() => _RussiaState();
}

class _RussiaState extends State<Russia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 145, 209, 243),
        title: Text(
          "war between Russia and Ukraine",
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
              Color.fromARGB(255, 0, 224, 254),
              Color.fromARGB(255, 5, 105, 147)
            ],
          ),
        ),
        child: ListView(
          children: [
            MyContainer(
                MyWord:
                    "The reasons that led to the war between Russia and Ukraine : "),
            Mywidget(
              OnTap: () {
                return Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ResonsRussia();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202202/WhatsApp-Image-2022-02-24-at-1.jpg?oYzB46BmntntfDeEK6ybGOc97u5JyaWl&size=770:433",
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
                    return EventHapenedRussia();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://d1e00ek4ebabms.cloudfront.net/production/12054187-060e-4587-94f0-e6b249596977.jpg",
            ),
            Divider(
              height: 20,
            ),
            MyContainer(MyWord: "The latest events of this war :"),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LatestEvents();
                  },
                ));
              },
              MyText: "click on the imag",
              MyTextColor: Colors.white,
              MyTextFont: "Anton-Regular",
              MyTextSize: 15,
              image:
                  "https://images.theconversation.com/files/452890/original/file-20220317-13-hh77h.jpg?ixlib=rb-1.1.0&rect=983%2C617%2C2362%2C1178&q=45&auto=format&w=1356&h=668&fit=crop",
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
                color: Colors.black,
              ),
              label: Text(
                "back to Home page",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 145, 209, 243)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

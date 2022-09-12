import 'package:flutter/material.dart';
import 'package:lec/componnents/MySeconedWedgit.dart';
import 'package:lec/screens/Saudi%20VS%20Yemen.dart';
import 'package:lec/screens/iran%20war.dart';
import 'package:lec/screens/pelstine%20vs%20israel.dart';
import 'package:lec/screens/russia%20vs%20ukrain.dart';
import 'package:lec/screens/syrian%20war.dart';

import '../componnents/mywidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL THE NEWS ABOUTE POLITICAL WORLD ",
          style: TextStyle(
              fontFamily: "DancingScript-VariableFont_wght",
              fontSize: 15,
              color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.grey, Colors.blueGrey])),
        child: ListView(
          children: [
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Russia();
                  },
                ));
              },
              MyText: "The war between Russia and Ukraine ",
              MyTextColor: Color.fromARGB(255, 101, 158, 222),
              MyTextFont: "Anton-Regular",
              MyTextSize: 30,
              image:
                  "https://timesofindia.indiatimes.com/thumb/msid-90616067,width-1200,height-900,resizemode-4/90616067.jpg",
            ),
            Divider(
              height: 20,
            ),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Yemen();
                  },
                ));
              },
              MyText: "The war between Saudi Arabia and Yemen",
              MyTextColor: Color.fromARGB(255, 27, 18, 24),
              MyTextFont: "Anton-Regular",
              MyTextSize: 35,
              image:
                  "https://www.mei.edu/sites/default/files/2020-03/Yemen%20Jawf%20Feb%202020.jpg",
            ),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Pelstine();
                  },
                ));
              },
              MyText: "The war between Palestine and the Jews",
              MyTextColor: Color.fromARGB(255, 45, 98, 144),
              MyTextFont: "Anton-Regular",
              MyTextSize: 30,
              image:
                  "https://schoolhistory.co.uk/wp-content/uploads/2019/04/Israel-1948-War_4.jpg",
            ),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Syria();
                  },
                ));
              },
              MyText: "Syrian war",
              MyTextColor: Color.fromARGB(255, 23, 18, 92),
              MyTextFont: "Anton-Regular",
              MyTextSize: 45,
              image:
                  "https://ichef.bbci.co.uk/news/2048/cpsprodpb/EF63/production/_105738216_mediaitem88772680.jpg",
            ),
            Mywidget(
              OnTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Iran();
                  },
                ));
              },
              MyText: "The war between Iran and many countries",
              MyTextColor: Colors.black,
              MyTextFont: "Anton-Regular",
              MyTextSize: 30,
              image:
                  "https://live-production.wcms.abc-cdn.net.au/6e3ff88eb53d9b5c802e436cee10c3f2?impolicy=wcms_crop_resize&cropH=1543&cropW=2322&xPos=0&yPos=77&width=862&height=575",
            ),
            Divider(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Countries whose policies are in the same direction",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "DancingScript-VariableFont_wght"),
              ),
            ),
            Divider(
              height: 20,
            ),
            MySeconedWidget(
              LeadingText: "European Community",
              TrealingText: "Russia",
            ),
            MySeconedWidget(
              LeadingText: "United State",
              TrealingText: "China",
            ),
            MySeconedWidget(
              LeadingText: "Britain",
              TrealingText: "North Korea",
            ),
            MySeconedWidget(
              LeadingText: "Israel",
              TrealingText: "Iran",
            ),
            MySeconedWidget(
              LeadingText: "",
              TrealingText: "North Lebanon (Hezb Allah)",
            ),
            MySeconedWidget(
              LeadingText: "",
              TrealingText: "Syria",
            ),
            MySeconedWidget(
              LeadingText: "",
              TrealingText: "Palestinian resistance",
            )
          ],
        ),
      ),
    );
  }
}

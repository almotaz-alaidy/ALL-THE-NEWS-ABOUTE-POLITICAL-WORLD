import 'package:flutter/material.dart';

import 'russia vs ukrain.dart';

class EventHapenedRussia extends StatefulWidget {
  const EventHapenedRussia({super.key});

  @override
  State<EventHapenedRussia> createState() => _EventHapenedRussiaState();
}

class _EventHapenedRussiaState extends State<EventHapenedRussia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "the important event ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "DancingScript-VariableFont_wght",
              color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 136, 86, 253),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 136, 86, 253),
            Color.fromARGB(255, 145, 180, 255)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  " استولت روسيا على مساحة كبيرة من الاراضي الاوكرانية  وما زالت الحرب مستمرة والخريطة التالية توضح الاراضي التي تقع تحت سيطرة الدب الروسي ",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "DancingScript-VariableFont_wght"),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://ichef.bbci.co.uk/news/800/cpsprodpb/D756/production/_124662155_ukraine_invasion_south_map_arabic_x2-nc.png.webp"),
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
                        return Russia();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 136, 86, 253),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 136, 86, 253),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 145, 180, 255),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

import 'syrian war.dart';

class lastSyria extends StatefulWidget {
  const lastSyria({super.key});

  @override
  State<lastSyria> createState() => _lastSyriaState();
}

class _lastSyriaState extends State<lastSyria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "the latest event ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "DancingScript-VariableFont_wght",
              color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 188, 176, 138),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 188, 176, 138),
            Color.fromARGB(255, 108, 112, 66)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "  لحرب السورية حاليا شبه انتهت وقد عادت البلاد للحياة مع مرور الوقت سترجع تزدهر تحت حكم الرئيس بشار الاسد أدامها الله سالمة  ",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "DancingScript-VariableFont_wght"),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://asffwa.com/wp-content/uploads/2019/07/unnamed-file-19397.jpg"),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://dkhlak.com/wp-content/uploads/2018/01/23367-1.jpg"),
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
                        return Syria();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 108, 112, 66),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 108, 112, 66),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 188, 176, 138),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

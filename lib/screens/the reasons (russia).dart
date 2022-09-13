import 'package:flutter/material.dart';

import 'russia vs ukrain.dart';

class ResonsRussia extends StatefulWidget {
  const ResonsRussia({super.key});

  @override
  State<ResonsRussia> createState() => _ResonsRussiaState();
}

class _ResonsRussiaState extends State<ResonsRussia> {
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
        backgroundColor: Color.fromARGB(255, 248, 80, 71),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 248, 80, 71),
            Color.fromARGB(255, 124, 94, 241)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "  السبب الاساسي لغزو روسيا اوكرانيا هو رغبة اوكرانيا في الانضمام الى اعداء روسيا  حلف الناتو والاتحاد الاوروبي وهذا يشكل تهديدا على مصالح روسيا كون اوكرانيا متواجدة على حدودها البرية  لذا قرر بوتين رئيس دولة روسيا العظيمة احتلال اوكرانيا واحالة حكومتها لضمان أمان حدوده البرية ",
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
                        "https://media.istockphoto.com/vectors/angry-bear-against-and-russian-flag-vector-id635966596?k=20&m=635966596&s=612x612&w=0&h=SmoGEcReOPVcqgZD2b1k17Y6obg4dSukEg8HuWvkKZ4="),
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
                  color: Color.fromARGB(255, 248, 80, 71),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 80, 71),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 124, 94, 241),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

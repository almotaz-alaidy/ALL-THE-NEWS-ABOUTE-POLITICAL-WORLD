import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

class Iran extends StatefulWidget {
  const Iran({super.key});

  @override
  State<Iran> createState() => _IranState();
}

class _IranState extends State<Iran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(children: [
          Container(
            child: Text(
              "the Iran war",
              style: TextStyle(fontSize: 50),
            ),
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
              icon: Icon(Icons.arrow_back),
              label: Text("Go Back to Home page "))
        ]),
      ),
    );
  }
}

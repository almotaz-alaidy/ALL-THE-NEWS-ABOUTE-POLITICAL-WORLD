import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

class Yemen extends StatefulWidget {
  const Yemen({super.key});

  @override
  State<Yemen> createState() => _YemenState();
}

class _YemenState extends State<Yemen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Text(
              "the war between Saudi and yeman ",
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
              label: Text("Go back to Home page "))
        ],
      ),
    );
  }
}

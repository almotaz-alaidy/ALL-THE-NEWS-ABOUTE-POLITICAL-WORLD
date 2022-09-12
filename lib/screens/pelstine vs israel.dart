import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

class Pelstine extends StatefulWidget {
  const Pelstine({super.key});

  @override
  State<Pelstine> createState() => _PelstineState();
}

class _PelstineState extends State<Pelstine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Text(
                "the war between pelstine and asrael ",
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
              label: Text("Go Back to Home page "),
            )
          ],
        ),
      ),
    );
  }
}

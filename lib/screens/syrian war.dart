import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

class Syria extends StatefulWidget {
  const Syria({super.key});

  @override
  State<Syria> createState() => _SyriaState();
}

class _SyriaState extends State<Syria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(children: [
          Container(
            child: Text(
              "the syrian war ",
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
              label: Text("Go Back to Home page"))
        ]),
      ),
    );
  }
}

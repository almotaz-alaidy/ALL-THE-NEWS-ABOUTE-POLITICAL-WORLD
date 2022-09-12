import 'package:flutter/material.dart';
import 'package:lec/screens/home.dart';

class Russia extends StatefulWidget {
  const Russia({super.key});

  @override
  State<Russia> createState() => _RussiaState();
}

class _RussiaState extends State<Russia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Text(
                "war between russia and ukrania page",
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
              label: Text("back to Home page"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

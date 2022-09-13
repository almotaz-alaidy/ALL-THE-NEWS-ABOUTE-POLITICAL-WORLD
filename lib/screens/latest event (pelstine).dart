import 'package:flutter/material.dart';

import 'pelstine vs israel.dart';

class LastEventPelstine extends StatefulWidget {
  const LastEventPelstine({super.key});

  @override
  State<LastEventPelstine> createState() => _LastEventPelstineState();
}

class _LastEventPelstineState extends State<LastEventPelstine> {
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
        backgroundColor: Color.fromARGB(255, 193, 183, 0),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 193, 183, 0),
            Color.fromARGB(255, 244, 255, 90)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "من اخر الاحداث التي حصلت في القضية الفلسطينية هو تعدي الاحتلال على كتائب سرايا القدس وذلك عن طريق اغتيال قائد مهم وبالتأكيد سرايا القدس قصفت العديد من الصواريخ في اتجاه تل ابيب وكان ردها قاسيا كالعادة ",
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
                        "https://cdnuploads.aa.com.tr/uploads/Contents/2022/08/06/thumbs_b_c_3fd3dd90ad538fecb29fccd02bead18c.jpg?v=130315"),
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
                        return Pelstine();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 244, 255, 90),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 244, 255, 90),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 193, 183, 0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

import 'Saudi VS Yemen.dart';

class EventtdSuadi extends StatefulWidget {
  const EventtdSuadi({super.key});

  @override
  State<EventtdSuadi> createState() => _EventtdSuadiState();
}

class _EventtdSuadiState extends State<EventtdSuadi> {
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
        backgroundColor: Color.fromARGB(255, 65, 69, 79),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 154, 154, 155),
            Color.fromARGB(255, 65, 69, 79)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "في أوائل شهر مايو أتهمت هيومن رايتس ووتش السعودية باستخدام قنابل عنقودية محظورة عالمياً (صمامات تفجير استشعارية)، في قصف منطقة آل عمار بمحافظة صعدة،  وأكدت أن تلك الذخائر العنقودية تشكل خطراً طويل الأمد على حياة المدنيين، وهي محظورة بموجب اتفاقية اعتمدها 116 بلدًا  .",
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
                        "https://mwatana.org/wp-content/uploads/2020/03/89918105_2947701775292090_7131252037718638592_n.jpg"),
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
                        return Yemen();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 154, 154, 155),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 154, 154, 155),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 65, 69, 79),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

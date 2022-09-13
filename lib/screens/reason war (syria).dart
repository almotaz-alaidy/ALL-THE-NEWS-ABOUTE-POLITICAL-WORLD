import 'package:flutter/material.dart';

import 'syrian war.dart';

class ReasonsSyria extends StatefulWidget {
  const ReasonsSyria({super.key});

  @override
  State<ReasonsSyria> createState() => _ReasonsSyriaState();
}

class _ReasonsSyriaState extends State<ReasonsSyria> {
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
        backgroundColor: Color.fromARGB(172, 255, 151, 153),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(172, 255, 151, 153),
            Color.fromARGB(255, 129, 40, 50)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "سبب الحرب السورية هي الاتجاهات السياسية للرئيس بشار الاسد حيث انه يقف بجانب ايران ويدعمها كل الدعم وهذا ما يخالف سياسية امريكا لذا تسببت الميليشيات الامريكية في زعزعة الامن الداخلي في سوريا مما ادي الى قدح شرارة الثورة ومن بعد هذه الثورة اصبحت الدول جميعها لديها مطامع في الاراضي السورية حيث تشكل الجيش الحر اللذي حاول اسقاط نظام بشار الاسد ولم يستطع ثم ظهرت داعش وحاولت ايضا الدخول الى الاراضي السورية وبالنهاية لم تستطع وبعد ذك حاولت تركيا التدخل عن طريق دعم الجيش الحر ولكن جميع هذه المحاولات بائت بالفشل ",
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
                        "https://media.alalam.ir/uploads/855x495/2021/05/06/162031165324759100.jpg"),
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
                  color: Color.fromARGB(255, 129, 40, 50),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 129, 40, 50),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(172, 255, 151, 153),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

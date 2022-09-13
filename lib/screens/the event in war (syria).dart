import 'package:flutter/material.dart';

import 'syrian war.dart';

class EventsSyria extends StatefulWidget {
  const EventsSyria({super.key});

  @override
  State<EventsSyria> createState() => _EventsSyriaState();
}

class _EventsSyriaState extends State<EventsSyria> {
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
        backgroundColor: Color.fromARGB(255, 136, 86, 253),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 136, 86, 253),
            Color.fromARGB(255, 145, 180, 255)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "احداث هذه الحرب بداية تشكل الجيش الحر اللذي كان مدعوما من الولايات الامريكية المتحدة والحق الضرر في حكومة بشار الاسد لدرجة انه كان جيش بشار كاد ان ينهار ويستسلم ولكن طلب الرئيس بشار المساعدة من حليفته ايران وروسيا التدخل في هذه الحرب فاستجابوا له ودعموه مما ادي الى اضعاف الجيش الحر بشكل كبير في هذه الاثناء تشكلت داعش واستولت على العراق وحاولت الدخول الى الاراضي السورية لاستغلالها الخسائر المهولة التي اكتبدها الجيش الحر والجيش النظامي في محاربتهم بعضهم البعض ولكن جيش النظام تصدى لقوات داعش واستطاع ان يخرجها خارج الاراضي السورية في هذه الاثناء استغل رئيس تركيا اردوغان التها الجيش النظامي في محاربة داعش فقرر ان يدعم الجيش الحر ولكن بالنهاية تصدي الرئيس بشار الاسد لجميع هذه الدول  ",
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
                        "https://jusoor.co/public/ckeditor/kcfinder/upload/images/2022%20map-01.jpg"),
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
                  color: Color.fromARGB(255, 136, 86, 253),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 136, 86, 253),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 145, 180, 255),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

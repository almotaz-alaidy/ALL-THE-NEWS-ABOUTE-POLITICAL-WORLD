import 'package:flutter/material.dart';

import 'pelstine vs israel.dart';

class EventPelstine extends StatefulWidget {
  const EventPelstine({super.key});

  @override
  State<EventPelstine> createState() => _EventPelstineState();
}

class _EventPelstineState extends State<EventPelstine> {
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
                  "بداية بدأت الحرب في حرب النكبة ثم تبعتها حرب تشرين ثم تبعتها حرب النكسة ومن بعد هذه الحروب التي كانت عبارة عن تمثيلية اصبحت القوة الوحيدة التي تدافع عن حقوق الاراضي الفلسطينة هي المقاومة الفلسطينية نفسها متمثلة في :القسام,الجبهة الشعبية لتحرير فلسطين ,الجهاد الاسلامي,سرايا القدس , المقاومين في مخيم جنين وكل عربي حر ",
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
                        "https://www.adnki.net/AKI/wp-content/uploads/2019/10/RagruppamentiPalestinesi.jpg"),
                  ),
                ),
              ),
              Divider(
                height: 20,
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://media.arabicradio.net/855x495/2022/05/10/637877684889942572.jpg"),
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

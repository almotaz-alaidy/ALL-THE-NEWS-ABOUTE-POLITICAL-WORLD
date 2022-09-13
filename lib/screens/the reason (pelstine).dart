import 'package:flutter/material.dart';

import 'pelstine vs israel.dart';

class ReasonPelstine extends StatefulWidget {
  const ReasonPelstine({super.key});

  @override
  State<ReasonPelstine> createState() => _ReasonPelstineState();
}

class _ReasonPelstineState extends State<ReasonPelstine> {
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
        backgroundColor: Color.fromARGB(172, 69, 255, 72),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(172, 69, 255, 72),
            Color.fromARGB(255, 74, 123, 86)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "السبب الرئيسي هو وعد بلفور المشؤوم وتخاذل الحكومات العربية وتنازلها عن قضية فلسطين ولكن هيهات لأجيالنا ان ينسو أو يتخلو عن هذه القضية المهمة مثل حكامنا المنبوذين اللذين لا يمتون بالشرف في صلة ....وهذا نص وعد بلفور المشؤوم : الثاني من نوفمبر/تشرين الثاني سنة1917عزيزي اللورد روتشيلد يسرني أن أبلغكم بالنيابة عن حكومة جلالته بالتصريح التالي الذي يعبر عن التعاطف مع طموحات اليهود الصهاينة التي تم تقديمها للحكومة ووافقت عليها إن حكومة صاحب الجلالة تنظر بعين العطف إلى تأسيس وطن قومي للشعب اليهودي في فلسطين وستبذل قصارى جهدها لتحقيق هذه الغاية، على ألا يجري أي شيء قد يؤدي إلى الإنتقاص من الحقوق المدنية والدينية للجماعات الاخرى المقيمة في فلسطين أو من الحقوق التي يتمتع بها اليهود في البلدان الاخرى أو يؤثر على وضعهم السياسي سأكون ممتنا لك إذا ما أحطتم الاتحاد الصهيوني علما بهذا البيان المخلص آرثر بلفور.",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "DancingScript-VariableFont_wght"),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://ichef.bbci.co.uk/news/800/cpsprodpb/14EE7/production/_98553758_gettyimages-624522924.jpg.webp"),
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
                  color: Color.fromARGB(255, 74, 123, 86),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 74, 123, 86),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(172, 69, 255, 72),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

import 'Saudi VS Yemen.dart';

class LastSaudi extends StatefulWidget {
  const LastSaudi({super.key});

  @override
  State<LastSaudi> createState() => _LastSaudiState();
}

class _LastSaudiState extends State<LastSaudi> {
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
        backgroundColor: Color.fromARGB(255, 188, 176, 138),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 188, 176, 138),
            Color.fromARGB(255, 108, 112, 66)
          ])),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "وسط سياسة التكتم الإعلامي السعودي على الخسائر التي تتكبَّدها المملكة العربية السعودية في مختلف الجبهات اليمنية، أعلن المتحدث باسم القوات المسلحة اليمنية، العميد يحيى سريع في مؤتمر صحافي، بعنوان حصاد 6 سنوات من الصمود في وجه العدوان، مقتل وجرح أكثر من 10400 جندي في صفوف الجيش السعودي منذ بداية العدوان، منهم 400 قتيل ومصاب منذ مطلع العام 2021، إضافة إلى أكثر من 226615 من المرتزقة ما بين قتيل وجريح , ومنذ بداية الحرب، دمرت القوات اليمنية أكثر من 14527 آلية ومدرعة ودبابة وناقلة جند وعربة وجرافة وسلاحاً متنوعاً، وأطلقت 1348 صاروخاً باليستياً، منها 499 استهدفت منشآت عسكرية وحيوية تابعة للسعودية والإمارات، وبعضها طال العمق السعودي، ليستهدف أكبر ميناء نفطي في السعودية، في ما يؤكد فشل محمد بن سلمان في رهانه على الحرب، بحسب عضو المكتب السياسي لحركة أنصار الله محمد البخيتي هذه الصواريخ منها ما أصاب هدفه، وتسبب بخسائر كبيرة، ومنها ما تم التصدي له في سماء السعودية، وهو ما كلّف بالطبع خسائر أيضاً، بسبب الكلفة العالية لتشغيل منظومات الدفاع الجوي وثمن الصواريخ التي تستخدمها. ..",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "DancingScript-VariableFont_wght"),
                ),
              ),
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://media.almayadeen.net/archive/image/2021/12/28/6173b4f4-e961-411d-ab71-fca5c49a8a2b.png?preset=w750"),
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
                  color: Color.fromARGB(255, 108, 112, 66),
                ),
                label: Text(
                  "Press To Go Previos Page ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 108, 112, 66),
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 188, 176, 138),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

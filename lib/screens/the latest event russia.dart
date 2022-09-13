import 'package:flutter/material.dart';

import 'russia vs ukrain.dart';

class LatestEvents extends StatefulWidget {
  const LatestEvents({super.key});

  @override
  State<LatestEvents> createState() => _LatestEventsState();
}

class _LatestEventsState extends State<LatestEvents> {
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
                  "قال الرئيس الروسي، فلاديمير بوتين، إن الدول الغربية بإمكانها المساعدة في إنهاء الحرب بالضغط أكثر على الرئيس الأوكراني، فولوديمير زيلينسكي، ووقف إمداد كييف بالأسلحة وأدلى بوتين بهذه التصريحات في أول مكالمة هاتفية له مع الرئيس الفرنسي، إيمانويل ماكرون، منذ حوالي شهر وجاء في موقع الرئاسة الروسية أن بوتين قال إن الدول الأعضاء في الاتحاد الأوروبي تتجاهل جرائم الحرب التي يعتقد أن القوات الأوكرانية ارتكبتها، متهما إياها باستهداف الأحياء السكنية في منطقة دونباس بالقصف المدفعي ولكن القوات الأوكرانية تنفي ذلك. وطلب ماكرون من بوتين وقف إطلاق النار والسماح للمزيد من المدنيين بمغادرة مجمع آزوفستال الصناعي في مدينة ماريوبول الأوكرانية وكثفت القوات الروسية قصفها بعدما أجلي الفوج الأول من المدنيين من المنطقة.",
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
                        "https://arabicpost.net/wp-content/uploads/2022/03/image-7-1170x600.png"),
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
                        return Russia();
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

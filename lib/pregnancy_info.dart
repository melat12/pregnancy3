import 'package:flutter/material.dart';
import 'package:pregnancy/due_date_info.dart';
import 'package:pregnancy/pages/botom_nav.dart';

class PregnancyInfo extends StatefulWidget {
  @override
  State<PregnancyInfo> createState() => PregnancyFormState();
}

class PregnancyFormState extends State<PregnancyInfo> {
  String password = "";
  final _formKey = GlobalKey<FormState>();
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _formKey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                    child: Text(
                  "እንኳን ወደ Baby Book መተግበሪያ በደህና መጡ። በአሁኑ ጊዜ ነፍሰ ጡር ነዎት?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Image.asset("images/pregnancy.png"),
              GestureDetector(
                onTap: () {
                  setState(() {
                    val = !val;
                  });
                },
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: val ? Colors.white : Colors.grey),
                          child: Center(
                              child: Text(
                            "አዎ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: val ? Colors.black : Colors.white),
                          )),
                        ),
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: val ? Colors.grey : Colors.white),
                          child: Center(
                              child: Text(
                            "አይደለሁም",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: val ? Colors.white : Colors.black),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              
              Row(children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 38.0, left: 20.0),
                      child: Text(
                        "ለመመለስ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DueDateInfo())));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 38.0, left: 150.0),
                      child: Text("ቀጣይ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                    )),
              ]),
            ],
          ),
        ));
  }
}

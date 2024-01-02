import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy/pages/botom_nav.dart';
import 'package:pregnancy/pregnancy_info.dart';
import 'package:intl/date_symbol_data_local.dart';

class DueDateInfo extends StatefulWidget {
  @override
  State<DueDateInfo> createState() => PregnancyFormState();
}

class PregnancyFormState extends State<DueDateInfo> {
  String password = "";
  final _formKey = GlobalKey<FormState>();
  DateTime date = new DateTime.now();
  final df = new DateFormat('dd-MMM-yyyy');

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
                  "እንኳን ደስ አለዎት! የእርግዝናዎን ቀን እንገምት። የመጨረሻው የወር አበባ የመጀመሪያ ቀንዎ መቼ ነው?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Image.asset("images/pregnancy.png"),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 8.0),
                child: TextField(
                  controller: dateinput, //editing controller of this TextField
                  decoration: InputDecoration(
                      suffixIcon:
                          Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly:
                      true, //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(
                            date.year), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime.now());

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('dd-MMM-yyyy').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement
                      if (pickedDate.isBefore(DateTime.now())) {
                        setState(() {
                          dateinput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        setState(() {
                          dateinput.text = "not correct";
                        });
                      }
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 30.0),
              child: Text("በመጨረሻ የወር አበባዬ የመጀመሪያ ቀን አላስታውስም", style: TextStyle(decoration: TextDecoration.underline),),),
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
                              builder: (context) => HomePage()));
                    },
                    child: const Padding(
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

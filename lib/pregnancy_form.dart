import 'package:flutter/material.dart';
import 'package:pregnancy/pregnancy_info.dart';

class PregnancyForm extends StatefulWidget{

  @override
  State<PregnancyForm> createState() => PregnancyFormState();

}

class PregnancyFormState extends State<PregnancyForm> {


    String password = "";
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _formKey,
    body:  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(child: Text("እባክዎ ይህን ቅጽ ይሙሉ!", style: TextStyle(fontWeight: FontWeight.bold,),)),
    
          ),
          Image.asset("images/pregnancy.png"),
    
        
          Padding(
            padding: const EdgeInsets.only( left: 25.0, right: 25.0),
            child: TextFormField(
            decoration: InputDecoration(
              labelText: "ስም",
              border: OutlineInputBorder()
            ),
            validator: (value) {
              // validate just the password here (no confirm password!)
            },
            onChanged: (value) {
              // important: this is needed to obtain the current password value
              // create a state variable in the class that contains your Form widget
              // with type String to store the password value
              // e.g. String? password;
              setState(() {
                password = value;
              });
            },
          ),
          ),
          Padding(
                padding: const EdgeInsets.only(left:25.0, right: 25.0, top: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "የአባት ስም", border: OutlineInputBorder()),
                  validator: (value) {
                    // validate just the password here (no confirm password!)
                  },
                  onChanged: (value) {
                    // important: this is needed to obtain the current password value
                    // create a state variable in the class that contains your Form widget
                    // with type String to store the password value
                    // e.g. String? password;
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),

              Row(
                children: <Widget> [
                  TextButton(onPressed: () {Navigator.pop(context);}, 
                  child: Padding(
                    padding: const EdgeInsets.only (top:38.0, left: 20.0),
                    child: Text("ለመመለስ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                  ) ),

                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PregnancyInfo()));}, 
                  child: Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 150.0),
                    child: Text("ቀጣይ", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                  )),
                ]),
              

              
      
        ],
      ),
    )
    );
  }

}
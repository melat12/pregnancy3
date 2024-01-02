import 'package:flutter/material.dart';

class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 38),
                child: Container(width: 80, child: Text("Date")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0,),
                child: Container(width: 80, child: Text("Start")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0, ),
                child: Container(width: 80, child: Text("Duration")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0,),
                child: Container(width: 80, child: Text("Kicks")),
              ),
            ],

            
          ),
               Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 38),
                child: Container(width: 80, child: Text("Dec")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0,),
                child: Container(width: 80, child: Text("00:00")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0, ),
                child: Container(width: 80, child: Text("0")),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 18.0,),
                child: Container(width: 80, child: Text("0")),
              ),
            ],
          ),
          ListTile(
            
            title: Text("   Dec 5     \t           00:00       \t\t 3           \t \t 10"),
          )

        ],
      ),
    );
  }
}

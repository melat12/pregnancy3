import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
                labelText: "Your first day of last menstrual period"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Calculate Duedate")),
          Text("Week"),
          Text("Month"),
          Text("Duedate"),
          Text("Startdate")
        ],
      ),
    );
  }
}

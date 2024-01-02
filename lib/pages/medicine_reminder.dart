import 'package:flutter/material.dart';

class MedicineReminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine Reminder"),
        actions: [
          
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:38.0,left: 38.0, top: 48.0, bottom: 27.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Medicine Name"),
              ),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:38.0, right: 38.0),
            child: TextFormField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time to be taken",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38.0,top: 27.0),
            child: TextFormField(
              
              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Way of taking the medicine",
              ),
          
            ),
          ),
          Container( width: 390, child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 65, 1, 44)), child: Text("Remind Me", style: TextStyle(color: Colors.white),)),
          ))

        ],
      ),
    );
  }
}

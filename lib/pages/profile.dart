import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 2, 57),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 78, 3, 70),
        title: Text("Personalization", style: TextStyle(color: Colors.white),),
      ),
      body:  Card(
            elevation: 30,
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 108, 3, 108),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              side: BorderSide(color: const Color.fromARGB(255, 64, 64, 63), width: 2)
            ),
            clipBehavior: Clip.antiAlias,
            child:  Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
                                  child: Text(
                                    "Pregnancy Week",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      height: 1.3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                 Padding(
                              padding: EdgeInsets.all(28.0),
                              child: TextFormField(
                                initialValue: "1",
                              
                          
                              ),
                            ),
                                

                                
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                             Padding(
                              padding: EdgeInsets.all( 28.0),
                              child: Text(
                                "Duedate",
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                             Padding(
                              padding: EdgeInsets.all(28.0),
                              child: Text(
                                "Change start",
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ]))
                ])));
  }
}

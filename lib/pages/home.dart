import 'package:flutter/material.dart';

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    
        body: Column(
          children: [
              Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: ListTile(
                                    
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                     
                                        child: Text("Week 1", style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                    
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(left:18.0),
                                      child: Text(
                                          "Congratulations you are 1 week pregnant"),
                                    ),
                                  ),
                                ),
            Card(
                elevation: 30,
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    side: BorderSide(color: Colors.white, width: 2)),
                clipBehavior: Clip.antiAlias,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                              
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 28.0),
                                  child: Text(
                                    "Daily Tip",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 68, 1, 38),
                                      height: 1.3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 28.0, top: 13.0),
                                  child: Text(
                                    "This is your tip for today.",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 70, 1, 57),
                                      height: 1.3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ]))
                    ])),
                      Card(
                elevation: 30,
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    side: BorderSide(color: Colors.white, width: 2)),
                clipBehavior: Clip.antiAlias,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                              
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 28.0),
                                  child: Text(
                                    "Week 1 Do''s and Don'ts",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 68, 1, 38),
                                      height: 1.3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 28.0, top: 13.0),
                                  child: Text(
                                    "This is your do's and don'ts for this week.",
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 70, 1, 57),
                                      height: 1.3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ]))
                    ])),
          ],
        ));
  }
}

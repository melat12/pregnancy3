import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pregnancy/pages/counter.dart';
import 'package:pregnancy/pages/recorded_counter.dart';

class KickCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            
            child: Scaffold(
                appBar: AppBar(
                  title: Center(child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("የመርገጥ ቆጣሪ"),
                  )),
                  backgroundColor: Color.fromARGB(255, 57, 1, 49),
                  bottom: const TabBar(
                    isScrollable: true,
                    
                    tabs: [
                      SizedBox(
                        width: 120.0,
                        child: Tab(
                          icon: Icon(Icons.home_filled),
                          text: "ቆጣሪ",
                        ),
                      ),
                      SizedBox(
                      width: 120,
                        child: Tab(
                          icon: Icon(Icons.history),
                          text: "የተመዘገበ",
                        ),
                      ),
                    ],
                  ),
                ),
                body:  TabBarView(
                  
                  physics: BouncingScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.down,
                  children: [ 

                    Center(child: Counter()),
                    Center(
                      child: Record(),
                    ),
                  ],
                ))));
  }
}

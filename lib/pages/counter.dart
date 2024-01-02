import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Counter extends StatefulWidget {
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  void initState() {
    timeString = _formatTime(DateTime.now());

    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTimeString());
    super.initState();
  }

  _getTimeString() {
    final DateTime now = DateTime.now();
    final String formattedTime = _formatTime(now);

    setState(() {
      timeString = formattedTime;
      var format = DateFormat("HH:mm");
      var start = format.parse(firstTime);
      var end = format.parse(lastTime);

      if (start.isAfter(end)) {
        end = end.add(Duration(days: 0));
        Duration diff = end.difference(start).abs();
        final hours = diff.inHours;
        final minutes = diff.inMinutes % 60;
        print('$hours hours $minutes minutes');
        duration = "$minutes";
        print(duration);
      }
    });
  }

  String durationCalc(String firstTime, String lastTime) {
    int x = int.parse(firstTime);
    String f = "", l = "";
    if(x != 0){
        if (x < 10) {
      f = "0$firstTime";
      l = "0$lastTime";
      print(firstTime);
    }
    }
  
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");

    var _date = dateFormat.format(DateTime.now());

    DateTime a = DateTime.parse('$_date $f:00');
    DateTime b = DateTime.parse('$_date $l:00');
    print('${b.difference(a).inMinutes}');

    print(" $firstTime and $lastTime");
    var format = DateFormat("hh:mm");
    var start = format.parse(firstTime);
    var end = format.parse(lastTime);

    return "${b.difference(a).inMinutes}";
  }

  String _formatTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  var dt = DateTime.now();
  String lastTime = "0:0";
  String firstTime = "0:0";
  String timeString = "";
  int counter = 0;
  int minutes = 0;
  int percent = 0;
  bool firstKick = false;
  String duration = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListTile(
              title: Text(
                  "Kicks $counter in ${durationCalc(firstTime, lastTime)} minutes."),
              subtitle: Text("Click on Foot icon on first kick"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(58.0),
            child: GestureDetector(
              onTap: () {
                if (percent == 0) {
                  firstKick = true;
                  firstTime = "${dt.hour}:${dt.minute}";
                } else {
                  firstKick = false;
                }
                if (percent < 100) {
                  setState(() {
                    durationCalc(firstTime, lastTime);
                    var date = DateTime.now();
                    counter++;
                    percent = percent + 10;
                    lastTime = "${date.hour}:${date.minute}";
                  });
                }

                firstKick
                    ? showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                                content: const Text("Start new session?"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Text("CANCEL"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      var date = DateTime.now();
                                      firstTime = "${date.hour}:${date.minute}";
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Text("START"),
                                  ),
                                ]))
                    : null;
              },
              child: CircularPercentIndicator(
                radius: 50.0,
                backgroundColor: Color.fromARGB(255, 70, 3, 56),
                percent: percent / 100,
                center: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset("images/foot.png"),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Text("Kicks"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Text("First"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Text("Last"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Text("$counter"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 87.0),
                  child: Text("$firstTime"),
                ),
                Container(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 57.0),
                    child: Text("$lastTime"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 74, 3, 64)),
                      onPressed: () {
                        setState(() {
                          percent = 0;
                          counter = 0;
                          lastTime = "00:00";
                          firstTime = "00:00";
                        });
                      },
                      child: Text("Reset")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 130,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 74, 3, 64)),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                      content: const Text("Complete session?"),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Text("CANCEL"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Text("COMPLETE"),
                                        ),
                                      ]));
                        },
                        child: Text("Complete"))),
              )
            ],
          )
        ],
      ),
    );
  }

  void startFirstTime() {
    setState(() {
      var date = DateTime.now();

      firstTime = "${date.hour}:${date.minute}";
    });
  }
}

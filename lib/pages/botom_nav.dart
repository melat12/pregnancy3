import 'package:flutter/material.dart';
import 'package:pregnancy/pages/calculate.dart';
import 'package:pregnancy/pages/home.dart';
import 'package:pregnancy/pages/kick_counter.dart';
import 'package:pregnancy/pages/medicine_reminder.dart';
import 'package:pregnancy/pages/profile.dart';
import 'package:pregnancy/pages/symptom_tracking.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List _screens = [
    {"screen": Homes(), "title": "ዋናዉ ገጽ"},
    {"screen": Calculate(), "title": "የሚወለድበት ቀን"},
    {"screen": Profile(), "title": "ፕሮፋይል"},
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_currentIndex]["title"]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  'Baby Book',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text(' የግል ማህደር '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile())));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: const Text(' የሚወለድበትን ቀን አስሉ '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.food_bank_sharp),
              title: const Text(' የምግብ ምክር '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.medication),
              title: const Text(' የመድሃኒት ማሳሰቢያ '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MedicineReminder())));
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: const Text(' ዜና እና ዝመናዎች '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sick),
              title: const Text(' ምልክቶችን መከታተል '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SymptomTracking()));
              },
            ),
            ListTile(
              leading: Icon(Icons.baby_changing_station),
              title: const Text(' የመርገጥ ቆጣሪ '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KickCounter()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 17,
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 129, 4, 113)),
        selectedItemColor: Color.fromARGB(255, 129, 4, 113),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ዋናዉ ገጽ",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "ቀን"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "ፕሮፋይል")
        ],
      ),
    );
  }
}

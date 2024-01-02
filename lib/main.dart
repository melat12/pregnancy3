import 'package:flutter/material.dart';
import 'package:pregnancy/pregnancy_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
         children: [
          Image.asset("images/pregnancy.png"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("BABY BOOK", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 40.0, right: 40.0),
            child: Text("እንኳን በደህና መጡ", style: TextStyle(fontWeight: FontWeight.bold,)),
          ),

          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 40.0, right: 40.0),
            child: Text("ስለ እርግዝናዎ እና ልጅዎን እንዴት እንደሚንከባከቡ ሁሉንም ነገር ይማሩ::"),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 210.0,),
            child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PregnancyForm()));},
             child: Text("ቀጣይ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
          )
      
         ],
        ),
      )
    );
  }
}

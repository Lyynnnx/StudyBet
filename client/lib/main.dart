import 'package:flutter/material.dart';
import 'package:studybet/screens/current_bets.dart';
import 'package:studybet/screens/explore_screen.dart';
import 'package:studybet/screens/main_screen.dart';
import 'package:studybet/screens/past_best.dart';
import 'package:studybet/screens/profile_screen.dart';
import 'package:studybet/screens/wallet_test.dart';
import 'package:studybet/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 70, 43, 92),
        onError: Colors.red,
        onPrimary: Color.fromARGB(255, 70, 43, 92)
        ),
        primaryColor:const Color.fromARGB(255, 114, 71, 149) ,
        secondaryHeaderColor: const Color.fromARGB(255, 70, 43, 92),
        cardColor:const Color.fromARGB(255, 169, 136, 196),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Inter'),
        bodySmall: TextStyle(color:Color.fromARGB(255, 169, 136, 196), fontFamily: 'Inter') ),
        
        
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:Welcum(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title });
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center()
     
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

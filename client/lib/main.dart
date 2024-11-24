import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studybet/screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((fn){

  runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 70, 43, 92),
        onError: Colors.red,
        onPrimary: const Color.fromARGB(255, 70, 43, 92)
        ),
        primaryColor:const Color.fromARGB(255, 114, 71, 149) ,
        secondaryHeaderColor: const Color.fromARGB(255, 70, 43, 92),
        cardColor:const Color.fromARGB(255, 169, 136, 196),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Inter'),
        bodySmall: TextStyle(color:Color.fromARGB(255, 169, 136, 196), fontFamily: 'Inter') ),
        
        
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:const Welcum(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key, required this.title });
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
      body: const Center()
     
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

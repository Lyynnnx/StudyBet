import 'package:flutter/material.dart';
import 'package:studybet/screens/explore_screen.dart';
import 'package:studybet/screens/main_screen.dart';
import 'package:studybet/screens/profile_screen.dart';

class LastScreen extends StatefulWidget {
   const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  int counter=0;
  
  @override
  void initState() {

    super.initState();
     if(counter==0){
      mainScreen=const HomeScreen();
      mainTitle=const Text('Your current bets');
    }
    else if(counter==1){
      mainScreen=const ExplorePage();
      mainTitle=TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Inter'),
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
              ),
            );
    }
    else{
      mainScreen=const ProfileScreen();
      mainTitle=const Text("Profile", style: TextStyle(color: Colors.white),);
    }
  }

  late Widget mainScreen;
  late Widget mainTitle;
  @override
  Widget build(BuildContext context) {
    if(counter==0){
      mainScreen=const HomeScreen();
      mainTitle=const Text('Your current bets', style: TextStyle(color: Colors.white),);
    }
    else if(counter==1){
      mainScreen=const ExplorePage();
      mainTitle=TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Inter'),
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
              ),
            );
    }
    else{
      mainScreen=const ProfileScreen();
      mainTitle=const Text("Profile", style:  TextStyle(color: Colors.white),);
    }
    return Scaffold(appBar: AppBar(title: mainTitle,backgroundColor:  Theme.of(context).secondaryHeaderColor, leading: const SizedBox(),leadingWidth: 0,),
    body:mainScreen,
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: counter,
      
      fixedColor: Theme.of(context).cardColor,
     backgroundColor: Theme.of(context).secondaryHeaderColor,
      
      onTap: (int index){
        setState(() {
          counter=index;
        });
      },
      items: [BottomNavigationBarItem(icon: const Icon(Icons.house), label:'Home', backgroundColor: Theme.of(context).secondaryHeaderColor,  ),
    BottomNavigationBarItem(icon: const Icon(Icons.explore), label:"Explore", backgroundColor: Theme.of(context).secondaryHeaderColor,  ),
    BottomNavigationBarItem(icon: const Icon(Icons.person), label: "Profile",  backgroundColor: Theme.of(context).secondaryHeaderColor, )]),
    
    );
    
  }
}
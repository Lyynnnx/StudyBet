import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/dummy_currents.dart';
import 'package:studybet/screens/current_bets.dart';
import 'package:studybet/widgets/SmallCard.dart';
import 'package:studybet/widgets/large_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Your current bets',style: Theme.of(context).textTheme.bodyMedium,),
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      // ),
      body: Container(
        color: Theme.of(context)
            .colorScheme
            .primary, // Set purple background color
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: [
                  Text(
                    'Your current bets:',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                    child:
                        Text("view all", style: TextStyle(color: Theme.of(context).cardColor, fontWeight: FontWeight.bold, )),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      //   return CurrentBets();
                      // }));
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CurrentBets();
                          });
                    },
                  )
                ]),
              ),
              // Current Bets Section
              Column(
                children: [
                 
                  SmallCard(
                    title: 'EIDI',
                    amount: '+128',
                    imageUrl: 'lib/assets/images/EIDI.png',
                    date: '27.12.2024',
                    whatColor: 0,
                  ),
                  SmallCard(
                    title: 'GAD',
                    amount: '+226',
                    imageUrl: 'lib/assets/images/GAD.png',
                    date: '01.01.2025',
                    whatColor: 0,
                  ),
                ],
              ),
              Divider(),
              // Hot Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Hot',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              ListView(
                shrinkWrap:
                    true, // Ensures the ListView fits inside the scrollable content
                physics:
                    NeverScrollableScrollPhysics(), // Disable separate scrolling for the ListView
                children: [
                  LargeCard(
                    title: "popa",
                    description: "amogusamogusamogusamogusamogus",
                    imgurl: "lib/assets/images/FPV.png",
                  ),
                  LargeCard(
                    title: "bebra",
                    description: "amogusamogusamogusamogusamogus",
                    imgurl: "lib/assets/images/FPV.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.explore),
      //       label: 'Explore',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}

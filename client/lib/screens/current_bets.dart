import 'package:flutter/material.dart';

import 'package:studybet/dummy_data/dummy_currents.dart';

class CurrentBets extends StatefulWidget {
  const CurrentBets({super.key});
  @override
  State<CurrentBets> createState() => _CurrentBetsState();
}

class _CurrentBetsState extends State<CurrentBets> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).secondaryHeaderColor,
        child: Column(
          children: [
            const Text("Current bets:",
                style:  TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: getCur().length,
                  itemBuilder: (context, index) {
                    return getCur()[index];
                  }),
            ),
          ],
        ));
  }
}

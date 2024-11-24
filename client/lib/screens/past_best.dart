import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/dummy_past.dart';

class PastBets extends StatelessWidget {
  const PastBets({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount: getPast().length,
        itemBuilder: (context, index){
          
        return getPast()[index];
      })
    );
  }
}
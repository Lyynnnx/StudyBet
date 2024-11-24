import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/users_dummy.dart';

class InfoWidget extends StatelessWidget {
   InfoWidget({super.key, required this.title, required this.imgUrl, required this.subtitle, required this.description});
  String title;
  String imgUrl;
  String subtitle;
  String description;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text(title, style: TextStyle(color:Colors.white),), backgroundColor: Theme.of(context).secondaryHeaderColor,),
    backgroundColor: Theme.of(context).primaryColor,
    body:Center(child: Column(children: [
      SizedBox(height:100),
      Image.asset(imgUrl, scale: 6,),
      Text(description),

      SizedBox(height:250,
        child: ListView.builder(itemCount: 3,
          itemBuilder: (context, index){
          return getUsers()[index];
        }),
      )
    ],),)
    );
  }
}
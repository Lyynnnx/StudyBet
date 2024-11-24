import 'package:flutter/material.dart';

class UserInter extends StatelessWidget {
   UserInter({super.key, required this.ava, required this.nick});
  String ava;
  String nick;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10), child: ListTile( title: Text(nick, style: TextStyle(color: Colors.white),),leading: CircleAvatar(radius:30, backgroundImage:AssetImage(ava))));//leading: Image.asset(ava, scale: 20,)
  }
}
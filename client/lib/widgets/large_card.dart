import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imgurl;

  LargeCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imgurl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgurl, scale: 3,),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(description, style: TextStyle(fontSize: 12)),
            SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Buy Yes')),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text('Buy No')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

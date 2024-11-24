import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/dummy_currents.dart';

class LargeCard extends StatefulWidget {
  final String title;
  final String description;
  final String imgurl;

  LargeCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgurl})
      : super(key: key);

  @override
  State<LargeCard> createState() => _LargeCardState();
}

class _LargeCardState extends State<LargeCard> {
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
            Image.asset(
              widget.imgurl,
              scale: 3,
            ),
            SizedBox(height: 8),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(widget.description, style: TextStyle(fontSize: 12)),
            SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Bought a \'Yes\' for \'Will we win?\''),
                      ));
                      
                      setState((){
                            make_bet();
                      });
                      
                      
                    },
                    child: Text('Buy Yes')),
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

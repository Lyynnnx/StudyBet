import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/dummy_currents.dart';
import 'package:studybet/screens/info_page.dart';

class LargeCard extends StatefulWidget {
  final String title;
  final String description;
  final String imgurl;

  const LargeCard(
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
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return InfoWidget(title: widget.title, imgUrl: widget.imgurl, subtitle: widget.description, description: "description");
        }));
      },
      child: Card(
        color: Theme.of(context).primaryColor,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imgurl,
                scale: 3,
              ),
              const SizedBox(height: 8),
              Text(
                widget.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(widget.description, style: const TextStyle(fontSize: 12)),
              const SizedBox(height: 8),
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
                      child: const Text('Buy Yes')),
                  const SizedBox(width: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('Buy No')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

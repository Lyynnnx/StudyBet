import 'package:flutter/material.dart';
import 'package:studybet/screens/info_page.dart';

class SmallCard extends StatelessWidget {
  final String amount;
  final String title;
  final String date;
  final String imageUrl;
  final int whatColor;

  const SmallCard({super.key, required this.amount, required this.title, required this.date, required this.imageUrl,required  this.whatColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return InfoWidget(title: title, imgUrl: imageUrl, subtitle: date, description: "description");
        }));
      },
      child: Card(
        
        color: Theme.of(context).primaryColor,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
             // Image.network('https://www.ce.cit.tum.de/fileadmin/_processed_/7/c/csm_20171002_Schulz_Martin_AH_363653_60594c44e9.jpg', scale: 3,),
             Image.asset(imageUrl, scale: 10, width:50, height:50),
              SizedBox(width: MediaQuery.of(context).size.width*0.05),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox( height: 4),
                    Text(
                      'end date: $date',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                amount,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: whatColor==0?Colors.white:whatColor==1?Colors.green:Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

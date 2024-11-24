import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String amount;
  final String title;
  final String date;
  final String imageUrl;
  final int whatColor;

  SmallCard({Key? key, required this.amount, required this.title, required this.date, required this.imageUrl,required  this.whatColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: Theme.of(context).colorScheme.primary,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox( height: 4),
                  Text(
                    'end date: $date',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              amount,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: whatColor==0?Colors.white:whatColor==1?Colors.green:Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

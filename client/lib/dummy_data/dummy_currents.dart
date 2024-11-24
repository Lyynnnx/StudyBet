import 'package:studybet/widgets/SmallCard.dart';

  List<SmallCard> cringe = [
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
    SmallCard(
      title: 'FPV',
      amount: '+1023',
      imageUrl: 'lib/assets/images/FPV.png',
      date: '01.01.2025',
      whatColor: 0,
    ),
    
 
  ];

  List<SmallCard> getCur(){
     return cringe;
  }

void make_bet(){
  cringe.add(
    SmallCard(
      title: 'Will we win?',
      amount: '+4',
      imageUrl: 'lib/assets/images/FPV.png',
      date: '24.12.2024',
      whatColor: 0,
    ),
  );
}
  
  


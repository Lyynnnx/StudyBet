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
     return cringe.reversed.toList();
  }

void make_bet(){
  print("wow");
  cringe.add(
    SmallCard( 
      title: 'Will we win?',
      amount: '+4',
      imageUrl: 'lib/assets/images/ponti.png',
      date: '24.12.2024',
      whatColor: 0,
    ),
  );
  var temp=cringe[0];
  int ind=0;
  for(int i=0; i<cringe.length; i++){
    if(cringe[i].title=="Will we win?"){
        ind=0;
        break;
    }
  }
  var temp2=cringe.where((x)=>x.title=='Will we win?');
  cringe[0]=cringe[ind];
  cringe[ind]=temp;

  
}
  
  


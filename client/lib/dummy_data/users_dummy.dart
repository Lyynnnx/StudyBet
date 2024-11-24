import 'package:studybet/widgets/user_inter.dart';
String ez='lib/assets/images/';
//lib/assets/images/PGDP.jfif
List<UserInter> users = [
UserInter(ava: 'lib/assets/images/s1.jpg', nick: 'Nick'),
   UserInter(ava: 'lib/assets/images/s2.jfif', nick: 'Kemper'),
  UserInter(ava: 'lib/assets/images/s2.jpg', nick: 'Busine\$\$\$'),
     UserInter(ava: 'lib/assets/images/s4.jpg', nick: 'Hackasigma'),
      UserInter(ava: 'lib/assets/images/s5.png', nick: 'Dima'),
       UserInter(ava: 'lib/assets/images/s6.jpg', nick: 'Redfish'),
        UserInter(ava: '${ez}s7.png', nick: 'it enjoyer'),
         UserInter(ava: 'lib/assets/images/s8.jpg', nick: 'CSRF:('),
          UserInter(ava: 'lib/assets/images/s9.jpg', nick: 'Snowman2006'),
           UserInter(ava: 'lib/assets/images/s10.jpg', nick: ':)'),

];

List<UserInter> getUsers(){
  users.shuffle();
  return users;
}
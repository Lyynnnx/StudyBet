import 'package:flutter/material.dart';
import 'package:studybet/screens/last_screen.dart';
import 'package:studybet/screens/main_screen.dart';
import 'package:studybet/screens/wallet_connection.dart';
import 'package:studybet/screens/wallet_test.dart';
import 'package:studybet/utils/key_generator.dart';

class Welcum extends StatefulWidget {
  Welcum({super.key});

  @override
  State<Welcum> createState() => _WelcumState();
}

class _WelcumState extends State<Welcum> {
  String? publicKey;

 String? walletAddress;

  String? transactionSignature;

  // Создаем экземпляр класса WalletConnection
  final WalletConnection walletConnection = WalletConnection();

  @override
   void initState() {
    super.initState();
    if(publicKey==null){
    _initializeKeys();
    }

  }

  Future<void> _initializeKeys() async {
    final keys = await generateDappEncryptionPublicKey(); // Генерация ключей
    setState(() {
      publicKey = keys;
    });
  }

  // Функция для подключения к Phantom Wallet
  Future<void> connectToWallet() async {
    if (publicKey == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Ключи еще не готовы. Пожалуйста, подождите."),
      ));
      return;
    }
    final wallet = await walletConnection.connectToPhantom(context, publicKey!);
    if (wallet != null) {
      setState(() {
        walletAddress = wallet;
      });
      
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return HomeScreen();
      }));
      print("mama");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Подключен кошелек: $wallet'),
      ));
    } else {
       Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return LastScreen();
      }));
      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //   content: Text('Ошибка подключения к кошельку'),
      // ));
    }
  }

  // Отправка транзакции (пример)
  Future<void> sendTransaction() async {
    if (walletAddress == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Подключите Phantom Wallet")),
      );
      return;
    }

    // Реализуйте логику для отправки транзакции...
    // Например, использовать функции из solana_web3 и отправить транзакцию в сеть.
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Транзакция отправлена!"),
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: 
         Container(width:double.infinity,
            color: Theme.of(context).colorScheme.onPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("StudyBet", style: TextStyle(color: Colors.white, fontSize: 50),),
                SizedBox(height: 200),
                ElevatedButton(
                  onPressed: () {
                    connectToWallet();
                  },
                  child: Text(
                    "Sign In With Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            )),
      
    );
  }
}

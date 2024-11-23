import 'package:flutter/material.dart';
import 'package:studybet/screens/wallet_connection.dart';
import 'package:studybet/utils/key_generator.dart';

class WalletTest extends StatefulWidget {
  const WalletTest({super.key});

  @override
  State<WalletTest> createState() => _WalletTestState();
}

class _WalletTestState extends State<WalletTest> {
  String? publicKey;
 String? walletAddress;
  String? transactionSignature;

  // Создаем экземпляр класса WalletConnection
  final WalletConnection walletConnection = WalletConnection();

  @override
   void initState() {
    super.initState();
    _initializeKeys();
  }
  Future<void> _initializeKeys() async {
    final keys = await generateKeyPair(); // Генерация ключей
    setState(() {
      publicKey = keys['publicKey'];
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

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Подключен кошелек: $wallet'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Ошибка подключения к кошельку'),
      ));
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
      appBar: AppBar(title: Text("mama")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            walletAddress == null
                ? const Text('Кошелёк не подключён')
                : Text('Кошелёк: $walletAddress'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: connectToWallet,
              child: const Text('Подключить кошелёк'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendTransaction,
              child: const Text('Отправить транзакцию'),
            ),
            const SizedBox(height: 20),
            transactionSignature == null
                ? const Text('Транзакция не отправлена')
                : Text('Signature: $transactionSignature'),
          ],
        ),
      ),
    );
  }
}
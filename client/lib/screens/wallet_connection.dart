// wallet_connection.dart
import 'package:flutter/material.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

class WalletConnection {
  final String redirectUriScheme = "studybet.app"; // Замените на своё значение

  // Функция для подключения к Phantom Wallet
  Future<String?> connectToPhantom(BuildContext context, String publicKey) async {
    print(publicKey);
    try {
      final dappEncryptionPublicKey = publicKey; // Сгенерируйте и добавьте сюда ваш публичный ключ
      final uri = Uri.https("phantom.app", "/ul/v1/connect", {
        "dapp_encryption_public_key": dappEncryptionPublicKey,
        "redirect_uri": "$redirectUriScheme://auth",
      });

      // Открываем Phantom Wallet для подключения
      final result = await FlutterWebAuth.authenticate(
        url: uri.toString(),
        callbackUrlScheme: redirectUriScheme,
      );

      // Получаем адрес кошелька из URL
      final wallet = Uri.parse(result).queryParameters['public_key'];

      // Возвращаем адрес кошелька
      return wallet;
    } catch (e) {
      print("Ошибка подключения к Phantom Wallet: $e");
      return null;
    }
  }
}

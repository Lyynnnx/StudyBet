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
     // final uri2 = Uri.https("https://phantom.app/ul/v1/connect?dapp_encryption_public_key=<ваш_публичный_ключ>&redirect_uri=studybet.app://auth")
      //final uri2 = Uri.https("https://phantom.app/ul/v1/connect?dapp_encryption_public_key=${publicKey}y&redirect_uri=studybet.app://auth");
      //final uri2 = Uri.https("https://phantom.app/ul/v1/connect?dapp_encryption_public_key=<ваш_публичный_ключ>&redirect_uri=studybet.app://auth");
      String uri2 = "https://phantom.app/ul/v1/connect?dapp_encryption_public_key=${publicKey}>&redirect_uri=studybet.app://auth";
      print("Сформированный URI: $uri2");

      // Открываем Phantom Wallet для подключения
      final result = await FlutterWebAuth.authenticate(
       // url: uri.toString(),
         url: uri2,
        callbackUrlScheme: redirectUriScheme,
      );
      print("Результат аутентификации: $result");

      // Получаем адрес кошелька из URL
     final uri1 = Uri.parse(result);

// Проверяем, есть ли параметр `public_key` в URL
  if (uri1.queryParameters.containsKey('public_key')) {
    final wallet = uri.queryParameters['public_key'];
    return wallet;
  } else {
  // Если параметр отсутствует, возвращаем null
    print("Ошибка: параметр public_key отсутствует в URL");
  return null;
}
    } catch (e) {
      print("Ошибка подключения к Phantom Wallet: $e");
      return null;
    }
  }
}

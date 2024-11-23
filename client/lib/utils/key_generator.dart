import 'dart:convert';
import 'package:cryptography/cryptography.dart';

Future<Map<String, String>> generateKeyPair() async {
  // Генерируем пару ключей (приватный и публичный)
  final algorithm = X25519();
  final keyPair = await algorithm.newKeyPair();
  final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
  final publicKeyBytes = (await keyPair.extractPublicKey()).bytes;

  // Конвертируем в Base64 для использования
  final privateKey = base64Encode(privateKeyBytes);
  final publicKey = base64Encode(publicKeyBytes);

  return {'privateKey': privateKey, 'publicKey': publicKey};
}

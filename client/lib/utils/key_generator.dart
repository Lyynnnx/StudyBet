import 'dart:convert';
import 'package:cryptography/cryptography.dart';

// Future<Map<String, String>> generateKeyPair() async {
//   // Генерируем пару ключей (приватный и публичный)
//   final algorithm = X25519();
//   final keyPair = await algorithm.newKeyPair();
//   final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
//   final publicKeyBytes = (await keyPair.extractPublicKey()).bytes;

//   // Конвертируем в Base64 для использования
//   final privateKey = base64Encode(privateKeyBytes);
//   final publicKey = base64Encode(publicKeyBytes);

//   return {'privateKey': privateKey, 'publicKey': publicKey};
// }


Future<String> generateDappEncryptionPublicKey() async {
  // Генерируем пару ключей
  final keyPair = await X25519().newKeyPair();
  final publicKey = await keyPair.extractPublicKey();

  // Публичный ключ в формате base64
  final publicKeyBase64 = base64Encode(publicKey.bytes);
  final bebra = publicKeyBase64.toString().substring(0, publicKeyBase64.length-1);
  print("Ваш DApp Encryption Public Key: $bebra $publicKeyBase64");

  return bebra;
}

// ignore_for_file: depend_on_referenced_packages

import 'dart:convert' show utf8;
import 'dart:math' show Random;

import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:hex/hex.dart' show HEX;
import 'package:sky_trade/core/resources/numbers/local.dart'
    show sixteen, thirtyTwo;
import 'package:sky_trade/core/resources/strings/local.dart'
    show nonceCharacterSet;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        signatureEightLine,
        signatureFifthLine,
        signatureFirstLine,
        signatureFourthLine,
        signatureSeventhLine,
        signatureSixthLine,
        signatureThirdLine,
        skyTradeServerHttpSignUrl,
        skyTradeServerSignUrl;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show newLine, whiteSpace;
import 'package:solana/solana.dart' show Ed25519HDKeyPair, SignatureExt;
import 'package:web3auth_flutter/web3auth_flutter.dart';

mixin class SignatureHandler {
  Future<String> signMessage(
    String message,
  ) async {
    final ed25519KeyPair = await computeEd25519KeyPair();

    final signature = await ed25519KeyPair.sign(
      utf8.encode(
        message,
      ),
    );

    final base58EncodedSignature = signature.toBase58();

    return base58EncodedSignature;
  }

  String computeIssuedAt() {
    final millisecondsSinceEpoch = DateTime.now().millisecondsSinceEpoch;

    final nowInMilliseconds = DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch,
      isUtc: true,
    );

    final nowInIso8601String = nowInMilliseconds.toIso8601String();

    return nowInIso8601String;
  }

  String computeNonce() {
    const characters = nonceCharacterSet;
    final randomizer = Random();

    return String.fromCharCodes(
      Iterable.generate(
        sixteen,
        (_) => characters.codeUnitAt(
          randomizer.nextInt(
            characters.length,
          ),
        ),
      ),
    );
  }

  Future<String> computeUserAddress() async {
    final ed25519KeyPair = await computeEd25519KeyPair();

    final ed25519HDPublicKey = ed25519KeyPair.publicKey;

    final base58EncodedEd25519HDPublicKey = ed25519HDPublicKey.toBase58();

    return base58EncodedEd25519HDPublicKey;
  }

  String computeMessageToSignUsing({
    required String issuedAt,
    required String nonce,
    required String userAddress,
  }) =>
      dotenv.env[skyTradeServerSignUrl]! +
      whiteSpace +
      signatureFirstLine +
      newLine +
      userAddress +
      newLine +
      newLine +
      signatureThirdLine +
      newLine +
      newLine +
      signatureFourthLine +
      whiteSpace +
      dotenv.env[skyTradeServerHttpSignUrl]! +
      newLine +
      signatureFifthLine +
      newLine +
      signatureSixthLine +
      newLine +
      signatureSeventhLine +
      whiteSpace +
      nonce +
      newLine +
      signatureEightLine +
      whiteSpace +
      issuedAt;

  Future<Ed25519HDKeyPair> computeEd25519KeyPair() async {
    final ed25519PrivateKey = await computeEd25519PrivateKey();

    final decodedEd25519PrivateKey = HEX
        .decode(
          ed25519PrivateKey,
        )
        .take(
          thirtyTwo,
        )
        .toList();

    final ed25519HDKeyPair = await Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: decodedEd25519PrivateKey,
    );

    return ed25519HDKeyPair;
  }

  Future<String> computeEd25519PrivateKey() =>
      Web3AuthFlutter.getEd25519PrivKey();

  Future<String?> computeUserEmail() => Web3AuthFlutter.getUserInfo().then(
        (userInfo) => userInfo.email,
      );
}

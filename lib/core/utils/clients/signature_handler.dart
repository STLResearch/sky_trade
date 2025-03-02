// ignore_for_file: depend_on_referenced_packages

import 'dart:convert' show utf8;
import 'dart:math' show Random;

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:hex/hex.dart' show HEX;
import 'package:single_factor_auth_flutter/single_factor_auth_flutter.dart';
import 'package:sky_trade/core/resources/numbers/local.dart'
    show sixteen, thirtyTwo;
import 'package:sky_trade/core/resources/strings/local.dart'
    show nonceCharacterSet;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        radarPath,
        signatureEightLine,
        signatureFifthLine,
        signatureFirstLine,
        signatureFourthLine,
        signatureSeventhLine,
        signatureSixthLine,
        signatureThirdLine;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show skyTradeServerHttpSignUrl, skyTradeServerSignUrl;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show ampersand, emptyString, equals, newLine, question, whiteSpace;
import 'package:sky_trade/injection_container.dart' show serviceLocator;
import 'package:solana/solana.dart' show Ed25519HDKeyPair, SignatureExt;

mixin class SignatureHandler {
  Future<String> signMessage(
    String message,
  ) async {
    final ed25519KeyPair = await _computeEd25519KeyPair();

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

  Future<String> computeWalletAddress() async {
    final ed25519KeyPair = await _computeEd25519KeyPair();

    return ed25519KeyPair.address;
  }

  String computeMessageToSignUsing({
    required String issuedAt,
    required String nonce,
    required String walletAddress,
    String? path,
    Map<String, dynamic>? queryParameters,
    bool? includeRadarNamespace,
  }) =>
      dotenv.env[skyTradeServerSignUrl]! +
      whiteSpace +
      signatureFirstLine +
      newLine +
      walletAddress +
      newLine +
      newLine +
      signatureThirdLine +
      newLine +
      newLine +
      signatureFourthLine +
      whiteSpace +
      dotenv.env[skyTradeServerHttpSignUrl]! +
      (path ?? emptyString) +
      switch (queryParameters?.isNotEmpty ?? false) {
        true => question,
        false => emptyString,
      } +
      switch (queryParameters?.isNotEmpty ?? false) {
        true => queryParameters!.entries
            .map(
              (queryParameter) =>
                  queryParameter.key + equals + queryParameter.value.toString(),
            )
            .join(
              ampersand,
            ),
        false => emptyString,
      } +
      switch (includeRadarNamespace ?? false) {
        true => radarPath,
        false => emptyString,
      } +
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

  Future<Ed25519HDKeyPair> _computeEd25519KeyPair() async {
    final sFAPrivateKey = await _computeSFAPrivateKey();

    final decodedEd25519PrivateKey = HEX
        .decode(
          sFAPrivateKey,
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

  Future<String> _computeSFAPrivateKey() async {
    final sessionData =
        await serviceLocator<SingleFactorAuthFlutter>().getSessionData();

    return sessionData!.privateKey;
  }

  Future<String?> computeUserEmail() async {
    final credentials =
        await serviceLocator<Auth0>().credentialsManager.credentials();

    return credentials.user.email;
  }
}

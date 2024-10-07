// ignore_for_file: depend_on_referenced_packages

import 'dart:convert' show utf8;
import 'dart:io' show Platform;
import 'dart:math' show Random;

import 'package:dartz/dartz.dart' show Either, Unit, unit;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:hex/hex.dart' show HEX;
import 'package:sky_ways/core/errors/exceptions/auth_exception.dart'
    show
        InvalidEmailException,
        InvalidSignatureException,
        UnauthorizedException,
        UserAlreadyExistsException,
        UserDoesNotExistException;
import 'package:sky_ways/core/errors/failures/auth_failure.dart';
import 'package:sky_ways/core/resources/numbers/local.dart'
    show sixteen, thirtyTwo;
import 'package:sky_ways/core/resources/strings/environments.dart'
    show devEnvironment, flavours;
import 'package:sky_ways/core/resources/strings/local.dart'
    show nonceCharacterSet;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        flowTypeKey,
        linkValue,
        signatureEightLine,
        signatureFifthLine,
        signatureFirstLine,
        signatureFourthLine,
        signatureSeventhLine,
        signatureSixthLine,
        signatureThirdLine,
        skyTradeServerHttpSignUrl,
        skyTradeServerSignUrl,
        web3AuthWhitelistOriginAndroid,
        web3AuthWhitelistOriginIos;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show web3AuthClientId;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show newLine, whiteSpace;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/auth/data/data_sources/auth_remote_data_source.dart'
    show AuthRemoteDataSource;
import 'package:sky_ways/features/auth/domain/entities/auth_entity.dart';
import 'package:sky_ways/features/auth/domain/repositories/auth_repository.dart';
import 'package:solana/solana.dart';
import 'package:web3auth_flutter/enums.dart' show Network, Provider;
import 'package:web3auth_flutter/input.dart'
    show ExtraLoginOptions, LoginParams, Web3AuthOptions;
import 'package:web3auth_flutter/output.dart' show Web3AuthResponse;
import 'package:web3auth_flutter/web3auth_flutter.dart';

final class AuthRepositoryImplementation
    with DataHandler
    implements AuthRepository {
  const AuthRepositoryImplementation(
    AuthRemoteDataSource authRemoteDataSource,
  ) : _authRemoteDataSource = authRemoteDataSource;

  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<Either<Web3AuthInitializationFailure, Unit>> initializeWeb3Auth() =>
      handleData<Web3AuthInitializationFailure, Unit>(
        dataSourceOperation: () async {
          final web3AuthOptions = Web3AuthOptions(
            clientId: dotenv.env[web3AuthClientId]!,
            network: _computeNetwork(),
            redirectUrl: _computeRedirectUrl(),
          );

          await Web3AuthFlutter.init(
            web3AuthOptions,
          );

          await Web3AuthFlutter.initialize();

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => Web3AuthInitializationFailure(),
      );

  Network _computeNetwork() {
    const environment = String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

    if (environment == devEnvironment) {
      return Network.sapphire_devnet;
    }

    return Network.cyan;
  }

  Uri _computeRedirectUrl() {
    final iosRedirect = dotenv.env[web3AuthWhitelistOriginIos]!;
    final androidRedirect = dotenv.env[web3AuthWhitelistOriginAndroid]!;

    final redirectUrl = Uri.parse(
      switch (Platform.isIOS) {
        true => iosRedirect,
        false => androidRedirect,
      },
    );

    return redirectUrl;
  }

  @override
  Future<Either<Web3AuthAuthenticationFailure, Web3AuthUserEntity>>
      authenticateWeb3AuthUserUsing({
    required AuthProvider authProvider,
    String? credential,
  }) =>
          handleData<Web3AuthAuthenticationFailure, Web3AuthUserEntity>(
            dataSourceOperation: () async {
              final loginParameters = LoginParams(
                loginProvider: _computeLoginProviderFrom(
                  authProvider,
                ),
                extraLoginOptions: _computeExtraLoginOptionsFrom(
                  authProvider: authProvider,
                  credential: credential,
                ),
              );

              final web3AuthResponse = await Web3AuthFlutter.login(
                loginParameters,
              );

              final web3AuthUserEntity = _computeWeb3AuthUserEntityFrom(
                web3AuthResponse,
              );

              return web3AuthUserEntity;
            },
            onSuccess: (web3AuthUserEntity) => web3AuthUserEntity,
            onFailure: (_) => Web3AuthAuthenticationFailure(),
          );

  Provider _computeLoginProviderFrom(
    AuthProvider authProvider,
  ) {
    final loginProvider = switch (authProvider) {
      AuthProvider.google => Provider.google,
      AuthProvider.emailPasswordless => Provider.email_passwordless,
    };

    return loginProvider;
  }

  ExtraLoginOptions? _computeExtraLoginOptionsFrom({
    required AuthProvider authProvider,
    String? credential,
  }) {
    final extraLoginOptions = switch (authProvider) {
      AuthProvider.emailPasswordless => ExtraLoginOptions(
          login_hint: credential,
          additionalParams: {
            flowTypeKey: linkValue,
          },
        ),
      _ => null,
    };

    return extraLoginOptions;
  }

  Web3AuthUserEntity _computeWeb3AuthUserEntityFrom(
    Web3AuthResponse web3AuthResponse,
  ) =>
      Web3AuthUserEntity(
        name: web3AuthResponse.userInfo?.name,
        email: web3AuthResponse.userInfo?.email,
        profileImage: web3AuthResponse.userInfo?.profileImage,
        verifier: web3AuthResponse.userInfo?.verifier,
        verifierId: web3AuthResponse.userInfo?.verifierId,
        typeOfLogin: web3AuthResponse.userInfo?.typeOfLogin,
        aggregateVerifier: web3AuthResponse.userInfo?.aggregateVerifier,
        dappShare: web3AuthResponse.userInfo?.dappShare,
        idToken: web3AuthResponse.userInfo?.idToken,
        sessionId: web3AuthResponse.sessionId,
        oAuthIdToken: web3AuthResponse.userInfo?.oAuthIdToken,
        oAuthAccessToken: web3AuthResponse.userInfo?.oAuthAccessToken,
        isMfaEnabled: web3AuthResponse.userInfo?.isMfaEnabled,
        secp256k1PrivateKey: web3AuthResponse.privKey,
        ed25519PrivateKey: web3AuthResponse.ed25519PrivKey,
        secp256k1CoreKitKey: web3AuthResponse.coreKitKey,
        ed25519CoreKitKey: web3AuthResponse.coreKitEd25519PrivKey,
        error: web3AuthResponse.error,
      );

  @override
  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUserAnd({
    required bool subscribeToNewsletter,
  }) =>
          handleData<CreateSkyTradeUserFailure, SkyTradeUserEntity>(
            dataSourceOperation: () async {
              final userInfo = await Web3AuthFlutter.getUserInfo();

              final email = userInfo.email!;

              final ed25519KeyPair = await _computeEd25519KeyPair();

              final walletAddress = ed25519KeyPair.address;

              return _authRemoteDataSource.createSkyTradeUserUsing(
                email: email,
                blockchainAddress: walletAddress,
                subscribeToNewsletter: subscribeToNewsletter,
              );
            },
            onSuccess: (skyTradeUserEntity) => skyTradeUserEntity,
            onFailure: (e) {
              if (e is InvalidEmailException) {
                return InvalidEmailFailure();
              } else if (e is UserAlreadyExistsException) {
                return UserAlreadyExistsFailure();
              } else {
                return CreateSkyTradeUserUnknownFailure();
              }
            },
          );

  @override
  Future<Either<CheckSkyTradeUserFailure, SkyTradeUserEntity>>
      checkSkyTradeUserExists() =>
          handleData<CheckSkyTradeUserFailure, SkyTradeUserEntity>(
            dataSourceOperation: () async {
              final issuedAt = _computeIssuedAt();
              final nonce = _computeNonce();
              final userAddress = await _computeUserAddress();
              final message = _computeMessageToSignUsing(
                issuedAt: issuedAt,
                nonce: nonce,
                userAddress: userAddress,
              );
              final signature = await _signMessage(
                message,
              );

              return _authRemoteDataSource.checkSkyTradeUserExistsUsing(
                signature: signature,
                issuedAt: issuedAt,
                nonce: nonce,
                address: userAddress,
              );
            },
            onSuccess: (skyTradeUserEntity) => skyTradeUserEntity,
            onFailure: (e) {
              if (e is UnauthorizedException) {
                return UnauthorizedFailure();
              } else if (e is InvalidSignatureException) {
                return InvalidSignatureFailure();
              } else if (e is UserDoesNotExistException) {
                return UserDoesNotExistFailure();
              } else {
                return CheckSkyTradeUserUnknownFailure();
              }
            },
          );

  Future<String> _signMessage(
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

  String _computeIssuedAt() {
    final millisecondsSinceEpoch = DateTime.now().millisecondsSinceEpoch;

    final nowInMilliseconds = DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch,
      isUtc: true,
    );

    final nowInIso8601String = nowInMilliseconds.toIso8601String();

    return nowInIso8601String;
  }

  String _computeNonce() {
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

  Future<String> _computeUserAddress() async {
    final ed25519KeyPair = await _computeEd25519KeyPair();

    final ed25519HDPublicKey = ed25519KeyPair.publicKey;

    final base58EncodedEd25519HDPublicKey = ed25519HDPublicKey.toBase58();

    return base58EncodedEd25519HDPublicKey;
  }

  String _computeMessageToSignUsing({
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

  Future<Ed25519HDKeyPair> _computeEd25519KeyPair() async {
    final ed25519PrivateKey = await _computeEd25519PrivateKey();

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

  @override
  Future<bool> checkWeb3AuthSessionExists() async {
    final ed25519PrivateKey = await _computeEd25519PrivateKey();

    return ed25519PrivateKey.isNotEmpty;
  }

  Future<String> _computeEd25519PrivateKey() =>
      Web3AuthFlutter.getEd25519PrivKey();

  @override
  Future<void> captureWhenWeb3AuthCustomTabsClosed() =>
      Web3AuthFlutter.setCustomTabsClosed();

  @override
  Future<Either<Web3AuthLogoutFailure, Unit>> logoutCurrentWeb3AuthUser() =>
      handleData<Web3AuthLogoutFailure, Unit>(
        dataSourceOperation: () async {
          await Web3AuthFlutter.logout();
          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => Web3AuthLogoutFailure(),
      );
}

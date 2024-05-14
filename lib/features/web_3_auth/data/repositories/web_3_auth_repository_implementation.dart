import 'dart:io';

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/errors/failure.dart' show AuthFailure;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        flowTypeKey,
        linkValue,
        web3AuthPath,
        web3AuthWhitelistOriginAndroid,
        web3AuthWhitelistOriginIos;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show web3AuthClientId;
import 'package:sky_ways/core/utils/enums/enums.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';
import 'package:web3auth_flutter/enums.dart' show Network, Provider;
import 'package:web3auth_flutter/input.dart'
    show ExtraLoginOptions, LoginParams, Web3AuthOptions;
import 'package:web3auth_flutter/output.dart';
import 'package:web3auth_flutter/web3auth_flutter.dart';

final class Web3AuthRepositoryImplementation implements Web3AuthRepository {
  @override
  Future<void> initializeWeb3Auth() async {
    final web3AuthOptions = Web3AuthOptions(
      clientId: dotenv.env[web3AuthClientId]!,
      network: Network.sapphire_devnet,
      redirectUrl: _redirectUrl,
    );

    await Web3AuthFlutter.init(
      web3AuthOptions,
    );

    await Web3AuthFlutter.initialize();
  }

  Uri get _redirectUrl {
    final iosRedirect = dotenv.env[web3AuthWhitelistOriginIos]!;
    final androidRedirect =
        dotenv.env[web3AuthWhitelistOriginAndroid]! + web3AuthPath;

    final redirectUrl = Uri.parse(
      switch (Platform.isIOS) {
        true => iosRedirect,
        false => androidRedirect,
      },
    );

    return redirectUrl;
  }

  @override
  Future<Either<AuthFailure, UserEntity>> authenticateUserWith({
    required AuthProvider authProvider,
    String? credential,
  }) async {
    final loginParameters = LoginParams(
      loginProvider: _computeLoginProviderFrom(
        authProvider,
      ),
      extraLoginOptions: _computeExtraLoginOptionsFrom(
        authProvider: authProvider,
        credential: credential,
      ),
    );

    try {
      final web3AuthResponse = await Web3AuthFlutter.login(
        loginParameters,
      );

      final userModel = _computeUserEntityFrom(
        web3AuthResponse,
      );

      return Right(
        userModel,
      );
    } catch (_) {
      return Left(
        AuthFailure(),
      );
    }
  }

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

  UserEntity _computeUserEntityFrom(
    Web3AuthResponse web3AuthResponse,
  ) =>
      UserEntity(
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
}

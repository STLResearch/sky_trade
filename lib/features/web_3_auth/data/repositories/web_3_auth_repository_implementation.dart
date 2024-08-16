import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either, Left, Right, Unit, unit;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/errors/failures/web_3_auth_failure.dart'
    show
        Web3AuthAuthenticationFailure,
        Web3AuthInitializationFailure,
        Web3AuthLogoutFailure;
import 'package:sky_ways/core/resources/strings/environments.dart'
    show devEnvironment, flavours, liveEnvironment;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        flowTypeKey,
        linkValue,
        web3AuthWhitelistOriginAndroid,
        web3AuthWhitelistOriginIos;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show web3AuthClientId;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';
import 'package:web3auth_flutter/enums.dart' show Network, Provider;
import 'package:web3auth_flutter/input.dart'
    show
        ExtraLoginOptions,
        LoginParams,
        UserCancelledException,
        Web3AuthOptions;
import 'package:web3auth_flutter/output.dart' show Web3AuthResponse;
import 'package:web3auth_flutter/web3auth_flutter.dart';

final class Web3AuthRepositoryImplementation implements Web3AuthRepository {
  @override
  Future<Either<Web3AuthInitializationFailure, Unit>>
      initializeWeb3Auth() async {
    final web3AuthOptions = Web3AuthOptions(
      clientId: dotenv.env[web3AuthClientId]!,
      network: _network,
      redirectUrl: _redirectUrl,
    );

    await Web3AuthFlutter.init(
      web3AuthOptions,
    );

    try {
      await Web3AuthFlutter.initialize();

      return const Right(
        unit,
      );
    } catch (error) {
      return Left(
        Web3AuthInitializationFailure(),
      );
    }
  }

  Network get _network {
    const environment = String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

    if (environment != liveEnvironment) {
      return Network.sapphire_devnet;
    }

    return Network.cyan;
  }

  Uri get _redirectUrl {
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
  Future<Either<Web3AuthAuthenticationFailure, UserEntity>>
      authenticateUserWith({
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

      final userEntity = _computeUserEntityFrom(
        web3AuthResponse,
      );

      return Right(
        userEntity,
      );
    } on UserCancelledException {
      return Left(
        Web3AuthAuthenticationFailure(),
      );
    } catch (error) {
      return Left(
        Web3AuthAuthenticationFailure(),
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

  @override
  Future<bool> sessionExists() async {
    final ed25519PrivateKey = await Web3AuthFlutter.getEd25519PrivKey();

    return ed25519PrivateKey.isNotEmpty;
  }

  @override
  Future<void> captureWhenCustomTabsClosed() =>
      Web3AuthFlutter.setCustomTabsClosed();

  @override
  Future<Either<Web3AuthLogoutFailure, Unit>> logoutCurrentUser() async {
    try {
      await Web3AuthFlutter.logout();
      return const Right(
        unit,
      );
    } catch (error) {
      return Left(
        Web3AuthLogoutFailure(),
      );
    }
  }
}

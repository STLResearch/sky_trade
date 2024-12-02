import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either, Unit, unit;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/errors/exceptions/auth_exception.dart'
    show
        InvalidEmailException,
        InvalidSignatureException,
        UnauthorizedException,
        UserAlreadyExistsException,
        UserDoesNotExistException;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours, stageEnvironment;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        flowTypeKey,
        linkValue,
        web3AuthWhitelistOriginAndroid,
        web3AuthWhitelistOriginIos;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show web3AuthClientId;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_trade/features/auth/data/data_sources/auth_remote_data_source.dart'
    show AuthRemoteDataSource;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';
import 'package:web3auth_flutter/enums.dart' show Network, Provider;
import 'package:web3auth_flutter/input.dart'
    show ExtraLoginOptions, LoginParams, Web3AuthOptions;
import 'package:web3auth_flutter/output.dart' show Web3AuthResponse;
import 'package:web3auth_flutter/web3auth_flutter.dart';

final class AuthRepositoryImplementation
    with DataHandler, SignatureHandler
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

    if (environment == devEnvironment || environment == stageEnvironment) {
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
              final email = await computeUserEmail();

              final ed25519KeyPair = await computeEd25519KeyPair();

              final walletAddress = ed25519KeyPair.address;

              return _authRemoteDataSource.createSkyTradeUserUsing(
                email: email!,
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
            dataSourceOperation: _authRemoteDataSource.checkSkyTradeUserExists,
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

  @override
  Future<bool> checkWeb3AuthSessionExists() async {
    final ed25519PrivateKey = await computeEd25519PrivateKey();

    return ed25519PrivateKey.isNotEmpty;
  }

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

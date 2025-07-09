// ignore_for_file: lines_longer_than_80_chars

import 'package:auth0_flutter/auth0_flutter.dart' show Auth0, Credentials;
import 'package:dartz/dartz.dart' show Either, Unit, unit;
import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:single_factor_auth_flutter/enums.dart';
import 'package:single_factor_auth_flutter/input.dart'
    show LoginParams, TorusSubVerifierInfo, Web3AuthOptions;
import 'package:single_factor_auth_flutter/single_factor_auth_flutter.dart';
import 'package:sky_trade/core/errors/exceptions/auth_exception.dart'
    show
        CheckSkyTradeUserException,
        CreateSkyTradeUserException,
        EmailReuseNotAllowedException,
        InvalidEmailException,
        InvalidSignatureException,
        UnauthorizedException,
        UserDeletedException,
        UserMismatchException,
        UserNotFoundException,
        WalletAlreadyExistsException;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show web3AuthSFASessionTimeSeconds;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours, stageEnvironment;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        invalidResultFromNodesThresholdNumberOfPublicKeyResultsAreNotMatchingPleaseCheckConfiguration;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show sFAVerifier, sFAVerifierSubIdentifier, web3AuthClientId;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/enums/ui.dart' show UserCategory;
import 'package:sky_trade/features/auth/data/data_sources/auth_local_data_source.dart'
    show AuthLocalDataSource;
import 'package:sky_trade/features/auth/data/data_sources/auth_remote_data_source.dart'
    show AuthRemoteDataSource;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

final class AuthRepositoryImplementation
    with DataHandler, SignatureHandler
    implements AuthRepository {
  const AuthRepositoryImplementation({
    required Auth0 auth0,
    required SingleFactorAuthFlutter singleFactorAuthentication,
    required AuthLocalDataSource authLocalDataSource,
    required AuthRemoteDataSource authRemoteDataSource,
  })  : _auth0 = auth0,
        _singleFactorAuthentication = singleFactorAuthentication,
        _authLocalDataSource = authLocalDataSource,
        _authRemoteDataSource = authRemoteDataSource;

  final Auth0 _auth0;

  final SingleFactorAuthFlutter _singleFactorAuthentication;

  final AuthLocalDataSource _authLocalDataSource;

  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<Either<Auth0AuthenticationFailure, Auth0UserEntity>>
      authenticateUserWithAuth0() =>
          handleData<Auth0AuthenticationFailure, Auth0UserEntity>(
            dataSourceOperation: () async {
              final credentials = await _auth0.webAuthentication().login();

              return Auth0UserEntity(
                idToken: credentials.idToken,
                refreshToken: credentials.refreshToken,
                email: credentials.user.email,
                emailVerified: credentials.user.isEmailVerified,
              );
            },
            onSuccess: (auth0UserEntity) => auth0UserEntity,
            onFailure: (_) => Auth0AuthenticationFailure(),
          );

  @override
  Future<Credentials> renewAuth0UserCredentialsUsing({
    required String refreshToken,
  }) =>
      _auth0.api.renewCredentials(
        refreshToken: refreshToken,
      );

  @override
  Future<bool> updateAuth0UserWithNew({
    required Credentials credentials,
  }) =>
      _auth0.credentialsManager.storeCredentials(
        credentials,
      );

  @override
  Future<bool> checkAuth0UserSessionExists() =>
      _auth0.credentialsManager.hasValidCredentials();

  @override
  Future<Either<Auth0UserNotFoundFailure, Auth0UserEntity>> get auth0User =>
      handleData<Auth0UserNotFoundFailure, Auth0UserEntity>(
        dataSourceOperation: () async {
          final credentials = await _auth0.credentialsManager.credentials();

          return Auth0UserEntity(
            idToken: credentials.idToken,
            refreshToken: credentials.refreshToken,
            email: credentials.user.email,
            emailVerified: credentials.user.isEmailVerified,
          );
        },
        onSuccess: (auth0UserEntity) => auth0UserEntity,
        onFailure: (_) => Auth0UserNotFoundFailure(),
      );

  @override
  Future<bool> get auth0SessionForDeletedUserExists =>
      _authLocalDataSource.auth0SessionForDeletedUserExists;

  @override
  Future<void> setAuth0SessionForDeletedUserExists({
    required bool value,
  }) =>
      _authLocalDataSource.setAuth0SessionForDeletedUserExists(
        value: value,
      );

  @override
  Future<bool> get userIsGuest => _authLocalDataSource.userIsGuest;

  @override
  Future<void> setUserIsGuest({
    required bool value,
  }) =>
      _authLocalDataSource.setUserIsGuest(
        value: value,
      );

  @override
  Future<Either<Auth0LogoutFailure, Unit>> logoutCurrentAuth0User() =>
      handleData<Auth0LogoutFailure, Unit>(
        dataSourceOperation: () async {
          await _auth0.webAuthentication().logout();

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => Auth0LogoutFailure(),
      );

  @override
  Future<Either<SFAConfigurationFailure, Unit>> configureSFA() =>
      handleData<SFAConfigurationFailure, Unit>(
        dataSourceOperation: () async {
          final web3AuthOptions = Web3AuthOptions(
            network: _computeWeb3AuthNetwork(),
            clientId: dotenv.env[web3AuthClientId]!,
            sessionTime: web3AuthSFASessionTimeSeconds,
          );

          await _singleFactorAuthentication.init(
            web3AuthOptions,
          );

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => SFAConfigurationFailure(),
      );

  Web3AuthNetwork _computeWeb3AuthNetwork() {
    const environment = String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

    if (environment == devEnvironment || environment == stageEnvironment) {
      return Web3AuthNetwork.sapphire_devnet;
    }

    return Web3AuthNetwork.sapphire_mainnet;
  }

  @override
  Future<Either<SFAInitializationFailure, Unit>> initializeSFA() =>
      handleData<SFAInitializationFailure, Unit>(
        dataSourceOperation: () async {
          await _singleFactorAuthentication.initialize();

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => SFAInitializationFailure(),
      );

  @override
  Future<Either<SFAAuthenticationFailure, SFAUserEntity>>
      authenticateAuth0UserWithSFAUsing({
    required String? email,
    required String idToken,
  }) =>
          handleData<SFAAuthenticationFailure, SFAUserEntity>(
            dataSourceOperation: () async {
              final loginParams = LoginParams(
                verifier: dotenv.env[sFAVerifier]!,
                verifierId: email!,
                idToken: idToken,
                subVerifierInfoArray: [
                  TorusSubVerifierInfo(
                    dotenv.env[sFAVerifierSubIdentifier]!,
                    idToken,
                  ),
                ],
              );

              final sessionData = await _singleFactorAuthentication.connect(
                loginParams,
              );

              return SFAUserEntity(
                privateKey: sessionData.privateKey,
                publicAddress: sessionData.publicAddress,
              );
            },
            onSuccess: (sFAUserEntity) => sFAUserEntity,
            onFailure: (e) => switch (e) {
              PlatformException(
                :final details,
              )
                  when details ==
                      invalidResultFromNodesThresholdNumberOfPublicKeyResultsAreNotMatchingPleaseCheckConfiguration =>
                SFAUserShouldLogoutFailure(),
              _ => SFAAuthenticationUnknownFailure(),
            },
          );

  @override
  Future<bool> checkSFAUserSessionExists() async {
    final sessionData = await _singleFactorAuthentication.getSessionData();
    return sessionData != null;
  }

  @override
  Future<Either<SFALogoutFailure, Unit>> logoutCurrentSFAUser() =>
      handleData<SFALogoutFailure, Unit>(
        dataSourceOperation: () async {
          await _singleFactorAuthentication.logout();

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => SFALogoutFailure(),
      );

  @override
  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUserUsing({
    required String phoneNumber,
    required UserCategory userCategory,
    required bool subscribeToNewsletter,
    required String? referralCode,
  }) =>
          handleData<CreateSkyTradeUserFailure, SkyTradeUserEntity>(
            dataSourceOperation: () async {
              final email = await userEmail;

              final walletAddress = await computeWalletAddress();

              final skyTradeUser =
                  await _authRemoteDataSource.createSkyTradeUserUsing(
                email: email!,
                blockchainAddress: walletAddress,
                phoneNumber: phoneNumber,
                userCategory: userCategory,
                subscribeToNewsletter: subscribeToNewsletter,
                referralCode: referralCode,
              );

              await _authLocalDataSource.cacheSkyTradeUser(
                skyTradeUser: skyTradeUser,
              );

              return skyTradeUser;
            },
            onSuccess: (skyTradeUserEntity) => skyTradeUserEntity,
            onFailure: (e) => switch (e is CreateSkyTradeUserException) {
              true when e is InvalidEmailException => InvalidEmailFailure(),
              true when e is WalletAlreadyExistsException =>
                WalletAlreadyExistsFailure(),
              true when e is EmailReuseNotAllowedException =>
                EmailReuseNotAllowedFailure(),
              _ => CreateSkyTradeUserUnknownFailure(),
            },
          );

  @override
  Future<Either<CheckSkyTradeUserFailure, SkyTradeUserEntity>>
      checkSkyTradeUserExists() =>
          handleData<CheckSkyTradeUserFailure, SkyTradeUserEntity>(
            dataSourceOperation: _checkAndCacheSkyTradeUser,
            onSuccess: (skyTradeUserEntity) => skyTradeUserEntity,
            onFailure: (e) => switch (e is CheckSkyTradeUserException) {
              true when e is UnauthorizedException => UnauthorizedFailure(),
              true when e is InvalidSignatureException =>
                InvalidSignatureFailure(),
              true when e is UserNotFoundException => UserNotFoundFailure(),
              true when e is UserMismatchException => UserMismatchFailure(),
              true when e is UserDeletedException => UserDeletedFailure(),
              _ => CheckSkyTradeUserUnknownFailure(),
            },
          );

  @override
  Future<Either<GetSkyTradeUserFailure, SkyTradeUserEntity>> get skyTradeUser =>
      handleData<GetSkyTradeUserFailure, SkyTradeUserEntity>(
        dataSourceOperation: () async {
          final cachedSkyTradeUser =
              await _authLocalDataSource.cachedSkyTradeUser;

          return cachedSkyTradeUser ?? await _checkAndCacheSkyTradeUser();
        },
        onSuccess: (skyTradeUserEntity) => skyTradeUserEntity,
        onFailure: (_) => GetSkyTradeUserFailure(),
      );

  Future<SkyTradeUserEntity> _checkAndCacheSkyTradeUser() async {
    final skyTradeUser = await _authRemoteDataSource.checkSkyTradeUserExists();

    await _authLocalDataSource.cacheSkyTradeUser(
      skyTradeUser: skyTradeUser,
    );

    return skyTradeUser;
  }

  @override
  Future<void> deleteCachedSkyTradeUser() =>
      _authLocalDataSource.deleteCachedSkyTradeUser();

  @override
  Future<void> closeSkyTradeUserLocalStorageBox() =>
      _authLocalDataSource.closeSkyTradeUserLocalStorageBox();

  @override
  Future<String?> get userEmail => computeUserEmail();
}

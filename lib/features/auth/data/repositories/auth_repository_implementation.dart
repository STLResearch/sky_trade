import 'package:auth0_flutter/auth0_flutter.dart' show Auth0, Credentials;
import 'package:dartz/dartz.dart' show Either, Unit, unit;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:single_factor_auth_flutter/input.dart'
    show LoginParams, SFAParams, Web3AuthNetwork;
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
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours, stageEnvironment;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show sFAAggregateVerifier, sFAVerifier, web3AuthClientId;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/features/auth/data/data_sources/auth_remote_data_source.dart'
    show AuthRemoteDataSource;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

final class AuthRepositoryImplementation
    with DataHandler, SignatureHandler
    implements AuthRepository {
  const AuthRepositoryImplementation({
    required Auth0 auth0,
    required SingleFactAuthFlutter singleFactorAuthentication,
    required AuthRemoteDataSource authRemoteDataSource,
  })  : _auth0 = auth0,
        _singleFactorAuthentication = singleFactorAuthentication,
        _authRemoteDataSource = authRemoteDataSource;

  final Auth0 _auth0;

  final SingleFactAuthFlutter _singleFactorAuthentication;

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
  Future<Either<SFAInitializationFailure, Unit>> initializeSFA() =>
      handleData<SFAInitializationFailure, Unit>(
        dataSourceOperation: () async {
          final sFAParameters = SFAParams(
            network: _computeWeb3AuthNetwork(),
            clientId: dotenv.env[web3AuthClientId]!,
          );

          await _singleFactorAuthentication.init(
            sFAParameters,
          );

          return unit;
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => SFAInitializationFailure(),
      );

  Web3AuthNetwork _computeWeb3AuthNetwork() {
    const environment = String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

    if (environment == devEnvironment || environment == stageEnvironment) {
      return Web3AuthNetwork.sapphire_devnet;
    }

    return Web3AuthNetwork.cyan;
  }

  @override
  Future<Either<SFAAuthenticationFailure, SFAUserEntity>>
      authenticateUserWithSFAUsing({
    required String? email,
    required String idToken,
  }) =>
          handleData<SFAAuthenticationFailure, SFAUserEntity>(
            dataSourceOperation: () async {
              final loginParams = LoginParams(
                verifier: dotenv.env[sFAVerifier]!,
                verifierId: email!,
                idToken: idToken,
                aggregateVerifier: dotenv.env[sFAAggregateVerifier],
              );

              final sFAKey = await _singleFactorAuthentication.connect(
                loginParams,
              );

              return SFAUserEntity(
                privateKey: sFAKey.privateKey,
                publicAddress: sFAKey.publicAddress,
              );
            },
            onSuccess: (sFAUserEntity) => sFAUserEntity,
            onFailure: (_) => SFAAuthenticationFailure(),
          );

  @override
  Future<bool> checkSFAUserSessionExists() =>
      _singleFactorAuthentication.isSessionIdExists();

  @override
  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUser() =>
          handleData<CreateSkyTradeUserFailure, SkyTradeUserEntity>(
            dataSourceOperation: () async {
              final email = await computeUserEmail();

              final walletAddress = await computeUserAddress();

              return _authRemoteDataSource.createSkyTradeUserUsing(
                email: email!,
                blockchainAddress: walletAddress,
                subscribeToNewsletter: true,
              );
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
            dataSourceOperation: _authRemoteDataSource.checkSkyTradeUserExists,
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
}

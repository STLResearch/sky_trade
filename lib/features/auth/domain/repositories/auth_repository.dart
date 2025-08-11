// SPDX-License-Identifier: UNLICENSED
                            
import 'package:auth0_flutter/auth0_flutter.dart' show Credentials;
import 'package:dartz/dartz.dart' show Either, Unit;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/core/utils/enums/ui.dart' show UserCategory;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show Auth0UserEntity, SFAUserEntity, SkyTradeUserEntity;

abstract interface class AuthRepository {
  Future<Either<Auth0AuthenticationFailure, Auth0UserEntity>>
      authenticateUserWithAuth0();

  Future<Credentials> renewAuth0UserCredentialsUsing({
    required String refreshToken,
  });

  Future<bool> updateAuth0UserWithNew({
    required Credentials credentials,
  });

  Future<bool> checkAuth0UserSessionExists();

  Future<Either<Auth0UserNotFoundFailure, Auth0UserEntity>> get auth0User;

  Future<bool> get auth0SessionForDeletedUserExists;

  Future<void> setAuth0SessionForDeletedUserExists({
    required bool value,
  });

  Future<bool> get userIsGuest;

  Future<void> setUserIsGuest({
    required bool value,
  });

  Future<Either<Auth0LogoutFailure, Unit>> logoutCurrentAuth0User();

  Future<Either<SFAConfigurationFailure, Unit>> configureSFA();

  Future<Either<SFAInitializationFailure, Unit>> initializeSFA();

  Future<Either<SFAAuthenticationFailure, SFAUserEntity>>
      authenticateAuth0UserWithSFAUsing({
    required String? email,
    required String idToken,
  });

  Future<bool> checkSFAUserSessionExists();

  Future<Either<SFALogoutFailure, Unit>> logoutCurrentSFAUser();

  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUserUsing({
    required String phoneNumber,
    required UserCategory userCategory,
    required bool subscribeToNewsletter,
    required String? referralCode,
  });

  Future<Either<CheckSkyTradeUserFailure, SkyTradeUserEntity>>
      checkSkyTradeUserExists();

  Future<Either<GetSkyTradeUserFailure, SkyTradeUserEntity>> get skyTradeUser;

  Future<void> deleteCachedSkyTradeUser();

  Future<void> closeSkyTradeUserLocalStorageBox();

  Future<String?> get userEmail;
}

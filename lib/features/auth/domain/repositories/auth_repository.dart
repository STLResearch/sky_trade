import 'package:dartz/dartz.dart' show Either, Unit;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show Auth0UserEntity, SFAUserEntity, SkyTradeUserEntity;

abstract interface class AuthRepository {
  Future<Either<Auth0AuthenticationFailure, Auth0UserEntity>>
      authenticateUserWithAuth0();

  Future<bool> checkAuth0UserSessionExists();

  Future<Either<Auth0UserNotFoundFailure, Auth0UserEntity>> get auth0User;

  Future<Either<Auth0LogoutFailure, Unit>> logoutCurrentAuth0User();

  Future<Either<SFAInitializationFailure, Unit>> initializeSFA();

  Future<Either<SFAAuthenticationFailure, SFAUserEntity>>
      authenticateUserWithSFAUsing({
    required String? email,
    required String idToken,
  });

  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUser();

  Future<Either<CheckSkyTradeUserFailure, SkyTradeUserEntity>>
      checkSkyTradeUserExists();
}

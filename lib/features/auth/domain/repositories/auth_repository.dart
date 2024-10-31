import 'package:dartz/dartz.dart' show Either, Unit;
import 'package:sky_trade/core/errors/failures/auth_failure.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart';

abstract interface class AuthRepository {
  Future<Either<Web3AuthInitializationFailure, Unit>> initializeWeb3Auth();

  Future<Either<Web3AuthAuthenticationFailure, Web3AuthUserEntity>>
      authenticateWeb3AuthUserUsing({
    required AuthProvider authProvider,
    String? credential,
  });

  Future<Either<CreateSkyTradeUserFailure, SkyTradeUserEntity>>
      createSkyTradeUserAnd({
    required bool subscribeToNewsletter,
  });

  Future<Either<CheckSkyTradeUserFailure, SkyTradeUserEntity>>
      checkSkyTradeUserExistsUsing({
    required String email,
  });

  Future<bool> checkWeb3AuthSessionExists();

  Future<void> captureWhenWeb3AuthCustomTabsClosed();

  Future<Either<Web3AuthLogoutFailure, Unit>> logoutCurrentWeb3AuthUser();
}

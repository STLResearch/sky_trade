import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failure.dart'
    show
        Web3AuthAuthenticationFailure,
        Web3AuthInitializationFailure,
        Web3AuthLogoutFailure;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';

abstract interface class Web3AuthRepository {
  Future<Either<Web3AuthInitializationFailure, void>> initializeWeb3Auth();

  Future<Either<Web3AuthAuthenticationFailure, UserEntity>>
      authenticateUserWith({
    required AuthProvider authProvider,
    String? credential,
  });

  Future<bool> sessionExists();

  Future<void> captureWhenCustomTabsClosed();

  Future<Either<Web3AuthLogoutFailure, void>> logoutCurrentUser();
}

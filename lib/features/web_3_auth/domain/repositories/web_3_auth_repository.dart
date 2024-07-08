import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failure.dart' show AuthFailure;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';

abstract interface class Web3AuthRepository {
  Future<void> initializeWeb3Auth();

  Future<Either<AuthFailure, UserEntity>> authenticateUserWith({
    required AuthProvider authProvider,
    String? credential,
  });
}

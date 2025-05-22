import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart'
    show IncompatibleBackendApiVersionFailure;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';

abstract interface class UpdateManagerRepository {
  Future<Either<IncompatibleBackendApiVersionFailure, VersionEntity>>
      get compatibleBackendApiVersion;

  bool? isCurrentVersionCompatibleWith({
    required String apiVersionFromBackend,
  });
}

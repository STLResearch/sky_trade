import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart'
    show UpdateManagerFailure;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart'
    show UpdateManagerEntity;

abstract interface class UpdateManagerRepository {
  Future<Either<UpdateManagerFailure, UpdateManagerEntity>>
      getMinimumMobileAppVersion();
}

import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart';
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show ExecuteMintRentalTokenEntity, PropertyEntity;

abstract interface class RentAirRightsRepository {
  Future<Either<PropertyFailure, List<PropertyEntity>>> getPropertyWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  });

  Future<Either<CreateMintRentalTokenFailure, String>> createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  });

  Future<Either<ExecuteMintRentalTokenFailure, ExecuteMintRentalTokenEntity>>
      executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  });
}

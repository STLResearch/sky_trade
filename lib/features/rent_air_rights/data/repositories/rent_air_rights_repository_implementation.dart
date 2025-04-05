import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/rent_air_rights/data/data_sources/rent_air_rights_remote_data_source.dart'
    show RentAirRightsRemoteDataSource;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show PropertyEntity, RentalTokenEntity;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

final class RentAirRightsRepositoryImplementation
    with DataHandler
    implements RentAirRightsRepository {
  const RentAirRightsRepositoryImplementation(
    RentAirRightsRemoteDataSource rentAirRightsRemoteDataSource,
  ) : _rentAirRightsRemoteDataSource = rentAirRightsRemoteDataSource;

  final RentAirRightsRemoteDataSource _rentAirRightsRemoteDataSource;

  @override
  Future<Either<GetPropertiesFailure, List<PropertyEntity>>>
      getPropertiesWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  }) =>
          handleData<GetPropertiesFailure, List<PropertyEntity>>(
            dataSourceOperation: () =>
                _rentAirRightsRemoteDataSource.getPropertiesWithin(
              minLongitude: minLongitude,
              minLatitude: minLatitude,
              maxLongitude: maxLongitude,
              maxLatitude: maxLatitude,
            ),
            onSuccess: (propertyEntities) => propertyEntities,
            onFailure: (_) => GetPropertiesFailure(),
          );

  @override
  Future<Either<CreateMintRentalTokenFailure, String>> createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
      handleData<CreateMintRentalTokenFailure, String>(
        dataSourceOperation: () =>
            _rentAirRightsRemoteDataSource.createMintRentalToken(
          callerAddress: callerAddress,
          landAssetIds: landAssetIds,
          startTime: startTime,
          endTime: endTime,
        ),
        onSuccess: (mintToken) => mintToken,
        onFailure: (_) => CreateMintRentalTokenFailure(),
      );

  @override
  Future<Either<ExecuteMintRentalTokenFailure, RentalTokenEntity>>
      executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
          handleData<ExecuteMintRentalTokenFailure, RentalTokenEntity>(
            dataSourceOperation: () =>
                _rentAirRightsRemoteDataSource.executeMintRentalToken(
              transaction: transaction,
              landAssetIds: landAssetIds,
              startTime: startTime,
              endTime: endTime,
            ),
            onSuccess: (rentalTokenEntity) => rentalTokenEntity,
            onFailure: (_) => ExecuteMintRentalTokenFailure(),
          );
}

import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/features/rent_air_rights/data/data_sources/rent_air_rights_remote_data_source.dart'
    show RentAirRightsRemoteDataSource;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show ExecuteMintRentalTokenEntity, PropertyEntity;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

final class RentAirRightsRepositoryImplementation
    with DataHandler, SignatureHandler
    implements RentAirRightsRepository {
  const RentAirRightsRepositoryImplementation(
    RentAirRightsRemoteDataSource rentAirRightsRemoteDataSource,
  ) : _rentAirRightsRemoteDataSource = rentAirRightsRemoteDataSource;

  final RentAirRightsRemoteDataSource _rentAirRightsRemoteDataSource;

  @override
  Future<Either<PropertyFailure, List<PropertyEntity>>> getPropertyWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  }) =>
      handleData<PropertyFailure, List<PropertyEntity>>(
        dataSourceOperation: () async {
          return _rentAirRightsRemoteDataSource.getPropertyWithin(
            minLongitude: minLongitude,
            minLatitude: minLatitude,
            maxLongitude: maxLongitude,
            maxLatitude: maxLatitude,
          );
        },
        onSuccess: (properties) => properties,
        onFailure: (_) => PropertyFailure(),
      );

  @override
  Future<Either<CreateMintRentalTokenFailure, String>> createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
      handleData<CreateMintRentalTokenFailure, String>(
        dataSourceOperation: () async {
          final response =
              await _rentAirRightsRemoteDataSource.createMintRentalToken(
            callerAddress: callerAddress,
            landAssetIds: landAssetIds,
            startTime: startTime,
            endTime: endTime,
          );

          return response;
        },
        onSuccess: (response) => response,
        onFailure: (_) => CreateMintRentalTokenFailure(),
      );

  @override
  Future<Either<ExecuteMintRentalTokenFailure, ExecuteMintRentalTokenEntity>>
      executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
          handleData<ExecuteMintRentalTokenFailure,
              ExecuteMintRentalTokenEntity>(
            dataSourceOperation: () async {
              final response = await _rentAirRightsRemoteDataSource
                  .executeMintRentalToken(
                transaction: transaction,
                landAssetIds: landAssetIds,
                startTime: startTime,
                endTime: endTime,
              );

              return response;
            },
            onSuccess: (response) => response,
            onFailure: (_) => ExecuteMintRentalTokenFailure(),
          );
}

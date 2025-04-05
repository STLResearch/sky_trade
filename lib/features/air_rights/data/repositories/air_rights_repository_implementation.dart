import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/air_rights/data/data_source/air_rights_remote_data_source.dart'
    show AirRightsRemoteDataSource;
import 'package:sky_trade/features/air_rights/domain/entities/air_rights_entity.dart'
    show
        AirspaceDetailsEntity,
        AirspaceHistoryInfoEntity,
        AuctionBidHistoryEntity,
        TransactionEntity;
import 'package:sky_trade/features/air_rights/domain/repositories/air_rights_repository.dart';

final class AirRightsRepositoryImplementation
    with DataHandler
    implements AirRightsRepository {
  AirRightsRepositoryImplementation(
    AirRightsRemoteDataSource airRightsRemoteDataSource,
  ) : _airRightsRemoteDataSource = airRightsRemoteDataSource;

  final AirRightsRemoteDataSource _airRightsRemoteDataSource;

  @override
  Future<Either<AirspaceDetailsFailure, AirspaceDetailsEntity>>
      getAirspaceDetailsOf({
    required int propertyId,
  }) =>
          handleData<AirspaceDetailsFailure, AirspaceDetailsEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAirspaceDetailsOf(
              propertyId: propertyId,
            ),
            onSuccess: (airspaceDetailsEntity) => airspaceDetailsEntity,
            onFailure: (_) => AirspaceDetailsFailure(),
          );

  @override
  Future<Either<AirspaceHistoryInfoFailure, AirspaceHistoryInfoEntity>>
      getAirspaceHistoryOf({
    required int propertyId,
  }) =>
          handleData<AirspaceHistoryInfoFailure, AirspaceHistoryInfoEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAirspaceHistoryOf(
              propertyId: propertyId,
            ),
            onSuccess: (airspaceHistoryInfoEntity) => airspaceHistoryInfoEntity,
            onFailure: (_) => AirspaceHistoryInfoFailure(),
          );

  @override
  Future<Either<AuctionBidHistoryFailure, AuctionBidHistoryEntity>>
      getAuctionBidHistoryOf({
    required int propertyId,
  }) =>
          handleData<AuctionBidHistoryFailure, AuctionBidHistoryEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAuctionBidHistoryOf(
              propertyId: propertyId,
            ),
            onSuccess: (auctionBidHistoryEntity) => auctionBidHistoryEntity,
            onFailure: (_) => AuctionBidHistoryFailure(),
          );

  @override
  Future<Either<GeneratePlaceBidFailure, TransactionEntity>>
      generatePlaceBidUsing({
    required String auction,
    required int amount,
    required String account,
  }) =>
          handleData<GeneratePlaceBidFailure, TransactionEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.generatePlaceBidUsing(
              auction: auction,
              amount: amount,
              account: account,
            ),
            onSuccess: (transactionEntity) => transactionEntity,
            onFailure: (_) => GeneratePlaceBidFailure(),
          );
}

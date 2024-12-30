import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/air_rights/data/data_source/air_rights_remote_data_source.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_details_entity.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_history_entity.dart';
import 'package:sky_trade/features/air_rights/domain/entities/auction_bid_history_entity.dart';
import 'package:sky_trade/features/air_rights/domain/repositories/air_rights_repository.dart';

final class AirRightsRepositoriesImplementation
    with DataHandler
    implements AirRightsRepository {
  AirRightsRepositoriesImplementation({
    required AirRightsRemoteDataSource airRightsRemoteDataSource,
  }) : _airRightsRemoteDataSource = airRightsRemoteDataSource;

  final AirRightsRemoteDataSource _airRightsRemoteDataSource;

  @override
  Future<Either<AirSpaceDetailsFailure, AirSpaceDetailsEntity>>
      getAirSpaceDetails({
    required int propertyID,
  }) async =>
          handleData<AirSpaceDetailsFailure, AirSpaceDetailsEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAirSpaceDetails(
              propertyID: propertyID,
            ),
            onSuccess: (airSpaceDetailsEntity) => airSpaceDetailsEntity,
            onFailure: (_) => AirSpaceDetailsFailure(),
          );

  @override
  Future<Either<AirSpaceHistoryFailure, AirSpaceHistoryEntity>>
      getAirSpaceHistory({required int propertyID}) async =>
          handleData<AirSpaceHistoryFailure, AirSpaceHistoryEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAirSpaceHistory(
              propertyID: propertyID,
            ),
            onSuccess: (airSpaceHistoryEntity) => airSpaceHistoryEntity,
            onFailure: (_) => AirSpaceHistoryFailure(),
          );

  @override
  Future<Either<AuctionBidHistoryFailure, AuctionBidHistoryEntity>>
      getAuctionBidHistory({required int propertyID}) =>
          handleData<AuctionBidHistoryFailure, AuctionBidHistoryEntity>(
            dataSourceOperation: () =>
                _airRightsRemoteDataSource.getAuctionBidHistory(
              propertyID: propertyID,
            ),
            onSuccess: (auctionBidHistoryEntity) => auctionBidHistoryEntity,
            onFailure: (_) => AuctionBidHistoryFailure(),
          );

  @override
  Future<void> placeBid({
    required String auction,
    required double amount,
  }) async {
    await _airRightsRemoteDataSource.generateBidTx(
      auction: auction,
      amount: amount,
    );
  }
}

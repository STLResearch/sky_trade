import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/air_rights_failure.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_details_entity.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_history_entity.dart';

import 'package:sky_trade/features/air_rights/domain/entities/auction_bid_history_entity.dart';

abstract interface class AirRightsRepository {
  Future<Either<AirSpaceDetailsFailure, AirSpaceDetailsEntity>>
      getAirSpaceDetails({required int propertyID});

  Future<Either<AirSpaceHistoryFailure, AirSpaceHistoryEntity>>
      getAirSpaceHistory({required int propertyID});

  Future<Either<AuctionBidHistoryFailure, AuctionBidHistoryEntity>>
      getAuctionBidHistory({required int propertyID});

  Future<void> placeBid({
    required String auction,
    required double amount,
  });
}

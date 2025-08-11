// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/air_rights_failure.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_rights_entity.dart'
    show
        AirspaceDetailsEntity,
        AirspaceHistoryInfoEntity,
        AuctionBidHistoryEntity,
        TransactionEntity;

abstract interface class AirRightsRepository {
  Future<Either<AirspaceDetailsFailure, AirspaceDetailsEntity>>
      getAirspaceDetailsOf({
    required int propertyId,
  });

  Future<Either<AirspaceHistoryInfoFailure, AirspaceHistoryInfoEntity>>
      getAirspaceHistoryOf({
    required int propertyId,
  });

  Future<Either<AuctionBidHistoryFailure, AuctionBidHistoryEntity>>
      getAuctionBidHistoryOf({
    required int propertyId,
  });

  Future<Either<GeneratePlaceBidFailure, TransactionEntity>>
      generatePlaceBidUsing({
    required String auction,
    required int amount,
    required String account,
  });
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/buy_air_rights_failure.dart';
import 'package:sky_trade/features/buy_air_rights/domain/entities/buy_air_rights_entity.dart'
    show
        AirspaceEntity,
        AuctionEntity,
        BidEntity,
        TransactionEntity,
        TransactionMessageEntity,
        UnclaimedPropertyEntity;

abstract interface class BuyAirRightsRepository {
  Future<Either<GetAllAuctionsFailure, List<AuctionEntity>>> getAllAuctions({
    required int page,
    required int limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  });

  Future<Either<GetAuctionWithBidsFailure, AuctionEntity>> getAuctionWithBids({
    required double auctionId,
  });

  Future<Either<GetAuctionableAirspacesFailure, List<AirspaceEntity>>>
      getAuctionableAirspaces({
    required int page,
    required int limit,
  });

  Future<Either<GeneratePlaceBidFailure, BidEntity>> generatePlaceBid({
    required String auction,
    required String amount,
  });

  Future<Either<SendTransactionFailure, TransactionEntity>> sendTransaction({
    required String serializedTx,
  });

  Future<Either<CreateAuctionFailure, TransactionMessageEntity>>
      generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required int secsDuration,
  });

  Future<Either<GetOfferForUnclaimedPropertyFailure, UnclaimedPropertyEntity>>
      getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  });
}

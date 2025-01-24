import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/buy_air_rights_failure.dart';
import 'package:sky_trade/features/buy_air_rights/domain/entities/buy_air_rights_entity.dart';

abstract interface class BuyAirRightsRepository {
  Future<Either<GetAllAuctionsFailure, AuctionEntity>> getAllAuctions({
    required double page,
    required double limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  });

  Future<Either<GetAuctionWithBidsFailure, AuctionWithBidsEntity>>
      getAuctionWithBids({
    required double auctionId,
  });

  Future<Either<GetAuctionableAirspacesFailure, AuctionableAirspaceEntity>>
      getAuctionableAirspaces({
    required double page,
    required double limit,
  });

  Future<Either<GeneratePlaceBidFailure, PlaceBidEntity>> generatePlaceBid({
    required String auction,
    required double amount,
  });

  Future<Either<SendTransactionFailure, SendTransactionEntity>>
      sendTransaction({
    required String serializedTx,
  });

  Future<Either<CreateAuctionFailure, CreateAuctionEntity>>
      generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required double secsDuration,
  });

  Future<Either<OfferForUnclaimedPropertyFailure, void>>
      getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  });
}

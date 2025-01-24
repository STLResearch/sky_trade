import 'package:dartz/dartz.dart';
import 'package:sky_trade/core/errors/failures/buy_air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/buy_air_rights/data/data_sources/buy_air_rights_remote_data_source.dart';
import 'package:sky_trade/features/buy_air_rights/domain/repositories/buy_air_rights_repository.dart';

import '../../domain/entities/buy_air_rights_entity.dart';

final class BuyAirRightsRepositoryImplementation
    with DataHandler
    implements BuyAirRightsRepository {
  const BuyAirRightsRepositoryImplementation(
    BuyAirRightsRemoteDataSource buyAirRightsRemoteDataSource,
  ) : _buyAirRightsRemoteDataSource = buyAirRightsRemoteDataSource;

  final BuyAirRightsRemoteDataSource _buyAirRightsRemoteDataSource;

  @override
  Future<Either<GetAllAuctionsFailure, AuctionEntity>> getAllAuctions({
    required double page,
    required double limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  }) =>
      handleData<GetAllAuctionsFailure, AuctionEntity>(
        dataSourceOperation: () => _buyAirRightsRemoteDataSource.getAllAuctions(
          page: page,
          limit: limit,
          minPrice: minPrice,
          maxPrice: maxPrice,
          filter: filter,
        ),
        onSuccess: (auctionEntity) => auctionEntity,
        onFailure: (_) => GetAllAuctionsFailure(),
      );

  @override
  Future<Either<GetAuctionWithBidsFailure, AuctionWithBidsEntity>>
      getAuctionWithBids({
    required double auctionId,
  }) =>
          handleData<GetAuctionWithBidsFailure, AuctionWithBidsEntity>(
            dataSourceOperation: () =>
                _buyAirRightsRemoteDataSource.getAuctionWithBids(
              auctionId: auctionId,
            ),
            onSuccess: (auctionWithBidsEntity) => auctionWithBidsEntity,
            onFailure: (_) => GetAuctionWithBidsFailure(),
          );

  @override
  Future<Either<GetAuctionableAirspacesFailure, AuctionableAirspaceEntity>>
      getAuctionableAirspaces({
    required double page,
    required double limit,
  }) =>
          handleData<GetAuctionableAirspacesFailure, AuctionableAirspaceEntity>(
            dataSourceOperation: () =>
                _buyAirRightsRemoteDataSource.getAuctionableAirspaces(
              page: page,
              limit: limit,
            ),
            onSuccess: (auctionableAirspaceEntity) => auctionableAirspaceEntity,
            onFailure: (_) => GetAuctionableAirspacesFailure(),
          );

  @override
  Future<Either<GeneratePlaceBidFailure, PlaceBidEntity>> generatePlaceBid({
    required String auction,
    required double amount,
  }) =>
      handleData<GeneratePlaceBidFailure, PlaceBidEntity>(
        dataSourceOperation: () =>
            _buyAirRightsRemoteDataSource.generatePlaceBid(
          auction: auction,
          amount: amount,
        ),
        onSuccess: (placeBidEntity) => placeBidEntity,
        onFailure: (_) => GeneratePlaceBidFailure(),
      );

  @override
  Future<Either<SendTransactionFailure, SendTransactionEntity>>
      sendTransaction({
    required String serializedTx,
  }) =>
          handleData<SendTransactionFailure, SendTransactionEntity>(
            dataSourceOperation: () =>
                _buyAirRightsRemoteDataSource.sendTransaction(
              serializedTx: serializedTx,
            ),
            onSuccess: (sendTransactionEntity) => sendTransactionEntity,
            onFailure: (_) => SendTransactionFailure(),
          );

  @override
  Future<Either<CreateAuctionFailure, CreateAuctionEntity>>
      generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required double secsDuration,
  }) =>
          handleData<CreateAuctionFailure, CreateAuctionEntity>(
            dataSourceOperation: () =>
                _buyAirRightsRemoteDataSource.generateCreateAuction(
              assetId: assetId,
              seller: seller,
              initialPrice: initialPrice,
              secsDuration: secsDuration,
            ),
            onSuccess: (createAuctionEntity) => createAuctionEntity,
            onFailure: (_) => CreateAuctionFailure(),
          );

  @override
  Future<Either<OfferForUnclaimedPropertyFailure,
          OfferForUnclaimedPropertyEntity>> getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  }) =>
      handleData<OfferForUnclaimedPropertyFailure,
          OfferForUnclaimedPropertyEntity>(
        dataSourceOperation: () =>
            _buyAirRightsRemoteDataSource.getOfferForUnclaimedProperty(
          signedTransaction: signedTransaction,
          landAddress: landAddress,
          latitude: latitude,
          longitude: longitude,
          offerAmount: offerAmount,
        ),
        onSuccess: (offerForUnclaimedPropertyEntity) =>
            offerForUnclaimedPropertyEntity,
        onFailure: (_) => OfferForUnclaimedPropertyFailure(),
      );
}

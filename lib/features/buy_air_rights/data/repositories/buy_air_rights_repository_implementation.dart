// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/buy_air_rights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/buy_air_rights/data/data_sources/buy_air_rights_remote_data_source.dart'
    show BuyAirRightsRemoteDataSource;
import 'package:sky_trade/features/buy_air_rights/domain/entities/buy_air_rights_entity.dart'
    show
        AirspaceEntity,
        AuctionEntity,
        BidEntity,
        TransactionEntity,
        TransactionMessageEntity,
        UnclaimedPropertyEntity;
import 'package:sky_trade/features/buy_air_rights/domain/repositories/buy_air_rights_repository.dart';

final class BuyAirRightsRepositoryImplementation
    with DataHandler
    implements BuyAirRightsRepository {
  const BuyAirRightsRepositoryImplementation(
    BuyAirRightsRemoteDataSource buyAirRightsRemoteDataSource,
  ) : _buyAirRightsRemoteDataSource = buyAirRightsRemoteDataSource;

  final BuyAirRightsRemoteDataSource _buyAirRightsRemoteDataSource;

  @override
  Future<Either<GetAllAuctionsFailure, List<AuctionEntity>>> getAllAuctions({
    required int page,
    required int limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  }) =>
      handleData<GetAllAuctionsFailure, List<AuctionEntity>>(
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
  Future<Either<GetAuctionWithBidsFailure, AuctionEntity>> getAuctionWithBids({
    required double auctionId,
  }) =>
      handleData<GetAuctionWithBidsFailure, AuctionEntity>(
        dataSourceOperation: () =>
            _buyAirRightsRemoteDataSource.getAuctionWithBids(
          auctionId: auctionId,
        ),
        onSuccess: (auctionWithBidsEntity) => auctionWithBidsEntity,
        onFailure: (_) => GetAuctionWithBidsFailure(),
      );

  @override
  Future<Either<GetAuctionableAirspacesFailure, List<AirspaceEntity>>>
      getAuctionableAirspaces({
    required int page,
    required int limit,
  }) =>
          handleData<GetAuctionableAirspacesFailure, List<AirspaceEntity>>(
            dataSourceOperation: () =>
                _buyAirRightsRemoteDataSource.getAuctionableAirspaces(
              page: page,
              limit: limit,
            ),
            onSuccess: (auctionableAirspaceEntity) => auctionableAirspaceEntity,
            onFailure: (_) => GetAuctionableAirspacesFailure(),
          );

  @override
  Future<Either<GeneratePlaceBidFailure, BidEntity>> generatePlaceBid({
    required String auction,
    required String amount,
  }) =>
      handleData<GeneratePlaceBidFailure, BidEntity>(
        dataSourceOperation: () =>
            _buyAirRightsRemoteDataSource.generatePlaceBid(
          auction: auction,
          amount: amount,
        ),
        onSuccess: (placeBidEntity) => placeBidEntity,
        onFailure: (_) => GeneratePlaceBidFailure(),
      );

  @override
  Future<Either<SendTransactionFailure, TransactionEntity>> sendTransaction({
    required String serializedTx,
  }) =>
      handleData<SendTransactionFailure, TransactionEntity>(
        dataSourceOperation: () =>
            _buyAirRightsRemoteDataSource.sendTransaction(
          serializedTx: serializedTx,
        ),
        onSuccess: (sendTransactionEntity) => sendTransactionEntity,
        onFailure: (_) => SendTransactionFailure(),
      );

  @override
  Future<Either<CreateAuctionFailure, TransactionMessageEntity>>
      generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required int secsDuration,
  }) =>
          handleData<CreateAuctionFailure, TransactionMessageEntity>(
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
  Future<Either<GetOfferForUnclaimedPropertyFailure, UnclaimedPropertyEntity>>
      getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  }) =>
          handleData<GetOfferForUnclaimedPropertyFailure,
              UnclaimedPropertyEntity>(
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
            onFailure: (_) => GetOfferForUnclaimedPropertyFailure(),
          );
}

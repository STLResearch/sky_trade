import 'package:sky_trade/core/errors/exceptions/buy_air_rights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/clients/network_client.dart';
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/buy_air_rights/data/models/buy_air_rights_model.dart';

abstract interface class BuyAirRightsRemoteDataSource {
  Future<AuctionModel> getAllAuctions({
    required double page,
    required double limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  });

  Future<AuctionWithBidsModel> getAuctionWithBids({
    required double auctionId,
  });

  Future<AuctionableAirspaceModel> getAuctionableAirspaces({
    required double page,
    required double limit,
  });

  Future<PlaceBidModel> generatePlaceBid({
    required String auction,
    required double amount,
  });

  Future<SendTransactionModel> sendTransaction({
    required String serializedTx,
  });

  Future<CreateAuctionModel> generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required double secsDuration,
  });

  Future<OfferForUnclaimedPropertyModel> getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  });
}

final class BuyAirRightsRemoteDataSourceImplementation
    with ResponseHandler
    implements BuyAirRightsRemoteDataSource {
  const BuyAirRightsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<AuctionModel> getAllAuctions({
    required double page,
    required double limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  }) =>
      handleResponse<GetAllAuctionsException, Map<String, dynamic>,
          AuctionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAllAuctionsPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
            minPriceKey: minPrice,
            maxPriceKey: maxPrice,
            filterKey: filter,
          },
        ),
        onSuccess: AuctionModel.fromJson,
        onError: (_) => GetAllAuctionsException(),
      );

  @override
  Future<AuctionWithBidsModel> getAuctionWithBids({
    required double auctionId,
  }) =>
      handleResponse<GetAuctionWithBidsException, Map<String, dynamic>,
          AuctionWithBidsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionWithBidsPath,
          includeSignature: true,
          queryParameters: {
            auction_IdKey: auctionId,
          },
        ),
        onSuccess: AuctionWithBidsModel.fromJson,
        onError: (_) => GetAuctionWithBidsException(),
      );

  @override
  Future<AuctionableAirspaceModel> getAuctionableAirspaces({
    required double page,
    required double limit,
  }) =>
      handleResponse<GetAuctionableAirspacesException, Map<String, dynamic>,
          AuctionableAirspaceModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionableAirspacesPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
          },
        ),
        onSuccess: AuctionableAirspaceModel.fromJson,
        onError: (_) => GetAuctionableAirspacesException(),
      );

  @override
  Future<PlaceBidModel> generatePlaceBid({
    required String auction,
    required double amount,
  }) =>
      handleResponse<GeneratePlaceBidException, Map<String, dynamic>,
          PlaceBidModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + generatePlaceBidTxPath,
          includeSignature: true,
          data: {
            auctionKey: auction,
            amountKey: amount,
          },
        ),
        onSuccess: PlaceBidModel.fromJson,
        onError: (_) => GeneratePlaceBidException(),
      );

  @override
  Future<SendTransactionModel> sendTransaction({
    required String serializedTx,
  }) =>
      handleResponse<SendTransactionException, Map<String, dynamic>,
          SendTransactionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + sendTxPath,
          includeSignature: true,
          data: {
            serializedTxKey: serializedTx,
          },
        ),
        onSuccess: SendTransactionModel.fromJson,
        onError: (_) => SendTransactionException(),
      );

  @override
  Future<CreateAuctionModel> generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required double secsDuration,
  }) =>
      handleResponse<CreateAuctionException, Map<String, dynamic>,
          CreateAuctionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + generateCreateAuctionTxPath,
          includeSignature: true,
          data: {
            assetIdKey: assetId,
            sellerKey: seller,
            initialPriceKey: initialPrice,
            secsDurationKey: secsDuration,
          },
        ),
        onSuccess: CreateAuctionModel.fromJson,
        onError: (_) => CreateAuctionException(),
      );

  @override
  Future<OfferForUnclaimedPropertyModel> getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  }) =>
      handleResponse<OfferForUnclaimedPropertyException, Map<String, dynamic>,
          OfferForUnclaimedPropertyModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + propertiesPath + getOfferForUnclaimedPropertyPath,
          includeSignature: true,
          data: {
            signedTransactionKey: signedTransaction,
            landAddressKey: landAddress,
            latitudeKey: latitude,
            longitudeKey: longitude,
            offerAmountKey: offerAmount,
          },
        ),
        onSuccess: OfferForUnclaimedPropertyModel.fromJson,
        onError: (_) => OfferForUnclaimedPropertyException(),
      );
}

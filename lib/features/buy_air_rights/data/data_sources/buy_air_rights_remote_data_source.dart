import 'package:sky_trade/core/errors/exceptions/buy_air_rights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        amountKey,
        assetIdKey,
        auctionHousePath,
        auctionIdKey,
        auctionKey,
        filterKey,
        generateCreateAuctionTxPath,
        generatePlaceBidTxPath,
        getAllAuctionsPath,
        getAuctionWithBidsPath,
        getAuctionableAirspacesPath,
        getOfferForUnclaimedPropertyPath,
        initialPriceKey,
        landAddressKey,
        latitudeKey,
        limitKey,
        longitudeKey,
        maxPriceKey,
        minPriceKey,
        offerAmountKey,
        pageKey,
        privatePath,
        propertiesPath,
        secsDurationKey,
        sellerKey,
        sendTxPath,
        serializedTxKey,
        signedTransactionKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/buy_air_rights/data/models/buy_air_rights_model.dart'
    show
        AirspaceModel,
        AuctionModel,
        BidModel,
        TransactionMessageModel,
        TransactionModel,
        UnclaimedPropertyModel;

abstract interface class BuyAirRightsRemoteDataSource {
  Future<List<AuctionModel>> getAllAuctions({
    required int page,
    required int limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  });

  Future<AuctionModel> getAuctionWithBids({
    required double auctionId,
  });

  Future<List<AirspaceModel>> getAuctionableAirspaces({
    required int page,
    required int limit,
  });

  Future<BidModel> generatePlaceBid({
    required String auction,
    required String amount,
  });

  Future<TransactionModel> sendTransaction({
    required String serializedTx,
  });

  Future<TransactionMessageModel> generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required int secsDuration,
  });

  Future<UnclaimedPropertyModel> getOfferForUnclaimedProperty({
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
  Future<List<AuctionModel>> getAllAuctions({
    required int page,
    required int limit,
    required double minPrice,
    required double maxPrice,
    required String filter,
  }) =>
      handleResponse<GetAllAuctionsException, List<dynamic>,
          List<AuctionModel>>(
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
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => AuctionModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => GetAllAuctionsException(),
      );

  @override
  Future<AuctionModel> getAuctionWithBids({
    required double auctionId,
  }) =>
      handleResponse<GetAuctionWithBidsException, Map<String, dynamic>,
          AuctionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionWithBidsPath,
          includeSignature: true,
          queryParameters: {
            auctionIdKey: auctionId,
          },
        ),
        onSuccess: AuctionModel.fromJson,
        onError: (_) => GetAuctionWithBidsException(),
      );

  @override
  Future<List<AirspaceModel>> getAuctionableAirspaces({
    required int page,
    required int limit,
  }) =>
      handleResponse<GetAuctionableAirspacesException, List<dynamic>,
          List<AirspaceModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionableAirspacesPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => AirspaceModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => GetAuctionableAirspacesException(),
      );

  @override
  Future<BidModel> generatePlaceBid({
    required String auction,
    required String amount,
  }) =>
      handleResponse<GeneratePlaceBidException, Map<String, dynamic>, BidModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + generatePlaceBidTxPath,
          includeSignature: true,
          data: {
            auctionKey: auction,
            amountKey: amount,
          },
        ),
        onSuccess: BidModel.fromJson,
        onError: (_) => GeneratePlaceBidException(),
      );

  @override
  Future<TransactionModel> sendTransaction({
    required String serializedTx,
  }) =>
      handleResponse<SendTransactionException, Map<String, dynamic>,
          TransactionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + sendTxPath,
          includeSignature: true,
          data: {
            serializedTxKey: serializedTx,
          },
        ),
        onSuccess: TransactionModel.fromJson,
        onError: (_) => SendTransactionException(),
      );

  @override
  Future<TransactionMessageModel> generateCreateAuction({
    required String assetId,
    required String seller,
    required double initialPrice,
    required int secsDuration,
  }) =>
      handleResponse<CreateAuctionException, Map<String, dynamic>,
          TransactionMessageModel>(
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
        onSuccess: TransactionMessageModel.fromJson,
        onError: (_) => CreateAuctionException(),
      );

  @override
  Future<UnclaimedPropertyModel> getOfferForUnclaimedProperty({
    required String signedTransaction,
    required String landAddress,
    required double latitude,
    required double longitude,
    required double offerAmount,
  }) =>
      handleResponse<GetOfferForUnclaimedPropertyException,
          Map<String, dynamic>, UnclaimedPropertyModel>(
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
        onSuccess: UnclaimedPropertyModel.fromJson,
        onError: (_) => GetOfferForUnclaimedPropertyException(),
      );
}

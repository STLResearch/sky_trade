import 'package:sky_trade/core/errors/exceptions/air_rights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        accountKey,
        amountQueryKey,
        auctionHousePath,
        auctionQueryKey,
        generatePlaceBidTX,
        getAirSpaceDetailsPath,
        getAirSpaceHistoryPath,
        getAuctionBidHistoryPath,
        privatePath,
        propertyIdQueryKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/clients/user_info_provider.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/air_rights/data/models/air_space_details_model.dart';
import 'package:sky_trade/features/air_rights/data/models/air_space_history_model.dart';
import 'package:sky_trade/features/air_rights/data/models/auction_bid_history_model.dart';

abstract interface class AirRightsRemoteDataSource {
  Future<AirSpaceDetailsModel> getAirSpaceDetails({
    required int propertyID,
  });

  Future<AirSpaceHistoryModel> getAirSpaceHistory({
    required int propertyID,
  });

  Future<AuctionBidHistoryModel> getAuctionBidHistory({
    required int propertyID,
  });

  Future<void> generateBidTx({
    required String auction,
    required double amount,
  });

  Future<void> rentAirspace();
}

class AirRightsRemoteDataSourceImplementation
    with ResponseHandler, UserInfoProvider
    implements AirRightsRemoteDataSource {
  AirRightsRemoteDataSourceImplementation({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<AirSpaceDetailsModel> getAirSpaceDetails({
    required int propertyID,
  }) =>
      handleResponse<AirSpaceDetailsException, Map<String, dynamic>,
          AirSpaceDetailsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAirSpaceDetailsPath,
          includeSignature: true,
          queryParameters: {
            propertyIdQueryKey: propertyID,
          },
        ),
        onSuccess: AirSpaceDetailsModel.fromJson,
        onError: (_) => AirSpaceDetailsException(),
      );

  @override
  Future<AirSpaceHistoryModel> getAirSpaceHistory({
    required int propertyID,
  }) =>
      handleResponse<AirSpaceHistoryException, Map<String, dynamic>,
          AirSpaceHistoryModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAirSpaceHistoryPath,
          includeSignature: true,
          queryParameters: {
            propertyIdQueryKey: propertyID,
          },
        ),
        onSuccess: AirSpaceHistoryModel.fromJson,
        onError: (_) => AirSpaceHistoryException(),
      );

  @override
  Future<AuctionBidHistoryModel> getAuctionBidHistory({
    required int propertyID,
  }) =>
      handleResponse<AuctionBidHistoryException, Map<String, dynamic>,
          AuctionBidHistoryModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionBidHistoryPath,
          includeSignature: true,
          queryParameters: {
            propertyIdQueryKey: propertyID,
          },
        ),
        onSuccess: AuctionBidHistoryModel.fromJson,
        onError: (_) => AuctionBidHistoryException(),
      );

  @override
  Future<void> generateBidTx({
    required String auction,
    required double amount,
  }) async {
    await _httpClient.request(
      requestMethod: RequestMethod.post,
      path: privatePath + auctionHousePath + generatePlaceBidTX,
      includeSignature: true,
      data: {
        accountKey: await getUserEmail(),
      },
      queryParameters: {
        auctionQueryKey: auction,
        amountQueryKey: amount,
      },
    );
    final x = 10;
    // handleResponse<BidException, Map<String, dynamic>, >(
    //   requestInitiator: _httpClient.request(
    //     requestMethod: RequestMethod.get,
    //     path: privatePath + auctionHousePath + generatePlaceBidTX,
    //     includeSignature: true,
    //     queryParameters: {
    //       auctionQueryKey: auction,
    //       amountQueryKey: amount,
    //     },
    //   ),
    //   onSuccess: (response) {
    //
    //   },
    //   onError: (_) => BidGenerationException(),
    // );
  }

  @override
  Future<void> rentAirspace() async {
    // TODO: implement rentAirspace
  }
}

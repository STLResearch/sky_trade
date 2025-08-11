// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/errors/exceptions/air_rights_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show thirty;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        accountKey,
        amountKey,
        auctionHousePath,
        auctionKey,
        generatePlaceBidTxPath,
        getAirspaceDetailsPath,
        getAirspaceHistoryPath,
        getAuctionBidHistoryPath,
        privatePath,
        propertyIdAltKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/air_rights/data/models/air_rights_model.dart'
    show
        AirspaceDetailsModel,
        AirspaceHistoryInfoModel,
        AuctionBidHistoryModel,
        TransactionModel;

abstract interface class AirRightsRemoteDataSource {
  Future<AirspaceDetailsModel> getAirspaceDetailsOf({
    required int propertyId,
  });

  Future<AirspaceHistoryInfoModel> getAirspaceHistoryOf({
    required int propertyId,
  });

  Future<AuctionBidHistoryModel> getAuctionBidHistoryOf({
    required int propertyId,
  });

  Future<TransactionModel> generatePlaceBidUsing({
    required String auction,
    required int amount,
    required String account,
  });
}

class AirRightsRemoteDataSourceImplementation
    with ResponseHandler
    implements AirRightsRemoteDataSource {
  AirRightsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<AirspaceDetailsModel> getAirspaceDetailsOf({
    required int propertyId,
  }) =>
      handleResponse<AirspaceDetailsException, Map<String, dynamic>,
          AirspaceDetailsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAirspaceDetailsPath,
          includeSignature: true,
          queryParameters: {
            propertyIdAltKey: propertyId,
          },
        ),
        onSuccess: AirspaceDetailsModel.fromJson,
        onError: (_) => AirspaceDetailsException(),
      );

  @override
  Future<AirspaceHistoryInfoModel> getAirspaceHistoryOf({
    required int propertyId,
  }) =>
      handleResponse<AirspaceHistoryInfoException, Map<String, dynamic>,
          AirspaceHistoryInfoModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAirspaceHistoryPath,
          includeSignature: true,
          queryParameters: {
            propertyIdAltKey: propertyId,
          },
        ),
        onSuccess: AirspaceHistoryInfoModel.fromJson,
        onError: (_) => AirspaceHistoryInfoException(),
      );

  @override
  Future<AuctionBidHistoryModel> getAuctionBidHistoryOf({
    required int propertyId,
  }) =>
      handleResponse<AuctionBidHistoryException, Map<String, dynamic>,
          AuctionBidHistoryModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + auctionHousePath + getAuctionBidHistoryPath,
          includeSignature: true,
          queryParameters: {
            propertyIdAltKey: propertyId,
          },
        ),
        onSuccess: AuctionBidHistoryModel.fromJson,
        onError: (_) => AuctionBidHistoryException(),
      );

  @override
  Future<TransactionModel> generatePlaceBidUsing({
    required String auction,
    required int amount,
    required String account,
  }) =>
      handleResponse<GeneratePlaceBidException, Map<String, dynamic>,
          TransactionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + auctionHousePath + generatePlaceBidTxPath,
          includeSignature: true,
          data: {
            accountKey: account,
          },
          overrideReceiveTimeout: const Duration(
            seconds: thirty,
          ),
          queryParameters: {
            auctionKey: auction,
            amountKey: amount,
          },
        ),
        onSuccess: TransactionModel.fromJson,
        onError: (_) => GeneratePlaceBidException(),
      );
}

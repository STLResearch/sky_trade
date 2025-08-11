// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/errors/exceptions/rent_air_rights_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show thirty;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        airspaceRentalPath,
        callerAddressKey,
        createMintRentalTokenIxPath,
        endTimeKey,
        executeMintRentalTokenIxPath,
        landAssetIdsKey,
        maxLatitudeKey,
        maxLongitudeKey,
        minLatitudeKey,
        minLongitudeKey,
        privatePath,
        propertiesPath,
        publicPath,
        startTimeKey,
        transactionKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/rent_air_rights/data/models/rent_air_rights_model.dart'
    show PropertyModel, RentalTokenModel;

abstract interface class RentAirRightsRemoteDataSource {
  Future<List<PropertyModel>> getPropertiesWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  });

  Future<String> createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  });

  Future<RentalTokenModel> executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  });
}

final class RentAirRightsRemoteDataSourceImplementation
    with ResponseHandler
    implements RentAirRightsRemoteDataSource {
  const RentAirRightsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<List<PropertyModel>> getPropertiesWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  }) =>
      handleResponse<GetPropertiesException, List<dynamic>,
          List<PropertyModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: publicPath + propertiesPath,
          includeSignature: false,
          queryParameters: {
            minLongitudeKey: minLongitude,
            minLatitudeKey: minLatitude,
            maxLongitudeKey: maxLongitude,
            maxLatitudeKey: maxLatitude,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => PropertyModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => GetPropertiesException(),
      );

  @override
  Future<String> createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
      handleResponse<CreateMintRentalTokenException, String, String>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + airspaceRentalPath + createMintRentalTokenIxPath,
          includeSignature: true,
          data: {
            callerAddressKey: callerAddress,
            landAssetIdsKey: landAssetIds,
            startTimeKey: startTime.toIso8601String(),
            endTimeKey: endTime.toIso8601String(),
          },
          overrideReceiveTimeout: const Duration(
            seconds: thirty,
          ),
        ),
        onSuccess: (mintToken) => mintToken,
        onError: (_) => CreateMintRentalTokenException(),
      );

  @override
  Future<RentalTokenModel> executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) =>
      handleResponse<ExecuteMintRentalTokenException, Map<String, dynamic>,
          RentalTokenModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + airspaceRentalPath + executeMintRentalTokenIxPath,
          includeSignature: true,
          data: {
            transactionKey: transaction,
            landAssetIdsKey: landAssetIds,
            startTimeKey: startTime.toIso8601String(),
            endTimeKey: endTime.toIso8601String(),
          },
          overrideReceiveTimeout: const Duration(
            seconds: thirty,
          ),
        ),
        onSuccess: RentalTokenModel.fromJson,
        onError: (_) => ExecuteMintRentalTokenException(),
      );
}

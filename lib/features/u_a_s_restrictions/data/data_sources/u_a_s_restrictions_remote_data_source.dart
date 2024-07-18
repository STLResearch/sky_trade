import 'package:dio/dio.dart' show Response;
import 'package:sky_ways/core/errors/exceptions/u_a_s_restrictions_exception.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        getCeramicDroneDataPath,
        northEastLatitudeKey,
        northEastLongitudeKey,
        remoteIdentifierPath,
        southWestLatitudeKey,
        southWestLongitudeKey;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show NetworkClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_ways/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsRemoteDataSource {
  Future<List<RestrictionModel>> getRestrictionsWithin({
    required double southWestLatitude,
    required double southWestLongitude,
    required double northEastLatitude,
    required double northEastLongitude,
  });
}

final class UASRestrictionsRepositoryImplementation
    with ResponseHandler
    implements UASRestrictionsRemoteDataSource {
  const UASRestrictionsRepositoryImplementation(
    NetworkClient<Response> networkClient,
  ) : _networkClient = networkClient;

  final NetworkClient<Response> _networkClient;

  @override
  Future<List<RestrictionModel>> getRestrictionsWithin({
    required double southWestLatitude,
    required double southWestLongitude,
    required double northEastLatitude,
    required double northEastLongitude,
  }) async =>
      (await handleResponse<UASRestrictionsException, List<dynamic>,
          List<RestrictionModel>>(
        requestInitiator: _networkClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + getCeramicDroneDataPath,
          queryParameters: {
            southWestLatitudeKey: southWestLatitude,
            southWestLongitudeKey: southWestLongitude,
            northEastLatitudeKey: northEastLatitude,
            northEastLongitudeKey: northEastLongitude,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => RestrictionModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: () => throw UASRestrictionsException(),
      ))!;
}

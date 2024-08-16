// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart' show Response;
import 'package:sky_ways/core/errors/exceptions/u_a_s_restrictions_exception.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show geoHashKey, restrictionsPath;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show NetworkClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_ways/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsRemoteDataSource {
  Future<List<RestrictionModel>> getRestrictionsUsing({
    required String geoHash,
  });
}

final class UASRestrictionsRemoteDataSourceImplementation
    with ResponseHandler
    implements UASRestrictionsRemoteDataSource {
  const UASRestrictionsRemoteDataSourceImplementation(
    NetworkClient<Response> networkClient,
  ) : _networkClient = networkClient;

  final NetworkClient<Response> _networkClient;

  @override
  Future<List<RestrictionModel>> getRestrictionsUsing({
    required String geoHash,
  }) async =>
      (await handleResponse<UASRestrictionsException, List<dynamic>,
          List<RestrictionModel>>(
        requestInitiator: _networkClient.request(
          requestMethod: RequestMethod.get,
          path: restrictionsPath,
          queryParameters: {
            geoHashKey: geoHash,
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

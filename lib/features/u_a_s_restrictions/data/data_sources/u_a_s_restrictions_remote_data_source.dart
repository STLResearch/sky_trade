import 'package:sky_trade/core/errors/exceptions/u_a_s_restrictions_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show twenty;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show featuresKey, geoHashKey, restrictionsPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
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
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<List<RestrictionModel>> getRestrictionsUsing({
    required String geoHash,
  }) =>
      handleResponse<UASRestrictionsException, Map<String, dynamic>,
          List<RestrictionModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: restrictionsPath,
          includeSignature: false,
          queryParameters: {
            geoHashKey: geoHash,
          },
          overrideReceiveTimeout: const Duration(
            seconds: twenty,
          ),
        ),
        onSuccess: (json) => (json[featuresKey] as List<dynamic>)
            .map(
              (feature) => RestrictionModel.fromJson(
                feature as Map<String, dynamic>,
              ),
            )
            .toSet()
            .toList(),
        onError: (_) => UASRestrictionsException(),
      );
}

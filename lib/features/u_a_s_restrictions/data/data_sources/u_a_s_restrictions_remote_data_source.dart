// ignore_for_file: strict_raw_type

import 'package:sky_trade/core/errors/exceptions/u_a_s_restrictions_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        emailAddressHeaderKey,
        geoHashKey,
        restrictionsPath,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show Signature;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsRemoteDataSource {
  Future<List<RestrictionModel>> getRestrictionsUsing({
    required String geoHash,
    required Signature signature,
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
    required Signature signature,
  }) =>
      handleResponse<UASRestrictionsException, List<dynamic>,
          List<RestrictionModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: restrictionsPath,
          queryParameters: {
            geoHashKey: geoHash,
          },
          headers: {
            signHeaderKey: signature.sign,
            signIssueAtHeaderKey: signature.issuedAt,
            signNonceHeaderKey: signature.nonce,
            signAddressHeaderKey: signature.address,
            if (signature.email != null) emailAddressHeaderKey: signature.email,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => RestrictionModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => UASRestrictionsException(),
      );
}

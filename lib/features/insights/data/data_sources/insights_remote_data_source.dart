import 'package:sky_trade/core/errors/exceptions/insights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        emailAddressHeaderKey,
        insightsPath,
        remoteIdentifierPath,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        userIdKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/core/utils/typedefs/networking.dart' show Signature;
import 'package:sky_trade/features/insights/data/models/insights_model.dart'
    show InsightsModel;

abstract interface class InsightsRemoteDataSource {
  Future<List<InsightsModel>> getInsightsUsing({
    required int userId,
    required Signature signature,
  });
}

final class InsightsRemoteDataSourceImplementation
    with ResponseHandler
    implements InsightsRemoteDataSource {
  const InsightsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<List<InsightsModel>> getInsightsUsing({
    required int userId,
    required Signature signature,
  }) =>
      handleResponse<InsightsException, List<dynamic>, List<InsightsModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + insightsPath,
          queryParameters: {
            userIdKey: userId,
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
              (json) => InsightsModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => InsightsException(),
      );
}

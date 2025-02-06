import 'package:sky_trade/core/errors/exceptions/insights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        filterDroneInsightsPath,
        getDroneInsightsPath,
        rangeKey,
        remoteIdentifierPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/insights/data/models/insights_model.dart'
    show FilterInsightsModel, InsightsModel;

abstract interface class InsightsRemoteDataSource {
  Future<InsightsModel> get insights;

  Future<FilterInsightsModel> getFilterDroneInsights({
    required String range,
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
  Future<InsightsModel> get insights =>
      handleResponse<InsightsException, Map<String, dynamic>, InsightsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + getDroneInsightsPath,
          includeSignature: true,
        ),
        onSuccess: InsightsModel.fromJson,
        onError: (_) => InsightsException(),
      );

  @override
  Future<FilterInsightsModel> getFilterDroneInsights({
    required String range,
  }) =>
      handleResponse<FilterInsightsException, Map<String, dynamic>,
          FilterInsightsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + filterDroneInsightsPath,
          includeSignature: true,
          queryParameters: {
            rangeKey: range,
          },
        ),
        onSuccess: FilterInsightsModel.fromJson,
        onError: (_) => FilterInsightsException(),
      );
}

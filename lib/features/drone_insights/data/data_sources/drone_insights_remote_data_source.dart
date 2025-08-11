// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/errors/exceptions/drone_insights_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        filterDroneInsightsPath,
        getDroneInsightsPath,
        rangeKey,
        remoteIdentifierPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show RangeFilter, RequestMethod;
import 'package:sky_trade/features/drone_insights/data/models/drone_insights_model.dart'
    show FilteredDroneInsightsModel, TrackedDroneInsightsModel;

abstract interface class DroneInsightsRemoteDataSource {
  Future<TrackedDroneInsightsModel> get trackedDroneInsights;

  Future<FilteredDroneInsightsModel> filterDroneInsightsBy({
    required RangeFilter rangeFilter,
  });
}

final class DroneInsightsRemoteDataSourceImplementation
    with ResponseHandler
    implements DroneInsightsRemoteDataSource {
  const DroneInsightsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<TrackedDroneInsightsModel> get trackedDroneInsights => handleResponse<
          TrackedDroneInsightsException,
          Map<String, dynamic>,
          TrackedDroneInsightsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + getDroneInsightsPath,
          includeSignature: true,
        ),
        onSuccess: TrackedDroneInsightsModel.fromJson,
        onError: (_) => TrackedDroneInsightsException(),
      );

  @override
  Future<FilteredDroneInsightsModel> filterDroneInsightsBy({
    required RangeFilter rangeFilter,
  }) =>
      handleResponse<FilteredDroneInsightsException, Map<String, dynamic>,
          FilteredDroneInsightsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: remoteIdentifierPath + filterDroneInsightsPath,
          includeSignature: true,
          queryParameters: {
            rangeKey: rangeFilter.value,
          },
        ),
        onSuccess: FilteredDroneInsightsModel.fromJson,
        onError: (_) => FilteredDroneInsightsException(),
      );
}

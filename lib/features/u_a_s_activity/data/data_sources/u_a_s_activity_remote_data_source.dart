import 'package:sky_ways/core/errors/exceptions/u_a_s_activity_exception.dart';
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show WebSocketClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/features/u_a_s_activity/data/models/u_a_s_model.dart'
    show UASModel;

abstract interface class UASActivityRemoteDataSource {
  Stream<List<UASModel>> getUASActivitiesAround({
    required String geoHash,
  });
}

final class UASActivityRemoteDataSourceImplementation
    with ResponseHandler
    implements UASActivityRemoteDataSource {
  const UASActivityRemoteDataSourceImplementation(
    WebSocketClient webSocketClient,
  ) : _webSocketClient = webSocketClient;

  final WebSocketClient _webSocketClient;

  @override
  Stream<List<UASModel>> getUASActivitiesAround({
    required String geoHash,
  }) =>
      transformResponse<UASActivityException, List<dynamic>, List<UASModel>>(
        communicationInitiator: () =>
            _webSocketClient.messages as Stream<List<dynamic>>,
        onData: (jsonList) => jsonList
            .map(
              (json) => UASModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: UASActivityException.new,
      );
}

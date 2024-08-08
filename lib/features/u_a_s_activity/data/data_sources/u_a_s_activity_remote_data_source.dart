import 'package:dio/dio.dart' show Response;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show NetworkClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';

abstract interface class UASActivityRemoteDataSource {}

final class UASActivityRemoteDataSourceImplementation
    with ResponseHandler
    implements UASActivityRemoteDataSource {
  const UASActivityRemoteDataSourceImplementation(
    NetworkClient<Response> networkClient,
  ) : _networkClient = networkClient;

  final NetworkClient<Response> _networkClient;
}

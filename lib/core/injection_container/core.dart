import 'package:dio/dio.dart' show Response;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/core/utils/clients/network_client.dart';

final _sl = GetIt.I;

Future<void> registerCoreServices() async {
  _sl
      // Clients
      .registerLazySingleton<NetworkClient<Response>>(
    HttpClient.new,
  );
}

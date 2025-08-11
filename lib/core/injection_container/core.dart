// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: strict_raw_type

import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/core/utils/clients/network_client.dart';

final _sl = GetIt.I;

Future<void> registerCoreServices() async {
  _sl
    // Clients
    ..registerLazySingleton<SocketIOClient>(
      SocketIOClient.new,
    )
    ..registerLazySingleton<HttpClient>(
      HttpClient.new,
    );
}

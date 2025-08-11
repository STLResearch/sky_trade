// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/wifi/data/repositories/wifi_repository_implementation.dart';
import 'package:sky_trade/features/wifi/domain/repositories/wifi_repository.dart';
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_adapter_state_bloc/wifi_adapter_state_bloc.dart'
    show WifiAdapterStateBloc;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc;

final _sl = GetIt.I;

Future<void> registerWifiServices() async {
  _sl
    // BLoCs
    ..registerFactory<WifiAdapterStateBloc>(
      () => WifiAdapterStateBloc(
        _sl(),
      ),
    )
    ..registerFactory<WifiPermissionBloc>(
      () => WifiPermissionBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<WifiRepository>(
      WifiRepositoryImplementation.new,
    );
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_local_data_source.dart';
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_remote_data_source.dart';
import 'package:sky_trade/features/device_profile/data/repositories/device_profile_repository_implementation.dart';
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';
import 'package:sky_trade/features/device_profile/presentation/blocs/device_metadata_bloc/device_metadata_bloc.dart'
    show DeviceMetadataBloc;
import 'package:sky_trade/features/device_profile/presentation/blocs/device_uuid_bloc/device_uuid_bloc.dart'
    show DeviceUUIDBloc;

final _sl = GetIt.I;

Future<void> registerDeviceProfileServices() async {
  _sl
    // BLoCs
    ..registerFactory<DeviceUUIDBloc>(
      () => DeviceUUIDBloc(
        _sl(),
      ),
    )
    ..registerFactory<DeviceMetadataBloc>(
      () => DeviceMetadataBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<DeviceProfileRepository>(
      () => DeviceProfileRepositoryImplementation(
        deviceInfoPlugin: _sl(),
        deviceProfileLocalDataSource: _sl(),
        deviceProfileRemoteDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<DeviceProfileLocalDataSource>(
      () => DeviceProfileLocalDataSourceImplementation(
        sharedPreferencesWithCache: _sl(),
      ),
    )
    ..registerLazySingleton<DeviceProfileRemoteDataSource>(
      () => DeviceProfileRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

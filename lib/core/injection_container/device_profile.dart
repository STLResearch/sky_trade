import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_local_data_source.dart'
    show DeviceUUIDLocalDataSource, DeviceUUIDLocalDataSourceImplementation;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_remote_data_source.dart'
    show DeviceUUIDRemoteDataSource, DeviceUUIDRemoteDataSourceImplementation;
import 'package:sky_trade/features/device_profile/data/repositories/device_profile_repository_implementation.dart'
    show DeviceUUIDRepositoryImplementation;
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart'
    show DeviceProfileRepository;
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
        deviceProfileRepository: _sl(),
      ),
    )
    ..registerFactory<DeviceMetadataBloc>(
      () => DeviceMetadataBloc(
        deviceProfileRepository: _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<DeviceProfileRepository>(
      () => DeviceUUIDRepositoryImplementation(
        deviceUUIDRemoteDataSource: _sl(),
        deviceUUIDLocalDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<DeviceUUIDLocalDataSource>(
      () => DeviceUUIDLocalDataSourceImplementation(
        sharedPreferencesWithCache: _sl(),
      ),
    )
    ..registerLazySingleton<DeviceUUIDRemoteDataSource>(
      () => DeviceUUIDRemoteDataSourceImplementation(
        httpClient: _sl(),
      ),
    );
}

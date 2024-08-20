import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/location/data/repositories/location_repository_implementation.dart';
import 'package:sky_ways/features/location/domain/repositories/location_repository.dart';
import 'package:sky_ways/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show LocationPermissionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc;
import 'package:sky_ways/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show LocationServiceStatusBloc;

final _sl = GetIt.I;

Future<void> registerLocationServices() async {
  _sl
    // BLoCs
    ..registerFactory<LocationPermissionBloc>(
      () => LocationPermissionBloc(
        _sl(),
      ),
    )
    ..registerFactory<LocationPositionBloc>(
      () => LocationPositionBloc(
        _sl(),
      ),
    )
    ..registerFactory<LocationServiceStatusBloc>(
      () => LocationServiceStatusBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<LocationRepository>(
      LocationRepositoryImplementation.new,
    );
}

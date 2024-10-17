import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/remote_i_d_transmitter/data/data_sources/remote_i_d_transmitter_remote_data_source.dart';
import 'package:sky_ways/features/remote_i_d_transmitter/data/repositories/remote_i_d_transmitter_repository_implementation.dart';
import 'package:sky_ways/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';
import 'package:sky_ways/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart'
    show RemoteIDTransmitterBloc;

final _sl = GetIt.I;

Future<void> registerRemoteIDTransmitterServices() async {
  _sl
    // BLoCs
    ..registerFactory<RemoteIDTransmitterBloc>(
      () => RemoteIDTransmitterBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RemoteIDTransmitterRepository>(
      () => RemoteIDTransmitterRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RemoteIDTransmitterRemoteDataSource>(
      () => RemoteIDTransmitterRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

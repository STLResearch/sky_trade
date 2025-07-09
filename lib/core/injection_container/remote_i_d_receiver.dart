import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_local_data_source.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_remote_data_source.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/repositories/remote_i_d_receiver_repository_implementation.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show BroadcastRemoteIDReceiverBloc;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/cached_remote_i_d_bloc/cached_remote_i_d_bloc.dart'
    show CachedRemoteIDBloc;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/network_remote_i_d_receiver_bloc/network_remote_i_d_receiver_bloc.dart'
    show NetworkRemoteIDReceiverBloc;

final _sl = GetIt.I;

Future<void> registerRemoteIDReceiverServices() async {
  _sl
    // BLoCs
    ..registerFactory<BroadcastRemoteIDReceiverBloc>(
      () => BroadcastRemoteIDReceiverBloc(
        _sl(),
      ),
    )
    ..registerFactory<CachedRemoteIDBloc>(
      () => CachedRemoteIDBloc(
        _sl(),
      ),
    )
    ..registerFactory<NetworkRemoteIDReceiverBloc>(
      () => NetworkRemoteIDReceiverBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RemoteIDReceiverRepository>(
      () => RemoteIDReceiverRepositoryImplementation(
        remoteIDReceiverLocalDataSource: _sl(),
        remoteIDReceiverRemoteDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RemoteIDReceiverLocalDataSource>(
      RemoteIDReceiverLocalDataSourceImplementation.new,
    )
    ..registerLazySingleton<RemoteIDReceiverRemoteDataSource>(
      () => RemoteIDReceiverRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

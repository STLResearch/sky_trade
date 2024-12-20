import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/remote_i_d_receiver/data/data_sources/remote_i_d_receiver_remote_data_source.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/repositories/remote_i_d_receiver_repository_implementation.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show BroadcastRemoteIDReceiverBloc;
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
    ..registerFactory<NetworkRemoteIDReceiverBloc>(
      () => NetworkRemoteIDReceiverBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RemoteIDReceiverRepository>(
      () => RemoteIDReceiverRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RemoteIDReceiverRemoteDataSource>(
      () => RemoteIDReceiverRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

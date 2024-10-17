import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/remote_i_d_receiver/data/repositories/remote_i_d_receiver_repository_implementation.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';
import 'package:sky_ways/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart'
    show RemoteIDReceiverBloc;

final _sl = GetIt.I;

Future<void> registerRemoteIDReceiverServices() async {
  _sl
    // BLoCs
    ..registerFactory<RemoteIDReceiverBloc>(
      () => RemoteIDReceiverBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RemoteIDReceiverRepository>(
      RemoteIDReceiverRepositoryImplementation.new,
    );
}

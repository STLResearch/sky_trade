import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/features/remote_i_d_receiver/data/repositories/remote_i_d_receiver_repository_implementation.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';
import 'package:sky_ways/features/remote_i_d_receiver/presentation/blocs/bluetooth_receiver_bloc/bluetooth_receiver_bloc.dart'
    show BluetoothReceiverBloc;
import 'package:sky_ways/features/remote_i_d_receiver/presentation/blocs/wifi_receiver_bloc/wifi_receiver_bloc.dart'
    show WifiReceiverBloc;

final _sl = GetIt.I;

Future<void> registerRemoteIDReceiverServices() async {
  _sl
    // BLoCs
    ..registerFactory<BluetoothReceiverBloc>(
      () => BluetoothReceiverBloc(
        _sl(),
      ),
    )
    ..registerFactory<WifiReceiverBloc>(
      () => WifiReceiverBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<
        RemoteIDReceiverRepository<BluetoothReceiverFailure>>(
      BluetoothReceiver.new,
    )
    ..registerLazySingleton<RemoteIDReceiverRepository<WifiReceiverFailure>>(
      WifiReceiver.new,
    );
}

import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/bluetooth/data/repositories/bluetooth_repository_implementation.dart';
import 'package:sky_trade/features/bluetooth/domain/repositories/bluetooth_repository.dart';
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_adapter_state_bloc/bluetooth_adapter_state_bloc.dart'
    show BluetoothAdapterStateBloc;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show BluetoothPermissionsBloc;

final _sl = GetIt.I;

Future<void> registerBluetoothServices() async {
  _sl
    // BLoCs
    ..registerFactory<BluetoothAdapterStateBloc>(
      () => BluetoothAdapterStateBloc(
        _sl(),
      ),
    )
    ..registerFactory<BluetoothPermissionsBloc>(
      () => BluetoothPermissionsBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<BluetoothRepository>(
      BluetoothRepositoryImplementation.new,
    );
}

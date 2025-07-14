import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';

part 'device_uuid_bloc.freezed.dart';
part 'device_uuid_event.dart';
part 'device_uuid_state.dart';

class DeviceUUIDBloc extends Bloc<DeviceUUIDEvent, DeviceUUIDState> {
  DeviceUUIDBloc({
    required DeviceProfileRepository deviceProfileRepository,
  })  : _deviceProfileRepository = deviceProfileRepository,
        super(
          const DeviceUUIDState.initial(),
        ) {
    on<_CheckDeviceUUIDExists>(_checkDeviceUUIDExists);

    on<_GenerateAndSaveDeviceUUID>(_generateAndSaveDeviceUUID);
  }

  final DeviceProfileRepository _deviceProfileRepository;

  Future<void> _checkDeviceUUIDExists(
    _CheckDeviceUUIDExists event,
    Emitter<DeviceUUIDState> emit,
  ) async {
    final deviceUUIDExist =
        await _deviceProfileRepository.checkDeviceUUIDExists();

    if (deviceUUIDExist) {
      emit(
        const DeviceUUIDState.deviceUUIDExists(),
      );
      return;
    }

    emit(
      const DeviceUUIDState.deviceUUIDDoesNotExist(),
    );
    add(
      const DeviceUUIDEvent.generateAndSaveDeviceUUID(),
    );
  }

  Future<void> _generateAndSaveDeviceUUID(
    _GenerateAndSaveDeviceUUID event,
    Emitter<DeviceUUIDState> emit,
  ) async {
    await _deviceProfileRepository.generateAndSaveDeviceUUID();
    emit(
      const DeviceUUIDState.generatedAndSavedDeviceUUID(),
    );
  }
}

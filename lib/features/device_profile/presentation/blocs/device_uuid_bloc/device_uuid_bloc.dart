import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';

part 'device_uuid_bloc.freezed.dart';

part 'device_uuid_event.dart';

part 'device_uuid_state.dart';

class DeviceUUIDBloc extends Bloc<DeviceUUIDEvent, DeviceUUIDState> {
  DeviceUUIDBloc(
    DeviceProfileRepository deviceProfileRepository,
  )   : _deviceProfileRepository = deviceProfileRepository,
        super(
          const DeviceUUIDState.initial(),
        ) {
    on<_CheckAndMaybeGenerateAndCacheDeviceUUID>(
      _checkAndMaybeGenerateAndCacheDeviceUUID,
    );
  }

  final DeviceProfileRepository _deviceProfileRepository;

  Future<void> _checkAndMaybeGenerateAndCacheDeviceUUID(
    _CheckAndMaybeGenerateAndCacheDeviceUUID event,
    Emitter<DeviceUUIDState> emit,
  ) async {
    emit(
      const DeviceUUIDState.checkingDeviceUUIDExists(),
    );

    final deviceUUIDExists =
        await _deviceProfileRepository.checkDeviceUUIDExists();

    if (deviceUUIDExists) {
      emit(
        const DeviceUUIDState.deviceUUIDExists(),
      );

      return;
    }

    emit(
      const DeviceUUIDState.generatingAndCachingDeviceUUID(),
    );

    await _deviceProfileRepository.generateAndCacheDeviceUUID();

    emit(
      const DeviceUUIDState.generatedAndCachedDeviceUUID(),
    );
  }
}

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/device_profile_failure.dart'
    show
        DeviceMetadataFailure,
        DeviceMetadataUndesiredDataReturnedFailure,
        DeviceMetadataUnknownFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart' show one, zero;
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';

part 'device_metadata_bloc.freezed.dart';

part 'device_metadata_event.dart';

part 'device_metadata_state.dart';

class DeviceMetadataBloc
    extends Bloc<DeviceMetadataEvent, DeviceMetadataState> {
  DeviceMetadataBloc(
    DeviceProfileRepository deviceProfileRepository,
  )   : _deviceProfileRepository = deviceProfileRepository,
        super(
          const DeviceMetadataState.initial(),
        ) {
    on<_SendDeviceMetadata>(
      _sendDeviceMetadata,
    );
  }

  final DeviceProfileRepository _deviceProfileRepository;

  Future<void> _sendDeviceMetadata(
    _SendDeviceMetadata event,
    Emitter<DeviceMetadataState> emit,
  ) async {
    emit(
      const DeviceMetadataState.sendingDeviceMetadata(),
    );

    final result = await _deviceProfileRepository.sendDeviceMetadata();

    result.fold(
      (deviceMetadataFailure) => emit(
        DeviceMetadataState.failedToSendDeviceMetadata(
          deviceMetadataFailure: deviceMetadataFailure,
        ),
      ),
      (deviceMetadataEntity) => emit(
        switch (deviceMetadataEntity.data) {
          one => const DeviceMetadataState.sentDeviceMetadata(),
          zero => DeviceMetadataState.failedToSendDeviceMetadata(
              deviceMetadataFailure:
                  DeviceMetadataUndesiredDataReturnedFailure(),
            ),
          _ => DeviceMetadataState.failedToSendDeviceMetadata(
              deviceMetadataFailure: DeviceMetadataUnknownFailure(),
            ),
        },
      ),
    );
  }
}

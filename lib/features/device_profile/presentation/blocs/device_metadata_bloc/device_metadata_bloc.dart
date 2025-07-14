import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';

part 'device_metadata_bloc.freezed.dart';
part 'device_metadata_event.dart';
part 'device_metadata_state.dart';

class DeviceMetadataBloc
    extends Bloc<DeviceMetadataEvent, DeviceMetadataState> {
  DeviceMetadataBloc({
    required DeviceProfileRepository deviceProfileRepository,
  })  : _deviceProfileRepository = deviceProfileRepository,
        super(
          const DeviceMetadataState.initial(),
        ) {
    on<_SendLatestDeviceMetadata>(_sendLatestDeviceMetadata);
  }

  final DeviceProfileRepository _deviceProfileRepository;

  Future<void> _sendLatestDeviceMetadata(
    _SendLatestDeviceMetadata event,
    Emitter<DeviceMetadataState> emit,
  ) async {
    emit(
      const DeviceMetadataState.sendingDeviceMetadata(),
    );

    final sendLatestDeviceMetadata =
        await _deviceProfileRepository.sendLatestDeviceMetadata();

    sendLatestDeviceMetadata.fold(
      (_) => emit(
        const DeviceMetadataState.failedToSentDeviceMetadata(),
      ),
      (_) => emit(
        const DeviceMetadataState.sentDeviceMetadataSuccessfully(),
      ),
    );
  }
}

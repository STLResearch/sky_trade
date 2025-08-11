// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/utils/extensions/remote_i_d_entity_extensions.dart'
    show RemoteIDEntityExtensions;
import 'package:sky_trade/features/remote_i_d_transmitter/data/models/remote_transmission_model.dart'
    show DeviceModel, RemoteTransmissionModel;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show RemoteTransmissionEntity;

extension RemoteTransmissionEntityExtensions on RemoteTransmissionEntity {
  RemoteTransmissionModel toRemoteTransmissionModel() {
    DeviceModel? deviceModel;

    if (device != null) {
      deviceModel = DeviceModel(
        mLatitude: device!.latitude,
        mLongitude: device!.longitude,
      );
    }

    return RemoteTransmissionModel(
      mRemoteData: remoteData.toRemoteIDModel(),
      mDevice: deviceModel,
      mIsTest: false,
      mVersion: version,
    );
  }
}

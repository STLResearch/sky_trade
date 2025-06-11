import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

base class RemoteTransmissionEntity extends Equatable {
  const RemoteTransmissionEntity({
    required this.remoteData,
    required this.device,
    required this.isTest,
    required this.version,
  });

  final RemoteIDEntity remoteData;

  final DeviceEntity? device;

  final bool isTest;

  final String version;

  @override
  List<Object?> get props => [
        remoteData,
        isTest,
        device,
        version,
      ];
}

base class DeviceEntity extends Equatable {
  const DeviceEntity({
    required this.latitude,
    required this.longitude,
  });

  final double latitude;

  final double longitude;

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}

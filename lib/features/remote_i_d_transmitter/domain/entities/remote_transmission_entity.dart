import 'dart:typed_data' show Uint8List;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

base class RemoteTransmissionEntity extends Equatable {
  const RemoteTransmissionEntity({
    required this.remoteData,
    required this.isTest,
    required this.device,
    required this.rawData,
  });

  final RemoteIDEntity remoteData;

  final bool isTest;

  final DeviceEntity device;

  final Uint8List rawData;

  @override
  List<Object?> get props => [
        remoteData,
        isTest,
        device,
        rawData,
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

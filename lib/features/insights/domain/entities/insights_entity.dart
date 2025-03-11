import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

base class InsightsEntity extends Equatable {
  const InsightsEntity({
    required this.userId,
    required this.devicesObserved,
    required this.devices,
  });

  final String userId;

  final int devicesObserved;

  final List<DeviceEntity> devices;

  @override
  List<Object?> get props => [
        userId,
        devicesObserved,
        devices,
      ];
}

base class DeviceEntity extends Equatable {
  const DeviceEntity({
    required this.id,
    required this.ipAddress,
    required this.isTest,
    required this.remoteData,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  final String id;

  final String ipAddress;

  final bool isTest;

  final RemoteIDEntity remoteData;

  final DateTime createdAt;

  final DateTime updatedAt;

  final UserEntity user;

  @override
  List<Object?> get props => [
        id,
        ipAddress,
        isTest,
        remoteData,
        createdAt,
        updatedAt,
        user,
      ];
}

base class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
  });

  final int id;

  @override
  List<Object?> get props => [
        id,
      ];
}

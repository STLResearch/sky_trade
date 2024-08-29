import 'package:equatable/equatable.dart' show Equatable;

base class UASEntity extends Equatable {
  const UASEntity({
    required this.id,
    required this.remoteData,
    required this.createdAt,
    required this.updateAt,
  });

  final String id;
  final RemoteDataEntity remoteData;
  final String createdAt;
  final String updateAt;

  @override
  List<Object?> get props => [
        id,
        remoteData,
        createdAt,
        updateAt,
      ];
}

base class RemoteDataEntity extends Equatable {
  const RemoteDataEntity({
    required this.selfId,
    required this.system,
    required this.location,
    required this.connection,
    required this.macAddress,
    required this.operatorId,
    required this.identification1,
    required this.identification2,
  });

  final SelfIdEntity selfId;
  final SystemEntity system;
  final LocationEntity location;
  final ConnectionEntity connection;
  final int macAddress;
  final OperatorIdEntity operatorId;
  final IdentificationEntity identification1;
  final IdentificationEntity identification2;

  @override
  List<Object?> get props => [
        selfId,
        system,
        location,
        connection,
        macAddress,
        operatorId,
        identification1,
        identification2,
      ];
}

base class SelfIdEntity extends Equatable {
  const SelfIdEntity({
    required this.descriptionType,
    required this.operationDescription,
  });

  final String descriptionType;
  final List<int> operationDescription;

  @override
  List<Object?> get props => [
        descriptionType,
        operationDescription,
      ];
}

base class SystemEntity extends Equatable {
  const SystemEntity({
    required this.category,
    required this.areaCount,
    required this.areaFloor,
    required this.areaRadius,
    required this.classValue,
    required this.areaCeiling,
    required this.systemTimestamp,
    required this.operatorLatitude,
    required this.operatorLongitude,
    required this.classificationType,
    required this.operatorAltitudeGeo,
    required this.operatorLocationType,
  });

  final String category;
  final int areaCount;
  final int areaFloor;
  final int areaRadius;
  final String classValue;
  final int areaCeiling;
  final int systemTimestamp;
  final double operatorLatitude;
  final double operatorLongitude;
  final String classificationType;
  final double operatorAltitudeGeo;
  final String operatorLocationType;

  @override
  List<Object?> get props => [
        category,
        areaCount,
        areaFloor,
        areaRadius,
        classValue,
        areaCeiling,
        systemTimestamp,
        operatorLatitude,
        operatorLongitude,
        classificationType,
        operatorAltitudeGeo,
        operatorLocationType,
      ];
}

base class LocationEntity extends Equatable {
  const LocationEntity({
    required this.height,
    required this.status,
    required this.distance,
    required this.latitude,
    required this.direction,
    required this.longitude,
    required this.heightType,
    required this.baroAccuracy,
    required this.timeAccuracy,
    required this.speedAccuracy,
    required this.speedVertical,
    required this.speedHorizontal,
    required this.altitudeGeodetic,
    required this.altitudePressure,
    required this.verticalAccuracy,
    required this.locationTimestamp,
    required this.horizontalAccuracy,
  });

  final int height;
  final String status;
  final int distance;
  final double latitude;
  final int direction;
  final double longitude;
  final String heightType;
  final String baroAccuracy;
  final double timeAccuracy;
  final String speedAccuracy;
  final int speedVertical;
  final int speedHorizontal;
  final int altitudeGeodetic;
  final int altitudePressure;
  final String verticalAccuracy;
  final int locationTimestamp;
  final String horizontalAccuracy;

  @override
  List<Object?> get props => [
        height,
        status,
        distance,
        latitude,
        direction,
        longitude,
        heightType,
        baroAccuracy,
        timeAccuracy,
        speedAccuracy,
        speedVertical,
        speedHorizontal,
        altitudeGeodetic,
        altitudePressure,
        verticalAccuracy,
        locationTimestamp,
        horizontalAccuracy,
      ];
}

base class ConnectionEntity extends Equatable {
  const ConnectionEntity({
    required this.rssi,
    required this.lastSeen,
    required this.msgDelta,
    required this.firstSeen,
    required this.macAddress,
    required this.transportType,
  });

  final int rssi;
  final int lastSeen;
  final int msgDelta;
  final int firstSeen;
  final String macAddress;
  final String transportType;

  @override
  List<Object?> get props => [
        rssi,
        lastSeen,
        msgDelta,
        firstSeen,
        macAddress,
        transportType,
      ];
}

base class OperatorIdEntity extends Equatable {
  const OperatorIdEntity({
    required this.operatorId,
  });

  final List<int> operatorId;

  @override
  List<Object?> get props => [
        operatorId,
      ];
}

base class IdentificationEntity extends Equatable {
  const IdentificationEntity({
    required this.uasId,
    required this.idType,
    required this.uaType,
  });

  final List<int> uasId;
  final String idType;
  final String uaType;

  @override
  List<Object?> get props => [
        uasId,
        idType,
        uaType,
      ];
}

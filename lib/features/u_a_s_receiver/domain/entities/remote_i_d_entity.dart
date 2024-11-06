// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'dart:typed_data' show Uint8List;
import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter/cupertino.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show
        RemoteIDMessageSource,
        UnmannedAircraftAuthenticationType,
        UnmannedAircraftCategory,
        UnmannedAircraftClassValue,
        UnmannedAircraftClassificationType,
        UnmannedAircraftHeightType,
        UnmannedAircraftHorizontalAccuracy,
        UnmannedAircraftIDType,
        UnmannedAircraftOperationalStatus,
        UnmannedAircraftOperatorIDType,
        UnmannedAircraftOperatorLocationType,
        UnmannedAircraftSelfIDDescriptionType,
        UnmannedAircraftSpeedAccuracy,
        UnmannedAircraftType,
        UnmannedAircraftVerticalOrBarometerAccuracy;

@immutable
base class RemoteIDEntity {
  const RemoteIDEntity({
    required this.connection,
    required this.basicIDs,
    required this.location,
    required this.system,
    required this.selfID,
    required this.operatorID,
    required this.authentication,
  });

  final ConnectionEntity connection;

  final List<BasicIDEntity>? basicIDs;

  final LocationEntity? location;

  final SystemEntity? system;

  final SelfIDEntity? selfID;

  final OperatorIDEntity? operatorID;

  final AuthenticationEntity? authentication;

  RemoteIDEntity merge(
    RemoteIDEntity newRemoteIDEntity,
  ) =>
      RemoteIDEntity(
        connection: connection.merge(
          newRemoteIDEntity.connection,
        ),
        basicIDs: {
          ...?newRemoteIDEntity.basicIDs,
          ...?basicIDs,
        }.toList(),
        location: location?.merge(
          newRemoteIDEntity.location,
        ),
        system: system?.merge(
          newRemoteIDEntity.system,
        ),
        selfID: selfID?.merge(
          newRemoteIDEntity.selfID,
        ),
        operatorID: operatorID?.merge(
          newRemoteIDEntity.operatorID,
        ),
        authentication: authentication?.merge(
          newRemoteIDEntity.authentication,
        ),
      );

  @override
  bool operator ==(
    covariant RemoteIDEntity other,
  ) =>
      connection.macAddress == other.connection.macAddress;

  @override
  int get hashCode => connection.macAddress.hashCode;
}

base class ConnectionEntity extends Equatable {
  const ConnectionEntity({
    required this.macAddress,
    required this.lastSeen,
    required this.messageSource,
    required this.rssi,
  });

  final String macAddress;

  final DateTime lastSeen;

  final RemoteIDMessageSource messageSource;

  final int? rssi;

  ConnectionEntity merge(
    ConnectionEntity? newConnectionEntity,
  ) =>
      ConnectionEntity(
        macAddress: newConnectionEntity?.macAddress ?? macAddress,
        lastSeen: newConnectionEntity?.lastSeen ?? lastSeen,
        messageSource: newConnectionEntity?.messageSource ?? messageSource,
        rssi: newConnectionEntity?.rssi ?? rssi,
      );

  @override
  List<Object?> get props => [
        macAddress,
        lastSeen,
        messageSource,
        rssi,
      ];
}

base class BasicIDEntity extends Equatable {
  const BasicIDEntity({
    required this.type,
    required this.iDType,
    required this.serialNumber,
    required this.registrationID,
    required this.iD,
  });

  final UnmannedAircraftType type;

  final UnmannedAircraftIDType iDType;

  final String? serialNumber;

  final String? registrationID;

  final Uint8List? iD;

  BasicIDEntity merge(
    BasicIDEntity? newBasicIDEntity,
  ) =>
      BasicIDEntity(
        type: newBasicIDEntity?.type ?? type,
        iDType: newBasicIDEntity?.iDType ?? iDType,
        serialNumber: newBasicIDEntity?.serialNumber ?? serialNumber,
        registrationID: newBasicIDEntity?.registrationID ?? registrationID,
        iD: newBasicIDEntity?.iD ?? iD,
      );

  @override
  List<Object?> get props => [
        type,
        iDType,
        serialNumber,
        registrationID,
        iD,
      ];
}

base class LocationEntity extends Equatable {
  const LocationEntity({
    required this.operationalStatus,
    required this.heightType,
    required this.horizontalAccuracy,
    required this.verticalAccuracy,
    required this.barometerAccuracy,
    required this.speedAccuracy,
    required this.direction,
    required this.horizontalSpeed,
    required this.verticalSpeed,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.altitudePressure,
    required this.altitudeGeodetic,
    required this.height,
    required this.timestamp,
    required this.timestampAccuracy,
  });

  final UnmannedAircraftOperationalStatus operationalStatus;

  final UnmannedAircraftHeightType heightType;

  final UnmannedAircraftHorizontalAccuracy horizontalAccuracy;

  final UnmannedAircraftVerticalOrBarometerAccuracy verticalAccuracy;

  final UnmannedAircraftVerticalOrBarometerAccuracy barometerAccuracy;

  final UnmannedAircraftSpeedAccuracy speedAccuracy;

  final int? direction;

  final double? horizontalSpeed;

  final double? verticalSpeed;

  final double? latitude;

  final double? longitude;

  final CoordinatesEntity? location;

  final double? altitudePressure;

  final double? altitudeGeodetic;

  final double? height;

  final Duration? timestamp;

  final Duration? timestampAccuracy;

  LocationEntity merge(
    LocationEntity? newLocationEntity,
  ) =>
      LocationEntity(
        operationalStatus:
            newLocationEntity?.operationalStatus ?? operationalStatus,
        heightType: newLocationEntity?.heightType ?? heightType,
        horizontalAccuracy:
            newLocationEntity?.horizontalAccuracy ?? horizontalAccuracy,
        verticalAccuracy:
            newLocationEntity?.verticalAccuracy ?? verticalAccuracy,
        barometerAccuracy:
            newLocationEntity?.barometerAccuracy ?? barometerAccuracy,
        speedAccuracy: newLocationEntity?.speedAccuracy ?? speedAccuracy,
        direction: newLocationEntity?.direction ?? direction,
        horizontalSpeed: newLocationEntity?.horizontalSpeed ?? horizontalSpeed,
        verticalSpeed: newLocationEntity?.verticalSpeed ?? verticalSpeed,
        latitude: newLocationEntity?.latitude ?? latitude,
        longitude: newLocationEntity?.longitude ?? longitude,
        location: location?.merge(
          newLocationEntity?.location,
        ),
        altitudePressure:
            newLocationEntity?.altitudePressure ?? altitudePressure,
        altitudeGeodetic:
            newLocationEntity?.altitudeGeodetic ?? altitudeGeodetic,
        height: newLocationEntity?.height ?? height,
        timestamp: newLocationEntity?.timestamp ?? timestamp,
        timestampAccuracy:
            newLocationEntity?.timestampAccuracy ?? timestampAccuracy,
      );

  @override
  List<Object?> get props => [
        operationalStatus,
        heightType,
        horizontalAccuracy,
        verticalAccuracy,
        barometerAccuracy,
        speedAccuracy,
        direction,
        horizontalSpeed,
        verticalSpeed,
        latitude,
        longitude,
        location,
        altitudePressure,
        altitudeGeodetic,
        height,
        timestamp,
        timestampAccuracy,
      ];
}

base class SystemEntity extends Equatable {
  const SystemEntity({
    required this.operatorLocationType,
    required this.classificationType,
    required this.areaCount,
    required this.areaRadius,
    required this.timestamp,
    required this.operatorLatitude,
    required this.operatorLongitude,
    required this.operatorLocation,
    required this.operatorAltitude,
    required this.areaCeiling,
    required this.areaFloor,
    required this.category,
    required this.classValue,
  });

  final UnmannedAircraftOperatorLocationType operatorLocationType;

  final UnmannedAircraftClassificationType classificationType;

  final UnmannedAircraftCategory category;

  final UnmannedAircraftClassValue classValue;

  final int areaCount;

  final int areaRadius;

  final DateTime timestamp;

  final double? operatorLatitude;

  final double? operatorLongitude;

  final CoordinatesEntity? operatorLocation;

  final double? operatorAltitude;

  final double? areaCeiling;

  final double? areaFloor;

  SystemEntity merge(
    SystemEntity? newSystemEntity,
  ) =>
      SystemEntity(
        operatorLocationType:
            newSystemEntity?.operatorLocationType ?? operatorLocationType,
        classificationType:
            newSystemEntity?.classificationType ?? classificationType,
        category: newSystemEntity?.category ?? category,
        classValue: newSystemEntity?.classValue ?? classValue,
        areaCount: newSystemEntity?.areaCount ?? areaCount,
        areaRadius: newSystemEntity?.areaRadius ?? areaRadius,
        timestamp: newSystemEntity?.timestamp ?? timestamp,
        operatorLatitude: newSystemEntity?.operatorLatitude ?? operatorLatitude,
        operatorLongitude:
            newSystemEntity?.operatorLongitude ?? operatorLongitude,
        operatorLocation: newSystemEntity?.operatorLocation ?? operatorLocation,
        operatorAltitude: newSystemEntity?.operatorAltitude ?? operatorAltitude,
        areaCeiling: newSystemEntity?.areaCeiling ?? areaCeiling,
        areaFloor: newSystemEntity?.areaFloor ?? areaFloor,
      );

  @override
  List<Object?> get props => [
        operatorLocationType,
        classificationType,
        category,
        classValue,
        areaCount,
        areaRadius,
        timestamp,
        operatorLatitude,
        operatorLongitude,
        operatorLocation,
        operatorAltitude,
        areaCeiling,
        areaFloor,
      ];
}

base class CoordinatesEntity extends Equatable {
  const CoordinatesEntity({
    required this.latitude,
    required this.longitude,
  });

  final double latitude;

  final double longitude;

  CoordinatesEntity merge(
    CoordinatesEntity? newCoordinatesEntity,
  ) =>
      CoordinatesEntity(
        latitude: newCoordinatesEntity?.latitude ?? latitude,
        longitude: newCoordinatesEntity?.longitude ?? longitude,
      );

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}

base class SelfIDEntity extends Equatable {
  const SelfIDEntity({
    required this.descriptionType,
    required this.operationDescription,
    required this.description,
  });

  final UnmannedAircraftSelfIDDescriptionType descriptionType;

  final Uint8List? operationDescription;

  final String? description;

  SelfIDEntity merge(
    SelfIDEntity? newSelfIDEntity,
  ) =>
      SelfIDEntity(
        descriptionType: newSelfIDEntity?.descriptionType ?? descriptionType,
        operationDescription:
            newSelfIDEntity?.operationDescription ?? operationDescription,
        description: newSelfIDEntity?.description ?? description,
      );

  @override
  List<Object?> get props => [
        descriptionType,
        operationDescription,
        description,
      ];
}

base class OperatorIDEntity extends Equatable {
  const OperatorIDEntity({
    required this.operatorIDType,
    required this.operatorIDClassification,
    required this.operatorID,
    required this.iD,
  });

  final int? operatorIDType;

  final UnmannedAircraftOperatorIDType? operatorIDClassification;

  final Uint8List? operatorID;

  final String? iD;

  OperatorIDEntity merge(
    OperatorIDEntity? newOperatorIDEntity,
  ) =>
      OperatorIDEntity(
        operatorIDType: newOperatorIDEntity?.operatorIDType ?? operatorIDType,
        operatorIDClassification:
            newOperatorIDEntity?.operatorIDClassification ??
                operatorIDClassification,
        operatorID: newOperatorIDEntity?.operatorID ?? operatorID,
        iD: newOperatorIDEntity?.iD ?? iD,
      );

  @override
  List<Object?> get props => [
        operatorIDType,
        operatorIDClassification,
        operatorID,
        iD,
      ];
}

base class AuthenticationEntity extends Equatable {
  const AuthenticationEntity({
    required this.authenticationType,
    required this.authenticationPageNumber,
    required this.authenticationData,
    required this.lastAuthenticationPageIndex,
    required this.authenticationLength,
    required this.timestamp,
  });

  final UnmannedAircraftAuthenticationType authenticationType;

  final int authenticationPageNumber;

  final Uint8List authenticationData;

  final int? lastAuthenticationPageIndex;

  final int? authenticationLength;

  final DateTime? timestamp;

  AuthenticationEntity merge(
    AuthenticationEntity? newAuthenticationEntity,
  ) =>
      AuthenticationEntity(
        authenticationType:
            newAuthenticationEntity?.authenticationType ?? authenticationType,
        authenticationPageNumber:
            newAuthenticationEntity?.authenticationPageNumber ??
                authenticationPageNumber,
        authenticationData:
            newAuthenticationEntity?.authenticationData ?? authenticationData,
        lastAuthenticationPageIndex:
            newAuthenticationEntity?.lastAuthenticationPageIndex ??
                lastAuthenticationPageIndex,
        authenticationLength: newAuthenticationEntity?.authenticationLength ??
            authenticationLength,
        timestamp: newAuthenticationEntity?.timestamp ?? timestamp,
      );

  @override
  List<Object?> get props => [
        authenticationType,
        authenticationPageNumber,
        authenticationData,
        lastAuthenticationPageIndex,
        authenticationLength,
        timestamp,
      ];
}

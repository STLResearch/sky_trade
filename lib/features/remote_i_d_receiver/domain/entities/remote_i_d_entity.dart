// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'dart:typed_data' show Uint8List;

import 'package:dart_opendroneid/src/enums.dart'
    show
        AuthType,
        HeightType,
        HorizontalAccuracy,
        OperationalStatus,
        OperatorLocationType,
        SpeedAccuracy,
        UACategoryEurope,
        UAClassEurope,
        UAType,
        VerticalAccuracy;
import 'package:dart_opendroneid/src/types/description_type.dart'
    show
        DescriptionTypeEmergency,
        DescriptionTypeExtendedStatus,
        DescriptionTypePrivate,
        DescriptionTypeText;
import 'package:dart_opendroneid/src/types/operator_id_type.dart'
    show OperatorIDTypeOperatorID, OperatorIDTypePrivate;
import 'package:dart_opendroneid/src/types/ua_classification.dart'
    show UAClassificationEurope, UAClassificationUndeclared;
import 'package:dart_opendroneid/src/types/uas_id.dart'
    show
        CAARegistrationID,
        IDNone,
        SerialNumber,
        SpecificSessionID,
        UTMAssignedID;
import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_opendroneid/flutter_opendroneid.dart'
    show
        AuthMessage,
        BasicIDMessage,
        Location,
        LocationMessage,
        OperatorIDMessage,
        SelfIDMessage,
        SystemMessage;
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:flutter_opendroneid/pigeon.dart' show MessageSource;
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

base class RemoteIDEntity extends Equatable {
  const RemoteIDEntity({
    required this.connection,
    required this.basicIDs,
    required this.location,
    required this.system,
    required this.selfID,
    required this.operatorID,
    required this.authentication,
  });

  factory RemoteIDEntity.fromOpenDroneID(
    MessageContainer messageContainer,
  ) =>
      RemoteIDEntity(
        connection: ConnectionEntity.fromOpenDroneID(
          messageContainer,
        ),
        basicIDs: messageContainer.basicIdMessages?.entries
            .map(
              (basicIDMessageEntries) => BasicIDEntity.fromOpenDroneID(
                basicIDMessageEntries.value,
              ),
            )
            .toList(),
        location: switch (messageContainer.locationMessage != null) {
          true => LocationEntity.fromOpenDroneID(
              messageContainer.locationMessage!,
            ),
          false => null,
        },
        system: switch (messageContainer.systemDataMessage != null) {
          true => SystemEntity.fromOpenDroneID(
              messageContainer.systemDataMessage!,
            ),
          false => null,
        },
        selfID: switch (messageContainer.selfIdMessage != null) {
          true => SelfIDEntity.fromOpenDroneID(
              messageContainer.selfIdMessage!,
            ),
          false => null,
        },
        operatorID: switch (messageContainer.operatorIdMessage != null) {
          true => OperatorIDEntity.fromOpenDroneID(
              messageContainer.operatorIdMessage!,
            ),
          false => null,
        },
        authentication: switch (
            messageContainer.authenticationMessage != null) {
          true => AuthenticationEntity.fromOpenDroneID(
              messageContainer.authenticationMessage!,
            ),
          false => null,
        },
      );

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
            ) ??
            newRemoteIDEntity.location,
        system: system?.merge(
              newRemoteIDEntity.system,
            ) ??
            newRemoteIDEntity.system,
        selfID: selfID?.merge(
              newRemoteIDEntity.selfID,
            ) ??
            newRemoteIDEntity.selfID,
        operatorID: operatorID?.merge(
              newRemoteIDEntity.operatorID,
            ) ??
            newRemoteIDEntity.operatorID,
        authentication: authentication?.merge(
              newRemoteIDEntity.authentication,
            ) ??
            newRemoteIDEntity.authentication,
      );

  @override
  List<Object?> get props => [
        connection,
        basicIDs,
        location,
        system,
        selfID,
        operatorID,
        authentication,
      ];

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

  factory ConnectionEntity.fromOpenDroneID(
    MessageContainer messageContainer,
  ) =>
      ConnectionEntity(
        macAddress: messageContainer.macAddress,
        lastSeen: messageContainer.lastUpdate,
        messageSource: switch (messageContainer.packSource) {
          MessageSource.BluetoothLegacy =>
            RemoteIDMessageSource.bluetoothLegacy,
          MessageSource.BluetoothLongRange =>
            RemoteIDMessageSource.bluetoothLongRange,
          MessageSource.WifiNan => RemoteIDMessageSource.wifiNan,
          MessageSource.WifiBeacon => RemoteIDMessageSource.wifiBeacon,
          MessageSource.Unknown => RemoteIDMessageSource.unknown,
        },
        rssi: messageContainer.metadata.rssi,
      );

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
    required this.rawData,
  });

  factory BasicIDEntity.fromOpenDroneID(
    BasicIDMessage basicIDMessage,
  ) =>
      BasicIDEntity(
        type: switch (basicIDMessage.uaType) {
          UAType.none => UnmannedAircraftType.none,
          UAType.aeroplane => UnmannedAircraftType.aeroplane,
          UAType.helicopterOrMultirotor =>
            UnmannedAircraftType.helicopterOrMultirotor,
          UAType.gyroplane => UnmannedAircraftType.gyroplane,
          UAType.hybridLift => UnmannedAircraftType.hybridLift,
          UAType.ornithopter => UnmannedAircraftType.ornithopter,
          UAType.glider => UnmannedAircraftType.glider,
          UAType.kite => UnmannedAircraftType.kite,
          UAType.freeBalloon => UnmannedAircraftType.freeBalloon,
          UAType.captiveBalloon => UnmannedAircraftType.captiveBalloon,
          UAType.airship => UnmannedAircraftType.airship,
          UAType.freeFallParachute => UnmannedAircraftType.freeFallParachute,
          UAType.rocket => UnmannedAircraftType.rocket,
          UAType.tetheredPoweredAircraft =>
            UnmannedAircraftType.tetheredPoweredAircraft,
          UAType.groundObstacle => UnmannedAircraftType.groundObstacle,
          UAType.other => UnmannedAircraftType.other,
        },
        iDType: switch (basicIDMessage.uasID) {
          IDNone() => UnmannedAircraftIDType.none,
          SerialNumber() => UnmannedAircraftIDType.serialNumber,
          CAARegistrationID() => UnmannedAircraftIDType.cAARegistrationID,
          UTMAssignedID() => UnmannedAircraftIDType.uTMAssignedID,
          SpecificSessionID() => UnmannedAircraftIDType.specificSessionID,
        },
        serialNumber: switch (basicIDMessage.uasID) {
          SerialNumber(:final serialNumber) => serialNumber,
          _ => null,
        },
        registrationID: switch (basicIDMessage.uasID) {
          CAARegistrationID(:final registrationID) => registrationID,
          _ => null,
        },
        iD: switch (basicIDMessage.uasID) {
          UTMAssignedID(:final id) => id,
          SpecificSessionID(:final id) => id,
          _ => null,
        },
        rawData: basicIDMessage.rawContent,
      );

  final UnmannedAircraftType type;

  final UnmannedAircraftIDType iDType;

  final String? serialNumber;

  final String? registrationID;

  final Uint8List? iD;

  final Uint8List? rawData;

  BasicIDEntity merge(
    BasicIDEntity? newBasicIDEntity,
  ) =>
      BasicIDEntity(
        type: newBasicIDEntity?.type ?? type,
        iDType: newBasicIDEntity?.iDType ?? iDType,
        serialNumber: newBasicIDEntity?.serialNumber ?? serialNumber,
        registrationID: newBasicIDEntity?.registrationID ?? registrationID,
        iD: newBasicIDEntity?.iD ?? iD,
        rawData: newBasicIDEntity?.rawData ?? rawData,
      );

  @override
  List<Object?> get props => [
        type,
        iDType,
        serialNumber,
        registrationID,
        iD,
        rawData,
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
    required this.rawData,
  });

  factory LocationEntity.fromOpenDroneID(
    LocationMessage locationMessage,
  ) =>
      LocationEntity(
        operationalStatus: switch (locationMessage.status) {
          OperationalStatus.none => UnmannedAircraftOperationalStatus.none,
          OperationalStatus.ground => UnmannedAircraftOperationalStatus.ground,
          OperationalStatus.airborne =>
            UnmannedAircraftOperationalStatus.airborne,
          OperationalStatus.emergency =>
            UnmannedAircraftOperationalStatus.emergency,
          OperationalStatus.remoteIDSystemFailure =>
            UnmannedAircraftOperationalStatus.remoteIDSystemFailure,
        },
        heightType: switch (locationMessage.heightType) {
          HeightType.aboveTakeoff => UnmannedAircraftHeightType.aboveTakeoff,
          HeightType.aboveGroundLevel =>
            UnmannedAircraftHeightType.aboveGroundLevel,
        },
        horizontalAccuracy: switch (locationMessage.horizontalAccuracy) {
          HorizontalAccuracy.unknown =>
            UnmannedAircraftHorizontalAccuracy.unknown,
          HorizontalAccuracy.kilometers_18_52 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_18_52,
          HorizontalAccuracy.kilometers_7_408 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_7_408,
          HorizontalAccuracy.kilometers_3_704 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_3_704,
          HorizontalAccuracy.kilometers_1_852 =>
            UnmannedAircraftHorizontalAccuracy.kilometers_1_852,
          HorizontalAccuracy.meters_926 =>
            UnmannedAircraftHorizontalAccuracy.meters_926,
          HorizontalAccuracy.meters_555_6 =>
            UnmannedAircraftHorizontalAccuracy.meters_555_6,
          HorizontalAccuracy.meters_185_2 =>
            UnmannedAircraftHorizontalAccuracy.meters_185_2,
          HorizontalAccuracy.meters_92_6 =>
            UnmannedAircraftHorizontalAccuracy.meters_92_6,
          HorizontalAccuracy.meters_30 =>
            UnmannedAircraftHorizontalAccuracy.meters_30,
          HorizontalAccuracy.meters_10 =>
            UnmannedAircraftHorizontalAccuracy.meters_10,
          HorizontalAccuracy.meters_3 =>
            UnmannedAircraftHorizontalAccuracy.meters_3,
          HorizontalAccuracy.meters_1 =>
            UnmannedAircraftHorizontalAccuracy.meters_1,
        },
        verticalAccuracy: switch (locationMessage.verticalAccuracy) {
          VerticalAccuracy.unknown =>
            UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
          VerticalAccuracy.meters_150 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_150,
          VerticalAccuracy.meters_45 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_45,
          VerticalAccuracy.meters_25 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_25,
          VerticalAccuracy.meters_10 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_10,
          VerticalAccuracy.meters_3 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_3,
          VerticalAccuracy.meters_1 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_1,
        },
        barometerAccuracy: switch (locationMessage.baroAltitudeAccuracy) {
          VerticalAccuracy.unknown =>
            UnmannedAircraftVerticalOrBarometerAccuracy.unknown,
          VerticalAccuracy.meters_150 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_150,
          VerticalAccuracy.meters_45 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_45,
          VerticalAccuracy.meters_25 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_25,
          VerticalAccuracy.meters_10 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_10,
          VerticalAccuracy.meters_3 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_3,
          VerticalAccuracy.meters_1 =>
            UnmannedAircraftVerticalOrBarometerAccuracy.meters_1,
        },
        speedAccuracy: switch (locationMessage.speedAccuracy) {
          SpeedAccuracy.unknown => UnmannedAircraftSpeedAccuracy.unknown,
          SpeedAccuracy.meterPerSecond_10 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_10,
          SpeedAccuracy.meterPerSecond_3 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_3,
          SpeedAccuracy.meterPerSecond_1 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_1,
          SpeedAccuracy.meterPerSecond_0_3 =>
            UnmannedAircraftSpeedAccuracy.meterPerSecond_0_3,
        },
        direction: locationMessage.direction,
        horizontalSpeed: locationMessage.horizontalSpeed,
        verticalSpeed: locationMessage.verticalSpeed,
        latitude: locationMessage.location?.latitude,
        longitude: locationMessage.location?.longitude,
        location: switch (locationMessage.location != null) {
          true => CoordinatesEntity.fromOpenDroneID(
              locationMessage.location!,
            ),
          false => null,
        },
        altitudePressure: locationMessage.altitudePressure,
        altitudeGeodetic: locationMessage.altitudeGeodetic,
        height: locationMessage.height,
        timestamp: locationMessage.timestamp,
        timestampAccuracy: locationMessage.timestampAccuracy,
        rawData: locationMessage.rawContent,
      );

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

  final Uint8List? rawData;

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
        rawData: newLocationEntity?.rawData ?? rawData,
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
        rawData,
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
    required this.rawData,
  });

  factory SystemEntity.fromOpenDroneID(
    SystemMessage systemMessage,
  ) =>
      SystemEntity(
        operatorLocationType: switch (systemMessage.operatorLocationType) {
          OperatorLocationType.takeOff =>
            UnmannedAircraftOperatorLocationType.takeoff,
          OperatorLocationType.dynamic =>
            UnmannedAircraftOperatorLocationType.dynamic,
          OperatorLocationType.fixed =>
            UnmannedAircraftOperatorLocationType.fixed,
        },
        classificationType: switch (systemMessage.uaClassification) {
          UAClassificationUndeclared() =>
            UnmannedAircraftClassificationType.undeclared,
          UAClassificationEurope() =>
            UnmannedAircraftClassificationType.europeanUnion,
        },
        category: switch (systemMessage.uaClassification) {
          UAClassificationEurope(
            :final uaCategoryEurope,
          ) =>
            switch (uaCategoryEurope) {
              UACategoryEurope.undefined => UnmannedAircraftCategory.undefined,
              UACategoryEurope.EUOpen =>
                UnmannedAircraftCategory.europeanUnionOpen,
              UACategoryEurope.EUSpecific =>
                UnmannedAircraftCategory.europeanUnionSpecific,
              UACategoryEurope.EUCertified =>
                UnmannedAircraftCategory.europeanUnionCertified,
            },
          _ => UnmannedAircraftCategory.undefined,
        },
        classValue: switch (systemMessage.uaClassification) {
          UAClassificationEurope(
            :final uaClassEurope,
          ) =>
            switch (uaClassEurope) {
              UAClassEurope.undefined => UnmannedAircraftClassValue.undefined,
              UAClassEurope.EUClass_0 =>
                UnmannedAircraftClassValue.europeanUnionClass0,
              UAClassEurope.EUClass_1 =>
                UnmannedAircraftClassValue.europeanUnionClass1,
              UAClassEurope.EUClass_2 =>
                UnmannedAircraftClassValue.europeanUnionClass2,
              UAClassEurope.EUClass_3 =>
                UnmannedAircraftClassValue.europeanUnionClass3,
              UAClassEurope.EUClass_4 =>
                UnmannedAircraftClassValue.europeanUnionClass4,
              UAClassEurope.EUClass_5 =>
                UnmannedAircraftClassValue.europeanUnionClass5,
              UAClassEurope.EUClass_6 =>
                UnmannedAircraftClassValue.europeanUnionClass6,
            },
          _ => UnmannedAircraftClassValue.undefined,
        },
        areaCount: systemMessage.areaCount,
        areaRadius: systemMessage.areaRadius,
        timestamp: systemMessage.timestamp,
        operatorLatitude: systemMessage.operatorLocation?.latitude,
        operatorLongitude: systemMessage.operatorLocation?.longitude,
        operatorLocation: switch (systemMessage.operatorLocation != null) {
          true => CoordinatesEntity.fromOpenDroneID(
              systemMessage.operatorLocation!,
            ),
          false => null,
        },
        operatorAltitude: systemMessage.operatorAltitude,
        areaCeiling: systemMessage.areaCeiling,
        areaFloor: systemMessage.areaFloor,
        rawData: systemMessage.rawContent,
      );

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

  final Uint8List? rawData;

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
        rawData: newSystemEntity?.rawData ?? rawData,
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
        rawData,
      ];
}

base class CoordinatesEntity extends Equatable {
  const CoordinatesEntity({
    required this.latitude,
    required this.longitude,
  });

  factory CoordinatesEntity.fromOpenDroneID(
    Location location,
  ) =>
      CoordinatesEntity(
        latitude: location.latitude,
        longitude: location.longitude,
      );

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
    required this.rawData,
  });

  factory SelfIDEntity.fromOpenDroneID(
    SelfIDMessage selfIDMessage,
  ) =>
      SelfIDEntity(
        descriptionType: switch (selfIDMessage.descriptionType) {
          DescriptionTypeText() => UnmannedAircraftSelfIDDescriptionType.text,
          DescriptionTypeEmergency() =>
            UnmannedAircraftSelfIDDescriptionType.emergency,
          DescriptionTypeExtendedStatus() =>
            UnmannedAircraftSelfIDDescriptionType.extendedStatus,
          DescriptionTypePrivate() =>
            UnmannedAircraftSelfIDDescriptionType.private,
        },
        operationDescription: null,
        description: selfIDMessage.description,
        rawData: selfIDMessage.rawContent,
      );

  final UnmannedAircraftSelfIDDescriptionType descriptionType;

  final Uint8List? operationDescription;

  final String? description;

  final Uint8List? rawData;

  SelfIDEntity merge(
    SelfIDEntity? newSelfIDEntity,
  ) =>
      SelfIDEntity(
        descriptionType: newSelfIDEntity?.descriptionType ?? descriptionType,
        operationDescription:
            newSelfIDEntity?.operationDescription ?? operationDescription,
        description: newSelfIDEntity?.description ?? description,
        rawData: newSelfIDEntity?.rawData ?? rawData,
      );

  @override
  List<Object?> get props => [
        descriptionType,
        operationDescription,
        description,
        rawData,
      ];
}

base class OperatorIDEntity extends Equatable {
  const OperatorIDEntity({
    required this.operatorIDType,
    required this.operatorIDClassification,
    required this.operatorID,
    required this.iD,
    required this.rawData,
  });

  factory OperatorIDEntity.fromOpenDroneID(
    OperatorIDMessage operatorIDMessage,
  ) =>
      OperatorIDEntity(
        operatorIDType: null,
        operatorIDClassification: switch (operatorIDMessage.operatorIDType) {
          OperatorIDTypeOperatorID() =>
            UnmannedAircraftOperatorIDType.operatorID,
          OperatorIDTypePrivate() => UnmannedAircraftOperatorIDType.private,
        },
        operatorID: null,
        iD: operatorIDMessage.operatorID,
        rawData: operatorIDMessage.rawContent,
      );

  final int? operatorIDType;

  final UnmannedAircraftOperatorIDType? operatorIDClassification;

  final Uint8List? operatorID;

  final String? iD;

  final Uint8List? rawData;

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
        rawData: newOperatorIDEntity?.rawData ?? rawData,
      );

  @override
  List<Object?> get props => [
        operatorIDType,
        operatorIDClassification,
        operatorID,
        iD,
        rawData,
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
    required this.rawData,
  });

  factory AuthenticationEntity.fromOpenDroneID(
    AuthMessage authMessage,
  ) =>
      AuthenticationEntity(
        authenticationType: switch (authMessage.authType) {
          AuthType.none => UnmannedAircraftAuthenticationType.none,
          AuthType.UASIDSignature =>
            UnmannedAircraftAuthenticationType.uASIDSignature,
          AuthType.operatorIDSignature =>
            UnmannedAircraftAuthenticationType.operatorIDSignature,
          AuthType.messageSetSignature =>
            UnmannedAircraftAuthenticationType.messageSetSignature,
          AuthType.networkRemoteID =>
            UnmannedAircraftAuthenticationType.networkRemoteID,
          AuthType.specificAuthentication =>
            UnmannedAircraftAuthenticationType.specificAuthentication,
          AuthType.privateUse0xA =>
            UnmannedAircraftAuthenticationType.privateUse0xA,
          AuthType.privateUse0xB =>
            UnmannedAircraftAuthenticationType.privateUse0xB,
          AuthType.privateUse0xC =>
            UnmannedAircraftAuthenticationType.privateUse0xC,
          AuthType.privateUse0xD =>
            UnmannedAircraftAuthenticationType.privateUse0xD,
          AuthType.privateUse0xE =>
            UnmannedAircraftAuthenticationType.privateUse0xE,
          AuthType.privateUse0xF =>
            UnmannedAircraftAuthenticationType.privateUse0xF,
        },
        authenticationPageNumber: authMessage.authPageNumber,
        authenticationData: authMessage.authData.authData,
        lastAuthenticationPageIndex: authMessage.lastAuthPageIndex,
        authenticationLength: authMessage.authLength,
        timestamp: authMessage.timestamp,
        rawData: authMessage.rawContent,
      );

  final UnmannedAircraftAuthenticationType authenticationType;

  final int authenticationPageNumber;

  final Uint8List authenticationData;

  final int? lastAuthenticationPageIndex;

  final int? authenticationLength;

  final DateTime? timestamp;

  final Uint8List? rawData;

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
        rawData: newAuthenticationEntity?.rawData ?? rawData,
      );

  @override
  List<Object?> get props => [
        authenticationType,
        authenticationPageNumber,
        authenticationData,
        lastAuthenticationPageIndex,
        authenticationLength,
        timestamp,
        rawData,
      ];
}

base class GeolocatedRemoteIDCollectionEntity extends Equatable {
  const GeolocatedRemoteIDCollectionEntity({
    required this.remoteIDs,
    required this.device,
  });

  final List<RemoteIDEntity> remoteIDs;

  final DeviceEntity? device;

  @override
  List<Object?> get props => [
        remoteIDs,
        device,
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

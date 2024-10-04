import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:flutter_opendroneid/pigeon.dart';
import 'package:flutter_opendroneid/utils/conversions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class RemoteIdEntity {
  factory RemoteIdEntity(MessageContainer message) {
    return RemoteIdEntity._internal(
      macAddress: message.macAddress,
      lastUpdate: message.lastUpdate,
      messageSource: message.source,
      lastMessageRssi: message.lastMessageRssi,
      basicIdMessages: message.basicIdMessages,
      locationMessage: message.locationMessage,
      systemMessage: message.systemDataMessage,
      selfIDMessage: message.selfIdMessage,
      operatorIDMessage: message.operatorIdMessage,
      authMessage: message.authenticationMessage,
    );
  }

  RemoteIdEntity._internal({
    required this.macAddress,
    required this.lastUpdate,
    required this.messageSource,
    required this.lastMessageRssi,
    required Map<IDType, BasicIDMessage>? basicIdMessages,
    required LocationMessage? locationMessage,
    required SystemMessage? systemMessage,
    required SelfIDMessage? selfIDMessage,
    required OperatorIDMessage? operatorIDMessage,
    required AuthMessage? authMessage,
  })  : basicIDList = _getBasicIdList(basicIdMessages),
        locationID =
            (locationMessage != null) ? LocationID(locationMessage) : null,
        systemID = (systemMessage != null) ? SystemID(systemMessage) : null,
        selfID = (selfIDMessage != null) ? SelfID(selfIDMessage) : null,
        operatorID =
            (operatorIDMessage != null) ? OperatorID(operatorIDMessage) : null,
        authenticationID =
            (authMessage != null) ? AuthenticationID(authMessage) : null;

  RemoteIdEntity.coalesceProperties(
    RemoteIdEntity newRemoteIdEntity,
    RemoteIdEntity oldRemoteIdEntity,
  )   : macAddress = newRemoteIdEntity.macAddress,
        lastUpdate = newRemoteIdEntity.lastUpdate,
        messageSource = newRemoteIdEntity.messageSource,
        lastMessageRssi = newRemoteIdEntity.lastMessageRssi ??
            oldRemoteIdEntity.lastMessageRssi,
        basicIDList = newRemoteIdEntity.basicIDList.isNotEmpty
            ? newRemoteIdEntity.basicIDList
            : oldRemoteIdEntity.basicIDList,
        locationID =
            newRemoteIdEntity.locationID ?? oldRemoteIdEntity.locationID,
        systemID = newRemoteIdEntity.systemID ?? oldRemoteIdEntity.systemID,
        selfID = newRemoteIdEntity.selfID ?? oldRemoteIdEntity.selfID,
        operatorID =newRemoteIdEntity.operatorID ??
            oldRemoteIdEntity.operatorID,
        authenticationID = newRemoteIdEntity.authenticationID ??
            oldRemoteIdEntity.authenticationID;

  final String macAddress;
  final DateTime lastUpdate;
  final MessageSource messageSource;
  final int? lastMessageRssi;
  final List<BasicID> basicIDList;
  final LocationID? locationID;
  final SystemID? systemID;
  final SelfID? selfID;
  final OperatorID? operatorID;
  final AuthenticationID? authenticationID;

  static List<BasicID> _getBasicIdList(
    Map<IDType, BasicIDMessage>? basicIdMessages,
  ) {
    final basicIdList = <BasicID>[];
    if (basicIdMessages == null) {
      return basicIdList;
    }
    for (var i = 0; i < basicIdMessages.length; i++) {
      basicIdList.add(
        BasicID(basicIdMessages.entries.elementAt(i).value),
      );
    }
    return basicIdList;
  }

  @override
  int get hashCode => macAddress.hashCode;

  @override
  bool operator ==(covariant RemoteIdEntity other) =>
      macAddress == other.macAddress;

  Map<String, dynamic> toJson() {
    final basicIdListJson = <Map<String, dynamic>>[];
    for (final basicId in basicIDList) {
      basicIdListJson.add(basicId.toJson());
    }

    return <String, dynamic>{
      'macAddress': macAddress,
      'lastUpdate': lastUpdate.toString(),
      'messageSource': messageSource.name,
      'lastMessageRssi': lastMessageRssi.toString(),
      'basicIDList': basicIdListJson,
      'locationID': locationID?.toJson(),
      'systemID': systemID?.toJson(),
      'selfID': selfID?.toJson(),
      'operatorID': operatorID?.toJson(),
      'authenticationID': authenticationID?.toJson(),
    };
  }
}

abstract class RemoteID {
  RemoteID({required this.protocolVersion});

  final int protocolVersion;

  Map<String, dynamic> toJson();
}

class BasicID extends RemoteID {
  factory BasicID(BasicIDMessage basicIdMessage) {
    final uasId = basicIdMessage.uasID;
    final String id;
    switch (uasId) {
      case IDNone():
        id = '';
      case SerialNumber():
        id = uasId.serialNumber;
      case CAARegistrationID():
        id = uasId.registrationID;
      case UTMAssignedID():
        id = uasId.id.toString();
      case SpecificSessionID():
        id = uasId.id.toString();
    }

    return BasicID._internal(
      protocolVersion: basicIdMessage.protocolVersion,
      uasIdType: basicIdMessage.uasID.type,
      uasId: id,
      uaType: basicIdMessage.uaType,
    );
  }

  BasicID._internal({
    required super.protocolVersion,
    required this.uasIdType,
    required this.uasId,
    required this.uaType,
  });

  final IDType uasIdType;
  final String uasId;
  final UAType uaType;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'uasIdType': uasIdType.name,
      'uasId': uasId,
      'uaType': uaType.name,
    };
  }
}

class LocationID extends RemoteID {
  factory LocationID(LocationMessage locationMessage) {
    return LocationID._internal(
      protocolVersion: locationMessage.protocolVersion,
      status: locationMessage.status,
      heightType: locationMessage.heightType,
      direction: locationMessage.direction,
      horizontalSpeed: locationMessage.horizontalSpeed,
      verticalSpeed: locationMessage.verticalSpeed,
      latitude: locationMessage.location?.latitude,
      longitude: locationMessage.location?.longitude,
      altitudePressure: locationMessage.altitudePressure,
      altitudeGeodetic: locationMessage.altitudeGeodetic,
      height: locationMessage.height,
      verticalAccuracy: locationMessage.verticalAccuracy,
      horizontalAccuracy: locationMessage.horizontalAccuracy,
      baroAltitudeAccuracy: locationMessage.baroAltitudeAccuracy,
      speedAccuracy: locationMessage.speedAccuracy,
      timestamp: locationMessage.timestamp,
      timestampAccuracy: locationMessage.timestampAccuracy,
    );
  }

  LocationID._internal({
    required super.protocolVersion,
    required this.status,
    required this.heightType,
    required this.direction,
    required this.horizontalSpeed,
    required this.verticalSpeed,
    required this.latitude,
    required this.longitude,
    required this.altitudePressure,
    required this.altitudeGeodetic,
    required this.height,
    required this.verticalAccuracy,
    required this.horizontalAccuracy,
    required this.baroAltitudeAccuracy,
    required this.speedAccuracy,
    required this.timestamp,
    required this.timestampAccuracy,
  });

  final OperationalStatus status;
  final HeightType heightType;

  final int? direction;

  final double? horizontalSpeed;
  final double? verticalSpeed;

  final double? latitude;
  final double? longitude;

  final double? altitudePressure;
  final double? altitudeGeodetic;

  final double? height;

  final VerticalAccuracy verticalAccuracy;
  final HorizontalAccuracy horizontalAccuracy;

  final BaroAltitudeAccuracy baroAltitudeAccuracy;
  final SpeedAccuracy speedAccuracy;

  final Duration? timestamp;
  final Duration? timestampAccuracy;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'operationalStatus': status.name,
      'heightType': heightType.name,
      'direction': direction.toString(),
      'horizontalSpeed': horizontalSpeed.toString(),
      'verticalSpeed': verticalSpeed.toString(),
      'altitudePressure': altitudePressure.toString(),
      'altitudeGeodetic': altitudeGeodetic.toString(),
      'verticalAccuracy': verticalAccuracy.name,
      'horizontalAccuracy': horizontalAccuracy.name,
      'baroAltitudeAccuracy': baroAltitudeAccuracy.name,
      'speedAccuracy': speedAccuracy.name,
      'timestamp': timestamp?.toString(),
      'timestampAccuracy': timestampAccuracy?.toString(),
    };
  }
}

class SystemID extends RemoteID {
  factory SystemID(SystemMessage systemMessage) {
    return SystemID._internal(
      protocolVersion: systemMessage.protocolVersion,
      operatorLocationType: systemMessage.operatorLocationType,
      latitude: systemMessage.operatorLocation?.latitude,
      longitude: systemMessage.operatorLocation?.longitude,
      operatorAltitude: systemMessage.operatorAltitude,
      areaCount: systemMessage.areaCount,
      areaRadius: systemMessage.areaRadius,
      areaCeiling: systemMessage.areaCeiling,
      areaFloor: systemMessage.areaFloor,
      uaClassificationType:
          systemMessage.uaClassification.runtimeType.toString(),
      uaCategoryEurope: systemMessage.uaClassification.uaCategoryEuropeString(),
      uaClassEurope: systemMessage.uaClassification.uaClassEuropeString(),
      timestamp: systemMessage.timestamp,
    );
  }

  SystemID._internal({
    required super.protocolVersion,
    required this.operatorLocationType,
    required this.latitude,
    required this.longitude,
    required this.operatorAltitude,
    required this.areaCount,
    required this.areaRadius,
    required this.areaCeiling,
    required this.areaFloor,
    required this.uaClassificationType,
    required this.uaCategoryEurope,
    required this.uaClassEurope,
    required this.timestamp,
  });

  final OperatorLocationType operatorLocationType;
  final double? latitude;
  final double? longitude;
  final double? operatorAltitude;

  final int areaCount;
  final int areaRadius;
  final double? areaCeiling;
  final double? areaFloor;

  final String uaClassificationType;
  final String? uaCategoryEurope;
  final String? uaClassEurope;

  final DateTime timestamp;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'operatorLocationType': operatorLocationType.name,
      'latitude': latitude.toString(),
      'longitude': longitude.toString(),
      'operatorAltitude': operatorAltitude.toString(),
      'areaCount': areaCount.toString(),
      'areaRadius': areaRadius.toString(),
      'areaCeiling': areaCeiling.toString(),
      'areaFloor': areaFloor.toString(),
      'uaClassificationType': uaClassificationType,
      'uaCategoryEurope': uaCategoryEurope,
      'uaClassEurope': uaClassEurope,
      'timestamp': timestamp.toString(),
    };
  }
}

class OperatorID extends RemoteID {
  factory OperatorID(OperatorIDMessage operatorIDMessage) {
    return OperatorID._internal(
      protocolVersion: operatorIDMessage.protocolVersion,
      operatorIDType: operatorIDMessage.operatorIDType,
      operatorID: operatorIDMessage.operatorID,
    );
  }

  OperatorID._internal({
    required super.protocolVersion,
    required this.operatorIDType,
    required this.operatorID,
  });

  final OperatorIDType operatorIDType;
  final String operatorID;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'operatorIDType': operatorIDType.toString(),
      'operatorID': operatorID,
    };
  }
}

class SelfID extends RemoteID {
  factory SelfID(SelfIDMessage selfIDMessage) {
    return SelfID._internal(
      protocolVersion: selfIDMessage.protocolVersion,
      descriptionType: selfIDMessage.descriptionType,
      description: selfIDMessage.description,
    );
  }

  SelfID._internal({
    required super.protocolVersion,
    required this.descriptionType,
    required this.description,
  });

  final DescriptionType descriptionType;
  final String description;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'descriptionType': descriptionType.toString(),
      'description': description,
    };
  }
}

class AuthenticationID extends RemoteID {
  factory AuthenticationID(AuthMessage authMessage) {
    return AuthenticationID._internal(
      protocolVersion: authMessage.protocolVersion,
      authType: authMessage.authType,
      authPageNumber: authMessage.authPageNumber,
      lastAuthPageIndex: authMessage.lastAuthPageIndex,
      authLength: authMessage.authLength,
      timestamp: authMessage.timestamp,
      authData: authMessage.authData.toString(),
    );
  }

  AuthenticationID._internal({
    required super.protocolVersion,
    required this.authType,
    required this.authPageNumber,
    required this.lastAuthPageIndex,
    required this.authLength,
    required this.timestamp,
    required this.authData,
  });

  final AuthType authType;
  final int authPageNumber;
  final int? lastAuthPageIndex;
  final int? authLength;
  final DateTime? timestamp;
  final String authData;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'protocolVersion': protocolVersion.toString(),
      'authPageNumber': authPageNumber.toString(),
      'lastAuthPageIndex': lastAuthPageIndex.toString(),
      'authLength': authLength.toString(),
      'timestamp': timestamp.toString(),
      'authData': authData,
    };
  }
}

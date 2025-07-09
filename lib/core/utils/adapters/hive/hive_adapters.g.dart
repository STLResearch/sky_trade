// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class RestrictionModelAdapter extends TypeAdapter<RestrictionModel> {
  @override
  final typeId = 0;

  @override
  RestrictionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RestrictionModel(
      mId: fields[0] as String,
      mProperties: fields[1] as PropertiesModel,
      mGeometry: fields[2] as GeometryModel,
    );
  }

  @override
  void write(BinaryWriter writer, RestrictionModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.mId)
      ..writeByte(1)
      ..write(obj.mProperties)
      ..writeByte(2)
      ..write(obj.mGeometry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestrictionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PropertiesModelAdapter extends TypeAdapter<PropertiesModel> {
  @override
  final typeId = 1;

  @override
  PropertiesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PropertiesModel(
      mType: fields[0] as RestrictionType,
      mCountry: fields[1] as String,
      mUpperLimit: fields[2] as String,
      mLowerLimit: fields[3] as String,
      mMessage: fields[4] as String,
      mAdditionLinks: (fields[5] as List).cast<AdditionalLinkModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PropertiesModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.mType)
      ..writeByte(1)
      ..write(obj.mCountry)
      ..writeByte(2)
      ..write(obj.mUpperLimit)
      ..writeByte(3)
      ..write(obj.mLowerLimit)
      ..writeByte(4)
      ..write(obj.mMessage)
      ..writeByte(5)
      ..write(obj.mAdditionLinks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropertiesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AdditionalLinkModelAdapter extends TypeAdapter<AdditionalLinkModel> {
  @override
  final typeId = 2;

  @override
  AdditionalLinkModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdditionalLinkModel(
      mLink: fields[0] as String,
      mName: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AdditionalLinkModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mLink)
      ..writeByte(1)
      ..write(obj.mName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdditionalLinkModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GeometryModelAdapter extends TypeAdapter<GeometryModel> {
  @override
  final typeId = 3;

  @override
  GeometryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeometryModel(
      mType: fields[0] as GeometryType,
      mCoordinates: (fields[1] as List)
          .map((e) =>
              (e as List).map((e) => (e as List).cast<double>()).toList())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, GeometryModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mType)
      ..writeByte(1)
      ..write(obj.mCoordinates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeometryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RestrictionTypeAdapter extends TypeAdapter<RestrictionType> {
  @override
  final typeId = 4;

  @override
  RestrictionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RestrictionType.danger;
      case 1:
        return RestrictionType.prohibited;
      case 2:
        return RestrictionType.restricted;
      default:
        return RestrictionType.danger;
    }
  }

  @override
  void write(BinaryWriter writer, RestrictionType obj) {
    switch (obj) {
      case RestrictionType.danger:
        writer.writeByte(0);
      case RestrictionType.prohibited:
        writer.writeByte(1);
      case RestrictionType.restricted:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestrictionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GeometryTypeAdapter extends TypeAdapter<GeometryType> {
  @override
  final typeId = 5;

  @override
  GeometryType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GeometryType.point;
      case 1:
        return GeometryType.lineString;
      case 2:
        return GeometryType.polygon;
      case 3:
        return GeometryType.multiPoint;
      case 4:
        return GeometryType.multiLineString;
      case 5:
        return GeometryType.multiPolygon;
      default:
        return GeometryType.point;
    }
  }

  @override
  void write(BinaryWriter writer, GeometryType obj) {
    switch (obj) {
      case GeometryType.point:
        writer.writeByte(0);
      case GeometryType.lineString:
        writer.writeByte(1);
      case GeometryType.polygon:
        writer.writeByte(2);
      case GeometryType.multiPoint:
        writer.writeByte(3);
      case GeometryType.multiLineString:
        writer.writeByte(4);
      case GeometryType.multiPolygon:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeometryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SkyTradeUserModelAdapter extends TypeAdapter<SkyTradeUserModel> {
  @override
  final typeId = 6;

  @override
  SkyTradeUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SkyTradeUserModel(
      mId: fields[0] as dynamic,
      mCreatedAt: fields[1] as DateTime,
      mUpdateAt: fields[2] as DateTime,
      mUsername: fields[3] as String?,
      mPassword: fields[4] as String?,
      mName: fields[5] as String,
      mEmail: fields[6] as String,
      mBlockchainAddress: fields[7] as String,
      mIsAdmin: fields[8] as bool,
      mNewsletter: fields[9] as bool,
      mCategoryId: (fields[10] as num).toInt(),
      mPhoneNumber: fields[11] as String,
      mKYCStatusId: (fields[12] as num).toInt(),
      mIsActive: fields[13] as bool,
      mUsedReferralCodeId: fields[14] as dynamic,
      mOwnedReferralCodeId: fields[15] as dynamic,
      mIsUserRewardClaimed: fields[16] as bool,
      mOwnedReferralCode: fields[17] as OwnedReferralCodeModel,
    );
  }

  @override
  void write(BinaryWriter writer, SkyTradeUserModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.mId)
      ..writeByte(1)
      ..write(obj.mCreatedAt)
      ..writeByte(2)
      ..write(obj.mUpdateAt)
      ..writeByte(3)
      ..write(obj.mUsername)
      ..writeByte(4)
      ..write(obj.mPassword)
      ..writeByte(5)
      ..write(obj.mName)
      ..writeByte(6)
      ..write(obj.mEmail)
      ..writeByte(7)
      ..write(obj.mBlockchainAddress)
      ..writeByte(8)
      ..write(obj.mIsAdmin)
      ..writeByte(9)
      ..write(obj.mNewsletter)
      ..writeByte(10)
      ..write(obj.mCategoryId)
      ..writeByte(11)
      ..write(obj.mPhoneNumber)
      ..writeByte(12)
      ..write(obj.mKYCStatusId)
      ..writeByte(13)
      ..write(obj.mIsActive)
      ..writeByte(14)
      ..write(obj.mUsedReferralCodeId)
      ..writeByte(15)
      ..write(obj.mOwnedReferralCodeId)
      ..writeByte(16)
      ..write(obj.mIsUserRewardClaimed)
      ..writeByte(17)
      ..write(obj.mOwnedReferralCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkyTradeUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OwnedReferralCodeModelAdapter
    extends TypeAdapter<OwnedReferralCodeModel> {
  @override
  final typeId = 7;

  @override
  OwnedReferralCodeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OwnedReferralCodeModel(
      mId: fields[0] as dynamic,
      mCode: fields[1] as String,
      mCodeChanged: fields[2] as bool,
      mUsedByBonusEarned: fields[3] as bool,
      mOwnedByBonusEarned: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, OwnedReferralCodeModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.mId)
      ..writeByte(1)
      ..write(obj.mCode)
      ..writeByte(2)
      ..write(obj.mCodeChanged)
      ..writeByte(3)
      ..write(obj.mUsedByBonusEarned)
      ..writeByte(4)
      ..write(obj.mOwnedByBonusEarned);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnedReferralCodeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RemoteIDModelAdapter extends TypeAdapter<RemoteIDModel> {
  @override
  final typeId = 8;

  @override
  RemoteIDModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RemoteIDModel(
      mConnection: fields[0] as ConnectionModel,
      mBasicIDs: (fields[1] as List?)?.cast<BasicIDModel>(),
      mLocation: fields[2] as LocationModel?,
      mSystem: fields[3] as SystemModel?,
      mSelfID: fields[4] as SelfIDModel?,
      mOperatorID: fields[5] as OperatorIDModel?,
      mAuthentication: fields[6] as AuthenticationModel?,
    );
  }

  @override
  void write(BinaryWriter writer, RemoteIDModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.mConnection)
      ..writeByte(1)
      ..write(obj.mBasicIDs)
      ..writeByte(2)
      ..write(obj.mLocation)
      ..writeByte(3)
      ..write(obj.mSystem)
      ..writeByte(4)
      ..write(obj.mSelfID)
      ..writeByte(5)
      ..write(obj.mOperatorID)
      ..writeByte(6)
      ..write(obj.mAuthentication);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemoteIDModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConnectionModelAdapter extends TypeAdapter<ConnectionModel> {
  @override
  final typeId = 9;

  @override
  ConnectionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConnectionModel(
      mMacAddress: fields[0] as String,
      mLastSeen: fields[1] as DateTime,
      mMessageSource: fields[2] as RemoteIDMessageSource,
      mRssi: (fields[3] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, ConnectionModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.mMacAddress)
      ..writeByte(1)
      ..write(obj.mLastSeen)
      ..writeByte(2)
      ..write(obj.mMessageSource)
      ..writeByte(3)
      ..write(obj.mRssi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RemoteIDMessageSourceAdapter extends TypeAdapter<RemoteIDMessageSource> {
  @override
  final typeId = 10;

  @override
  RemoteIDMessageSource read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RemoteIDMessageSource.skyTradeBackend;
      case 1:
        return RemoteIDMessageSource.bluetoothLegacy;
      case 2:
        return RemoteIDMessageSource.bluetoothLongRange;
      case 3:
        return RemoteIDMessageSource.wifiNan;
      case 4:
        return RemoteIDMessageSource.wifiBeacon;
      case 5:
        return RemoteIDMessageSource.unknown;
      default:
        return RemoteIDMessageSource.skyTradeBackend;
    }
  }

  @override
  void write(BinaryWriter writer, RemoteIDMessageSource obj) {
    switch (obj) {
      case RemoteIDMessageSource.skyTradeBackend:
        writer.writeByte(0);
      case RemoteIDMessageSource.bluetoothLegacy:
        writer.writeByte(1);
      case RemoteIDMessageSource.bluetoothLongRange:
        writer.writeByte(2);
      case RemoteIDMessageSource.wifiNan:
        writer.writeByte(3);
      case RemoteIDMessageSource.wifiBeacon:
        writer.writeByte(4);
      case RemoteIDMessageSource.unknown:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemoteIDMessageSourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BasicIDModelAdapter extends TypeAdapter<BasicIDModel> {
  @override
  final typeId = 11;

  @override
  BasicIDModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasicIDModel(
      mType: fields[0] as UnmannedAircraftType,
      mIDType: fields[1] as UnmannedAircraftIDType,
      mSerialNumber: fields[2] as String?,
      mRegistrationID: fields[3] as String?,
      mID: fields[4] as Uint8List?,
      mRawData: fields[5] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, BasicIDModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.mType)
      ..writeByte(1)
      ..write(obj.mIDType)
      ..writeByte(2)
      ..write(obj.mSerialNumber)
      ..writeByte(3)
      ..write(obj.mRegistrationID)
      ..writeByte(4)
      ..write(obj.mID)
      ..writeByte(5)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicIDModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftTypeAdapter extends TypeAdapter<UnmannedAircraftType> {
  @override
  final typeId = 12;

  @override
  UnmannedAircraftType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftType.none;
      case 1:
        return UnmannedAircraftType.aeroplane;
      case 2:
        return UnmannedAircraftType.helicopterOrMultirotor;
      case 3:
        return UnmannedAircraftType.gyroplane;
      case 4:
        return UnmannedAircraftType.hybridLift;
      case 5:
        return UnmannedAircraftType.ornithopter;
      case 6:
        return UnmannedAircraftType.glider;
      case 7:
        return UnmannedAircraftType.kite;
      case 8:
        return UnmannedAircraftType.freeBalloon;
      case 9:
        return UnmannedAircraftType.captiveBalloon;
      case 10:
        return UnmannedAircraftType.airship;
      case 11:
        return UnmannedAircraftType.freeFallParachute;
      case 12:
        return UnmannedAircraftType.rocket;
      case 13:
        return UnmannedAircraftType.tetheredPoweredAircraft;
      case 14:
        return UnmannedAircraftType.groundObstacle;
      case 15:
        return UnmannedAircraftType.other;
      default:
        return UnmannedAircraftType.none;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftType obj) {
    switch (obj) {
      case UnmannedAircraftType.none:
        writer.writeByte(0);
      case UnmannedAircraftType.aeroplane:
        writer.writeByte(1);
      case UnmannedAircraftType.helicopterOrMultirotor:
        writer.writeByte(2);
      case UnmannedAircraftType.gyroplane:
        writer.writeByte(3);
      case UnmannedAircraftType.hybridLift:
        writer.writeByte(4);
      case UnmannedAircraftType.ornithopter:
        writer.writeByte(5);
      case UnmannedAircraftType.glider:
        writer.writeByte(6);
      case UnmannedAircraftType.kite:
        writer.writeByte(7);
      case UnmannedAircraftType.freeBalloon:
        writer.writeByte(8);
      case UnmannedAircraftType.captiveBalloon:
        writer.writeByte(9);
      case UnmannedAircraftType.airship:
        writer.writeByte(10);
      case UnmannedAircraftType.freeFallParachute:
        writer.writeByte(11);
      case UnmannedAircraftType.rocket:
        writer.writeByte(12);
      case UnmannedAircraftType.tetheredPoweredAircraft:
        writer.writeByte(13);
      case UnmannedAircraftType.groundObstacle:
        writer.writeByte(14);
      case UnmannedAircraftType.other:
        writer.writeByte(15);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftIDTypeAdapter
    extends TypeAdapter<UnmannedAircraftIDType> {
  @override
  final typeId = 13;

  @override
  UnmannedAircraftIDType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftIDType.none;
      case 1:
        return UnmannedAircraftIDType.serialNumber;
      case 2:
        return UnmannedAircraftIDType.cAARegistrationID;
      case 3:
        return UnmannedAircraftIDType.uTMAssignedID;
      case 4:
        return UnmannedAircraftIDType.specificSessionID;
      default:
        return UnmannedAircraftIDType.none;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftIDType obj) {
    switch (obj) {
      case UnmannedAircraftIDType.none:
        writer.writeByte(0);
      case UnmannedAircraftIDType.serialNumber:
        writer.writeByte(1);
      case UnmannedAircraftIDType.cAARegistrationID:
        writer.writeByte(2);
      case UnmannedAircraftIDType.uTMAssignedID:
        writer.writeByte(3);
      case UnmannedAircraftIDType.specificSessionID:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftIDTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationModelAdapter extends TypeAdapter<LocationModel> {
  @override
  final typeId = 14;

  @override
  LocationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationModel(
      mOperationalStatus: fields[0] as UnmannedAircraftOperationalStatus,
      mHeightType: fields[1] as UnmannedAircraftHeightType,
      mHorizontalAccuracy: fields[2] as UnmannedAircraftHorizontalAccuracy,
      mVerticalAccuracy:
          fields[3] as UnmannedAircraftVerticalOrBarometerAccuracy,
      mBarometerAccuracy:
          fields[4] as UnmannedAircraftVerticalOrBarometerAccuracy,
      mSpeedAccuracy: fields[5] as UnmannedAircraftSpeedAccuracy,
      mDirection: (fields[6] as num?)?.toInt(),
      mHorizontalSpeed: (fields[7] as num?)?.toDouble(),
      mVerticalSpeed: (fields[8] as num?)?.toDouble(),
      mLatitude: (fields[9] as num?)?.toDouble(),
      mLongitude: (fields[10] as num?)?.toDouble(),
      mLocation: fields[11] as CoordinatesModel?,
      mAltitudePressure: (fields[12] as num?)?.toDouble(),
      mAltitudeGeodetic: (fields[13] as num?)?.toDouble(),
      mHeight: (fields[14] as num?)?.toDouble(),
      mTimestamp: fields[15] as Duration?,
      mTimestampAccuracy: fields[16] as Duration?,
      mRawData: fields[17] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, LocationModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.mOperationalStatus)
      ..writeByte(1)
      ..write(obj.mHeightType)
      ..writeByte(2)
      ..write(obj.mHorizontalAccuracy)
      ..writeByte(3)
      ..write(obj.mVerticalAccuracy)
      ..writeByte(4)
      ..write(obj.mBarometerAccuracy)
      ..writeByte(5)
      ..write(obj.mSpeedAccuracy)
      ..writeByte(6)
      ..write(obj.mDirection)
      ..writeByte(7)
      ..write(obj.mHorizontalSpeed)
      ..writeByte(8)
      ..write(obj.mVerticalSpeed)
      ..writeByte(9)
      ..write(obj.mLatitude)
      ..writeByte(10)
      ..write(obj.mLongitude)
      ..writeByte(11)
      ..write(obj.mLocation)
      ..writeByte(12)
      ..write(obj.mAltitudePressure)
      ..writeByte(13)
      ..write(obj.mAltitudeGeodetic)
      ..writeByte(14)
      ..write(obj.mHeight)
      ..writeByte(15)
      ..write(obj.mTimestamp)
      ..writeByte(16)
      ..write(obj.mTimestampAccuracy)
      ..writeByte(17)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftOperationalStatusAdapter
    extends TypeAdapter<UnmannedAircraftOperationalStatus> {
  @override
  final typeId = 15;

  @override
  UnmannedAircraftOperationalStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftOperationalStatus.none;
      case 1:
        return UnmannedAircraftOperationalStatus.ground;
      case 2:
        return UnmannedAircraftOperationalStatus.airborne;
      case 3:
        return UnmannedAircraftOperationalStatus.emergency;
      case 4:
        return UnmannedAircraftOperationalStatus.remoteIDSystemFailure;
      default:
        return UnmannedAircraftOperationalStatus.none;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftOperationalStatus obj) {
    switch (obj) {
      case UnmannedAircraftOperationalStatus.none:
        writer.writeByte(0);
      case UnmannedAircraftOperationalStatus.ground:
        writer.writeByte(1);
      case UnmannedAircraftOperationalStatus.airborne:
        writer.writeByte(2);
      case UnmannedAircraftOperationalStatus.emergency:
        writer.writeByte(3);
      case UnmannedAircraftOperationalStatus.remoteIDSystemFailure:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftOperationalStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftHeightTypeAdapter
    extends TypeAdapter<UnmannedAircraftHeightType> {
  @override
  final typeId = 16;

  @override
  UnmannedAircraftHeightType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftHeightType.aboveGroundLevel;
      case 1:
        return UnmannedAircraftHeightType.aboveTakeoff;
      default:
        return UnmannedAircraftHeightType.aboveGroundLevel;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftHeightType obj) {
    switch (obj) {
      case UnmannedAircraftHeightType.aboveGroundLevel:
        writer.writeByte(0);
      case UnmannedAircraftHeightType.aboveTakeoff:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftHeightTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftHorizontalAccuracyAdapter
    extends TypeAdapter<UnmannedAircraftHorizontalAccuracy> {
  @override
  final typeId = 17;

  @override
  UnmannedAircraftHorizontalAccuracy read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftHorizontalAccuracy.unknown;
      case 1:
        return UnmannedAircraftHorizontalAccuracy.kilometers_18_52;
      case 2:
        return UnmannedAircraftHorizontalAccuracy.kilometers_7_408;
      case 3:
        return UnmannedAircraftHorizontalAccuracy.kilometers_3_704;
      case 4:
        return UnmannedAircraftHorizontalAccuracy.kilometers_1_852;
      case 5:
        return UnmannedAircraftHorizontalAccuracy.meters_926;
      case 6:
        return UnmannedAircraftHorizontalAccuracy.meters_555_6;
      case 7:
        return UnmannedAircraftHorizontalAccuracy.meters_185_2;
      case 8:
        return UnmannedAircraftHorizontalAccuracy.meters_92_6;
      case 9:
        return UnmannedAircraftHorizontalAccuracy.meters_30;
      case 10:
        return UnmannedAircraftHorizontalAccuracy.meters_10;
      case 11:
        return UnmannedAircraftHorizontalAccuracy.meters_3;
      case 12:
        return UnmannedAircraftHorizontalAccuracy.meters_1;
      default:
        return UnmannedAircraftHorizontalAccuracy.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftHorizontalAccuracy obj) {
    switch (obj) {
      case UnmannedAircraftHorizontalAccuracy.unknown:
        writer.writeByte(0);
      case UnmannedAircraftHorizontalAccuracy.kilometers_18_52:
        writer.writeByte(1);
      case UnmannedAircraftHorizontalAccuracy.kilometers_7_408:
        writer.writeByte(2);
      case UnmannedAircraftHorizontalAccuracy.kilometers_3_704:
        writer.writeByte(3);
      case UnmannedAircraftHorizontalAccuracy.kilometers_1_852:
        writer.writeByte(4);
      case UnmannedAircraftHorizontalAccuracy.meters_926:
        writer.writeByte(5);
      case UnmannedAircraftHorizontalAccuracy.meters_555_6:
        writer.writeByte(6);
      case UnmannedAircraftHorizontalAccuracy.meters_185_2:
        writer.writeByte(7);
      case UnmannedAircraftHorizontalAccuracy.meters_92_6:
        writer.writeByte(8);
      case UnmannedAircraftHorizontalAccuracy.meters_30:
        writer.writeByte(9);
      case UnmannedAircraftHorizontalAccuracy.meters_10:
        writer.writeByte(10);
      case UnmannedAircraftHorizontalAccuracy.meters_3:
        writer.writeByte(11);
      case UnmannedAircraftHorizontalAccuracy.meters_1:
        writer.writeByte(12);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftHorizontalAccuracyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftVerticalOrBarometerAccuracyAdapter
    extends TypeAdapter<UnmannedAircraftVerticalOrBarometerAccuracy> {
  @override
  final typeId = 18;

  @override
  UnmannedAircraftVerticalOrBarometerAccuracy read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftVerticalOrBarometerAccuracy.unknown;
      case 1:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_150;
      case 2:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_45;
      case 3:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_25;
      case 4:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_10;
      case 5:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_3;
      case 6:
        return UnmannedAircraftVerticalOrBarometerAccuracy.meters_1;
      default:
        return UnmannedAircraftVerticalOrBarometerAccuracy.unknown;
    }
  }

  @override
  void write(
      BinaryWriter writer, UnmannedAircraftVerticalOrBarometerAccuracy obj) {
    switch (obj) {
      case UnmannedAircraftVerticalOrBarometerAccuracy.unknown:
        writer.writeByte(0);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_150:
        writer.writeByte(1);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_45:
        writer.writeByte(2);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_25:
        writer.writeByte(3);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_10:
        writer.writeByte(4);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_3:
        writer.writeByte(5);
      case UnmannedAircraftVerticalOrBarometerAccuracy.meters_1:
        writer.writeByte(6);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftVerticalOrBarometerAccuracyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftSpeedAccuracyAdapter
    extends TypeAdapter<UnmannedAircraftSpeedAccuracy> {
  @override
  final typeId = 19;

  @override
  UnmannedAircraftSpeedAccuracy read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftSpeedAccuracy.unknown;
      case 1:
        return UnmannedAircraftSpeedAccuracy.meterPerSecond_10;
      case 2:
        return UnmannedAircraftSpeedAccuracy.meterPerSecond_3;
      case 3:
        return UnmannedAircraftSpeedAccuracy.meterPerSecond_1;
      case 4:
        return UnmannedAircraftSpeedAccuracy.meterPerSecond_0_3;
      default:
        return UnmannedAircraftSpeedAccuracy.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftSpeedAccuracy obj) {
    switch (obj) {
      case UnmannedAircraftSpeedAccuracy.unknown:
        writer.writeByte(0);
      case UnmannedAircraftSpeedAccuracy.meterPerSecond_10:
        writer.writeByte(1);
      case UnmannedAircraftSpeedAccuracy.meterPerSecond_3:
        writer.writeByte(2);
      case UnmannedAircraftSpeedAccuracy.meterPerSecond_1:
        writer.writeByte(3);
      case UnmannedAircraftSpeedAccuracy.meterPerSecond_0_3:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftSpeedAccuracyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SystemModelAdapter extends TypeAdapter<SystemModel> {
  @override
  final typeId = 21;

  @override
  SystemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SystemModel(
      mOperatorLocationType: fields[0] as UnmannedAircraftOperatorLocationType,
      mClassificationType: fields[1] as UnmannedAircraftClassificationType,
      mAreaCount: (fields[4] as num).toInt(),
      mAreaRadius: (fields[5] as num).toInt(),
      mTimestamp: fields[6] as DateTime,
      mOperatorLatitude: (fields[7] as num?)?.toDouble(),
      mOperatorLongitude: (fields[8] as num?)?.toDouble(),
      mOperatorLocation: fields[9] as CoordinatesModel?,
      mOperatorAltitude: (fields[10] as num?)?.toDouble(),
      mAreaCeiling: (fields[11] as num?)?.toDouble(),
      mAreaFloor: (fields[12] as num?)?.toDouble(),
      mCategory: fields[2] as UnmannedAircraftCategory,
      mClassValue: fields[3] as UnmannedAircraftClassValue,
      mRawData: fields[13] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, SystemModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.mOperatorLocationType)
      ..writeByte(1)
      ..write(obj.mClassificationType)
      ..writeByte(2)
      ..write(obj.mCategory)
      ..writeByte(3)
      ..write(obj.mClassValue)
      ..writeByte(4)
      ..write(obj.mAreaCount)
      ..writeByte(5)
      ..write(obj.mAreaRadius)
      ..writeByte(6)
      ..write(obj.mTimestamp)
      ..writeByte(7)
      ..write(obj.mOperatorLatitude)
      ..writeByte(8)
      ..write(obj.mOperatorLongitude)
      ..writeByte(9)
      ..write(obj.mOperatorLocation)
      ..writeByte(10)
      ..write(obj.mOperatorAltitude)
      ..writeByte(11)
      ..write(obj.mAreaCeiling)
      ..writeByte(12)
      ..write(obj.mAreaFloor)
      ..writeByte(13)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftOperatorLocationTypeAdapter
    extends TypeAdapter<UnmannedAircraftOperatorLocationType> {
  @override
  final typeId = 22;

  @override
  UnmannedAircraftOperatorLocationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftOperatorLocationType.invalid;
      case 1:
        return UnmannedAircraftOperatorLocationType.takeoff;
      case 2:
        return UnmannedAircraftOperatorLocationType.dynamic;
      case 3:
        return UnmannedAircraftOperatorLocationType.fixed;
      default:
        return UnmannedAircraftOperatorLocationType.invalid;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftOperatorLocationType obj) {
    switch (obj) {
      case UnmannedAircraftOperatorLocationType.invalid:
        writer.writeByte(0);
      case UnmannedAircraftOperatorLocationType.takeoff:
        writer.writeByte(1);
      case UnmannedAircraftOperatorLocationType.dynamic:
        writer.writeByte(2);
      case UnmannedAircraftOperatorLocationType.fixed:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftOperatorLocationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftClassificationTypeAdapter
    extends TypeAdapter<UnmannedAircraftClassificationType> {
  @override
  final typeId = 23;

  @override
  UnmannedAircraftClassificationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftClassificationType.undeclared;
      case 1:
        return UnmannedAircraftClassificationType.europeanUnion;
      default:
        return UnmannedAircraftClassificationType.undeclared;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftClassificationType obj) {
    switch (obj) {
      case UnmannedAircraftClassificationType.undeclared:
        writer.writeByte(0);
      case UnmannedAircraftClassificationType.europeanUnion:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftClassificationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftCategoryAdapter
    extends TypeAdapter<UnmannedAircraftCategory> {
  @override
  final typeId = 24;

  @override
  UnmannedAircraftCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftCategory.undefined;
      case 1:
        return UnmannedAircraftCategory.europeanUnionOpen;
      case 2:
        return UnmannedAircraftCategory.europeanUnionSpecific;
      case 3:
        return UnmannedAircraftCategory.europeanUnionCertified;
      default:
        return UnmannedAircraftCategory.undefined;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftCategory obj) {
    switch (obj) {
      case UnmannedAircraftCategory.undefined:
        writer.writeByte(0);
      case UnmannedAircraftCategory.europeanUnionOpen:
        writer.writeByte(1);
      case UnmannedAircraftCategory.europeanUnionSpecific:
        writer.writeByte(2);
      case UnmannedAircraftCategory.europeanUnionCertified:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftClassValueAdapter
    extends TypeAdapter<UnmannedAircraftClassValue> {
  @override
  final typeId = 25;

  @override
  UnmannedAircraftClassValue read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftClassValue.undefined;
      case 1:
        return UnmannedAircraftClassValue.europeanUnionClass0;
      case 2:
        return UnmannedAircraftClassValue.europeanUnionClass1;
      case 3:
        return UnmannedAircraftClassValue.europeanUnionClass2;
      case 4:
        return UnmannedAircraftClassValue.europeanUnionClass3;
      case 5:
        return UnmannedAircraftClassValue.europeanUnionClass4;
      case 6:
        return UnmannedAircraftClassValue.europeanUnionClass5;
      case 7:
        return UnmannedAircraftClassValue.europeanUnionClass6;
      case 8:
        return UnmannedAircraftClassValue.europeanUnionClass7;
      default:
        return UnmannedAircraftClassValue.undefined;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftClassValue obj) {
    switch (obj) {
      case UnmannedAircraftClassValue.undefined:
        writer.writeByte(0);
      case UnmannedAircraftClassValue.europeanUnionClass0:
        writer.writeByte(1);
      case UnmannedAircraftClassValue.europeanUnionClass1:
        writer.writeByte(2);
      case UnmannedAircraftClassValue.europeanUnionClass2:
        writer.writeByte(3);
      case UnmannedAircraftClassValue.europeanUnionClass3:
        writer.writeByte(4);
      case UnmannedAircraftClassValue.europeanUnionClass4:
        writer.writeByte(5);
      case UnmannedAircraftClassValue.europeanUnionClass5:
        writer.writeByte(6);
      case UnmannedAircraftClassValue.europeanUnionClass6:
        writer.writeByte(7);
      case UnmannedAircraftClassValue.europeanUnionClass7:
        writer.writeByte(8);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftClassValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoordinatesModelAdapter extends TypeAdapter<CoordinatesModel> {
  @override
  final typeId = 26;

  @override
  CoordinatesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoordinatesModel(
      mLatitude: (fields[0] as num).toDouble(),
      mLongitude: (fields[1] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, CoordinatesModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mLatitude)
      ..writeByte(1)
      ..write(obj.mLongitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinatesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SelfIDModelAdapter extends TypeAdapter<SelfIDModel> {
  @override
  final typeId = 27;

  @override
  SelfIDModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SelfIDModel(
      mDescriptionType: fields[0] as UnmannedAircraftSelfIDDescriptionType,
      mOperationDescription: fields[1] as Uint8List?,
      mDescription: fields[2] as String?,
      mRawData: fields[3] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, SelfIDModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.mDescriptionType)
      ..writeByte(1)
      ..write(obj.mOperationDescription)
      ..writeByte(2)
      ..write(obj.mDescription)
      ..writeByte(3)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SelfIDModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftSelfIDDescriptionTypeAdapter
    extends TypeAdapter<UnmannedAircraftSelfIDDescriptionType> {
  @override
  final typeId = 28;

  @override
  UnmannedAircraftSelfIDDescriptionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftSelfIDDescriptionType.invalid;
      case 1:
        return UnmannedAircraftSelfIDDescriptionType.text;
      case 2:
        return UnmannedAircraftSelfIDDescriptionType.emergency;
      case 3:
        return UnmannedAircraftSelfIDDescriptionType.extendedStatus;
      case 4:
        return UnmannedAircraftSelfIDDescriptionType.private;
      default:
        return UnmannedAircraftSelfIDDescriptionType.invalid;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftSelfIDDescriptionType obj) {
    switch (obj) {
      case UnmannedAircraftSelfIDDescriptionType.invalid:
        writer.writeByte(0);
      case UnmannedAircraftSelfIDDescriptionType.text:
        writer.writeByte(1);
      case UnmannedAircraftSelfIDDescriptionType.emergency:
        writer.writeByte(2);
      case UnmannedAircraftSelfIDDescriptionType.extendedStatus:
        writer.writeByte(3);
      case UnmannedAircraftSelfIDDescriptionType.private:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftSelfIDDescriptionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OperatorIDModelAdapter extends TypeAdapter<OperatorIDModel> {
  @override
  final typeId = 29;

  @override
  OperatorIDModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperatorIDModel(
      mOperatorIDType: (fields[0] as num?)?.toInt(),
      mOperatorIDClassification: fields[1] as UnmannedAircraftOperatorIDType?,
      mOperatorID: fields[2] as Uint8List?,
      mID: fields[3] as String?,
      mRawData: fields[4] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, OperatorIDModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.mOperatorIDType)
      ..writeByte(1)
      ..write(obj.mOperatorIDClassification)
      ..writeByte(2)
      ..write(obj.mOperatorID)
      ..writeByte(3)
      ..write(obj.mID)
      ..writeByte(4)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorIDModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftOperatorIDTypeAdapter
    extends TypeAdapter<UnmannedAircraftOperatorIDType> {
  @override
  final typeId = 30;

  @override
  UnmannedAircraftOperatorIDType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftOperatorIDType.operatorID;
      case 1:
        return UnmannedAircraftOperatorIDType.private;
      default:
        return UnmannedAircraftOperatorIDType.operatorID;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftOperatorIDType obj) {
    switch (obj) {
      case UnmannedAircraftOperatorIDType.operatorID:
        writer.writeByte(0);
      case UnmannedAircraftOperatorIDType.private:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftOperatorIDTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthenticationModelAdapter extends TypeAdapter<AuthenticationModel> {
  @override
  final typeId = 31;

  @override
  AuthenticationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthenticationModel(
      mAuthenticationType: fields[0] as UnmannedAircraftAuthenticationType,
      mAuthenticationPageNumber: (fields[1] as num).toInt(),
      mAuthenticationData: fields[2] as Uint8List,
      mLastAuthenticationPageIndex: (fields[3] as num?)?.toInt(),
      mAuthenticationLength: (fields[4] as num?)?.toInt(),
      mTimestamp: fields[5] as DateTime?,
      mRawData: fields[6] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthenticationModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.mAuthenticationType)
      ..writeByte(1)
      ..write(obj.mAuthenticationPageNumber)
      ..writeByte(2)
      ..write(obj.mAuthenticationData)
      ..writeByte(3)
      ..write(obj.mLastAuthenticationPageIndex)
      ..writeByte(4)
      ..write(obj.mAuthenticationLength)
      ..writeByte(5)
      ..write(obj.mTimestamp)
      ..writeByte(6)
      ..write(obj.mRawData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthenticationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnmannedAircraftAuthenticationTypeAdapter
    extends TypeAdapter<UnmannedAircraftAuthenticationType> {
  @override
  final typeId = 32;

  @override
  UnmannedAircraftAuthenticationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnmannedAircraftAuthenticationType.none;
      case 1:
        return UnmannedAircraftAuthenticationType.uASIDSignature;
      case 2:
        return UnmannedAircraftAuthenticationType.operatorIDSignature;
      case 3:
        return UnmannedAircraftAuthenticationType.messageSetSignature;
      case 4:
        return UnmannedAircraftAuthenticationType.networkRemoteID;
      case 5:
        return UnmannedAircraftAuthenticationType.specificAuthentication;
      case 6:
        return UnmannedAircraftAuthenticationType.privateUse0xA;
      case 7:
        return UnmannedAircraftAuthenticationType.privateUse0xB;
      case 8:
        return UnmannedAircraftAuthenticationType.privateUse0xC;
      case 9:
        return UnmannedAircraftAuthenticationType.privateUse0xD;
      case 10:
        return UnmannedAircraftAuthenticationType.privateUse0xE;
      case 11:
        return UnmannedAircraftAuthenticationType.privateUse0xF;
      default:
        return UnmannedAircraftAuthenticationType.none;
    }
  }

  @override
  void write(BinaryWriter writer, UnmannedAircraftAuthenticationType obj) {
    switch (obj) {
      case UnmannedAircraftAuthenticationType.none:
        writer.writeByte(0);
      case UnmannedAircraftAuthenticationType.uASIDSignature:
        writer.writeByte(1);
      case UnmannedAircraftAuthenticationType.operatorIDSignature:
        writer.writeByte(2);
      case UnmannedAircraftAuthenticationType.messageSetSignature:
        writer.writeByte(3);
      case UnmannedAircraftAuthenticationType.networkRemoteID:
        writer.writeByte(4);
      case UnmannedAircraftAuthenticationType.specificAuthentication:
        writer.writeByte(5);
      case UnmannedAircraftAuthenticationType.privateUse0xA:
        writer.writeByte(6);
      case UnmannedAircraftAuthenticationType.privateUse0xB:
        writer.writeByte(7);
      case UnmannedAircraftAuthenticationType.privateUse0xC:
        writer.writeByte(8);
      case UnmannedAircraftAuthenticationType.privateUse0xD:
        writer.writeByte(9);
      case UnmannedAircraftAuthenticationType.privateUse0xE:
        writer.writeByte(10);
      case UnmannedAircraftAuthenticationType.privateUse0xF:
        writer.writeByte(11);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnmannedAircraftAuthenticationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GeolocatedRemoteIDCollectionModelAdapter
    extends TypeAdapter<GeolocatedRemoteIDCollectionModel> {
  @override
  final typeId = 36;

  @override
  GeolocatedRemoteIDCollectionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeolocatedRemoteIDCollectionModel(
      mRemoteIDs: (fields[0] as List).cast<RemoteIDModel>(),
      mDevice: fields[1] as DeviceModel?,
    );
  }

  @override
  void write(BinaryWriter writer, GeolocatedRemoteIDCollectionModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mRemoteIDs)
      ..writeByte(1)
      ..write(obj.mDevice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeolocatedRemoteIDCollectionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DeviceModelAdapter extends TypeAdapter<DeviceModel> {
  @override
  final typeId = 37;

  @override
  DeviceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceModel(
      mLatitude: (fields[0] as num).toDouble(),
      mLongitude: (fields[1] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, DeviceModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mLatitude)
      ..writeByte(1)
      ..write(obj.mLongitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

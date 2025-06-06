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

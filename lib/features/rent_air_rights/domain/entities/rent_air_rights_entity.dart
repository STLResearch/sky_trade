import 'package:equatable/equatable.dart' show Equatable;

base class PropertyEntity extends Equatable {
  const PropertyEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.transitFee,
    required this.address,
    required this.timezone,
    required this.fullTimezone,
    required this.hasLandingDeck,
    required this.hasChargingStation,
    required this.hasStorageHub,
    required this.isFixedTransitFee,
    required this.isRentableAirspace,
    required this.ownerId,
    required this.noFlyZone,
    required this.isBoostedArea,
    required this.latitude,
    required this.longitude,
    required this.propertyStatusId,
    required this.isActive,
    required this.isPropertyRewardClaimed,
    required this.isSoftDelete,
    required this.hasZoningPermission,
    required this.orderPhotoForGeneratedMap,
    required this.assessorParcelNumber,
    required this.externalBlockchainAddress,
    required this.areaPolygon,
    required this.tokenValue,
    required this.layers,
    required this.propertyStatus,
    required this.vertexes,
    required this.weekDayRanges,
    required this.images,
    required this.price,
  });

  final int id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String title;

  final String transitFee;

  final String address;

  final String timezone;

  final String? fullTimezone;

  final bool hasLandingDeck;

  final bool hasChargingStation;

  final bool hasStorageHub;

  final bool isFixedTransitFee;

  final bool isRentableAirspace;

  final int ownerId;

  final bool noFlyZone;

  final bool isBoostedArea;

  final double latitude;

  final double longitude;

  final int propertyStatusId;

  final bool isActive;

  final bool isPropertyRewardClaimed;

  final bool isSoftDelete;

  final bool? hasZoningPermission;

  final bool orderPhotoForGeneratedMap;

  final String assessorParcelNumber;

  final String? externalBlockchainAddress;

  final String? areaPolygon;

  final double? tokenValue;

  final List<LayersEntity> layers;

  final PropertyStatusEntity propertyStatus;

  final List<VertexEntity> vertexes;

  final List<WeekDayRangeEntity> weekDayRanges;

  final List<String> images;

  final double price;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        transitFee,
        address,
        timezone,
        fullTimezone,
        hasLandingDeck,
        hasChargingStation,
        hasStorageHub,
        isFixedTransitFee,
        isRentableAirspace,
        ownerId,
        noFlyZone,
        isBoostedArea,
        latitude,
        longitude,
        propertyStatusId,
        isActive,
        isPropertyRewardClaimed,
        isSoftDelete,
        hasZoningPermission,
        orderPhotoForGeneratedMap,
        assessorParcelNumber,
        externalBlockchainAddress,
        areaPolygon,
        tokenValue,
        layers,
        propertyStatus,
        vertexes,
        weekDayRanges,
        images,
        price,
      ];
}

base class LayersEntity extends Equatable {
  const LayersEntity({
    required this.layerId,
    required this.createdAt,
    required this.updateAt,
    required this.tokenId,
    required this.propertyId,
    required this.isCurrentlyInAuction,
  });

  final int layerId;

  final DateTime createdAt;

  final DateTime updateAt;

  final String tokenId;

  final int propertyId;

  final bool isCurrentlyInAuction;

  @override
  List<Object?> get props => [
        layerId,
        createdAt,
        updateAt,
        tokenId,
        propertyId,
        isCurrentlyInAuction,
      ];
}

base class PropertyStatusEntity extends Equatable {
  const PropertyStatusEntity({
    required this.propertyStatusId,
    required this.type,
  });

  final int propertyStatusId;

  final String type;

  @override
  List<Object?> get props => [
        propertyStatusId,
        type,
      ];
}

base class VertexEntity extends Equatable {
  const VertexEntity({
    required this.vertexId,
    required this.createdAt,
    required this.updateAt,
    required this.latitude,
    required this.longitude,
    required this.propertyId,
    required this.isSoftDelete,
  });

  final int vertexId;

  final DateTime createdAt;

  final DateTime updateAt;

  final double latitude;

  final double longitude;

  final int propertyId;

  final bool isSoftDelete;

  @override
  List<Object?> get props => [
        vertexId,
        latitude,
        longitude,
        propertyId,
        isSoftDelete,
      ];
}

base class WeekDayRangeEntity extends Equatable {
  const WeekDayRangeEntity({
    required this.createdAt,
    required this.updateAt,
    required this.fromTime,
    required this.toTime,
    required this.isAvailable,
    required this.weekDayId,
    required this.propertyId,
  });

  final DateTime createdAt;

  final DateTime updateAt;

  final int fromTime;

  final int toTime;

  final bool isAvailable;

  final int weekDayId;

  final int propertyId;

  @override
  List<Object?> get props => [
        createdAt,
        updateAt,
        fromTime,
        toTime,
        isAvailable,
        weekDayId,
        propertyId,
      ];
}

base class ExecuteMintRentalTokenEntity extends Equatable {
  const ExecuteMintRentalTokenEntity({
    required this.ans,
  });

  final AnsEntity ans;

  @override
  List<Object?> get props => [
        ans,
      ];
}

base class AnsEntity extends Equatable {
  const AnsEntity({
    required this.status,
    required this.message,
  });

  final String status;

  final String message;

  @override
  List<Object?> get props => [
        status,
        message,
      ];
}

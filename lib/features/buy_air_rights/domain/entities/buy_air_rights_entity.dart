// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;

base class AuctionEntity extends Equatable {
  const AuctionEntity({
    required this.id,
    required this.assetId,
    required this.seller,
    required this.pdaAddress,
    required this.initialPrice,
    required this.endDate,
    required this.currentPrice,
    required this.currentBidder,
    required this.paymentToken,
    required this.transactions,
    required this.isCancelled,
    required this.isExecuted,
    required this.isVerified,
    required this.isFilled,
    required this.filledAmount,
    required this.auctionBids,
    required this.layer,
  });

  final int id;

  final String assetId;

  final String seller;

  final String pdaAddress;

  final double initialPrice;

  final DateTime endDate;

  final double currentPrice;

  final String? currentBidder;

  final String paymentToken;

  final List<String> transactions;

  final bool isCancelled;

  final bool isExecuted;

  final bool isVerified;

  final bool isFilled;

  final num? filledAmount;

  final List<AuctionBidEntity> auctionBids;

  final LayerEntity layer;

  @override
  List<Object?> get props => [
        id,
        assetId,
        seller,
        pdaAddress,
        initialPrice,
        endDate,
        currentPrice,
        currentBidder,
        paymentToken,
        transactions,
        isCancelled,
        isExecuted,
        isVerified,
        isFilled,
        filledAmount,
        auctionBids,
        layer,
      ];
}

base class AuctionBidEntity extends Equatable {
  const AuctionBidEntity({
    required this.id,
    required this.price,
    required this.bidder,
    required this.transaction,
    required this.auctionId,
    required this.createdAt,
  });

  final int id;

  final num price;

  final String bidder;

  final String transaction;

  final int auctionId;

  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        price,
        bidder,
        transaction,
        auctionId,
        createdAt,
      ];
}

base class PropertyEntity extends Equatable {
  const PropertyEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
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
  });

  final int id;

  final DateTime createdAt;

  final DateTime updateAt;

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

  final bool hasZoningPermission;

  final bool orderPhotoForGeneratedMap;

  final String assessorParcelNumber;

  final String? externalBlockchainAddress;

  final String areaPolygon;

  final double? tokenValue;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updateAt,
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
      ];
}

base class AirspaceEntity extends Equatable {
  const AirspaceEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
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
  });

  final int id;

  final DateTime createdAt;

  final DateTime updateAt;

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

  final bool hasZoningPermission;

  final bool orderPhotoForGeneratedMap;

  final String assessorParcelNumber;

  final String? externalBlockchainAddress;

  final String areaPolygon;

  final double? tokenValue;

  final List<LayerEntity> layers;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updateAt,
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
      ];
}

base class LayerEntity extends Equatable {
  const LayerEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
    required this.tokenId,
    required this.propertyId,
    required this.isCurrentlyInAuction,
    required this.property,
  });

  final int id;

  final DateTime createdAt;

  final DateTime updateAt;

  final String tokenId;

  final int propertyId;

  final bool isCurrentlyInAuction;

  final PropertyEntity? property;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updateAt,
        tokenId,
        propertyId,
        isCurrentlyInAuction,
        property,
      ];
}

base class BidEntity extends Equatable {
  const BidEntity({
    required this.message,
    required this.transaction,
  });

  final String message;

  final String transaction;

  @override
  List<Object?> get props => [
        message,
        transaction,
      ];
}

base class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.txSignature,
    required this.error,
  });

  final String txSignature;

  final String error;

  @override
  List<Object?> get props => [
        txSignature,
        error,
      ];
}

base class TransactionMessageEntity extends Equatable {
  const TransactionMessageEntity({
    required this.message,
    required this.tx,
  });

  final String message;

  final List<String> tx;

  @override
  List<Object?> get props => [
        message,
        tx,
      ];
}

base class UnclaimedPropertyEntity extends Equatable {
  const UnclaimedPropertyEntity({
    required this.data,
  });

  final DataEntity data;

  @override
  List<Object?> get props => [
        data,
      ];
}

base class DataEntity extends Equatable {
  const DataEntity({
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

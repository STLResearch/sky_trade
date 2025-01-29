import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        addressKey,
        areaPolygonKey,
        assessorParcelNumberKey,
        assetIdKey,
        auctionBidKey,
        auctionIdAltKey,
        bidderKey,
        createdAtKey,
        currentBidderKey,
        currentPriceKey,
        dataKey,
        endDateKey,
        errorKey,
        externalBlockchainAddressKey,
        filledAmountKey,
        fullTimezoneKey,
        hasChargingStationKey,
        hasLandingDeckKey,
        hasStorageHubKey,
        hasZoningPermissionKey,
        idKey,
        initialPriceKey,
        isActiveKey,
        isBoostedAreaKey,
        isCancelledKey,
        isCurrentlyInAuctionKey,
        isExecutedKey,
        isFilledKey,
        isFixedTransitFeeKey,
        isPropertyRewardClaimedKey,
        isRentableAirspaceKey,
        isSoftDeleteKey,
        isVerifiedKey,
        latitudeKey,
        layerKey,
        layersKey,
        longitudeKey,
        messageKey,
        noFlyZoneKey,
        orderPhotoForGeneratedMapKey,
        ownerIdKey,
        paymentTokenKey,
        pdaAddressKey,
        priceKey,
        propertyIdKey,
        propertyKey,
        propertyStatusIdKey,
        sellerKey,
        statusKey,
        timezoneKey,
        titleKey,
        tokenIdKey,
        tokenValueKey,
        transactionKey,
        transactionsKey,
        transitFeeKey,
        txKey,
        txSignatureKey,
        updateAtKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/buy_air_rights/domain/entities/buy_air_rights_entity.dart';

part 'buy_air_rights_model.g.dart';

@JsonSerializable()
final class AuctionModel extends AuctionEntity {
  const AuctionModel({
    required this.mId,
    required this.mAssetId,
    required this.mSeller,
    required this.mPdaAddress,
    required this.mInitialPrice,
    required this.mEndDate,
    required this.mCurrentPrice,
    required this.mCurrentBidder,
    required this.mPaymentToken,
    required this.mTransactions,
    required this.mIsCancelled,
    required this.mIsExecuted,
    required this.mIsVerified,
    required this.mIsFilled,
    required this.mFilledAmount,
    required this.mAuctionBids,
    required this.mLayer,
  }) : super(
          id: mId,
          assetId: mAssetId,
          seller: mSeller,
          pdaAddress: mPdaAddress,
          initialPrice: mInitialPrice,
          endDate: mEndDate,
          currentPrice: mCurrentPrice,
          currentBidder: mCurrentBidder,
          paymentToken: mPaymentToken,
          transactions: mTransactions,
          isCancelled: mIsCancelled,
          isExecuted: mIsExecuted,
          isVerified: mIsVerified,
          isFilled: mIsFilled,
          filledAmount: mFilledAmount,
          auctionBids: mAuctionBids,
          layer: mLayer,
        );

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: assetIdKey)
  final String mAssetId;

  @JsonKey(name: sellerKey)
  final String mSeller;

  @JsonKey(name: pdaAddressKey)
  final String mPdaAddress;

  @JsonKey(name: initialPriceKey)
  final double mInitialPrice;

  @JsonKey(name: endDateKey)
  @StringDateTimeConverter()
  final DateTime mEndDate;

  @JsonKey(name: currentPriceKey)
  final double mCurrentPrice;

  @JsonKey(name: currentBidderKey)
  final String? mCurrentBidder;

  @JsonKey(name: paymentTokenKey)
  final String mPaymentToken;

  @JsonKey(name: transactionsKey)
  final List<String> mTransactions;

  @JsonKey(name: isCancelledKey)
  final bool mIsCancelled;

  @JsonKey(name: isExecutedKey)
  final bool mIsExecuted;

  @JsonKey(name: isVerifiedKey)
  final bool mIsVerified;

  @JsonKey(name: isFilledKey)
  final bool mIsFilled;

  @JsonKey(name: filledAmountKey)
  final num? mFilledAmount;

  @JsonKey(name: auctionBidKey)
  final List<AuctionBidModel> mAuctionBids;

  @JsonKey(name: layerKey)
  final LayerModel mLayer;

  Map<String, dynamic> toJson() => _$AuctionModelToJson(this);
}

@JsonSerializable()
final class AuctionBidModel extends AuctionBidEntity {
  const AuctionBidModel({
    required this.mId,
    required this.mPrice,
    required this.mBidder,
    required this.mTransaction,
    required this.mAuctionId,
    required this.mCreatedAt,
  }) : super(
          id: mId,
          price: mPrice,
          bidder: mBidder,
          transaction: mTransaction,
          auctionId: mAuctionId,
          createdAt: mCreatedAt,
        );

  factory AuctionBidModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionBidModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: priceKey)
  final num mPrice;

  @JsonKey(name: bidderKey)
  final String mBidder;

  @JsonKey(name: transactionKey)
  final String mTransaction;

  @JsonKey(name: auctionIdAltKey)
  final int mAuctionId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  Map<String, dynamic> toJson() => _$AuctionBidModelToJson(this);
}

@JsonSerializable()
final class PropertyModel extends PropertyEntity {
  const PropertyModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mTitle,
    required this.mTransitFee,
    required this.mAddress,
    required this.mTimezone,
    required this.mFullTimezone,
    required this.mHasLandingDeck,
    required this.mHasChargingStation,
    required this.mHasStorageHub,
    required this.mIsFixedTransitFee,
    required this.mIsRentableAirspace,
    required this.mOwnerId,
    required this.mNoFlyZone,
    required this.mIsBoostedArea,
    required this.mLatitude,
    required this.mLongitude,
    required this.mPropertyStatusId,
    required this.mIsActive,
    required this.mIsPropertyRewardClaimed,
    required this.mIsSoftDelete,
    required this.mHasZoningPermission,
    required this.mOrderPhotoForGeneratedMap,
    required this.mAssessorParcelNumber,
    required this.mExternalBlockchainAddress,
    required this.mAreaPolygon,
    required this.mTokenValue,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          title: mTitle,
          transitFee: mTransitFee,
          address: mAddress,
          timezone: mTimezone,
          fullTimezone: mFullTimezone,
          hasLandingDeck: mHasLandingDeck,
          hasChargingStation: mHasChargingStation,
          hasStorageHub: mHasStorageHub,
          isFixedTransitFee: mIsFixedTransitFee,
          isRentableAirspace: mIsRentableAirspace,
          ownerId: mOwnerId,
          noFlyZone: mNoFlyZone,
          isBoostedArea: mIsBoostedArea,
          latitude: mLatitude,
          longitude: mLongitude,
          propertyStatusId: mPropertyStatusId,
          isActive: mIsActive,
          isPropertyRewardClaimed: mIsPropertyRewardClaimed,
          isSoftDelete: mIsSoftDelete,
          hasZoningPermission: mHasZoningPermission,
          orderPhotoForGeneratedMap: mOrderPhotoForGeneratedMap,
          assessorParcelNumber: mAssessorParcelNumber,
          externalBlockchainAddress: mExternalBlockchainAddress,
          areaPolygon: mAreaPolygon,
          tokenValue: mTokenValue,
        );

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: titleKey)
  final String mTitle;

  @JsonKey(name: transitFeeKey)
  final String mTransitFee;

  @JsonKey(name: addressKey)
  final String mAddress;

  @JsonKey(name: timezoneKey)
  final String mTimezone;

  @JsonKey(name: fullTimezoneKey)
  final String? mFullTimezone;

  @JsonKey(name: hasLandingDeckKey)
  final bool mHasLandingDeck;

  @JsonKey(name: hasChargingStationKey)
  final bool mHasChargingStation;

  @JsonKey(name: hasStorageHubKey)
  final bool mHasStorageHub;

  @JsonKey(name: isFixedTransitFeeKey)
  final bool mIsFixedTransitFee;

  @JsonKey(name: isRentableAirspaceKey)
  final bool mIsRentableAirspace;

  @JsonKey(name: ownerIdKey)
  final int mOwnerId;

  @JsonKey(name: noFlyZoneKey)
  final bool mNoFlyZone;

  @JsonKey(name: isBoostedAreaKey)
  final bool mIsBoostedArea;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: propertyStatusIdKey)
  final int mPropertyStatusId;

  @JsonKey(name: isActiveKey)
  final bool mIsActive;

  @JsonKey(name: isPropertyRewardClaimedKey)
  final bool mIsPropertyRewardClaimed;

  @JsonKey(name: isSoftDeleteKey)
  final bool mIsSoftDelete;

  @JsonKey(name: hasZoningPermissionKey)
  final bool mHasZoningPermission;

  @JsonKey(name: orderPhotoForGeneratedMapKey)
  final bool mOrderPhotoForGeneratedMap;

  @JsonKey(name: assessorParcelNumberKey)
  final String mAssessorParcelNumber;

  @JsonKey(name: externalBlockchainAddressKey)
  final String? mExternalBlockchainAddress;

  @JsonKey(name: areaPolygonKey)
  final String mAreaPolygon;

  @JsonKey(name: tokenValueKey)
  final double? mTokenValue;

  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}

@JsonSerializable()
final class AirspaceModel extends AirspaceEntity {
  const AirspaceModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mTitle,
    required this.mTransitFee,
    required this.mAddress,
    required this.mTimezone,
    required this.mFullTimezone,
    required this.mHasLandingDeck,
    required this.mHasChargingStation,
    required this.mHasStorageHub,
    required this.mIsFixedTransitFee,
    required this.mIsRentableAirspace,
    required this.mOwnerId,
    required this.mNoFlyZone,
    required this.mIsBoostedArea,
    required this.mLatitude,
    required this.mLongitude,
    required this.mPropertyStatusId,
    required this.mIsActive,
    required this.mIsPropertyRewardClaimed,
    required this.mIsSoftDelete,
    required this.mHasZoningPermission,
    required this.mOrderPhotoForGeneratedMap,
    required this.mAssessorParcelNumber,
    required this.mExternalBlockchainAddress,
    required this.mAreaPolygon,
    required this.mTokenValue,
    required this.mLayers,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          title: mTitle,
          transitFee: mTransitFee,
          address: mAddress,
          timezone: mTimezone,
          fullTimezone: mFullTimezone,
          hasLandingDeck: mHasLandingDeck,
          hasChargingStation: mHasChargingStation,
          hasStorageHub: mHasStorageHub,
          isFixedTransitFee: mIsFixedTransitFee,
          isRentableAirspace: mIsRentableAirspace,
          ownerId: mOwnerId,
          noFlyZone: mNoFlyZone,
          isBoostedArea: mIsBoostedArea,
          latitude: mLatitude,
          longitude: mLongitude,
          propertyStatusId: mPropertyStatusId,
          isActive: mIsActive,
          isPropertyRewardClaimed: mIsPropertyRewardClaimed,
          isSoftDelete: mIsSoftDelete,
          hasZoningPermission: mHasZoningPermission,
          orderPhotoForGeneratedMap: mOrderPhotoForGeneratedMap,
          assessorParcelNumber: mAssessorParcelNumber,
          externalBlockchainAddress: mExternalBlockchainAddress,
          areaPolygon: mAreaPolygon,
          tokenValue: mTokenValue,
          layers: mLayers,
        );

  factory AirspaceModel.fromJson(Map<String, dynamic> json) =>
      _$AirspaceModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: titleKey)
  final String mTitle;

  @JsonKey(name: transitFeeKey)
  final String mTransitFee;

  @JsonKey(name: addressKey)
  final String mAddress;

  @JsonKey(name: timezoneKey)
  final String mTimezone;

  @JsonKey(name: fullTimezoneKey)
  final String? mFullTimezone;

  @JsonKey(name: hasLandingDeckKey)
  final bool mHasLandingDeck;

  @JsonKey(name: hasChargingStationKey)
  final bool mHasChargingStation;

  @JsonKey(name: hasStorageHubKey)
  final bool mHasStorageHub;

  @JsonKey(name: isFixedTransitFeeKey)
  final bool mIsFixedTransitFee;

  @JsonKey(name: isRentableAirspaceKey)
  final bool mIsRentableAirspace;

  @JsonKey(name: ownerIdKey)
  final int mOwnerId;

  @JsonKey(name: noFlyZoneKey)
  final bool mNoFlyZone;

  @JsonKey(name: isBoostedAreaKey)
  final bool mIsBoostedArea;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: propertyStatusIdKey)
  final int mPropertyStatusId;

  @JsonKey(name: isActiveKey)
  final bool mIsActive;

  @JsonKey(name: isPropertyRewardClaimedKey)
  final bool mIsPropertyRewardClaimed;

  @JsonKey(name: isSoftDeleteKey)
  final bool mIsSoftDelete;

  @JsonKey(name: hasZoningPermissionKey)
  final bool mHasZoningPermission;

  @JsonKey(name: orderPhotoForGeneratedMapKey)
  final bool mOrderPhotoForGeneratedMap;

  @JsonKey(name: assessorParcelNumberKey)
  final String mAssessorParcelNumber;

  @JsonKey(name: externalBlockchainAddressKey)
  final String? mExternalBlockchainAddress;

  @JsonKey(name: areaPolygonKey)
  final String mAreaPolygon;

  @JsonKey(name: tokenValueKey)
  final double? mTokenValue;

  @JsonKey(name: layersKey)
  final List<LayerModel> mLayers;

  Map<String, dynamic> toJson() => _$AirspaceModelToJson(this);
}

@JsonSerializable()
final class LayerModel extends LayerEntity {
  const LayerModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mTokenId,
    required this.mPropertyId,
    required this.mIsCurrentlyInAuction,
    required this.mProperty,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          tokenId: mTokenId,
          propertyId: mPropertyId,
          isCurrentlyInAuction: mIsCurrentlyInAuction,
          property: mProperty,
        );

  factory LayerModel.fromJson(Map<String, dynamic> json) =>
      _$LayerModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: tokenIdKey)
  final String mTokenId;

  @JsonKey(name: propertyIdKey)
  final int mPropertyId;

  @JsonKey(name: isCurrentlyInAuctionKey)
  final bool mIsCurrentlyInAuction;

  @JsonKey(name: propertyKey)
  final PropertyModel? mProperty;

  Map<String, dynamic> toJson() => _$LayerModelToJson(this);
}

@JsonSerializable()
final class BidModel extends BidEntity {
  const BidModel({
    required this.mMessage,
    required this.mTransaction,
  }) : super(
          message: mMessage,
          transaction: mTransaction,
        );

  factory BidModel.fromJson(Map<String, dynamic> json) =>
      _$BidModelFromJson(json);

  @JsonKey(name: messageKey)
  final String mMessage;

  @JsonKey(name: transactionKey)
  final String mTransaction;

  Map<String, dynamic> toJson() => _$BidModelToJson(this);
}

@JsonSerializable()
final class TransactionModel extends TransactionEntity {
  const TransactionModel({
    required this.mTxSignature,
    required this.mError,
  }) : super(
          txSignature: mTxSignature,
          error: mError,
        );

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  @JsonKey(name: txSignatureKey)
  final String mTxSignature;

  @JsonKey(name: errorKey)
  final String mError;

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}

@JsonSerializable()
final class TransactionMessageModel extends TransactionMessageEntity {
  const TransactionMessageModel({
    required this.mMessage,
    required this.mTx,
  }) : super(
          message: mMessage,
          tx: mTx,
        );

  factory TransactionMessageModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionMessageModelFromJson(json);

  @JsonKey(name: messageKey)
  final String mMessage;

  @JsonKey(name: txKey)
  final List<String> mTx;

  Map<String, dynamic> toJson() => _$TransactionMessageModelToJson(this);
}

@JsonSerializable()
final class UnclaimedPropertyModel extends UnclaimedPropertyEntity {
  const UnclaimedPropertyModel({
    required this.mData,
  }) : super(
          data: mData,
        );

  factory UnclaimedPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$UnclaimedPropertyModelFromJson(json);

  @JsonKey(name: dataKey)
  final DataModel mData;

  Map<String, dynamic> toJson() => _$UnclaimedPropertyModelToJson(this);
}

@JsonSerializable()
final class DataModel extends DataEntity {
  const DataModel({
    required this.mStatus,
    required this.mMessage,
  }) : super(
          status: mStatus,
          message: mMessage,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  @JsonKey(name: statusKey)
  final String mStatus;

  @JsonKey(name: messageKey)
  final String mMessage;

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_air_rights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) => AuctionModel(
      mId: (json['id'] as num).toInt(),
      mAssetId: json['assetId'] as String,
      mSeller: json['seller'] as String,
      mPdaAddress: json['pdaAddress'] as String,
      mInitialPrice: (json['initialPrice'] as num).toDouble(),
      mEndDate:
          const StringDateTimeConverter().fromJson(json['endDate'] as String),
      mCurrentPrice: (json['currentPrice'] as num).toDouble(),
      mCurrentBidder: json['currentBidder'] as String?,
      mPaymentToken: json['paymentToken'] as String,
      mTransactions: (json['transactions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mIsCancelled: json['isCancelled'] as bool,
      mIsExecuted: json['isExecuted'] as bool,
      mIsVerified: json['isVerified'] as bool,
      mIsFilled: json['isFilled'] as bool,
      mFilledAmount: json['filledAmount'] as num?,
      mAuctionBids: (json['AuctionBid'] as List<dynamic>)
          .map((e) => AuctionBidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mLayer: LayerModel.fromJson(json['layer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionModelToJson(AuctionModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'assetId': instance.mAssetId,
      'seller': instance.mSeller,
      'pdaAddress': instance.mPdaAddress,
      'initialPrice': instance.mInitialPrice,
      'endDate': const StringDateTimeConverter().toJson(instance.mEndDate),
      'currentPrice': instance.mCurrentPrice,
      'currentBidder': instance.mCurrentBidder,
      'paymentToken': instance.mPaymentToken,
      'transactions': instance.mTransactions,
      'isCancelled': instance.mIsCancelled,
      'isExecuted': instance.mIsExecuted,
      'isVerified': instance.mIsVerified,
      'isFilled': instance.mIsFilled,
      'filledAmount': instance.mFilledAmount,
      'AuctionBid': instance.mAuctionBids,
      'layer': instance.mLayer,
    };

AuctionBidModel _$AuctionBidModelFromJson(Map<String, dynamic> json) =>
    AuctionBidModel(
      mId: (json['id'] as num).toInt(),
      mPrice: json['price'] as num,
      mBidder: json['bidder'] as String,
      mTransaction: json['transaction'] as String,
      mAuctionId: (json['auctionId'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$AuctionBidModelToJson(AuctionBidModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'price': instance.mPrice,
      'bidder': instance.mBidder,
      'transaction': instance.mTransaction,
      'auctionId': instance.mAuctionId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
    };

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mTransitFee: json['transitFee'] as String,
      mAddress: json['address'] as String,
      mTimezone: json['timezone'] as String,
      mFullTimezone: json['fullTimezone'] as String?,
      mHasLandingDeck: json['hasLandingDeck'] as bool,
      mHasChargingStation: json['hasChargingStation'] as bool,
      mHasStorageHub: json['hasStorageHub'] as bool,
      mIsFixedTransitFee: json['isFixedTransitFee'] as bool,
      mIsRentableAirspace: json['isRentableAirspace'] as bool,
      mOwnerId: (json['ownerId'] as num).toInt(),
      mNoFlyZone: json['noFlyZone'] as bool,
      mIsBoostedArea: json['isBoostedArea'] as bool,
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mPropertyStatusId: (json['propertyStatusId'] as num).toInt(),
      mIsActive: json['isActive'] as bool,
      mIsPropertyRewardClaimed: json['isPropertyRewardClaimed'] as bool,
      mIsSoftDelete: json['isSoftDelete'] as bool,
      mHasZoningPermission: json['hasZoningPermission'] as bool,
      mOrderPhotoForGeneratedMap: json['orderPhotoforGeneratedMap'] as bool,
      mAssessorParcelNumber: json['assessorParcelNumber'] as String,
      mExternalBlockchainAddress: json['externalBlockchainAddress'] as String?,
      mAreaPolygon: json['areaPolygon'] as String,
      mTokenValue: (json['tokenValue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'title': instance.mTitle,
      'transitFee': instance.mTransitFee,
      'address': instance.mAddress,
      'timezone': instance.mTimezone,
      'fullTimezone': instance.mFullTimezone,
      'hasLandingDeck': instance.mHasLandingDeck,
      'hasChargingStation': instance.mHasChargingStation,
      'hasStorageHub': instance.mHasStorageHub,
      'isFixedTransitFee': instance.mIsFixedTransitFee,
      'isRentableAirspace': instance.mIsRentableAirspace,
      'ownerId': instance.mOwnerId,
      'noFlyZone': instance.mNoFlyZone,
      'isBoostedArea': instance.mIsBoostedArea,
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'propertyStatusId': instance.mPropertyStatusId,
      'isActive': instance.mIsActive,
      'isPropertyRewardClaimed': instance.mIsPropertyRewardClaimed,
      'isSoftDelete': instance.mIsSoftDelete,
      'hasZoningPermission': instance.mHasZoningPermission,
      'orderPhotoforGeneratedMap': instance.mOrderPhotoForGeneratedMap,
      'assessorParcelNumber': instance.mAssessorParcelNumber,
      'externalBlockchainAddress': instance.mExternalBlockchainAddress,
      'areaPolygon': instance.mAreaPolygon,
      'tokenValue': instance.mTokenValue,
    };

AirspaceModel _$AirspaceModelFromJson(Map<String, dynamic> json) =>
    AirspaceModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mTransitFee: json['transitFee'] as String,
      mAddress: json['address'] as String,
      mTimezone: json['timezone'] as String,
      mFullTimezone: json['fullTimezone'] as String?,
      mHasLandingDeck: json['hasLandingDeck'] as bool,
      mHasChargingStation: json['hasChargingStation'] as bool,
      mHasStorageHub: json['hasStorageHub'] as bool,
      mIsFixedTransitFee: json['isFixedTransitFee'] as bool,
      mIsRentableAirspace: json['isRentableAirspace'] as bool,
      mOwnerId: (json['ownerId'] as num).toInt(),
      mNoFlyZone: json['noFlyZone'] as bool,
      mIsBoostedArea: json['isBoostedArea'] as bool,
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mPropertyStatusId: (json['propertyStatusId'] as num).toInt(),
      mIsActive: json['isActive'] as bool,
      mIsPropertyRewardClaimed: json['isPropertyRewardClaimed'] as bool,
      mIsSoftDelete: json['isSoftDelete'] as bool,
      mHasZoningPermission: json['hasZoningPermission'] as bool,
      mOrderPhotoForGeneratedMap: json['orderPhotoforGeneratedMap'] as bool,
      mAssessorParcelNumber: json['assessorParcelNumber'] as String,
      mExternalBlockchainAddress: json['externalBlockchainAddress'] as String?,
      mAreaPolygon: json['areaPolygon'] as String,
      mTokenValue: (json['tokenValue'] as num?)?.toDouble(),
      mLayers: (json['layers'] as List<dynamic>)
          .map((e) => LayerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AirspaceModelToJson(AirspaceModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'title': instance.mTitle,
      'transitFee': instance.mTransitFee,
      'address': instance.mAddress,
      'timezone': instance.mTimezone,
      'fullTimezone': instance.mFullTimezone,
      'hasLandingDeck': instance.mHasLandingDeck,
      'hasChargingStation': instance.mHasChargingStation,
      'hasStorageHub': instance.mHasStorageHub,
      'isFixedTransitFee': instance.mIsFixedTransitFee,
      'isRentableAirspace': instance.mIsRentableAirspace,
      'ownerId': instance.mOwnerId,
      'noFlyZone': instance.mNoFlyZone,
      'isBoostedArea': instance.mIsBoostedArea,
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'propertyStatusId': instance.mPropertyStatusId,
      'isActive': instance.mIsActive,
      'isPropertyRewardClaimed': instance.mIsPropertyRewardClaimed,
      'isSoftDelete': instance.mIsSoftDelete,
      'hasZoningPermission': instance.mHasZoningPermission,
      'orderPhotoforGeneratedMap': instance.mOrderPhotoForGeneratedMap,
      'assessorParcelNumber': instance.mAssessorParcelNumber,
      'externalBlockchainAddress': instance.mExternalBlockchainAddress,
      'areaPolygon': instance.mAreaPolygon,
      'tokenValue': instance.mTokenValue,
      'layers': instance.mLayers,
    };

LayerModel _$LayerModelFromJson(Map<String, dynamic> json) => LayerModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTokenId: json['tokenId'] as String,
      mPropertyId: (json['propertyId'] as num).toInt(),
      mIsCurrentlyInAuction: json['isCurrentlyInAuction'] as bool,
      mProperty: json['property'] == null
          ? null
          : PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LayerModelToJson(LayerModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'tokenId': instance.mTokenId,
      'propertyId': instance.mPropertyId,
      'isCurrentlyInAuction': instance.mIsCurrentlyInAuction,
      'property': instance.mProperty,
    };

BidModel _$BidModelFromJson(Map<String, dynamic> json) => BidModel(
      mMessage: json['message'] as String,
      mTransaction: json['transaction'] as String,
    );

Map<String, dynamic> _$BidModelToJson(BidModel instance) => <String, dynamic>{
      'message': instance.mMessage,
      'transaction': instance.mTransaction,
    };

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      mTxSignature: json['txSignature'] as String,
      mError: json['error'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'txSignature': instance.mTxSignature,
      'error': instance.mError,
    };

TransactionMessageModel _$TransactionMessageModelFromJson(
        Map<String, dynamic> json) =>
    TransactionMessageModel(
      mMessage: json['message'] as String,
      mTx: (json['tx'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TransactionMessageModelToJson(
        TransactionMessageModel instance) =>
    <String, dynamic>{
      'message': instance.mMessage,
      'tx': instance.mTx,
    };

UnclaimedPropertyModel _$UnclaimedPropertyModelFromJson(
        Map<String, dynamic> json) =>
    UnclaimedPropertyModel(
      mData: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnclaimedPropertyModelToJson(
        UnclaimedPropertyModel instance) =>
    <String, dynamic>{
      'data': instance.mData,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      mStatus: json['status'] as String,
      mMessage: json['message'] as String,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'status': instance.mStatus,
      'message': instance.mMessage,
    };

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
      mEndDate: DateTime.parse(json['endDate'] as String),
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
      mFilledAmount: (json['filledAmount'] as num?)?.toDouble(),
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
      'endDate': instance.mEndDate.toIso8601String(),
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
      mPrice: (json['price'] as num).toDouble(),
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

LayerModel _$LayerModelFromJson(Map<String, dynamic> json) => LayerModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTokenId: json['tokenId'] as String,
      mPropertyId: (json['propertyId'] as num).toInt(),
      mIsCurrentlyInAuction: json['isCurrentlyInAuction'] as bool,
      mProperty:
          PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
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

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt: DateTime.parse(json['createdAt'] as String),
      mUpdateAt: DateTime.parse(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mTransitFee: json['transitFee'] as String,
      mAddress: json['address'] as String,
      mTimezone: json['timezone'] as String,
      mFullTimezone: json['fullTimezone'] as String,
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
      mOrderPhotoforGeneratedMap: json['orderPhotoforGeneratedMap'] as bool,
      mAssessorParcelNumber: json['assessorParcelNumber'] as String,
      mExternalBlockchainAddress: json['externalBlockchainAddress'] as String?,
      mAreaPolygon: json['areaPolygon'] as String,
      mTokenValue: (json['tokenValue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': instance.mCreatedAt.toIso8601String(),
      'updateAt': instance.mUpdateAt.toIso8601String(),
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
      'orderPhotoforGeneratedMap': instance.mOrderPhotoforGeneratedMap,
      'assessorParcelNumber': instance.mAssessorParcelNumber,
      'externalBlockchainAddress': instance.mExternalBlockchainAddress,
      'areaPolygon': instance.mAreaPolygon,
      'tokenValue': instance.mTokenValue,
    };

AuctionableAirspaceModel _$AuctionableAirspaceModelFromJson(
        Map<String, dynamic> json) =>
    AuctionableAirspaceModel(
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
      mHasZoningPermission: json['hasZoningPermission'] as bool?,
      mOrderPhotoforGeneratedMap: json['orderPhotoforGeneratedMap'] as bool,
      mAssessorParcelNumber: json['assessorParcelNumber'] as String,
      mExternalBlockchainAddress: json['externalBlockchainAddress'] as String?,
      mAreaPolygon: json['areaPolygon'] as String,
      mTokenValue: (json['tokenValue'] as num?)?.toInt(),
      mLayers: (json['layers'] as List<dynamic>)
          .map((e) => LayersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionableAirspaceModelToJson(
        AuctionableAirspaceModel instance) =>
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
      'orderPhotoforGeneratedMap': instance.mOrderPhotoforGeneratedMap,
      'assessorParcelNumber': instance.mAssessorParcelNumber,
      'externalBlockchainAddress': instance.mExternalBlockchainAddress,
      'areaPolygon': instance.mAreaPolygon,
      'tokenValue': instance.mTokenValue,
      'layers': instance.mLayers,
    };

LayersModel _$LayersModelFromJson(Map<String, dynamic> json) => LayersModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTokenId: json['tokenId'] as String,
      mPropertyId: (json['propertyId'] as num).toInt(),
      mIsCurrentlyInAuction: json['isCurrentlyInAuction'] as bool,
    );

Map<String, dynamic> _$LayersModelToJson(LayersModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'tokenId': instance.mTokenId,
      'propertyId': instance.mPropertyId,
      'isCurrentlyInAuction': instance.mIsCurrentlyInAuction,
    };

AuctionWithBidsModel _$AuctionWithBidsModelFromJson(
        Map<String, dynamic> json) =>
    AuctionWithBidsModel(
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
      mFilledAmount: (json['filledAmount'] as num?)?.toDouble(),
      mAuctionBid: (json['AuctionBid'] as List<dynamic>)
          .map((e) => AuctionBidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mLayer: LayerModel.fromJson(json['layer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionWithBidsModelToJson(
        AuctionWithBidsModel instance) =>
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
      'AuctionBid': instance.mAuctionBid,
      'layer': instance.mLayer,
    };

CreateAuctionModel _$CreateAuctionModelFromJson(Map<String, dynamic> json) =>
    CreateAuctionModel(
      mMessage: json['message'] as String,
      mTx: (json['tx'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateAuctionModelToJson(CreateAuctionModel instance) =>
    <String, dynamic>{
      'message': instance.mMessage,
      'tx': instance.mTx,
    };

PlaceBidModel _$PlaceBidModelFromJson(Map<String, dynamic> json) =>
    PlaceBidModel(
      mMessage: json['message'] as String,
      mTransaction: json['transaction'] as String,
    );

Map<String, dynamic> _$PlaceBidModelToJson(PlaceBidModel instance) =>
    <String, dynamic>{
      'message': instance.mMessage,
      'transaction': instance.mTransaction,
    };

SendTransactionModel _$SendTransactionModelFromJson(
        Map<String, dynamic> json) =>
    SendTransactionModel(
      mTxSignature: json['txSignature'] as String,
      mError: json['error'] as String,
    );

Map<String, dynamic> _$SendTransactionModelToJson(
        SendTransactionModel instance) =>
    <String, dynamic>{
      'txSignature': instance.mTxSignature,
      'error': instance.mError,
    };

OfferForUnclaimedPropertyModel _$OfferForUnclaimedPropertyModelFromJson(
        Map<String, dynamic> json) =>
    OfferForUnclaimedPropertyModel(
      mData: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferForUnclaimedPropertyModelToJson(
        OfferForUnclaimedPropertyModel instance) =>
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

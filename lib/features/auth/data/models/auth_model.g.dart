// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkyTradeUserModel _$SkyTradeUserModelFromJson(Map<String, dynamic> json) =>
    SkyTradeUserModel(
      mId: (json['id'] as num).toInt(),
      mCreatedAt: json['createdAt'] as String,
      mUpdatedAt: json['updateAt'] as String,
      mUsername: json['username'] as String?,
      mPassword: json['password'] as String?,
      mName: json['name'] as String,
      mEmail: json['email'] as String,
      mBlockchainAddress: json['blockchainAddress'] as String,
      mIsAdmin: json['isAdmin'] as bool,
      mNewsletter: json['newsletter'] as bool,
      mCategoryId: (json['categoryId'] as num).toInt(),
      mPhoneNumber: json['phoneNumber'] as String,
      mKYCStatusId: (json['KYCStatusId'] as num).toInt(),
      mIsActive: json['isActive'] as bool,
      mUsedReferralCodeId: (json['usedReferralCodeId'] as num?)?.toInt(),
      mOwnedReferralCodeId: (json['ownedReferralCodeId'] as num).toInt(),
      mIsUserRewardClaimed: json['isUserRewardClaimed'] as bool,
      mOwnedReferralCode: OwnedReferralCodeModel.fromJson(
          json['ownedReferralCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SkyTradeUserModelToJson(SkyTradeUserModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': instance.mCreatedAt,
      'updateAt': instance.mUpdatedAt,
      'username': instance.mUsername,
      'password': instance.mPassword,
      'name': instance.mName,
      'email': instance.mEmail,
      'blockchainAddress': instance.mBlockchainAddress,
      'isAdmin': instance.mIsAdmin,
      'newsletter': instance.mNewsletter,
      'categoryId': instance.mCategoryId,
      'phoneNumber': instance.mPhoneNumber,
      'KYCStatusId': instance.mKYCStatusId,
      'isActive': instance.mIsActive,
      'usedReferralCodeId': instance.mUsedReferralCodeId,
      'ownedReferralCodeId': instance.mOwnedReferralCodeId,
      'isUserRewardClaimed': instance.mIsUserRewardClaimed,
      'ownedReferralCode': instance.mOwnedReferralCode,
    };

OwnedReferralCodeModel _$OwnedReferralCodeModelFromJson(
        Map<String, dynamic> json) =>
    OwnedReferralCodeModel(
      mId: (json['id'] as num).toInt(),
      mCode: json['code'] as String,
      mCodeChanged: json['codeChanged'] as bool,
      mUsedByBonusEarned: json['usedByBonusEarned'] as bool,
      mOwnedByBonusEarned: json['ownedByBonusEarned'] as bool,
    );

Map<String, dynamic> _$OwnedReferralCodeModelToJson(
        OwnedReferralCodeModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'code': instance.mCode,
      'codeChanged': instance.mCodeChanged,
      'usedByBonusEarned': instance.mUsedByBonusEarned,
      'ownedByBonusEarned': instance.mOwnedByBonusEarned,
    };

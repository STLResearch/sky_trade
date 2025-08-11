// SPDX-License-Identifier: UNLICENSED
                            
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkyTradeUserModel _$SkyTradeUserModelFromJson(Map<String, dynamic> json) =>
    SkyTradeUserModel(
      mId: json['id'],
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
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
      mUsedReferralCodeId: json['usedReferralCodeId'],
      mOwnedReferralCodeId: json['ownedReferralCodeId'],
      mIsUserRewardClaimed: json['isUserRewardClaimed'] as bool,
      mOwnedReferralCode: OwnedReferralCodeModel.fromJson(
          json['ownedReferralCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SkyTradeUserModelToJson(SkyTradeUserModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
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
      mId: json['id'],
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

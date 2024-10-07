import 'package:json_annotation/json_annotation.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        blockchainAddressKey,
        categoryIdKey,
        codeChangedKey,
        codeKey,
        createdAtKey,
        emailKey,
        idKey,
        isActiveKey,
        isAdminKey,
        isUserRewardClaimedKey,
        kYCStatusIdKey,
        nameKey,
        newsletterKey,
        ownedByBonusEarnedKey,
        ownedReferralCodeIdKey,
        ownedReferralCodeKey,
        passwordKey,
        phoneNumberKey,
        updateAtKey,
        usedByBonusEarnedKey,
        usedReferralCodeIdKey,
        usernameKey;
import 'package:sky_ways/features/auth/domain/entities/auth_entity.dart'
    show OwnedReferralCodeEntity, SkyTradeUserEntity;

part 'auth_model.g.dart';

@JsonSerializable()
final class SkyTradeUserModel extends SkyTradeUserEntity {
  const SkyTradeUserModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdatedAt,
    required this.mUsername,
    required this.mPassword,
    required this.mName,
    required this.mEmail,
    required this.mBlockchainAddress,
    required this.mIsAdmin,
    required this.mNewsletter,
    required this.mCategoryId,
    required this.mPhoneNumber,
    required this.mKYCStatusId,
    required this.mIsActive,
    required this.mUsedReferralCodeId,
    required this.mOwnedReferralCodeId,
    required this.mIsUserRewardClaimed,
    required this.mOwnedReferralCode,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updatedAt: mUpdatedAt,
          username: mUsername,
          password: mPassword,
          name: mName,
          email: mEmail,
          blockchainAddress: mBlockchainAddress,
          isAdmin: mIsAdmin,
          newsletter: mNewsletter,
          categoryId: mCategoryId,
          phoneNumber: mPhoneNumber,
          kYCStatusId: mKYCStatusId,
          isActive: mIsActive,
          usedReferralCodeId: mUsedReferralCodeId,
          ownedReferralCodeId: mOwnedReferralCodeId,
          isUserRewardClaimed: mIsUserRewardClaimed,
          ownedReferralCode: mOwnedReferralCode,
        );

  factory SkyTradeUserModel.fromJson(Map<String, dynamic> json) =>
      _$SkyTradeUserModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: createdAtKey)
  final String mCreatedAt;

  @JsonKey(name: updateAtKey)
  final String mUpdatedAt;

  @JsonKey(name: usernameKey)
  final String? mUsername;

  @JsonKey(name: passwordKey)
  final String? mPassword;

  @JsonKey(name: nameKey)
  final String mName;

  @JsonKey(name: emailKey)
  final String mEmail;

  @JsonKey(name: blockchainAddressKey)
  final String mBlockchainAddress;

  @JsonKey(name: isAdminKey)
  final bool mIsAdmin;

  @JsonKey(name: newsletterKey)
  final bool mNewsletter;

  @JsonKey(name: categoryIdKey)
  final int mCategoryId;

  @JsonKey(name: phoneNumberKey)
  final String mPhoneNumber;

  @JsonKey(name: kYCStatusIdKey)
  final int mKYCStatusId;

  @JsonKey(name: isActiveKey)
  final bool mIsActive;

  @JsonKey(name: usedReferralCodeIdKey)
  final int? mUsedReferralCodeId;

  @JsonKey(name: ownedReferralCodeIdKey)
  final int mOwnedReferralCodeId;

  @JsonKey(name: isUserRewardClaimedKey)
  final bool mIsUserRewardClaimed;

  @JsonKey(name: ownedReferralCodeKey)
  final OwnedReferralCodeModel mOwnedReferralCode;

  Map<String, dynamic> toJson() => _$SkyTradeUserModelToJson(this);
}

@JsonSerializable()
final class OwnedReferralCodeModel extends OwnedReferralCodeEntity {
  const OwnedReferralCodeModel({
    required this.mId,
    required this.mCode,
    required this.mCodeChanged,
    required this.mUsedByBonusEarned,
    required this.mOwnedByBonusEarned,
  }) : super(
          id: mId,
          code: mCode,
          codeChanged: mCodeChanged,
          usedByBonusEarned: mUsedByBonusEarned,
          ownedByBonusEarned: mOwnedByBonusEarned,
        );

  factory OwnedReferralCodeModel.fromJson(Map<String, dynamic> json) =>
      _$OwnedReferralCodeModelFromJson(json);

  @JsonKey(name: idKey)
  final int mId;

  @JsonKey(name: codeKey)
  final String mCode;

  @JsonKey(name: codeChangedKey)
  final bool mCodeChanged;

  @JsonKey(name: usedByBonusEarnedKey)
  final bool mUsedByBonusEarned;

  @JsonKey(name: ownedByBonusEarnedKey)
  final bool mOwnedByBonusEarned;

  Map<String, dynamic> toJson() => _$OwnedReferralCodeModelToJson(this);
}

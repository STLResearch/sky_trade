import 'package:equatable/equatable.dart' show Equatable;

base class SkyTradeUserEntity extends Equatable {
  const SkyTradeUserEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.password,
    required this.name,
    required this.email,
    required this.blockchainAddress,
    required this.isAdmin,
    required this.newsletter,
    required this.categoryId,
    required this.phoneNumber,
    required this.kYCStatusId,
    required this.isActive,
    required this.usedReferralCodeId,
    required this.ownedReferralCodeId,
    required this.isUserRewardClaimed,
    required this.ownedReferralCode,
  });

  final int id;

  final String createdAt;

  final String updatedAt;

  final String? username;

  final String? password;

  final String name;

  final String email;

  final String blockchainAddress;

  final bool isAdmin;

  final bool newsletter;

  final int categoryId;

  final String phoneNumber;

  final int kYCStatusId;

  final bool isActive;

  final int? usedReferralCodeId;

  final int ownedReferralCodeId;

  final bool isUserRewardClaimed;

  final OwnedReferralCodeEntity ownedReferralCode;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        username,
        password,
        name,
        email,
        blockchainAddress,
        isAdmin,
        newsletter,
        categoryId,
        phoneNumber,
        kYCStatusId,
        isActive,
        usedReferralCodeId,
        ownedReferralCodeId,
        isUserRewardClaimed,
        ownedReferralCode,
      ];
}

base class OwnedReferralCodeEntity extends Equatable {
  const OwnedReferralCodeEntity({
    required this.id,
    required this.code,
    required this.codeChanged,
    required this.usedByBonusEarned,
    required this.ownedByBonusEarned,
  });

  final int id;

  final String code;

  final bool codeChanged;

  final bool usedByBonusEarned;

  final bool ownedByBonusEarned;

  @override
  List<Object?> get props => [
        id,
        code,
        codeChanged,
        usedByBonusEarned,
        ownedByBonusEarned,
      ];
}

final class Web3AuthUserEntity extends Equatable {
  const Web3AuthUserEntity({
    this.name,
    this.email,
    this.profileImage,
    this.verifier,
    this.verifierId,
    this.typeOfLogin,
    this.aggregateVerifier,
    this.dappShare,
    this.idToken,
    this.sessionId,
    this.oAuthIdToken,
    this.oAuthAccessToken,
    this.isMfaEnabled,
    this.secp256k1PrivateKey,
    this.ed25519PrivateKey,
    this.secp256k1CoreKitKey,
    this.ed25519CoreKitKey,
    this.error,
  });

  final String? name;

  final String? email;

  final String? profileImage;

  final String? verifier;

  final String? verifierId;

  final String? typeOfLogin;

  final String? aggregateVerifier;

  final String? dappShare;

  final String? idToken;

  final String? sessionId;

  final String? oAuthIdToken;

  final String? oAuthAccessToken;

  final bool? isMfaEnabled;

  final String? secp256k1PrivateKey;

  final String? ed25519PrivateKey;

  final String? secp256k1CoreKitKey;

  final String? ed25519CoreKitKey;

  final String? error;

  @override
  List<Object?> get props => [
        name,
        email,
        profileImage,
        verifier,
        verifierId,
        typeOfLogin,
        aggregateVerifier,
        dappShare,
        idToken,
        sessionId,
        oAuthIdToken,
        oAuthAccessToken,
        isMfaEnabled,
        secp256k1PrivateKey,
        ed25519PrivateKey,
        secp256k1CoreKitKey,
        ed25519CoreKitKey,
        error,
      ];
}

import 'package:equatable/equatable.dart' show Equatable;

final class Auth0UserEntity extends Equatable {
  const Auth0UserEntity({
    required this.idToken,
    required this.email,
  });

  final String idToken;

  final String? email;

  @override
  List<Object?> get props => [
        idToken,
        email,
      ];
}

final class SFAUserEntity extends Equatable {
  const SFAUserEntity({
    required this.privateKey,
    required this.publicAddress,
  });

  final String privateKey;

  final String publicAddress;

  @override
  List<Object?> get props => [
        privateKey,
        publicAddress,
      ];
}

base class SkyTradeUserEntity extends Equatable {
  const SkyTradeUserEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
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

  final String id;

  final DateTime createdAt;

  final DateTime updateAt;

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

  final String ownedReferralCodeId;

  final bool isUserRewardClaimed;

  final OwnedReferralCodeEntity ownedReferralCode;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updateAt,
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

  final String id;

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

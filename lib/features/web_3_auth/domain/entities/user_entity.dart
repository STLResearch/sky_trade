import 'package:equatable/equatable.dart';

base class UserEntity extends Equatable {
  const UserEntity({
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

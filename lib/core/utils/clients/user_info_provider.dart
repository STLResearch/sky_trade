import 'package:web3auth_flutter/web3auth_flutter.dart';

mixin UserInfoProvider {
  Future<String> getEd25519PrivateKey() => Web3AuthFlutter.getEd25519PrivKey();

  Future<String?> getUserEmail() => Web3AuthFlutter.getUserInfo().then(
        (userInfo) => userInfo.email,
      );
}

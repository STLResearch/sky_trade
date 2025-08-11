// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:sky_trade/core/errors/exceptions/auth_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        aWalletAlreadyExistsForThisEmailAddressKindlySignInWithTheSameMethodUsedPreviouslyCode,
        blockchainAddressKey,
        categoryIdKey,
        createPath,
        emailKey,
        invalidEmailCode,
        invalidSignatureCode,
        newsletterKey,
        phoneNumberKey,
        privatePath,
        referralCodeKey,
        sessionPath,
        unauthorizedCode,
        userDeletedCode,
        userMismatchCode,
        userNotFoundCode,
        usersPath,
        walletExistCode;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/core/utils/enums/ui.dart' show UserCategory;
import 'package:sky_trade/features/auth/data/models/auth_model.dart'
    show SkyTradeUserModel;

abstract interface class AuthRemoteDataSource {
  Future<SkyTradeUserModel> createSkyTradeUserUsing({
    required String email,
    required String blockchainAddress,
    required String phoneNumber,
    required UserCategory userCategory,
    required bool subscribeToNewsletter,
    required String? referralCode,
  });

  Future<SkyTradeUserModel> checkSkyTradeUserExists();
}

final class AuthRemoteDataSourceImplementation
    with ResponseHandler
    implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<SkyTradeUserModel> createSkyTradeUserUsing({
    required String email,
    required String blockchainAddress,
    required String phoneNumber,
    required UserCategory userCategory,
    required bool subscribeToNewsletter,
    required String? referralCode,
  }) =>
      handleResponse<CreateSkyTradeUserException, Map<String, dynamic>,
          SkyTradeUserModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + usersPath + createPath,
          includeSignature: true,
          data: {
            emailKey: email,
            blockchainAddressKey: blockchainAddress,
            phoneNumberKey: phoneNumber,
            categoryIdKey: userCategory.index,
            newsletterKey: subscribeToNewsletter,
            if (referralCode != null) referralCodeKey: referralCode,
          },
        ),
        onSuccess: SkyTradeUserModel.fromJson,
        onError: (e) => switch (e is String) {
          true when e == invalidEmailCode => InvalidEmailException(),
          true
              when e ==
                      aWalletAlreadyExistsForThisEmailAddressKindlySignInWithTheSameMethodUsedPreviouslyCode ||
                  e == walletExistCode =>
            WalletAlreadyExistsException(),
          true when e == userDeletedCode => EmailReuseNotAllowedException(),
          _ => CreateSkyTradeUserUnknownException(),
        },
      );

  @override
  Future<SkyTradeUserModel> checkSkyTradeUserExists() => handleResponse<
          CheckSkyTradeUserException, Map<String, dynamic>, SkyTradeUserModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + usersPath + sessionPath,
          includeSignature: true,
        ),
        onSuccess: SkyTradeUserModel.fromJson,
        onError: (e) => switch (e is String) {
          true when e == unauthorizedCode => UnauthorizedException(),
          true when e == invalidSignatureCode => InvalidSignatureException(),
          true when e == userNotFoundCode => UserNotFoundException(),
          true when e == userMismatchCode => UserMismatchException(),
          true when e == userDeletedCode => UserDeletedException(),
          _ => CheckSkyTradeUserUnknownException(),
        },
      );
}

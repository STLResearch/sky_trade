// ignore_for_file: lines_longer_than_80_chars

import 'package:sky_trade/core/errors/exceptions/auth_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show zero;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        aWalletAlreadyExistsForThisEmailAddressKindlySignInWithTheSameMethodUsedPreviouslyCode,
        blockchainAddressKey,
        categoryIdKey,
        createPath,
        emailKey,
        invalidEmailCode,
        invalidSignatureCode,
        nameKey,
        newsletterKey,
        phoneNumberKey,
        pirateValue,
        privatePath,
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
import 'package:sky_trade/features/auth/data/models/auth_model.dart'
    show SkyTradeUserModel;

abstract interface class AuthRemoteDataSource {
  Future<SkyTradeUserModel> createSkyTradeUserUsing({
    required String email,
    required String blockchainAddress,
    required bool subscribeToNewsletter,
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
    required bool subscribeToNewsletter,
  }) =>
      handleResponse<CreateSkyTradeUserException, Map<String, dynamic>,
          SkyTradeUserModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + usersPath + createPath,
          includeSignature: true,
          data: {
            nameKey: pirateValue,
            emailKey: email,
            blockchainAddressKey: blockchainAddress,
            newsletterKey: subscribeToNewsletter,
            categoryIdKey: zero,
            phoneNumberKey: pirateValue,
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

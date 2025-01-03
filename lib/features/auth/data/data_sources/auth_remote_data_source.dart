import 'package:sky_trade/core/errors/exceptions/auth_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show zero;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        blockchainAddressKey,
        categoryIdKey,
        createPath,
        emailKey,
        invalidEmail,
        invalidSignature,
        nameKey,
        newsletterKey,
        phoneNumberKey,
        pirateValue,
        privatePath,
        publicPath,
        sessionPath,
        unauthorized,
        userDeleted,
        userMismatch,
        userNotFound,
        usersPath,
        walletAlreadyExists;
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
          path: publicPath + usersPath + createPath,
          includeSignature: false,
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
          true when e == invalidEmail => InvalidEmailException(),
          true when e == walletAlreadyExists => WalletAlreadyExistsException(),
          true when e == userDeleted => EmailReuseNotAllowedException(),
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
          true when e == unauthorized => UnauthorizedException(),
          true when e == invalidSignature => InvalidSignatureException(),
          true when e == userNotFound => UserNotFoundException(),
          true when e == userMismatch => UserMismatchException(),
          true when e == userDeleted => UserDeletedException(),
          _ => CheckSkyTradeUserUnknownException(),
        },
      );
}

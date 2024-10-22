import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/errors/exceptions/auth_exception.dart';
import 'package:sky_ways/core/resources/numbers/networking.dart' show zero;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        apiKeyHeaderKey,
        blockchainAddressKey,
        categoryIdKey,
        closeHeaderValue,
        connectionHeaderKey,
        createPath,
        emailAddressHeaderKey,
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
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        skyTradeServerApiKey,
        unauthorized,
        userExist,
        userNotExist,
        usersPath;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_ways/core/utils/typedefs/networking.dart' show Signature;
import 'package:sky_ways/features/auth/data/models/auth_model.dart';

abstract interface class AuthRemoteDataSource {
  Future<SkyTradeUserModel> createSkyTradeUserUsing({
    required String email,
    required String blockchainAddress,
    required bool subscribeToNewsletter,
  });

  Future<SkyTradeUserModel> checkSkyTradeUserExistsUsing({
    required Signature signature,
  });
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
          true when e == userExist => UserAlreadyExistsException(),
          _ => CreateSkyTradeUserUnknownException(),
        },
      );

  @override
  Future<SkyTradeUserModel> checkSkyTradeUserExistsUsing({
    required Signature signature,
  }) =>
      handleResponse<CheckSkyTradeUserException, Map<String, dynamic>,
          SkyTradeUserModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + usersPath + sessionPath,
          headers: {
            connectionHeaderKey: closeHeaderValue,
            signHeaderKey: signature.sign,
            signIssueAtHeaderKey: signature.issuedAt,
            signNonceHeaderKey: signature.nonce,
            signAddressHeaderKey: signature.address,
            emailAddressHeaderKey: signature.email,
            apiKeyHeaderKey: dotenv.env[skyTradeServerApiKey],
          },
        ),
        onSuccess: SkyTradeUserModel.fromJson,
        onError: (e) => switch (e is String) {
          true when e == unauthorized => UnauthorizedException(),
          true when e == invalidSignature => InvalidSignatureException(),
          true when e == userNotExist => UserDoesNotExistException(),
          _ => CheckSkyTradeUserUnknownException(),
        },
      );
}

import 'package:sky_trade/core/errors/exceptions/settings_exception.dart'
    show DeleteAccountException;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show privatePath, reqDeletePath, usersPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/settings/data/models/settings_model.dart';

abstract interface class SettingsRemoteDataSource {
  Future<MessageModel> deleteAccount();
}

final class SettingsRemoteDataSourceImplementation
    with ResponseHandler
    implements SettingsRemoteDataSource {
  const SettingsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<MessageModel> deleteAccount() => handleResponse<DeleteAccountException,
          Map<String, dynamic>, MessageModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + usersPath + reqDeletePath,
          includeSignature: true,
        ),
        onSuccess: MessageModel.fromJson,
        onError: (_) => DeleteAccountException(),
      );
}

// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:sky_trade/core/errors/exceptions/settings_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        deleteUserPath,
        invalidDeleteOtpCode,
        otpKey,
        privatePath,
        requestDeletePath,
        usersPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/settings/data/models/settings_model.dart';

abstract interface class SettingsRemoteDataSource {
  Future<MessageModel> requestDeleteAccount();

  Future<MessageModel> deleteAccount({
    required int otp,
  });
}

final class SettingsRemoteDataSourceImplementation
    with ResponseHandler
    implements SettingsRemoteDataSource {
  const SettingsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<MessageModel> requestDeleteAccount() => handleResponse<
          RequestDeleteAccountException, Map<String, dynamic>, MessageModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + usersPath + requestDeletePath,
          includeSignature: true,
        ),
        onSuccess: MessageModel.fromJson,
        onError: (_) => RequestDeleteAccountException(),
      );

  @override
  Future<MessageModel> deleteAccount({
    required int otp,
  }) =>
      handleResponse<DeleteAccountException, Map<String, dynamic>,
          MessageModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.delete,
          path: privatePath + usersPath + deleteUserPath,
          includeSignature: true,
          data: {
            otpKey: otp,
          },
        ),
        onSuccess: MessageModel.fromJson,
        onError: (e) => switch (e is String) {
          true when e == invalidDeleteOtpCode => InvalidCodeException(),
          _ => DeleteAccountUnknownException(),
        },
      );
}

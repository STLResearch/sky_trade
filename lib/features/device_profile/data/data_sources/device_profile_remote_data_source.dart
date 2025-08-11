// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/errors/exceptions/device_profile_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show privatePath, sendDeviceMetadataPath, usersPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;

abstract interface class DeviceProfileRemoteDataSource {
  Future<int> sendDeviceMetadata({
    required Map<String, String> metadata,
  });
}

final class DeviceProfileRemoteDataSourceImplementation
    with ResponseHandler
    implements DeviceProfileRemoteDataSource {
  const DeviceProfileRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<int> sendDeviceMetadata({
    required Map<String, String> metadata,
  }) =>
      handleResponse<DeviceMetadataException, int, int>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + usersPath + sendDeviceMetadataPath,
          includeSignature: true,
          data: metadata,
        ),
        onSuccess: (response) => response,
        onError: (_) => DeviceMetadataFailedToSendException(),
      );
}

import 'package:sky_trade/core/errors/exceptions/device_profile_exception.dart'
    show DeviceProfileException;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show privatePath, sendDeviceMetadataPath, usersPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart'
    show ResponseHandler;
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;

abstract interface class DeviceUUIDRemoteDataSource {
  Future<int> sendDeviceMetadata({
    required Map<String, String> deviceMetadata,
  });
}

final class DeviceUUIDRemoteDataSourceImplementation
    with ResponseHandler
    implements DeviceUUIDRemoteDataSource {
  DeviceUUIDRemoteDataSourceImplementation({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<int> sendDeviceMetadata({
    required Map<String, String> deviceMetadata,
  }) async =>
      handleResponse<DeviceProfileException, int, int>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + usersPath + sendDeviceMetadataPath,
          includeSignature: true,
          data: deviceMetadata,
        ),
        onSuccess: (response) => response,
        onError: (_) => DeviceProfileException(),
      );
}

import 'package:sky_trade/core/errors/exceptions/update_manager_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show getMinimumMobileAppVersionPath, publicPath, versionInfoPath;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/update_manager/data/models/update_manager_model.dart';

abstract interface class UpdateManagerRemoteDataSource {
  Future<VersionModel> get compatibleBackendApiVersion;
}

final class UpdateManagerRemoteDataSourceImplementation
    with ResponseHandler
    implements UpdateManagerRemoteDataSource {
  const UpdateManagerRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<VersionModel> get compatibleBackendApiVersion => handleResponse<
          IncompatibleBackendApiVersionException,
          Map<String, dynamic>,
          VersionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: publicPath + versionInfoPath + getMinimumMobileAppVersionPath,
          includeSignature: false,
        ),
        onSuccess: VersionModel.fromJson,
        onError: (_) => IncompatibleBackendApiVersionException(),
      );
}

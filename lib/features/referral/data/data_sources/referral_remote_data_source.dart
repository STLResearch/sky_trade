import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sky_trade/core/errors/exceptions/referral_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show emailPath, referralBaseUrl, referralCodePath, sendReferralPath;
import 'package:sky_trade/core/resources/strings/special_characters.dart';
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/referral/data/models/referral_model.dart'
    show ReferralModel;

abstract interface class ReferralRemoteDataSource {
  Future<ReferralModel> sendReferral({
    required String email,
  });
}

class ReferralRemoteDataSourceImplementation
    with ResponseHandler
    implements ReferralRemoteDataSource {
  const ReferralRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<ReferralModel> sendReferral({
    required String email,
  }) async =>
      handleResponse<ReferralException, Map<String, dynamic>, ReferralModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: referralCodePath + sendReferralPath + forwardSlash + email,
        ),
        onSuccess: ReferralModel.fromJson,
        onError: (_) => ReferralException(),
      );
}

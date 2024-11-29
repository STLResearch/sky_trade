import 'package:sky_trade/core/errors/exceptions/referral_exception.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        currentLeaderboardInfoPath,
        findReferralHistoryPath,
        getRewardInfoPath,
        limitKey,
        overralLeaderboardInfoPath,
        pageKey,
        privatePath,
        referralCodePath,
        retrieveReferralDataPath,
        rewardPath,
        sendReferralPath,
        usersPath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show forwardSlash;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/referral/data/models/referral_model.dart'
    show
        EarningsReportModel,
        HighlightsModel,
        InviteModel,
        LeaderboardStatisticsModel,
        ReferralHistoryModel,
        SkyPointsModel;

abstract interface class ReferralRemoteDataSource {
  Future<SkyPointsModel> get skyPoints;

  Future<HighlightsModel> get highlights;

  Future<InviteModel> sendInviteTo({
    required String email,
  });

  Future<ReferralHistoryModel> getReferralHistoryOn({
    required int page,
    required int limit,
  });

  Future<LeaderboardStatisticsModel> getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  });

  Future<EarningsReportModel> get earningsReport;
}

class ReferralRemoteDataSourceImplementation
    with ResponseHandler
    implements ReferralRemoteDataSource {
  const ReferralRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<SkyPointsModel> get skyPoints =>
      handleResponse<SkyPointsException, Map<String, dynamic>, SkyPointsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + getRewardInfoPath,
          includeSignature: true,
        ),
        onSuccess: SkyPointsModel.fromJson,
        onError: (_) => SkyPointsException(),
      );

  @override
  Future<HighlightsModel> get highlights => handleResponse<HighlightsException,
          Map<String, dynamic>, HighlightsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + usersPath + retrieveReferralDataPath,
          includeSignature: true,
        ),
        onSuccess: HighlightsModel.fromJson,
        onError: (_) => HighlightsException(),
      );

  @override
  Future<InviteModel> sendInviteTo({
    required String email,
  }) =>
      handleResponse<InviteException, Map<String, dynamic>, InviteModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: referralCodePath + sendReferralPath + forwardSlash + email,
          includeSignature: true,
        ),
        onSuccess: InviteModel.fromJson,
        onError: (_) => InviteException(),
      );

  @override
  Future<ReferralHistoryModel> getReferralHistoryOn({
    required int page,
    required int limit,
  }) =>
      handleResponse<ReferralHistoryException, Map<String, dynamic>,
          ReferralHistoryModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: referralCodePath + findReferralHistoryPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
          },
        ),
        onSuccess: ReferralHistoryModel.fromJson,
        onError: (_) => ReferralHistoryException(),
      );

  @override
  Future<LeaderboardStatisticsModel> getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  }) =>
      handleResponse<LeaderboardStatisticsException, Map<String, dynamic>,
          LeaderboardStatisticsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + currentLeaderboardInfoPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
          },
        ),
        onSuccess: LeaderboardStatisticsModel.fromJson,
        onError: (_) => LeaderboardStatisticsException(),
      );

  @override
  Future<EarningsReportModel> get earningsReport => handleResponse<
          EarningsReportException, Map<String, dynamic>, EarningsReportModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + overralLeaderboardInfoPath,
          includeSignature: true,
        ),
        onSuccess: EarningsReportModel.fromJson,
        onError: (_) => EarningsReportException(),
      );
}

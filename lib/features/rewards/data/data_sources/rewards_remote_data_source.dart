import 'package:sky_trade/core/errors/exceptions/rewards_exception.dart'
    show
        DailyQuestException,
        DroneRushZoneException,
        LeaderboardInfoException,
        LeaderboardPositionException,
        RewardInfoException;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        currentLeaderboardInfoPath,
        currentLeaderboardPositionPath,
        currentLimitKey,
        droneRadarPath,
        getDailyQuestPath,
        getDroneRushZonesPath,
        getRewardInfoPath,
        limitKey,
        pageKey,
        privatePath,
        publicPath,
        questPath,
        rewardPath,
        taskTypeKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart'
    show ResponseHandler;
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/rewards/data/models/rewards_model.dart'
    show
        DailyQuestModel,
        DroneRushZoneModel,
        LeaderboardInfoModel,
        LeaderboardPositionModel,
        RewardInfoModel;

abstract interface class RewardsRemoteDataSource {
  Future<RewardInfoModel> getRewardInfo({
    required String taskType,
  });

  Future<List<DailyQuestModel>> get dailyQuests;

  Future<LeaderboardInfoModel> getLeaderboardInfo({
    required int limit,
    required int page,
    required String taskType,
  });

  Future<LeaderboardPositionModel> getLeaderboardPosition({
    required int currentLimit,
    required String taskType,
  });

  Future<List<DroneRushZoneModel>> getDroneRushZones({
    required int page,
    required int limit,
  });
}

final class RewardsRemoteDataSourceImplementation
    with ResponseHandler
    implements RewardsRemoteDataSource {
  const RewardsRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<RewardInfoModel> getRewardInfo({
    required String taskType,
  }) =>
      handleResponse<RewardInfoException, Map<String, dynamic>,
          RewardInfoModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + getRewardInfoPath,
          includeSignature: true,
          queryParameters: {
            taskTypeKey: taskType,
          },
        ),
        onSuccess: RewardInfoModel.fromJson,
        onError: (_) => RewardInfoException(),
      );

  @override
  Future<List<DailyQuestModel>> get dailyQuests =>
      handleResponse<DailyQuestException, List<dynamic>, List<DailyQuestModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + questPath + getDailyQuestPath,
          includeSignature: true,
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => DailyQuestModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => DailyQuestException(),
      );

  @override
  Future<LeaderboardInfoModel> getLeaderboardInfo({
    required int limit,
    required int page,
    required String taskType,
  }) =>
      handleResponse<LeaderboardInfoException, Map<String, dynamic>,
          LeaderboardInfoModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: publicPath + rewardPath + currentLeaderboardInfoPath,
          includeSignature: true,
          queryParameters: {
            limitKey: limit,
            pageKey: page,
            taskTypeKey: taskType,
          },
        ),
        onSuccess: LeaderboardInfoModel.fromJson,
        onError: (_) => LeaderboardInfoException(),
      );

  @override
  Future<LeaderboardPositionModel> getLeaderboardPosition({
    required int currentLimit,
    required String taskType,
  }) =>
      handleResponse<LeaderboardPositionException, Map<String, dynamic>,
          LeaderboardPositionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + currentLeaderboardPositionPath,
          includeSignature: true,
          queryParameters: {
            currentLimitKey: currentLimit,
            taskTypeKey: taskType,
          },
        ),
        onSuccess: LeaderboardPositionModel.fromJson,
        onError: (_) => LeaderboardPositionException(),
      );

  @override
  Future<List<DroneRushZoneModel>> getDroneRushZones({
    required int page,
    required int limit,
  }) =>
      handleResponse<DroneRushZoneException, List<dynamic>,
          List<DroneRushZoneModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + droneRadarPath + getDroneRushZonesPath,
          includeSignature: true,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => DroneRushZoneModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => DroneRushZoneException(),
      );
}

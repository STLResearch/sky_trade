import 'package:sky_trade/core/errors/exceptions/rewards_exception.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart' show one;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        currentLeaderboardInfoPath,
        currentLeaderboardPositionPath,
        currentLimitKey,
        dronePointsProgramValue,
        droneRadarPath,
        endTimeKey,
        getDailyQuestPath,
        getDroneRushZonesInTimeRangePath,
        getDroneRushZonesPath,
        getRewardInfoPath,
        limitKey,
        orderByPointsDescKey,
        pageKey,
        privatePath,
        publicPath,
        questPath,
        rewardPath,
        startTimeKey,
        taskTypeKey;
import 'package:sky_trade/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_trade/core/utils/clients/response_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_trade/features/rewards/data/models/rewards_model.dart'
    show
        DroneRushZoneModel,
        LeaderboardPositionModel,
        LeaderboardStatisticsModel,
        QuestModel,
        RewardPointsModel;

abstract interface class RewardsRemoteDataSource {
  Future<RewardPointsModel> get rewardPoints;

  Future<List<QuestModel>> get dailyQuests;

  Future<LeaderboardPositionModel> getLeaderboardPositionUsing({
    required int currentLimit,
  });

  Future<LeaderboardStatisticsModel> getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  });

  Future<DroneRushZoneModel?> get latestDroneRushZone;

  Future<List<DroneRushZoneModel>> getDroneRushZonesWithin({
    required DateTime startTime,
    required DateTime endTime,
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
  Future<RewardPointsModel> get rewardPoints => handleResponse<
          RewardPointsException, Map<String, dynamic>, RewardPointsModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + getRewardInfoPath,
          includeSignature: true,
          queryParameters: {
            taskTypeKey: dronePointsProgramValue,
          },
        ),
        onSuccess: RewardPointsModel.fromJson,
        onError: (_) => RewardPointsException(),
      );

  @override
  Future<List<QuestModel>> get dailyQuests =>
      handleResponse<QuestException, List<dynamic>, List<QuestModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + questPath + getDailyQuestPath,
          includeSignature: true,
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => QuestModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => QuestException(),
      );

  @override
  Future<LeaderboardPositionModel> getLeaderboardPositionUsing({
    required int currentLimit,
  }) =>
      handleResponse<LeaderboardPositionException, Map<String, dynamic>,
          LeaderboardPositionModel>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + rewardPath + currentLeaderboardPositionPath,
          includeSignature: true,
          queryParameters: {
            taskTypeKey: dronePointsProgramValue,
            currentLimitKey: currentLimit,
          },
        ),
        onSuccess: LeaderboardPositionModel.fromJson,
        onError: (_) => LeaderboardPositionException(),
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
          path: publicPath + rewardPath + currentLeaderboardInfoPath,
          includeSignature: false,
          queryParameters: {
            pageKey: page,
            limitKey: limit,
            orderByPointsDescKey: true,
            taskTypeKey: dronePointsProgramValue,
          },
        ),
        onSuccess: LeaderboardStatisticsModel.fromJson,
        onError: (_) => LeaderboardStatisticsException(),
      );

  @override
  Future<DroneRushZoneModel?> get latestDroneRushZone => handleResponse<
          DroneRushZoneException, List<dynamic>, DroneRushZoneModel?>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: privatePath + droneRadarPath + getDroneRushZonesPath,
          includeSignature: true,
          queryParameters: {
            pageKey: one,
            limitKey: one,
          },
        ),
        onSuccess: (jsonList) {
          final list = jsonList
              .map(
                (json) => DroneRushZoneModel.fromJson(
                  json as Map<String, dynamic>,
                ),
              )
              .toList();

          return switch (list.isEmpty) {
            true => null,
            false => list.first,
          };
        },
        onError: (_) => DroneRushZoneException(),
      );

  @override
  Future<List<DroneRushZoneModel>> getDroneRushZonesWithin({
    required DateTime startTime,
    required DateTime endTime,
  }) =>
      handleResponse<DroneRushZoneException, List<dynamic>,
          List<DroneRushZoneModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.post,
          path: privatePath + droneRadarPath + getDroneRushZonesInTimeRangePath,
          includeSignature: true,
          data: {
            startTimeKey: startTime.toIso8601String(),
            endTimeKey: endTime.toIso8601String(),
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

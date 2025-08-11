// SPDX-License-Identifier: UNLICENSED
                            
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/rewards/data/data_sources/rewards_local_data_source.dart';
import 'package:sky_trade/features/rewards/data/data_sources/rewards_remote_data_source.dart';
import 'package:sky_trade/features/rewards/data/repositories/rewards_repository_implementation.dart';
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/daily_quests_bloc/daily_quests_bloc.dart'
    show DailyQuestsBloc;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc;
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show LeaderboardStatisticsBloc;
import 'package:sky_trade/features/rewards/presentation/blocs/reward_points_bloc/reward_points_bloc.dart'
    show RewardPointsBloc;
import 'package:sky_trade/features/rewards/presentation/blocs/show_rewards_onboarding_bloc/show_rewards_onboarding_bloc.dart'
    show ShowRewardsOnboardingBloc;

final _sl = GetIt.I;

Future<void> registerRewardsServices() async {
  _sl
    // BLoCs
    ..registerFactory<DailyQuestsBloc>(
      () => DailyQuestsBloc(
        _sl(),
      ),
    )
    ..registerFactory<DroneRushZonesBloc>(
      () => DroneRushZonesBloc(
        _sl(),
      ),
    )
    ..registerFactory<LeaderboardStatisticsBloc>(
      () => LeaderboardStatisticsBloc(
        _sl(),
      ),
    )
    ..registerFactory<RewardPointsBloc>(
      () => RewardPointsBloc(
        _sl(),
      ),
    )
    ..registerFactory<ShowRewardsOnboardingBloc>(
      () => ShowRewardsOnboardingBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<RewardsRepository>(
      () => RewardsRepositoryImplementation(
        rewardsLocalDataSource: _sl(),
        rewardsRemoteDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<RewardsRemoteDataSource>(
      () => RewardsRemoteDataSourceImplementation(
        _sl(),
      ),
    )
    ..registerLazySingleton<RewardsLocalDataSource>(
      () => RewardsLocalDataSourceImplementation(
        _sl(),
      ),
    );
}

part of 'reward_points_bloc.dart';

@freezed
class RewardPointsState with _$RewardPointsState {
  const factory RewardPointsState.initial() = _Initial;

  const factory RewardPointsState.gettingPoints() = _GettingPoints;

  const factory RewardPointsState.gotPoints({
    required RewardPointsEntity rewardPointsEntity,
  }) = _GotPoints;

  const factory RewardPointsState.failedToGetPoints({
    required RewardPointsFailure rewardPointsFailure,
  }) = _FailedToGetPoints;
}

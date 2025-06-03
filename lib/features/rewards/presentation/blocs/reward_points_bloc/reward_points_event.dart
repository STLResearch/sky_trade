part of 'reward_points_bloc.dart';

@freezed
class RewardPointsEvent with _$RewardPointsEvent {
  const factory RewardPointsEvent.getPoints() = _GetPoints;
}

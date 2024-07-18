part of 'u_a_s_restrictions_bloc.dart';

@freezed
class UASRestrictionsState with _$UASRestrictionsState {
  const factory UASRestrictionsState.initial() = _Initial;

  const factory UASRestrictionsState.gettingRestrictions() =
      _GettingRestrictions;

  const factory UASRestrictionsState.gotRestrictions({
    required List<RestrictionEntity> restrictionEntities,
  }) = _GotRestrictions;

  const factory UASRestrictionsState.failedToGetRestrictions({
    required UASRestrictionsFailure uasRestrictionsFailure,
  }) = _FailedToGetRestrictions;
}

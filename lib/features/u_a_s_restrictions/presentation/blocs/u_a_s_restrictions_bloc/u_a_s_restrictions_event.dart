// SPDX-License-Identifier: UNLICENSED
                            
part of 'u_a_s_restrictions_bloc.dart';

@freezed
class UASRestrictionsEvent with _$UASRestrictionsEvent {
  const factory UASRestrictionsEvent.getRestrictions({
    required String geoHash,
  }) = _GetRestrictions;

  const factory UASRestrictionsEvent.selectRestriction({
    required String? restrictionId,
  }) = _SelectRestriction;
}

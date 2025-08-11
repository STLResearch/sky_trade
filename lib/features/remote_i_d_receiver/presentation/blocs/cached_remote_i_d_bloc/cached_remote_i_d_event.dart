// SPDX-License-Identifier: UNLICENSED
                            
part of 'cached_remote_i_d_bloc.dart';

@freezed
class CachedRemoteIDEvent with _$CachedRemoteIDEvent {
  const factory CachedRemoteIDEvent.cacheRemoteIDs({
    required List<RemoteIDEntity> remoteIDEntities,
    required double? latitude,
    required double? longitude,
  }) = _CacheRemoteIDs;

  const factory CachedRemoteIDEvent.getCachedRemoteIDs() = _GetCachedRemoteID;

  const factory CachedRemoteIDEvent.clearCachedRemoteIDs() =
      _ClearCachedRemoteIDs;
}

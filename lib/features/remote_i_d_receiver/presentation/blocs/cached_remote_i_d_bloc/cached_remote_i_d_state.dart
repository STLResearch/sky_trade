part of 'cached_remote_i_d_bloc.dart';

@freezed
class CachedRemoteIDState with _$CachedRemoteIDState {
  const factory CachedRemoteIDState.initial() = _Initial;

  const factory CachedRemoteIDState.cachingRemoteIDs() = _CachingRemoteIDs;

  const factory CachedRemoteIDState.gettingCachedRemoteIDs() =
      _GettingCachedRemoteIDs;

  const factory CachedRemoteIDState.clearingCachedRemoteIDs() =
      _ClearingCachedRemoteIDs;

  const factory CachedRemoteIDState.cachedRemoteIDs() = _CachedRemoteIDs;

  const factory CachedRemoteIDState.gotCachedRemoteIDs({
    required List<GeolocatedRemoteIDCollectionEntity>
        geolocatedRemoteIDCollectionEntities,
  }) = _GotCachedRemoteIDs;

  const factory CachedRemoteIDState.clearedCachedRemoteIDs() =
      _ClearedCachedRemoteIDs;

  const factory CachedRemoteIDState.noCachedRemoteIDs() = _NoCachedRemoteIDs;
}

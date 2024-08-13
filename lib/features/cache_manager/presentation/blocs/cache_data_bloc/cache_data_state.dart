part of 'cache_data_bloc.dart';

@freezed
class CacheDataState with _$CacheDataState {
  const factory CacheDataState.initial() = _Initial;

  const factory CacheDataState.caching() = _Caching;

  const factory CacheDataState.cached({
    required String name,
    required CacheType type,
  }) = _Cached;

  const factory CacheDataState.failedToCache() = _FailedToCache;
}

part of 'cached_data_bloc.dart';

@freezed
class CachedDataState with _$CachedDataState {
  const factory CachedDataState.initial() = _Initial;

  const factory CachedDataState.cacheExists({
    required CacheEntity cacheEntity,
  }) = _CacheExists;

  const factory CachedDataState.cacheNotExist() = _CacheNotExist;
}

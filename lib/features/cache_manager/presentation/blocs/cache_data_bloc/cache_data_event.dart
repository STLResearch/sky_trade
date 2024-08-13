part of 'cache_data_bloc.dart';

@freezed
class CacheDataEvent with _$CacheDataEvent {
  const factory CacheDataEvent.cacheData({
    required String name,
    required Object content,
    required CacheType type,
  }) = _CacheData;
}

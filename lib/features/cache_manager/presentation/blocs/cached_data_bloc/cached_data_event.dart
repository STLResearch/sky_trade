part of 'cached_data_bloc.dart';

@freezed
class CachedDataEvent with _$CachedDataEvent {
  const factory CachedDataEvent.getCachedData({
    required String name,
    required CacheType type,
  }) = _GetCachedData;
}

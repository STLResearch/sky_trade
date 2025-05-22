part of 'share_bloc.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.initial() = _Initial;

  const factory ShareState.sharing() = _Sharing;

  const factory ShareState.maybeShared({
    required ShareEntity shareEntity,
  }) = _MaybeShared;

  const factory ShareState.failedToShare({
    required ShareFailure shareFailure,
  }) = _FailedToShare;
}

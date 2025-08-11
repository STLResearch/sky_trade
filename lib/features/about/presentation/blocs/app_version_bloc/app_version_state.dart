// SPDX-License-Identifier: UNLICENSED
                            
part of 'app_version_bloc.dart';

@freezed
class AppVersionState with _$AppVersionState {
  const factory AppVersionState.initial() = _Initial;

  const factory AppVersionState.gettingVersion() = _GettingVersion;

  const factory AppVersionState.gotVersion({
    required AppVersionEntity appVersionEntity,
  }) = _GotVersion;

  const factory AppVersionState.failedToGetVersion({
    required AppVersionFailure appVersionFailure,
  }) = _FailedToGetVersion;
}

// SPDX-License-Identifier: UNLICENSED
                            
part of 'compatible_backend_api_version_bloc.dart';

@freezed
class CompatibleBackendApiVersionState with _$CompatibleBackendApiVersionState {
  const factory CompatibleBackendApiVersionState.initial() = _Initial;

  const factory CompatibleBackendApiVersionState.checkingVersion() =
      _CheckingVersion;

  const factory CompatibleBackendApiVersionState.versionCompatible() =
      _VersionCompatible;

  const factory CompatibleBackendApiVersionState.versionIncompatible() =
      _VersionIncompatible;

  const factory CompatibleBackendApiVersionState.failedToCheckVersion({
    required ApiVersionFailure apiVersionFailure,
  }) = _FailedToCheckVersion;
}

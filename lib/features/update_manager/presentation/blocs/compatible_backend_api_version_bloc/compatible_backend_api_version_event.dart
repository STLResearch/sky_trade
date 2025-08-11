// SPDX-License-Identifier: UNLICENSED
                            
part of 'compatible_backend_api_version_bloc.dart';

@freezed
class CompatibleBackendApiVersionEvent with _$CompatibleBackendApiVersionEvent {
  const factory CompatibleBackendApiVersionEvent.checkVersion() = _CheckVersion;

  const factory CompatibleBackendApiVersionEvent.checkCompatibility({
    required VersionEntity versionEntity,
  }) = _CheckCompatibility;
}

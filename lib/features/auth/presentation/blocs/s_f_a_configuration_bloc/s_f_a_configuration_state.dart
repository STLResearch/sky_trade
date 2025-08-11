// SPDX-License-Identifier: UNLICENSED
                            
part of 's_f_a_configuration_bloc.dart';

@freezed
class SFAConfigurationState with _$SFAConfigurationState {
  const factory SFAConfigurationState.initial() = _Initial;

  const factory SFAConfigurationState.configuring() = _Configuring;

  const factory SFAConfigurationState.configured() = _Configured;

  const factory SFAConfigurationState.failedToConfigure({
    required SFAConfigurationFailure sFAConfigurationFailure,
  }) = _FailedToConfigure;
}

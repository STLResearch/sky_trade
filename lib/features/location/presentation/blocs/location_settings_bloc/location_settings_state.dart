// SPDX-License-Identifier: UNLICENSED
                            
part of 'location_settings_bloc.dart';

@freezed
class LocationSettingsState with _$LocationSettingsState {
  const factory LocationSettingsState.initial() = _Initial;

  const factory LocationSettingsState.openingSettings() = _OpeningSettings;

  const factory LocationSettingsState.maybeOpenedSettings() =
      _MaybeOpenedSettings;
}

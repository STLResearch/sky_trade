// SPDX-License-Identifier: UNLICENSED
                            
part of 'location_settings_bloc.dart';

@freezed
class LocationSettingsEvent with _$LocationSettingsEvent {
  const factory LocationSettingsEvent.openSettings({
    required Settings settings,
  }) = _OpenSettings;
}

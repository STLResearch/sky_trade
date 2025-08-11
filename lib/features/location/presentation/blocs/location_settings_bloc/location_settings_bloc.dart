// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/utils/enums/environment.dart' show Settings;
import 'package:sky_trade/features/location/domain/repositories/location_repository.dart';

part 'location_settings_event.dart';

part 'location_settings_state.dart';

part 'location_settings_bloc.freezed.dart';

class LocationSettingsBloc
    extends Bloc<LocationSettingsEvent, LocationSettingsState> {
  LocationSettingsBloc(
    LocationRepository locationRepository,
  )   : _locationRepository = locationRepository,
        super(
          const LocationSettingsState.initial(),
        ) {
    on<_OpenSettings>(
      _openSettings,
    );
  }

  final LocationRepository _locationRepository;

  Future<void> _openSettings(
    _OpenSettings event,
    Emitter<LocationSettingsState> emit,
  ) async {
    emit(
      const LocationSettingsState.openingSettings(),
    );

    switch (event.settings) {
      case Settings.app:
        await _locationRepository.openAppSettings();
      case Settings.locationServices:
        await _locationRepository.openLocationSettings();
    }

    emit(
      const LocationSettingsState.maybeOpenedSettings(),
    );
  }
}

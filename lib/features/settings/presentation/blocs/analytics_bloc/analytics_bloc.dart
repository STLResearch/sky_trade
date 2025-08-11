// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'analytics_event.dart';

part 'analytics_state.dart';

part 'analytics_bloc.freezed.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  AnalyticsBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const AnalyticsState.initial(),
        ) {
    on<_Toggle>(
      _toggle,
    );

    on<_IsEnabled>(
      _isEnabled,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _toggle(
    _Toggle event,
    Emitter<AnalyticsState> emit,
  ) async {
    emit(
      const AnalyticsState.processing(),
    );

    await _settingsRepository.setAnalyticsCollectionEnabled(
      value: event.value,
    );

    emit(
      AnalyticsState.maybeEnabled(
        enabled: await _settingsRepository.isAnalyticsCollectionEnabled(),
      ),
    );
  }

  Future<void> _isEnabled(
    _IsEnabled event,
    Emitter<AnalyticsState> emit,
  ) async {
    emit(
      const AnalyticsState.processing(),
    );

    emit(
      AnalyticsState.maybeEnabled(
        enabled: await _settingsRepository.isAnalyticsCollectionEnabled(),
      ),
    );
  }
}

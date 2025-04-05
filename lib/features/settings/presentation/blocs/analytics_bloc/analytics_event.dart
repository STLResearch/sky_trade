part of 'analytics_bloc.dart';

@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  const factory AnalyticsEvent.toggle({
    required bool value,
  }) = _Toggle;

  const factory AnalyticsEvent.isEnabled() = _IsEnabled;
}

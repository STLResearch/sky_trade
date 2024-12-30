import 'package:equatable/equatable.dart' show Equatable;

sealed class TrackingStatusFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class TrackingRequestFailure extends TrackingStatusFailure {
  @override
  List<Object?> get props => [];
}

final class TrackingRequestNotRequiredFailure extends TrackingStatusFailure {
  @override
  List<Object?> get props => [];
}

final class AnalyticsFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

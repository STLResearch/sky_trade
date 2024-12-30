part of 'tracking_authorization_bloc.dart';

@freezed
class TrackingAuthorizationState with _$TrackingAuthorizationState {
  const factory TrackingAuthorizationState.initial() = _Initial;

  const factory TrackingAuthorizationState.processing() = _Processing;

  const factory TrackingAuthorizationState.maybeAuthorizedTracking({
    required TrackingStatusEntity trackingStatusEntity,
  }) = _MaybeAuthorizedTracking;

  const factory TrackingAuthorizationState.cannotAuthorizeTracking({
    required TrackingStatusFailure trackingStatusFailure,
  }) = _CannotAuthorizeTracking;
}

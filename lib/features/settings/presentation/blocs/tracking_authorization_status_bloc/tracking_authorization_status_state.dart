part of 'tracking_authorization_status_bloc.dart';

@freezed
class TrackingAuthorizationStatusState with _$TrackingAuthorizationStatusState {
  const factory TrackingAuthorizationStatusState.initial() = _Initial;

  const factory TrackingAuthorizationStatusState.checking() = _Checking;

  const factory TrackingAuthorizationStatusState.maybeAuthorized({
    required TrackingStatusEntity trackingStatusEntity,
  }) = _MaybeAuthorized;

  const factory TrackingAuthorizationStatusState.cannotAuthorize({
    required TrackingStatusFailure trackingStatusFailure,
  }) = _CannotAuthorize;
}

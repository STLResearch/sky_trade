// SPDX-License-Identifier: UNLICENSED
                            
part of 'request_tracking_authorization_bloc.dart';

@freezed
class RequestTrackingAuthorizationState
    with _$RequestTrackingAuthorizationState {
  const factory RequestTrackingAuthorizationState.initial() = _Initial;

  const factory RequestTrackingAuthorizationState.requesting() = _Requesting;

  const factory RequestTrackingAuthorizationState.maybeAuthorized({
    required TrackingStatusEntity trackingStatusEntity,
  }) = _MaybeAuthorized;

  const factory RequestTrackingAuthorizationState.cannotAuthorize({
    required TrackingStatusFailure trackingStatusFailure,
  }) = _CannotAuthorize;
}

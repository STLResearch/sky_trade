// SPDX-License-Identifier: UNLICENSED
                            
part of 'request_tracking_authorization_bloc.dart';

@freezed
class RequestTrackingAuthorizationEvent
    with _$RequestTrackingAuthorizationEvent {
  const factory RequestTrackingAuthorizationEvent.request() = _Request;
}

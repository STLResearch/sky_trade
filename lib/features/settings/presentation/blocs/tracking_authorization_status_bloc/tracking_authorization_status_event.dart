// SPDX-License-Identifier: UNLICENSED
                            
part of 'tracking_authorization_status_bloc.dart';

@freezed
class TrackingAuthorizationStatusEvent with _$TrackingAuthorizationStatusEvent {
  const factory TrackingAuthorizationStatusEvent.check() = _Check;
}

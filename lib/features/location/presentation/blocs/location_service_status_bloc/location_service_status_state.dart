// SPDX-License-Identifier: UNLICENSED
                            
part of 'location_service_status_bloc.dart';

@freezed
class LocationServiceStatusState with _$LocationServiceStatusState {
  const factory LocationServiceStatusState.initial() = _Initial;

  const factory LocationServiceStatusState.gettingLocationServiceStatus() =
      _GettingLocationServiceStatus;

  const factory LocationServiceStatusState.gotLocationServiceStatus({
    required LocationServiceStatusEntity locationServiceStatusEntity,
  }) = _GotLocationServiceStatus;

  const factory LocationServiceStatusState.failedToGetLocationServiceStatus({
    required LocationServiceStatusFailure locationServiceStatusFailure,
  }) = _FailedToGetLocationServiceStatus;
}

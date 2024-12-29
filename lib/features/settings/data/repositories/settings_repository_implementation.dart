import 'dart:io' show Platform;

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:sky_trade/core/errors/failures/settings_failure.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;
import 'package:sky_trade/features/settings/data/data_sources/settings_local_data_source.dart'
    show SettingsLocalDataSource;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart';
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

final class SettingsRepositoryImplementation implements SettingsRepository {
  const SettingsRepositoryImplementation(
    SettingsLocalDataSource settingsLocalDataSource,
  ) : _settingsLocalDataSource = settingsLocalDataSource;

  final SettingsLocalDataSource _settingsLocalDataSource;

  @override
  Future<Either<TrackingStatusFailure, TrackingStatusEntity>>
      get trackingAuthorizationStatus async {
    if (!Platform.isIOS) {
      return Left(
        TrackingRequestNotRequiredFailure(),
      );
    }

    final trackingStatus =
        await AppTrackingTransparency.trackingAuthorizationStatus;

    return _computeTrackingAuthorizationStatus(
      trackingStatus: trackingStatus,
    );
  }

  @override
  Future<Either<TrackingStatusFailure, TrackingStatusEntity>>
      maybeRequestTrackingAuthorization() async {
    if (!Platform.isIOS) {
      return Left(
        TrackingRequestNotRequiredFailure(),
      );
    }

    final trackingStatus =
        await AppTrackingTransparency.trackingAuthorizationStatus;

    if (trackingStatus == TrackingStatus.notDetermined) {
      final trackingAuthorizationStatus =
          await AppTrackingTransparency.requestTrackingAuthorization();

      return _computeTrackingAuthorizationStatus(
        trackingStatus: trackingAuthorizationStatus,
      );
    }

    return _computeTrackingAuthorizationStatus(
      trackingStatus: trackingStatus,
    );
  }

  Either<TrackingStatusFailure, TrackingStatusEntity>
      _computeTrackingAuthorizationStatus({
    required TrackingStatus trackingStatus,
  }) =>
          switch (trackingStatus) {
            TrackingStatus.denied ||
            TrackingStatus.restricted ||
            TrackingStatus.notSupported =>
              Left(
                TrackingRequestFailure(),
              ),
            TrackingStatus.authorized => const Right(
                TrackingStatusEntity(
                  status: TrackingTransparencyRequestStatus.authorized,
                ),
              ),
            TrackingStatus.notDetermined => const Right(
                TrackingStatusEntity(
                  status: TrackingTransparencyRequestStatus.notYetAsked,
                ),
              ),
          };

  @override
  Future<bool> isAnalyticsCollectionEnabled() =>
      _settingsLocalDataSource.isAnalyticsCollectionEnabled();

  @override
  Future<void> setAnalyticsCollectionEnabled({
    required bool value,
  }) =>
      _settingsLocalDataSource.setAnalyticsCollectionEnabled(
        value: value,
      );
}

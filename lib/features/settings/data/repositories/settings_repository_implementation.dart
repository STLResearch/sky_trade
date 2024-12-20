import 'dart:io' show Platform;

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    show FlutterSecureStorage;
import 'package:sky_trade/core/errors/failures/settings_failure.dart';
import 'package:sky_trade/core/resources/strings/local.dart'
    show analyticsStateKey;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart';
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

final class SettingsRepositoryImplementation implements SettingsRepository {
  const SettingsRepositoryImplementation(
    FlutterSecureStorage flutterSecureStorage,
  ) : _flutterSecureStorage = flutterSecureStorage;

  final FlutterSecureStorage _flutterSecureStorage;

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
  Future<AnalyticsEntity> isAnalyticsCollectionEnabled() async {
    final analyticsState = await _flutterSecureStorage.read(
      key: analyticsStateKey,
    );

    return AnalyticsEntity(
      enabled: bool.tryParse(
            analyticsState ?? false.toString(),
          ) ??
          false,
    );
  }

  @override
  Future<void> setAnalyticsCollectionEnabled({
    required bool value,
  }) =>
      Future.wait(
        [
          FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
            value,
          ),
          _flutterSecureStorage.write(
            key: analyticsStateKey,
            value: value.toString(),
          ),
        ],
      );
}

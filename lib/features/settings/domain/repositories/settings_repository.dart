import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/settings_failure.dart';
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart';

abstract interface class SettingsRepository {
  Future<Either<RequestDeleteAccountFailure, MessageEntity>>
      requestDeleteAccount();

  Future<Either<DeleteAccountFailure, MessageEntity>> deleteAccount({
    required int otp,
  });

  Future<Either<TrackingStatusFailure, TrackingStatusEntity>>
      get trackingAuthorizationStatus;

  Future<Either<TrackingStatusFailure, TrackingStatusEntity>>
      maybeRequestTrackingAuthorization();

  Future<bool> isAnalyticsCollectionEnabled();

  Future<void> setAnalyticsCollectionEnabled({
    required bool value,
  });

  Future<Either<ShareFailure, ShareEntity>> share({
    required String subject,
    required String title,
    required String message,
  });
}

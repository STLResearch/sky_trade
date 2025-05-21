import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:share_plus/share_plus.dart'
    show ShareParams, SharePlus, ShareResultStatus;
import 'package:sky_trade/core/errors/failures/referral_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/enums/ui.dart' show ShareResult;
import 'package:sky_trade/features/referral/data/data_sources/referral_remote_data_source.dart'
    show ReferralRemoteDataSource;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show
        EarningsReportEntity,
        HighlightsEntity,
        InviteEntity,
        LeaderboardPositionEntity,
        LeaderboardStatisticsEntity,
        ReferralHistoryEntity,
        ShareEntity,
        SkyPointsEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

final class ReferralRepositoryImplementation
    with DataHandler, SignatureHandler
    implements ReferralRepository {
  const ReferralRepositoryImplementation({
    required SharePlus sharePlus,
    required ReferralRemoteDataSource referralRemoteDataSource,
  })  : _sharePlus = sharePlus,
        _referralRemoteDataSource = referralRemoteDataSource;

  final SharePlus _sharePlus;

  final ReferralRemoteDataSource _referralRemoteDataSource;

  @override
  Future<Either<SkyPointsFailure, SkyPointsEntity>> get skyPoints =>
      handleData<SkyPointsFailure, SkyPointsEntity>(
        dataSourceOperation: () => _referralRemoteDataSource.skyPoints,
        onSuccess: (skyPointsEntity) => skyPointsEntity,
        onFailure: (_) => SkyPointsFailure(),
      );

  @override
  Future<Either<HighlightsFailure, HighlightsEntity>> get highlights =>
      handleData<HighlightsFailure, HighlightsEntity>(
        dataSourceOperation: () => _referralRemoteDataSource.highlights,
        onSuccess: (highlightsEntity) => highlightsEntity,
        onFailure: (_) => HighlightsFailure(),
      );

  @override
  Future<Either<ShareFailure, ShareEntity>> share({
    required String subject,
    required String title,
    required String message,
  }) =>
      handleData<ShareFailure, ShareEntity>(
        dataSourceOperation: () async {
          final shareResult = await _sharePlus.share(
            ShareParams(
              subject: subject,
              title: title,
              text: message,
            ),
          );

          return ShareEntity(
            result: switch (shareResult.status) {
              ShareResultStatus.success => ShareResult.success,
              ShareResultStatus.dismissed => ShareResult.dismissed,
              ShareResultStatus.unavailable => ShareResult.unknown,
            },
          );
        },
        onSuccess: (highlightsEntity) => highlightsEntity,
        onFailure: (_) => ShareFailure(),
      );

  @override
  Future<Either<InviteFailure, InviteEntity>> sendInviteTo({
    required String email,
  }) =>
      handleData<InviteFailure, InviteEntity>(
        dataSourceOperation: () => _referralRemoteDataSource.sendInviteTo(
          email: email,
        ),
        onSuccess: (inviteEntity) => inviteEntity,
        onFailure: (_) => InviteFailure(),
      );

  @override
  Future<Either<ReferralHistoryFailure, ReferralHistoryEntity>>
      getReferralHistoryOn({
    required int page,
    required int limit,
  }) =>
          handleData<ReferralHistoryFailure, ReferralHistoryEntity>(
            dataSourceOperation: () =>
                _referralRemoteDataSource.getReferralHistoryOn(
              page: page,
              limit: limit,
            ),
            onSuccess: (referralHistoryEntity) => referralHistoryEntity,
            onFailure: (_) => ReferralHistoryFailure(),
          );

  @override
  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getLeaderboardPositionUsing({
    required int currentLimit,
  }) =>
          handleData<LeaderboardPositionFailure, LeaderboardPositionEntity>(
            dataSourceOperation: () =>
                _referralRemoteDataSource.getLeaderboardPositionUsing(
              currentLimit: currentLimit,
            ),
            onSuccess: (leaderboardPositionEntity) => leaderboardPositionEntity,
            onFailure: (_) => LeaderboardPositionFailure(),
          );

  @override
  Future<Either<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>>
      getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  }) =>
          handleData<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>(
            dataSourceOperation: () =>
                _referralRemoteDataSource.getLeaderboardStatisticsOn(
              page: page,
              limit: limit,
            ),
            onSuccess: (leaderboardStatisticsEntity) =>
                leaderboardStatisticsEntity,
            onFailure: (_) => LeaderboardStatisticsFailure(),
          );

  @override
  Future<Either<EarningsReportFailure, EarningsReportEntity>>
      get earningsReport =>
          handleData<EarningsReportFailure, EarningsReportEntity>(
            dataSourceOperation: () => _referralRemoteDataSource.earningsReport,
            onSuccess: (earningsReportEntity) => earningsReportEntity,
            onFailure: (_) => EarningsReportFailure(),
          );

  @override
  Future<void> copyReferralCodeOrLinkToClipboard({
    required String data,
  }) =>
      Clipboard.setData(
        ClipboardData(
          text: data,
        ),
      );

  @override
  Future<String?> get userEmail => computeUserEmail();
}

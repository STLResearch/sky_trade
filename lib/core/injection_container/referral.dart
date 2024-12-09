import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/referral/data/data_sources/referral_remote_data_source.dart';
import 'package:sky_trade/features/referral/data/repositories/referral_repository_implementation.dart';
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';
import 'package:sky_trade/features/referral/presentation/blocs/earnings_report_bloc/earnings_report_bloc.dart'
    show EarningsReportBloc;
import 'package:sky_trade/features/referral/presentation/blocs/email_bloc/email_bloc.dart'
    show EmailBloc;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc;
import 'package:sky_trade/features/referral/presentation/blocs/invite_bloc/invite_bloc.dart'
    show InviteBloc;
import 'package:sky_trade/features/referral/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show LeaderboardStatisticsBloc;
import 'package:sky_trade/features/referral/presentation/blocs/referral_code_bloc/referral_code_bloc.dart'
    show ReferralCodeBloc;
import 'package:sky_trade/features/referral/presentation/blocs/referral_history_bloc/referral_history_bloc.dart'
    show ReferralHistoryBloc;
import 'package:sky_trade/features/referral/presentation/blocs/referral_link_bloc/referral_link_bloc.dart'
    show ReferralLinkBloc;
import 'package:sky_trade/features/referral/presentation/blocs/sky_points_bloc/sky_points_bloc.dart'
    show SkyPointsBloc;

final _sl = GetIt.I;

Future<void> registerReferralServices() async {
  _sl
    // BLoCs
    ..registerFactory<EarningsReportBloc>(
      () => EarningsReportBloc(
        _sl(),
      ),
    )
    ..registerFactory<EmailBloc>(
      () => EmailBloc(
        _sl(),
      ),
    )
    ..registerFactory<HighlightsBloc>(
      () => HighlightsBloc(
        _sl(),
      ),
    )
    ..registerFactory<InviteBloc>(
      () => InviteBloc(
        _sl(),
      ),
    )
    ..registerFactory<LeaderboardStatisticsBloc>(
      () => LeaderboardStatisticsBloc(
        _sl(),
      ),
    )
    ..registerFactory<ReferralCodeBloc>(
      () => ReferralCodeBloc(
        _sl(),
      ),
    )
    ..registerFactory<ReferralHistoryBloc>(
      () => ReferralHistoryBloc(
        _sl(),
      ),
    )
    ..registerFactory<ReferralLinkBloc>(
      () => ReferralLinkBloc(
        _sl(),
      ),
    )
    ..registerFactory<SkyPointsBloc>(
      () => SkyPointsBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<ReferralRepository>(
      () => ReferralRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<ReferralRemoteDataSource>(
      () => ReferralRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

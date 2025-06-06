import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/settings/data/data_sources/settings_local_data_source.dart';
import 'package:sky_trade/features/settings/data/data_sources/settings_remote_data_source.dart';
import 'package:sky_trade/features/settings/data/repositories/settings_repository_implementation.dart';
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';
import 'package:sky_trade/features/settings/presentation/blocs/analytics_bloc/analytics_bloc.dart'
    show AnalyticsBloc;
import 'package:sky_trade/features/settings/presentation/blocs/delete_account_bloc/delete_account_bloc.dart'
    show DeleteAccountBloc;
import 'package:sky_trade/features/settings/presentation/blocs/otp_resend_timer_bloc/otp_resend_timer_bloc.dart'
    show OtpResendTimerBloc;
import 'package:sky_trade/features/settings/presentation/blocs/request_delete_account_bloc/request_delete_account_bloc.dart'
    show RequestDeleteAccountBloc;
import 'package:sky_trade/features/settings/presentation/blocs/request_tracking_authorization_bloc/request_tracking_authorization_bloc.dart'
    show RequestTrackingAuthorizationBloc;
import 'package:sky_trade/features/settings/presentation/blocs/share_bloc/share_bloc.dart'
    show ShareBloc;
import 'package:sky_trade/features/settings/presentation/blocs/tracking_authorization_status_bloc/tracking_authorization_status_bloc.dart'
    show TrackingAuthorizationStatusBloc;

final _sl = GetIt.I;

Future<void> registerSettingsServices() async {
  _sl
    // BLoCs
    ..registerFactory<AnalyticsBloc>(
      () => AnalyticsBloc(
        _sl(),
      ),
    )
    ..registerFactory<DeleteAccountBloc>(
      () => DeleteAccountBloc(
        _sl(),
      ),
    )
    ..registerFactory<OtpResendTimerBloc>(
      OtpResendTimerBloc.new,
    )
    ..registerFactory<RequestDeleteAccountBloc>(
      () => RequestDeleteAccountBloc(
        _sl(),
      ),
    )
    ..registerFactory<RequestTrackingAuthorizationBloc>(
      () => RequestTrackingAuthorizationBloc(
        _sl(),
      ),
    )
    ..registerFactory<ShareBloc>(
      () => ShareBloc(
        _sl(),
      ),
    )
    ..registerFactory<TrackingAuthorizationStatusBloc>(
      () => TrackingAuthorizationStatusBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImplementation(
        sharePlus: _sl(),
        settingsLocalDataSource: _sl(),
        settingsRemoteDataSource: _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<SettingsLocalDataSource>(
      () => SettingsLocalDataSourceImplementation(
        sharedPreferencesWithCache: _sl(),
        firebaseAnalytics: _sl(),
      ),
    )
    ..registerLazySingleton<SettingsRemoteDataSource>(
      () => SettingsRemoteDataSourceImplementation(
        _sl(),
      ),
    );
}

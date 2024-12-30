import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/settings/data/data_sources/settings_local_data_source.dart';
import 'package:sky_trade/features/settings/data/repositories/settings_repository_implementation.dart';
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';
import 'package:sky_trade/features/settings/presentation/blocs/analytics_bloc/analytics_bloc.dart'
    show AnalyticsBloc;
import 'package:sky_trade/features/settings/presentation/blocs/tracking_authorization_bloc/tracking_authorization_bloc.dart'
    show TrackingAuthorizationBloc;

final _sl = GetIt.I;

Future<void> registerSettingsServices() async {
  _sl
    // BLoCs
    ..registerFactory<AnalyticsBloc>(
      () => AnalyticsBloc(
        _sl(),
      ),
    )
    ..registerFactory<TrackingAuthorizationBloc>(
      () => TrackingAuthorizationBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<SettingsLocalDataSource>(
      () => SettingsLocalDataSourceImplementation(
        sharedPreferencesWithCache: _sl(),
        firebaseAnalytics: _sl(),
      ),
    );
}

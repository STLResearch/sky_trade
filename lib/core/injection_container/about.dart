import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/about/data/repositories/about_repository_implementation.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart';
import 'package:sky_trade/features/about/presentation/blocs/app_version_bloc/app_version_bloc.dart'
    show AppVersionBloc;

final _sl = GetIt.I;

Future<void> registerAboutServices() async {
  _sl
    // BLoCs
    ..registerFactory<AppVersionBloc>(
      () => AppVersionBloc(
        _sl(),
      ),
    )
    // Repositories
    ..registerLazySingleton<AboutRepository>(
      AboutRepositoryImplementation.new,
    );
}

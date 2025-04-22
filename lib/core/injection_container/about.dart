import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/about/data/repositories/about_repository_implementation.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart'
    show AboutRepository;
import 'package:sky_trade/features/about/presentation/about_bloc.dart'
    show AboutBloc;

final _sl = GetIt.I;

Future<void> registerAboutServices() async {
  _sl
    // BLoCs
    ..registerFactory<AboutBloc>(
      () => AboutBloc(
        _sl(),
      ),
    )
    // Repositories
    ..registerLazySingleton<AboutRepository>(
      AboutRepositoryImplementation.new,
    );
}

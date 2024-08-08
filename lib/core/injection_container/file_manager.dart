import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_ways/features/file_manager/data/repositories/file_manager_repository_implementation.dart';
import 'package:sky_ways/features/file_manager/domain/repositories/file_manager_repository.dart';
import 'package:sky_ways/features/file_manager/presentation/blocs/save_file_bloc/save_file_bloc.dart'
    show SaveFileBloc;
import 'package:sky_ways/features/file_manager/presentation/blocs/saved_file_bloc/saved_file_bloc.dart'
    show SavedFileBloc;

final _sl = GetIt.I;

Future<void> registerFileManagerServices() async {
  _sl
    // BLoCs
    ..registerFactory<SaveFileBloc>(
      () => SaveFileBloc(
        _sl(),
      ),
    )
    ..registerFactory<SavedFileBloc>(
      () => SavedFileBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<FileManagerRepository>(
      FileManagerRepositoryImplementation.new,
    );
}

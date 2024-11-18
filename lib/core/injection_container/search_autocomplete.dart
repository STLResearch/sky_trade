import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/search_autocomplete/data/data_sources/search_autocomplete_local_data_source.dart';
import 'package:sky_trade/features/search_autocomplete/data/data_sources/search_autocomplete_remote_data_source.dart';
import 'package:sky_trade/features/search_autocomplete/data/repositories/search_autocomplete_repository_implementation.dart';
import 'package:sky_trade/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc;

final _sl = GetIt.I;

Future<void> registerSearchAutocompleteServices() async {
  _sl
    // BLoCs
    ..registerFactory<SearchAutocompleteBloc>(
      () => SearchAutocompleteBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<SearchAutocompleteRepository>(
      () => SearchAutocompleteRepositoryImplementation(
        _sl(),
      ),
    )

    // Data sources
    ..registerLazySingleton<SearchAutocompleteRemoteDataSource>(
      () => SearchAutocompleteRemoteDataSourceImplementation(
        httpClient: _sl(),
        searchAutocompleteLocalDataSource: _sl(),
      ),
    )
    ..registerLazySingleton<SearchAutocompleteLocalDataSource>(
      () => SearchAutocompleteLocalDataSourceImplementation(
        _sl(),
      ),
    );
}

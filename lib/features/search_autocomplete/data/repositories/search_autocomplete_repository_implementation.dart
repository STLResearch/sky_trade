// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/search_autocomplete_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/search_autocomplete/data/data_sources/search_autocomplete_remote_data_source.dart'
    show SearchAutocompleteRemoteDataSource;
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart'
    show RetrieveResultEntity, SearchResultEntity;
import 'package:sky_trade/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';

final class SearchAutocompleteRepositoryImplementation
    with DataHandler
    implements SearchAutocompleteRepository {
  const SearchAutocompleteRepositoryImplementation(
    SearchAutocompleteRemoteDataSource searchAutocompleteRemoteDataSource,
  ) : _searchAutocompleteRemoteDataSource = searchAutocompleteRemoteDataSource;

  final SearchAutocompleteRemoteDataSource _searchAutocompleteRemoteDataSource;

  @override
  Future<Either<SearchAutocompleteFailure, SearchResultEntity>>
      autocompleteSearchUsing({
    required String query,
  }) =>
          handleData<SearchAutocompleteFailure, SearchResultEntity>(
            dataSourceOperation: () =>
                _searchAutocompleteRemoteDataSource.autocompleteSearchUsing(
              query: query,
            ),
            onSuccess: (searchResultEntity) => searchResultEntity,
            onFailure: (_) => SearchAutocompleteFailure(),
          );

  @override
  Future<Either<RetrieveGeometricCoordinatesFailure, RetrieveResultEntity>>
      retrieveGeometricCoordinatesFor({
    required String id,
  }) =>
          handleData<RetrieveGeometricCoordinatesFailure, RetrieveResultEntity>(
            dataSourceOperation: () => _searchAutocompleteRemoteDataSource
                .retrieveGeometricCoordinatesFor(
              id: id,
            ),
            onSuccess: (retrieveResultEntity) => retrieveResultEntity,
            onFailure: (_) => RetrieveGeometricCoordinatesFailure(),
          );
}

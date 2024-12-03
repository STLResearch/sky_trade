import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/search_autocomplete_failure.dart'
    show SearchAutocompleteFailure;
import 'package:sky_trade/features/search_autocomplete/domain/entities/retrieve_result_entity.dart';
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart';

abstract interface class SearchAutocompleteRepository {
  Future<Either<SearchAutocompleteFailure, SearchResultEntity>>
      autocompleteSearchUsing({
    required String query,
  });

  Future<Either<SearchAutocompleteFailure, RetrieveResultEntity>>
      retrieveGeometricCoordinatesFor({
    required String mapboxID,
  });
}

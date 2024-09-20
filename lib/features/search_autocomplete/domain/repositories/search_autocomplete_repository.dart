import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/search_autocomplete_failure.dart'
    show SearchAutocompleteFailure;
import 'package:sky_ways/features/search_autocomplete/domain/entities/search_result_entity.dart';

abstract interface class SearchAutocompleteRepository {
  Future<Either<SearchAutocompleteFailure, List<SearchResultEntity>>>
      autocompleteSearchUsing({
    required String query,
  });
}

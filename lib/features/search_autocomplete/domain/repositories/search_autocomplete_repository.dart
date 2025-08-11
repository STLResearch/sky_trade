// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/search_autocomplete_failure.dart';
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart'
    show RetrieveResultEntity, SearchResultEntity;

abstract interface class SearchAutocompleteRepository {
  Future<Either<SearchAutocompleteFailure, SearchResultEntity>>
      autocompleteSearchUsing({
    required String query,
  });

  Future<Either<RetrieveGeometricCoordinatesFailure, RetrieveResultEntity>>
      retrieveGeometricCoordinatesFor({
    required String id,
  });
}

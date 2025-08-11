// SPDX-License-Identifier: UNLICENSED
                            
part of 'search_autocomplete_bloc.dart';

@freezed
class SearchAutocompleteEvent with _$SearchAutocompleteEvent {
  const factory SearchAutocompleteEvent.autocompleteSearch({
    required String query,
  }) = _AutocompleteSearch;

  const factory SearchAutocompleteEvent.searchAutocompleteGotten({
    required SearchResultEntity searchResultEntity,
  }) = _SearchAutocompleteGotten;

  const factory SearchAutocompleteEvent.searchAutocompleteNotGotten({
    required SearchAutocompleteFailure searchAutocompleteFailure,
  }) = _SearchAutocompleteNotGotten;
}

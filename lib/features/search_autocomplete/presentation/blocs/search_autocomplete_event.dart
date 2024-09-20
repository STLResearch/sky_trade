part of 'search_autocomplete_bloc.dart';

@freezed
class SearchAutocompleteEvent with _$SearchAutocompleteEvent {
  const factory SearchAutocompleteEvent.autocompleteSearch({
    required String query,
  }) = _AutocompleteSearch;
}

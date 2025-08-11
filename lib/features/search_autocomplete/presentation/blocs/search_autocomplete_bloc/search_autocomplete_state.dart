// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

part of 'search_autocomplete_bloc.dart';

@freezed
class SearchAutocompleteState with _$SearchAutocompleteState {
  const factory SearchAutocompleteState.initial() = _Initial;

  const factory SearchAutocompleteState.gettingSearchAutocomplete() =
      _GettingSearchAutocomplete;

  const factory SearchAutocompleteState.gotSearchAutocomplete({
    required SearchResultEntity searchResultEntity,
  }) = _GotSearchAutocomplete;

  const factory SearchAutocompleteState.failedToGetSearchAutocomplete({
    required SearchAutocompleteFailure searchAutocompleteFailure,
  }) = _FailedToGetSearchAutocomplete;
}

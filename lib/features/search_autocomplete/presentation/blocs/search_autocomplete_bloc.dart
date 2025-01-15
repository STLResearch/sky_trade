import 'dart:async' show Timer;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/search_autocomplete_failure.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show oneThousandFiveHundred;
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart'
    show SearchResultEntity;
import 'package:sky_trade/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';

part 'search_autocomplete_bloc.freezed.dart';

part 'search_autocomplete_event.dart';

part 'search_autocomplete_state.dart';

class SearchAutocompleteBloc
    extends Bloc<SearchAutocompleteEvent, SearchAutocompleteState> {
  SearchAutocompleteBloc(
    SearchAutocompleteRepository searchAutocompleteRepository,
  )   : _searchAutocompleteRepository = searchAutocompleteRepository,
        super(
          const SearchAutocompleteState.initial(),
        ) {
    on<_AutocompleteSearch>(
      _autocompleteSearch,
    );

    on<_SearchAutocompleteGotten>(
      _searchAutocompleteGotten,
    );

    on<_SearchAutocompleteNotGotten>(
      _searchAutocompleteNotGotten,
    );
  }

  final SearchAutocompleteRepository _searchAutocompleteRepository;

  Timer? _debounceTimer;

  Future<void> _autocompleteSearch(
    _AutocompleteSearch event,
    Emitter<SearchAutocompleteState> emit,
  ) async {
    if (_debounceTimer?.isActive ?? false) {
      cleanupDebounceTimer();
    }

    if (event.query.isEmpty) {
      emit(
        const SearchAutocompleteState.initial(),
      );

      return;
    }

    emit(
      const SearchAutocompleteState.gettingSearchAutocomplete(),
    );

    _debounceTimer = Timer(
      const Duration(
        milliseconds: oneThousandFiveHundred,
      ),
      () async {
        final result =
            await _searchAutocompleteRepository.autocompleteSearchUsing(
          query: event.query,
        );

        result.fold(
          (searchAutocompleteFailure) => add(
            SearchAutocompleteEvent.searchAutocompleteNotGotten(
              searchAutocompleteFailure: searchAutocompleteFailure,
            ),
          ),
          (searchResultEntity) => add(
            SearchAutocompleteEvent.searchAutocompleteGotten(
              searchResultEntity: searchResultEntity,
            ),
          ),
        );
      },
    );
  }

  void _searchAutocompleteNotGotten(
    _SearchAutocompleteNotGotten event,
    Emitter<SearchAutocompleteState> emit,
  ) =>
      emit(
        SearchAutocompleteState.failedToGetSearchAutocomplete(
          searchAutocompleteFailure: event.searchAutocompleteFailure,
        ),
      );

  void _searchAutocompleteGotten(
    _SearchAutocompleteGotten event,
    Emitter<SearchAutocompleteState> emit,
  ) =>
      emit(
        SearchAutocompleteState.gotSearchAutocomplete(
          searchResultEntity: event.searchResultEntity,
        ),
      );

  void cleanupDebounceTimer() {
    _debounceTimer?.cancel();
    _debounceTimer = null;
  }

  @override
  Future<void> close() {
    cleanupDebounceTimer();
    return super.close();
  }
}

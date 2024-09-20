import 'package:bloc/bloc.dart' show Bloc, Emitter, EventTransformer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions;
import 'package:sky_ways/core/errors/failures/search_autocomplete_failure.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart' show three;
import 'package:sky_ways/features/search_autocomplete/domain/entities/search_result_entity.dart'
    show SearchResultEntity;
import 'package:sky_ways/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';

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
      transformer: _debounceTransformer,
    );
  }

  final SearchAutocompleteRepository _searchAutocompleteRepository;

  Future<void> _autocompleteSearch(
    _AutocompleteSearch event,
    Emitter<SearchAutocompleteState> emit,
  ) async {
    emit(
      const SearchAutocompleteState.gettingSearchAutocomplete(),
    );

    final result = await _searchAutocompleteRepository.autocompleteSearchUsing(
      query: event.query,
    );

    result.fold(
      (searchAutocompleteFailure) => emit(
        SearchAutocompleteState.failedToGetSearchAutocomplete(
          searchAutocompleteFailure: searchAutocompleteFailure,
        ),
      ),
      (searchResultEntities) => emit(
        SearchAutocompleteState.gotSearchAutocomplete(
          searchResultEntities: searchResultEntities,
        ),
      ),
    );
  }

  EventTransformer<_AutocompleteSearch> get _debounceTransformer =>
      (events, mapper) => events
          .debounceTime(
            const Duration(
              seconds: three,
            ),
          )
          .asyncExpand(
            mapper,
          );
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/search_autocomplete_failure.dart'
    show RetrieveGeometricCoordinatesFailure;
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show one, zero;
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart'
    show GeometryEntity;
import 'package:sky_trade/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';

part 'retrieve_geometric_coordinates_event.dart';

part 'retrieve_geometric_coordinates_state.dart';

part 'retrieve_geometric_coordinates_bloc.freezed.dart';

class RetrieveGeometricCoordinatesBloc extends Bloc<
    RetrieveGeometricCoordinatesEvent, RetrieveGeometricCoordinatesState> {
  RetrieveGeometricCoordinatesBloc(
    SearchAutocompleteRepository searchAutocompleteRepository,
  )   : _searchAutocompleteRepository = searchAutocompleteRepository,
        super(
          const RetrieveGeometricCoordinatesState.initial(),
        ) {
    on<_RetrieveCoordinates>(
      _retrieveCoordinates,
    );

    on<_CoordinatesRetrieved>(
      _coordinatesRetrieved,
    );

    on<_EmptyCoordinatesRetrieved>(
      _emptyCoordinatesRetrieved,
    );

    on<_CoordinatesNotRetrieved>(
      _coordinatesNotRetrieved,
    );
  }

  final SearchAutocompleteRepository _searchAutocompleteRepository;

  Future<void> _retrieveCoordinates(
    _RetrieveCoordinates event,
    Emitter<RetrieveGeometricCoordinatesState> emit,
  ) async {
    emit(
      const RetrieveGeometricCoordinatesState.retrievingCoordinates(),
    );

    final result =
        await _searchAutocompleteRepository.retrieveGeometricCoordinatesFor(
      id: event.id,
    );

    result.fold(
      (retrieveGeometricCoordinatesFailure) => add(
        RetrieveGeometricCoordinatesEvent.coordinatesNotRetrieved(
          retrieveGeometricCoordinatesFailure:
              retrieveGeometricCoordinatesFailure,
        ),
      ),
      (retrieveResultEntity) => add(
        switch (retrieveResultEntity.features.isNotEmpty) {
          true => RetrieveGeometricCoordinatesEvent.coordinatesRetrieved(
              geometryEntity: retrieveResultEntity.features[zero].geometry,
            ),
          false =>
            const RetrieveGeometricCoordinatesEvent.emptyCoordinatesRetrieved(),
        },
      ),
    );
  }

  void _coordinatesNotRetrieved(
    _CoordinatesNotRetrieved event,
    Emitter<RetrieveGeometricCoordinatesState> emit,
  ) =>
      emit(
        RetrieveGeometricCoordinatesState.failedToRetrieveCoordinates(
          retrieveGeometricCoordinatesFailure:
              event.retrieveGeometricCoordinatesFailure,
        ),
      );

  void _coordinatesRetrieved(
    _CoordinatesRetrieved event,
    Emitter<RetrieveGeometricCoordinatesState> emit,
  ) =>
      emit(
        RetrieveGeometricCoordinatesState.retrievedCoordinates(
          latitude: event.geometryEntity.coordinates[one],
          longitude: event.geometryEntity.coordinates[zero],
        ),
      );

  void _emptyCoordinatesRetrieved(
    _EmptyCoordinatesRetrieved event,
    Emitter<RetrieveGeometricCoordinatesState> emit,
  ) =>
      emit(
        const RetrieveGeometricCoordinatesState.retrievedEmptyCoordinates(),
      );
}

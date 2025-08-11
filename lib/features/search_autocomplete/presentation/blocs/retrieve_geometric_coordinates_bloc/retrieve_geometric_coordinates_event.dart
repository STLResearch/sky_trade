// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

part of 'retrieve_geometric_coordinates_bloc.dart';

@freezed
class RetrieveGeometricCoordinatesEvent
    with _$RetrieveGeometricCoordinatesEvent {
  const factory RetrieveGeometricCoordinatesEvent.retrieveCoordinates({
    required String id,
  }) = _RetrieveCoordinates;

  const factory RetrieveGeometricCoordinatesEvent.coordinatesRetrieved({
    required GeometryEntity geometryEntity,
  }) = _CoordinatesRetrieved;

  const factory RetrieveGeometricCoordinatesEvent.emptyCoordinatesRetrieved() =
      _EmptyCoordinatesRetrieved;

  const factory RetrieveGeometricCoordinatesEvent.coordinatesNotRetrieved({
    required RetrieveGeometricCoordinatesFailure
        retrieveGeometricCoordinatesFailure,
  }) = _CoordinatesNotRetrieved;
}

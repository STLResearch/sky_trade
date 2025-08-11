// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

part of 'retrieve_geometric_coordinates_bloc.dart';

@freezed
class RetrieveGeometricCoordinatesState
    with _$RetrieveGeometricCoordinatesState {
  const factory RetrieveGeometricCoordinatesState.initial() = _Initial;

  const factory RetrieveGeometricCoordinatesState.retrievingCoordinates() =
      _RetrievingCoordinates;

  const factory RetrieveGeometricCoordinatesState.retrievedCoordinates({
    required double latitude,
    required double longitude,
  }) = _RetrievedCoordinates;

  const factory RetrieveGeometricCoordinatesState.retrievedEmptyCoordinates() =
      _RetrievedEmptyCoordinates;

  const factory RetrieveGeometricCoordinatesState.failedToRetrieveCoordinates({
    required RetrieveGeometricCoordinatesFailure
        retrieveGeometricCoordinatesFailure,
  }) = _FailedToRetrieveCoordinates;
}

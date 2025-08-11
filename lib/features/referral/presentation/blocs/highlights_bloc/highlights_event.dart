// SPDX-License-Identifier: UNLICENSED
                            
part of 'highlights_bloc.dart';

@freezed
class HighlightsEvent with _$HighlightsEvent {
  const factory HighlightsEvent.getHighlights() = _GetHighlights;
}

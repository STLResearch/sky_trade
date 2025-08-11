// SPDX-License-Identifier: UNLICENSED
                            
part of 'highlights_bloc.dart';

@freezed
class HighlightsState with _$HighlightsState {
  const factory HighlightsState.initial() = _Initial;

  const factory HighlightsState.gettingHighlights() = _GettingHighlights;

  const factory HighlightsState.gotHighlights({
    required HighlightsEntity highlightsEntity,
  }) = _GotHighlights;

  const factory HighlightsState.failedToGetHighlights({
    required HighlightsFailure highlightsFailure,
  }) = _FailedToGetHighlights;
}

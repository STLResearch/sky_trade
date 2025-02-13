part of 's_f_a_initialization_bloc.dart';

@freezed
class SFAInitializationState with _$SFAInitializationState {
  const factory SFAInitializationState.initial() = _Initial;

  const factory SFAInitializationState.initializing() = _Initializing;

  const factory SFAInitializationState.initialized() = _Initialized;

  const factory SFAInitializationState.failedToInitialize({
    required SFAInitializationFailure sFAInitializationFailure,
  }) = _FailedToInitialize;
}

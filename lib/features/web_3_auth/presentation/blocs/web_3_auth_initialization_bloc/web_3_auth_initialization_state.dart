part of 'web_3_auth_initialization_bloc.dart';

@freezed
class Web3AuthInitializationState with _$Web3AuthInitializationState {
  const factory Web3AuthInitializationState.initial() = _Initial;

  const factory Web3AuthInitializationState.initializing() = _Initializing;

  const factory Web3AuthInitializationState.initialized() = _Initialized;

  const factory Web3AuthInitializationState.failedToInitialize({
    required Web3AuthInitializationFailure web3AuthInitializationFailure,
  }) = _FailedToInitialize;
}

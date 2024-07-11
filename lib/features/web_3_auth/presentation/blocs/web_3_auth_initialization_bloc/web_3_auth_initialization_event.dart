part of 'web_3_auth_initialization_bloc.dart';

@freezed
class Web3AuthInitializationEvent with _$Web3AuthInitializationEvent {
  const factory Web3AuthInitializationEvent.initialize() = _Initialize;

  const factory Web3AuthInitializationEvent.initializeSuccess() =
      _InitializeSuccess;

  const factory Web3AuthInitializationEvent.initializeFailure({
    required Web3AuthInitializationFailure web3AuthInitializationFailure,
  }) = _InitializeFailure;
}

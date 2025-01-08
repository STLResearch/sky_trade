part of 'execute_mint_rental_token_bloc.dart';

@freezed
class ExecuteMintRentalTokenState with _$ExecuteMintRentalTokenState {
  const factory ExecuteMintRentalTokenState.initial() = _Initial;

  const factory ExecuteMintRentalTokenState.executingMintRentalToken() =
      _ExecutingMintRentalToken;

  const factory ExecuteMintRentalTokenState.executedMintRentalToken({
    required RentalTokenEntity rentalTokenEntity,
  }) = _ExecutedMintRentalToken;

  const factory ExecuteMintRentalTokenState.failedToExecuteMintRentalToken({
    required ExecuteMintRentalTokenFailure executeMintRentalTokenFailure,
  }) = _FailedToExecuteMintRentalToken;
}

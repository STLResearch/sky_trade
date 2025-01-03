part of 'execute_mint_rental_token_bloc.dart';

@freezed
class ExecuteMintRentalTokenState with _$ExecuteMintRentalTokenState {
  const factory ExecuteMintRentalTokenState.initial() = _Initial;

  const factory ExecuteMintRentalTokenState.executingMintRentalToken() = _ExecutingMintRentalToken;

  const factory ExecuteMintRentalTokenState.executedMintRentalToken({
    required ExecuteMintRentalTokenEntity rentalToken,
  }) = _executedMintRentalToken;

  const factory ExecuteMintRentalTokenState.executeMintRentalTokenFailed({
    required ExecuteMintRentalTokenFailure executeMintRentalTokenFailure,
  }) = _executeMintRentalTokenFailed;
}

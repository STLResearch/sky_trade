part of 'create_mint_rental_token_bloc.dart';

@freezed
class CreateMintRentalTokenState with _$CreateMintRentalTokenState {
  const factory CreateMintRentalTokenState.initial() = _Initial;

  const factory CreateMintRentalTokenState.creatingMintRentalToken() =
      _CreatingMintRentalToken;

  const factory CreateMintRentalTokenState.createdMintRentalToken({
    required String mintToken,
  }) = _CreatedMintRentalToken;

  const factory CreateMintRentalTokenState.failedToCreateMintRentalToken({
    required CreateMintRentalTokenFailure createMintRentalTokenFailure,
  }) = _FailedToCreateMintRentalToken;
}

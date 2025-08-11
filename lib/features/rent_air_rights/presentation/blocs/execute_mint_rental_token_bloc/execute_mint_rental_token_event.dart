// SPDX-License-Identifier: UNLICENSED
                            
part of 'execute_mint_rental_token_bloc.dart';

@freezed
class ExecuteMintRentalTokenEvent with _$ExecuteMintRentalTokenEvent {
  const factory ExecuteMintRentalTokenEvent.executeMintRentalToken({
    required String transaction,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) = _ExecuteMintRentalToken;
}

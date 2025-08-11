// SPDX-License-Identifier: UNLICENSED
                            
part of 'create_mint_rental_token_bloc.dart';

@freezed
class CreateMintRentalTokenEvent with _$CreateMintRentalTokenEvent {
  const factory CreateMintRentalTokenEvent.createMintRentalToken({
    required String callerAddress,
    required List<String> landAssetIds,
    required DateTime startTime,
    required DateTime endTime,
  }) = _CreateMintRentalToken;
}

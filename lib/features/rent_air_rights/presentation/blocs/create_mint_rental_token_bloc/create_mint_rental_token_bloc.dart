// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart'
    show CreateMintRentalTokenFailure;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

part 'create_mint_rental_token_event.dart';

part 'create_mint_rental_token_state.dart';

part 'create_mint_rental_token_bloc.freezed.dart';

class CreateMintRentalTokenBloc
    extends Bloc<CreateMintRentalTokenEvent, CreateMintRentalTokenState> {
  CreateMintRentalTokenBloc(
    RentAirRightsRepository rentAirRightsRepository,
  )   : _rentAirRightsRepository = rentAirRightsRepository,
        super(
          const CreateMintRentalTokenState.initial(),
        ) {
    on<_CreateMintRentalToken>(
      _createMintRentalToken,
    );
  }

  final RentAirRightsRepository _rentAirRightsRepository;

  Future<void> _createMintRentalToken(
    _CreateMintRentalToken event,
    Emitter<CreateMintRentalTokenState> emit,
  ) async {
    emit(
      const CreateMintRentalTokenState.creatingMintRentalToken(),
    );

    final result = await _rentAirRightsRepository.createMintRentalToken(
      callerAddress: event.callerAddress,
      landAssetIds: event.landAssetIds,
      startTime: event.startTime,
      endTime: event.endTime,
    );

    result.fold(
      (createMintRentalTokenFailure) => emit(
        CreateMintRentalTokenState.failedToCreateMintRentalToken(
          createMintRentalTokenFailure: createMintRentalTokenFailure,
        ),
      ),
      (mintToken) => emit(
        CreateMintRentalTokenState.createdMintRentalToken(
          mintToken: mintToken,
        ),
      ),
    );
  }
}

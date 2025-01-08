import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart'
    show ExecuteMintRentalTokenFailure;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show RentalTokenEntity;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

part 'execute_mint_rental_token_event.dart';

part 'execute_mint_rental_token_state.dart';

part 'execute_mint_rental_token_bloc.freezed.dart';

class ExecuteMintRentalTokenBloc
    extends Bloc<ExecuteMintRentalTokenEvent, ExecuteMintRentalTokenState> {
  ExecuteMintRentalTokenBloc(
    RentAirRightsRepository rentAirRightsRepository,
  )   : _rentAirRightsRepository = rentAirRightsRepository,
        super(
          const ExecuteMintRentalTokenState.initial(),
        ) {
    on<_ExecuteMintRentalToken>(
      _executeMintRentalToken,
    );
  }

  final RentAirRightsRepository _rentAirRightsRepository;

  Future<void> _executeMintRentalToken(
    _ExecuteMintRentalToken event,
    Emitter<ExecuteMintRentalTokenState> emit,
  ) async {
    emit(
      const ExecuteMintRentalTokenState.executingMintRentalToken(),
    );

    final result = await _rentAirRightsRepository.executeMintRentalToken(
      transaction: event.transaction,
      landAssetIds: event.landAssetIds,
      startTime: event.startTime,
      endTime: event.endTime,
    );

    result.fold(
      (executeMintRentalTokenFailure) => emit(
        ExecuteMintRentalTokenState.failedToExecuteMintRentalToken(
          executeMintRentalTokenFailure: executeMintRentalTokenFailure,
        ),
      ),
      (rentalTokenEntity) => emit(
        ExecuteMintRentalTokenState.executedMintRentalToken(
          rentalTokenEntity: rentalTokenEntity,
        ),
      ),
    );
  }
}

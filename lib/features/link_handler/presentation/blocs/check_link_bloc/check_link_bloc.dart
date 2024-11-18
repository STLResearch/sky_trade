import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/link_handler_failure.dart';
import 'package:sky_trade/features/link_handler/domain/entities/link_entity.dart';
import 'package:sky_trade/features/link_handler/domain/repositories/link_handler_repository.dart';

part 'check_link_event.dart';

part 'check_link_state.dart';

part 'check_link_bloc.freezed.dart';

class CheckLinkBloc extends Bloc<CheckLinkEvent, CheckLinkState> {
  CheckLinkBloc(
    LinkHandlerRepository linkRepository,
  )   : _linkRepository = linkRepository,
        super(
          const CheckLinkState.initial(),
        ) {
    on<_Check>(
      _check,
    );
  }

  final LinkHandlerRepository _linkRepository;

  Future<void> _check(
    _Check event,
    Emitter<CheckLinkState> emit,
  ) async {
    emit(
      const CheckLinkState.checking(),
    );

    final result = await _linkRepository.checkLink(
      link: event.link,
    );

    result.fold(
      (checkLinkFailure) => emit(
        CheckLinkState.failedToCheck(
          checkLinkFailure: checkLinkFailure,
        ),
      ),
      (linkEntity) => emit(
        CheckLinkState.checked(
          linkEntity: linkEntity,
        ),
      ),
    );
  }
}

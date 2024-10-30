import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/link_handler_failure.dart';
import 'package:sky_trade/features/link_handler/domain/entities/link_entity.dart';
import 'package:sky_trade/features/link_handler/domain/repositories/link_handler_repository.dart';

part 'handle_link_event.dart';

part 'handle_link_state.dart';

part 'handle_link_bloc.freezed.dart';

class HandleLinkBloc extends Bloc<HandleLinkEvent, HandleLinkState> {
  HandleLinkBloc(
    LinkHandlerRepository linkRepository,
  )   : _linkRepository = linkRepository,
        super(
          const HandleLinkState.initial(),
        ) {
    on<_Handle>(
      _handle,
    );
  }

  final LinkHandlerRepository _linkRepository;

  Future<void> _handle(
    _Handle event,
    Emitter<HandleLinkState> emit,
  ) async {
    emit(
      const HandleLinkState.handling(),
    );

    final result = await _linkRepository.handleLink(
      link: event.link,
    );

    result.fold(
      (handleLinkFailure) => emit(
        HandleLinkState.failedToHandle(
          handleLinkFailure: handleLinkFailure,
        ),
      ),
      (linkEntity) => emit(
        HandleLinkState.handled(
          linkEntity: linkEntity,
        ),
      ),
    );
  }
}

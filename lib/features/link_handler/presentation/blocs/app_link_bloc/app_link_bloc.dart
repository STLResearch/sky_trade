import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        appLinkHttpScheme,
        appLinkHttpsScheme,
        emailVerificationAppLinkPath,
        ticketAppLinkQueryParameter,
        uAppLinkPath;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show skyTradeAppLinkHost1, skyTradeAppLinkHost2;
import 'package:sky_trade/features/link_handler/domain/repositories/link_handler_repository.dart';

part 'app_link_bloc.freezed.dart';

part 'app_link_event.dart';

part 'app_link_state.dart';

class AppLinkBloc extends Bloc<AppLinkEvent, AppLinkState> {
  AppLinkBloc(
    LinkHandlerRepository linkHandlerRepository,
  )   : _linkHandlerRepository = linkHandlerRepository,
        super(
          const AppLinkState.initial(),
        ) {
    on<_ListenLink>(
      _listenLink,
    );

    on<_LinkGotten>(
      _linkGotten,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final LinkHandlerRepository _linkHandlerRepository;

  StreamSubscription<Uri>? _uriStreamSubscription;

  Future<void> _listenLink(
    _ListenLink _,
    Emitter<AppLinkState> emit,
  ) async {
    await _cleanupStreamSubscription();

    emit(
      const AppLinkState.gettingLink(),
    );

    emit(
      const AppLinkState.noLink(),
    );

    _uriStreamSubscription = _linkHandlerRepository.linkStream.listen(
      (uri) => _listenLinkStream(
        uri: uri,
        emit: emit,
      ),
    );
  }

  void _listenLinkStream({
    required Uri uri,
    required Emitter<AppLinkState> emit,
  }) =>
      add(
        AppLinkEvent.linkGotten(
          uri: uri,
        ),
      );

  void _linkGotten(
    _LinkGotten event,
    Emitter<AppLinkState> emit,
  ) {
    emit(
      const AppLinkState.gotLink(),
    );

    final schemeAcceptable = event.uri.scheme == appLinkHttpScheme ||
        event.uri.scheme == appLinkHttpsScheme;

    final hostAcceptable =
        event.uri.host == dotenv.env[skyTradeAppLinkHost1]! ||
            event.uri.host == dotenv.env[skyTradeAppLinkHost2]!;

    final linkIsForEmailVerification =
        event.uri.path == (uAppLinkPath + emailVerificationAppLinkPath) &&
            event.uri.queryParameters.containsKey(
              ticketAppLinkQueryParameter,
            );

    if (schemeAcceptable && hostAcceptable && linkIsForEmailVerification) {
      emit(
        const AppLinkState.unrecognizedLink(),
      );

      return;
    }

    emit(
      const AppLinkState.unrecognizedLink(),
    );
  }

  Future<void> _cleanupStreamSubscription() async {
    await _uriStreamSubscription?.cancel();
    _uriStreamSubscription = null;
  }
}

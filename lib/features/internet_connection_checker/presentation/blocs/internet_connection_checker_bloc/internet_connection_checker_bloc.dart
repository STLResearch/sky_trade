import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/internet_connection_checker/domain/repositories/internet_connection_checker_repository.dart';

part 'internet_connection_checker_event.dart';

part 'internet_connection_checker_state.dart';

part 'internet_connection_checker_bloc.freezed.dart';

class InternetConnectionCheckerBloc extends Bloc<InternetConnectionCheckerEvent,
    InternetConnectionCheckerState> {
  InternetConnectionCheckerBloc(
    InternetConnectionCheckerRepository internetConnectionCheckerRepository,
  )   : _internetConnectionCheckerRepository =
            internetConnectionCheckerRepository,
        super(
          const InternetConnectionCheckerState.initial(),
        ) {
    on<_CheckActiveInternetConnection>(
      _checkActiveInternetConnection,
    );
  }

  final InternetConnectionCheckerRepository
      _internetConnectionCheckerRepository;

  Future<void> _checkActiveInternetConnection(
    _CheckActiveInternetConnection event,
    Emitter<InternetConnectionCheckerState> emit,
  ) async {
    emit(
      const InternetConnectionCheckerState.checkingActiveInternetConnection(),
    );

    final result =
        await _internetConnectionCheckerRepository.hasActiveInternetConnection;

    emit(
      switch (result) {
        true =>
          const InternetConnectionCheckerState.hasActiveInternetConnection(),
        false =>
          const InternetConnectionCheckerState.noActiveInternetConnection(),
      },
    );
  }
}

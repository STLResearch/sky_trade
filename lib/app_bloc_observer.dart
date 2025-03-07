import 'package:bloc/bloc.dart'
    show Bloc, BlocBase, BlocObserver, Change, Transition;
import 'package:sky_trade/core/utils/clients/logger.dart' show AppLogger;
import 'package:sky_trade/core/utils/enums/local.dart' show LogType;

final class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    AppLogger.log(
      message: 'onCreate: This is a ${bloc.runtimeType}',
      logType: LogType.trace,
    );
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    AppLogger.log(
      message: 'onClose: ${bloc.runtimeType} closed',
      logType: LogType.trace,
    );
    super.onClose(bloc);
  }

  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    AppLogger.log(
      message: 'onError: ${bloc.runtimeType} closed.',
      stackTrace: stackTrace,
      logType: LogType.error,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    AppLogger.log(
      message: '''
      onTransition: There was a transition from
      ${transition.currentState} to ${transition.nextState}
          ''',
      logType: LogType.trace,
    );
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) {
    AppLogger.log(
      message: '''
      onChange: ${bloc.runtimeType} changed from
      ${change.currentState} to ${change.nextState}
          ''',
      logType: LogType.trace,
    );
    super.onChange(bloc, change);
  }

  @override
  void onEvent(
    Bloc<dynamic, dynamic> bloc,
    Object? event,
  ) {
    AppLogger.log(
      message: 'onEvent: A $event event happened in ${bloc.runtimeType}',
      logType: LogType.trace,
    );
    super.onEvent(bloc, event);
  }
}

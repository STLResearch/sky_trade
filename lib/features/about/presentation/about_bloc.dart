import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart' show freezed;
import 'package:sky_trade/core/errors/failures/about_failure.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart';

part 'about_bloc.freezed.dart';

part 'about_event.dart';

part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(
    AboutRepository aboutRepository,
  )   : _aboutRepository = aboutRepository,
        super(
          const AboutState.initial(),
        ) {
    on<_FetchAppVersion>(
      _fetchAppVersion,
    );
  }

  final AboutRepository _aboutRepository;

  Future<void> _fetchAppVersion(
    _FetchAppVersion event,
    Emitter<AboutState> emit,
  ) async {
    emit(
      const AboutState.loading(),
    );
    final result = await _aboutRepository.getAppVersion();
    emit(
      result.fold(
        (failure) => AboutState.failed(failure: failure),
        AboutState.loaded,
      ),
    );
  }
}

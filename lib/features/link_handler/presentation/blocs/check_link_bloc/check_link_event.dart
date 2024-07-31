part of 'check_link_bloc.dart';

@freezed
class CheckLinkEvent with _$CheckLinkEvent {
  const factory CheckLinkEvent.check({
    required String link,
  }) = _Check;
}

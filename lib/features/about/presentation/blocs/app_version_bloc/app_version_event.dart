part of 'app_version_bloc.dart';

@freezed
class AppVersionEvent with _$AppVersionEvent {
  const factory AppVersionEvent.getVersion() = _GetVersion;
}

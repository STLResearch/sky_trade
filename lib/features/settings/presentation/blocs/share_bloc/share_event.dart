part of 'share_bloc.dart';

@freezed
class ShareEvent with _$ShareEvent {
  const factory ShareEvent.share({
    required String subject,
    required String title,
    required String message,
  }) = _Share;
}

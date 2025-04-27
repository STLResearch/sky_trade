part of 'socials_link_bloc.dart';

@freezed
class SocialsLinkEvent with _$SocialsLinkEvent {
  const factory SocialsLinkEvent.computeLinkFrom({
    required Socials socials,
    required String referralLink,
    required String title,
    required String message,
    required SocialsLinkType linkType,
  }) = _ComputeLinkFrom;
}

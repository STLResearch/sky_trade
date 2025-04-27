part of 'socials_link_bloc.dart';

@freezed
class SocialsLinkState with _$SocialsLinkState {
  const factory SocialsLinkState.initial() = _Initial;

  const factory SocialsLinkState.computingLink() = _ComputingLink;

  const factory SocialsLinkState.computedLink({
    required String deepLink,
    required Socials socials,
    required String referralLink,
    required String title,
    required String message,
    required SocialsLinkType linkType,
  }) = _ComputedLink;
}

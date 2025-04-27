part of 'referral_link_bloc.dart';

@freezed
class ReferralLinkEvent with _$ReferralLinkEvent {
  const factory ReferralLinkEvent.copyLink({
    required String link,
  }) = _CopyLink;
}

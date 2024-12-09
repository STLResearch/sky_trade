part of 'referral_link_bloc.dart';

@freezed
class ReferralLinkState with _$ReferralLinkState {
  const factory ReferralLinkState.initial() = _Initial;

  const factory ReferralLinkState.copyingLink() = _CopyingLink;

  const factory ReferralLinkState.copiedLink() = _CopiedLink;
}

part of 'referral_code_bloc.dart';

@freezed
class ReferralCodeState with _$ReferralCodeState {
  const factory ReferralCodeState.initial() = _Initial;

  const factory ReferralCodeState.copyingCode() = _CopyingCode;

  const factory ReferralCodeState.copiedCode() = _CopiedCode;
}

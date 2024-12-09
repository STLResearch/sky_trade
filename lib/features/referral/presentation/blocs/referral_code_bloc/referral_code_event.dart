part of 'referral_code_bloc.dart';

@freezed
class ReferralCodeEvent with _$ReferralCodeEvent {
  const factory ReferralCodeEvent.copyCode({
    required String code,
  }) = _CopyCode;
}

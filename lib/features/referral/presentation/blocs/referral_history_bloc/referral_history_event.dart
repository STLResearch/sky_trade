part of 'referral_history_bloc.dart';

@freezed
class ReferralHistoryEvent with _$ReferralHistoryEvent {
  const factory ReferralHistoryEvent.getReferralHistory({
    required int page,
    required int limit,
  }) = _GetReferralHistory;
}

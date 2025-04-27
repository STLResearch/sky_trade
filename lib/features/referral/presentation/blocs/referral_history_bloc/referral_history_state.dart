part of 'referral_history_bloc.dart';

@freezed
class ReferralHistoryState with _$ReferralHistoryState {
  const factory ReferralHistoryState.initial() = _Initial;

  const factory ReferralHistoryState.gettingReferralHistory() =
      _GettingReferralHistory;

  const factory ReferralHistoryState.gotReferralHistory({
    required ReferralHistoryEntity referralHistoryEntity,
  }) = _GotReferralHistory;

  const factory ReferralHistoryState.failedToGetReferralHistory({
    required ReferralHistoryFailure referralHistoryFailure,
  }) = _FailedToGetReferralHistory;
}

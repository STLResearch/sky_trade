// SPDX-License-Identifier: UNLICENSED
                            
part of 'earnings_report_bloc.dart';

@freezed
class EarningsReportState with _$EarningsReportState {
  const factory EarningsReportState.initial() = _Initial;

  const factory EarningsReportState.gettingEarningsReport() =
      _GettingEarningsReport;

  const factory EarningsReportState.gotEarningsReport({
    required EarningsReportEntity earningsReportEntity,
  }) = _GotEarningsReport;

  const factory EarningsReportState.failedToGetEarningsReport({
    required EarningsReportFailure earningsReportFailure,
  }) = _FailedToGetEarningsReport;
}

import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        Padding,
        RichText,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart' show hex838187, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, nilDotNil, one, tenDotNil, twentyTwoDotFive, two;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart' show Quarter;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart'
    show EarningsReportEntityExtensions;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show EarningsReportEntity;
import 'package:sky_trade/features/referral/presentation/blocs/earnings_report_bloc/earnings_report_bloc.dart'
    show EarningsReportBloc, EarningsReportEvent, EarningsReportState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';

class QuarterlyReportsSection extends StatefulWidget {
  const QuarterlyReportsSection({super.key});

  @override
  State<QuarterlyReportsSection> createState() =>
      _QuarterlyReportsSectionState();
}

class _QuarterlyReportsSectionState extends State<QuarterlyReportsSection> {
  @override
  void initState() {
    _maybeGetEarningsReport();

    super.initState();
  }

  void _maybeGetEarningsReport() =>
      context.read<EarningsReportBloc>().state.whenOrNull(
            initial: _getEarningsReport,
          );

  void _getEarningsReport() => context.read<EarningsReportBloc>().add(
        const EarningsReportEvent.getEarningsReport(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<EarningsReportBloc, EarningsReportState>(
        listener: (_, earningsReportState) {
          earningsReportState.whenOrNull(
            failedToGetEarningsReport: (_) {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .couldNotGetEarningsReportSwipeDownToRefreshThePage,
              );
            },
          );
        },
        child: Column(
          children: List<Widget>.generate(
            Quarter.values.length,
            (index) => Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: switch (Quarter.values[index]) {
                  Quarter.q4 => nilDotNil,
                  _ => fifteenDotNil,
                },
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: _computeQuarterTitleUsing(
                              context,
                              index: index,
                            ),
                          ),
                          const TextSpan(
                            text: whiteSpace,
                          ),
                          TextSpan(
                            text: switch (Quarter.values[index]) {
                              Quarter.q4 =>
                                (DateTime.now().year - one).toString(),
                              _ => DateTime.now().year.toString(),
                            },
                          ),
                          const TextSpan(
                            text: whiteSpace,
                          ),
                          TextSpan(
                            text: context.localize.earnings,
                          ),
                        ],
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(
                              fontSize: fifteenDotNil,
                              height: twentyTwoDotFive / fifteenDotNil,
                              color: hex838187,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: tenDotNil,
                  ),
                  BlocBuilder<EarningsReportBloc, EarningsReportState>(
                    builder: (_, earningsReportState) => Skeletonizer(
                      effect: earningsReportState.maybeWhen(
                        failedToGetEarningsReport: (_) => const SoldColorEffect(
                          color: hexEBEBF4,
                        ),
                        orElse: () => ShimmerEffect(
                          highlightColor: Theme.of(
                            context,
                          ).scaffoldBackgroundColor,
                        ),
                      ),
                      enabled: earningsReportState.maybeWhen(
                        gotEarningsReport: (_) => false,
                        orElse: () => true,
                      ),
                      child: Text(
                        earningsReportState.maybeWhen(
                          gotEarningsReport: (earningsReportEntity) =>
                              _computeQuarterEarningsReportUsing(
                            index: index,
                            earningsReportEntity: earningsReportEntity,
                          ),
                          orElse: () => BoneMock.chars(
                            two,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: hex838187,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  String _computeQuarterTitleUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (Quarter.values[index]) {
        Quarter.q3 => context.localize.qThree,
        Quarter.q2 => context.localize.qTwo,
        Quarter.q1 => context.localize.qOne,
        Quarter.q4 => context.localize.qFour,
      };

  String _computeQuarterEarningsReportUsing({
    required int index,
    required EarningsReportEntity earningsReportEntity,
  }) =>
      switch (Quarter.values[index]) {
        Quarter.q3 => earningsReportEntity.thisYearsThirdQuarterPeriodPoints,
        Quarter.q2 => earningsReportEntity.thisYearsSecondQuarterPeriodPoints,
        Quarter.q1 => earningsReportEntity.thisYearsFirstQuarterPeriodPoints,
        Quarter.q4 => earningsReportEntity.lastYearsFourthQuarterPeriodPoints,
      }
          .toString();
}

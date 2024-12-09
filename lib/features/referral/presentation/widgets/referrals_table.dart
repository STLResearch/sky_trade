import 'package:flutter/material.dart'
    show
        BuildContext,
        ScrollController,
        ScrollableDetails,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer;
import 'package:sky_trade/core/resources/colors.dart' show hexF0F4FA;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFiveDotNil,
        fourSeventySevenDotNil,
        nilDotNil,
        one,
        oneThirtyDotNil,
        seventeenDotNil,
        seventyDotNil,
        six,
        sixtyDotNil,
        tenDotNil,
        three,
        twenty,
        twentyThreeDotNil,
        twentyTwoDotFive,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show hyphen, plus, whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralsHistory;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/referral_history_bloc/referral_history_bloc.dart'
    show ReferralHistoryBloc, ReferralHistoryEvent, ReferralHistoryState;
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart'
    show
        FixedTableSpanExtent,
        SpanDecoration,
        SpanPadding,
        TableSpan,
        TableView,
        TableViewCell;

class ReferralsTable extends StatefulWidget {
  const ReferralsTable({super.key});

  @override
  State<ReferralsTable> createState() => _ReferralsTableState();
}

class _ReferralsTableState extends State<ReferralsTable> {
  late final ScrollController _tableVerticalScrollController;

  @override
  void initState() {
    _tableVerticalScrollController = ScrollController()
      ..addListener(
        _tableVerticalScrollListener,
      );

    _getReferralHistory();
    // _maybeGetReferralHistory();

    super.initState();
  }

  @override
  void dispose() {
    _tableVerticalScrollController
      ..removeListener(
        _tableVerticalScrollListener,
      )
      ..dispose();

    super.dispose();
  }

  void _tableVerticalScrollListener() {
    if (_tableVerticalScrollController.offset ==
        _tableVerticalScrollController.position.maxScrollExtent) {
      // check if state is desired state first
    }
  }

  void _maybeGetReferralHistory() =>
      context.read<ReferralHistoryBloc>().state.whenOrNull(
            initial: _getReferralHistory,
          );

  void _getReferralHistory() => context.read<ReferralHistoryBloc>().add(
        ReferralHistoryEvent.getReferralHistory(
          page: 1,
          limit: twenty,
        ),
      );

  @override
  Widget build(BuildContext context) => SizedBox(
        height: fourSeventySevenDotNil,
        child: BlocBuilder<ReferralHistoryBloc, ReferralHistoryState>(
          builder: (_, referralHistoryState) => TableView.builder(
            verticalDetails: ScrollableDetails.vertical(
              controller: _tableVerticalScrollController,
            ),
            columnCount: ReferralsHistory.values.length,
            columnBuilder: (column) => TableSpan(
              extent: FixedTableSpanExtent(
                switch (ReferralsHistory.values[column]) {
                  ReferralsHistory.date => sixtyDotNil,
                  ReferralsHistory.amount => fiftyFiveDotNil,
                  ReferralsHistory.description => oneThirtyDotNil,
                  ReferralsHistory.balance => seventyDotNil,
                },
              ),
              padding: SpanPadding(
                leading: switch (ReferralsHistory.values[column]) {
                  ReferralsHistory.date => tenDotNil,
                  _ => nilDotNil,
                },
                trailing: switch (ReferralsHistory.values[column]) {
                  ReferralsHistory.balance => tenDotNil,
                  _ => seventeenDotNil,
                },
              ),
            ),
            rowCount: referralHistoryState.maybeWhen(
              gotReferralHistory: (referralHistoryEntity) =>
                  referralHistoryEntity.histories.length + one,
              orElse: () => twenty + one,
            ),
            rowBuilder: (row) => TableSpan(
              extent: const FixedTableSpanExtent(
                twentyThreeDotNil,
              ),
              padding: const SpanPadding(
                leading: tenDotNil,
                trailing: tenDotNil,
              ),
              backgroundDecoration: switch (row % two == zero) {
                true when row != zero => const SpanDecoration(
                    color: hexF0F4FA,
                  ),
                _ => null,
              },
            ),
            cellBuilder: (_, vicinity) => TableViewCell(
              child: Skeletonizer(
                effect: ShimmerEffect(
                  highlightColor: Theme.of(
                    context,
                  ).scaffoldBackgroundColor,
                ),
                enabled: referralHistoryState.maybeWhen(
                  gotReferralHistory: (_) => false,
                  orElse: () => vicinity.row != zero,
                ),
                child: Text(
                  switch (vicinity.row) {
                    zero => switch (ReferralsHistory.values[vicinity.column]) {
                        ReferralsHistory.date => context.localize.date,
                        ReferralsHistory.amount => context.localize.amount,
                        ReferralsHistory.description => context.localize.from,
                        ReferralsHistory.balance => context.localize.balance,
                      },
                    _ => referralHistoryState.maybeWhen(
                        gotReferralHistory: (referralHistoryEntity) =>
                            switch (ReferralsHistory.values[vicinity.column]) {
                          ReferralsHistory.date => referralHistoryEntity
                              .histories[vicinity.row - one].date,
                          ReferralsHistory.amount => referralHistoryEntity
                              .histories[vicinity.row - one].amount,
                          ReferralsHistory.description => referralHistoryEntity
                              .histories[vicinity.row - one].description,
                          ReferralsHistory.balance => referralHistoryEntity
                              .histories[vicinity.row - one].balance
                              .toString(),
                        },
                        orElse: () =>
                            switch (ReferralsHistory.values[vicinity.column]) {
                          ReferralsHistory.date => BoneMock.chars(
                              six,
                            ),
                          ReferralsHistory.amount => BoneMock.words(
                              one,
                            ),
                          ReferralsHistory.description => BoneMock.words(
                              three,
                            ),
                          ReferralsHistory.balance => BoneMock.chars(
                              six,
                            ),
                        },
                      ),
                  },
                  textAlign: switch (vicinity.column) {
                    one when vicinity.row != zero => TextAlign.end,
                    _ => null,
                  },
                  style: switch (vicinity.row) {
                    zero => Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotFive / fifteenDotNil,
                          ),
                    _ => Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotFive / fifteenDotNil,
                            // color: switch (
                            //     ReferralsHistory.values[referralsHistoryIndex]) {
                            //   ReferralsHistory.amount
                            //       when transactionList[transactionIndex]
                            //           .isCredited =>
                            //     hex419918,
                            //   ReferralsHistory.amount => hexFF9D65,
                            //   _ => null,
                            // },
                          ),
                  },
                ),
              ),
            ),
          ),
        ),
// child: SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: SingleChildScrollView(
//     controller: _tableVerticalScrollController,
//     child: SizedBox(
//       width: MediaQuery.sizeOf(
//         context,
//       ).width,
//       child: Table(
//         columnWidths: const {
//           zero: FractionColumnWidth(
//             nilDotTwoNil,
//           ),
//           one: FractionColumnWidth(
//             nilDotTwoNil,
//           ),
//           two: FractionColumnWidth(
//             nilDotFourNil,
//           ),
//           three: FractionColumnWidth(
//             nilDotTwoNil,
//           ),
//         },
//         children: [
//           TableRow(
//             children: List<Widget>.generate(
//               ReferralsHistory.values.length,
//               (index) => Padding(
//                 padding: const EdgeInsetsDirectional.only(
//                   bottom: twentySixDotNil,
//                 ),
//                 child: Text(
//                   switch (ReferralsHistory.values[index]) {
//                     ReferralsHistory.date => context.localize.date,
//                     ReferralsHistory.amount => context.localize.amount,
//                     ReferralsHistory.from => context.localize.from,
//                     ReferralsHistory.balance =>
//                       context.localize.balance,
//                   },
//                   style: Theme.of(
//                     context,
//                   ).textTheme.bodyLarge?.copyWith(
//                         fontSize: fifteenDotNil,
//                         height: twentyTwoDotFive / fifteenDotNil,
//                       ),
//                 ),
//               ),
//             ),
//           ),
//           // ListView.builder(
//           //   physics: const NeverScrollableScrollPhysics(),
//           //   itemCount: (_, index) {},
//           // ),
//           ...List.generate(
//             transactionList.length,
//             (transactionIndex) => TableRow(
//               children: List<Widget>.generate(
//                 ReferralsHistory.values.length,
//                 (referralsHistoryIndex) => Padding(
//                   padding: EdgeInsetsDirectional.only(
//                     bottom: switch (transactionIndex ==
//                         (transactionList.length - one)) {
//                       true => nilDotNil,
//                       false => twelveDotNil,
//                     },
//                   ),
//                   child: Container(
//                     padding: const EdgeInsetsDirectional.symmetric(
//                       vertical: tenDotNil,
//                     ),
//                     color: switch (transactionIndex % two == zero) {
//                       true => null,
//                       false => hexF0F4FA,
//                     },
//                     child: Text(
//                       switch (ReferralsHistory
//                           .values[referralsHistoryIndex]) {
//                         ReferralsHistory.date =>
//                           transactionList[transactionIndex]
//                               .transactionDate,
//                         ReferralsHistory.amount
//                             when transactionList[transactionIndex]
//                                 .isCredited =>
//                           plus +
//                               whiteSpace +
//                               transactionList[transactionIndex]
//                                   .transactionAmount
//                                   .toString(),
//                         ReferralsHistory.amount => hyphen +
//                             whiteSpace +
//                             transactionList[transactionIndex]
//                                 .transactionAmount
//                                 .toString(),
//                         ReferralsHistory.from =>
//                           transactionList[transactionIndex]
//                               .transactionFrom,
//                         ReferralsHistory.balance =>
//                           transactionList[transactionIndex]
//                               .transactionAmount
//                               .toString(),
//                       },
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(
//                         context,
//                       ).textTheme.bodySmall?.copyWith(
//                             fontSize: fifteenDotNil,
//                             height: twentyTwoDotFive / fifteenDotNil,
//                             color: switch (ReferralsHistory
//                                 .values[referralsHistoryIndex]) {
//                               ReferralsHistory.amount
//                                   when transactionList[transactionIndex]
//                                       .isCredited =>
//                                 hex419918,
//                               ReferralsHistory.amount => hexFF9D65,
//                               _ => null,
//                             },
//                           ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
      );
}

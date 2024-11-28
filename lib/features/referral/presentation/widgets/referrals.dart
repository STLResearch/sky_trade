import 'package:flutter/material.dart'
    show
        Axis,
        BuildContext,
        Container,
        EdgeInsetsDirectional,
        FractionColumnWidth,
        MediaQuery,
        Padding,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Table,
        TableRow,
        Text,
        TextOverflow,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart'
    show hex419918, hexF0F4FA, hexFF9D65;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fourSeventySevenDotNil,
        nilDotFourNil,
        nilDotNil,
        nilDotTwoNil,
        one,
        tenDotNil,
        three,
        twelveDotNil,
        twentySixDotNil,
        twentyTwoDotFive,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show hyphen, plus, whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralsHistory;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/history_entity.dart';

class Referrals extends StatelessWidget {
  const Referrals({
    required this.transactionList,
    super.key,
  });

  final List<TransactionEntity> transactionList;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: fourSeventySevenDotNil,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.sizeOf(
                context,
              ).width,
              child: Table(
                columnWidths: const {
                  zero: FractionColumnWidth(
                    nilDotTwoNil,
                  ),
                  one: FractionColumnWidth(
                    nilDotTwoNil,
                  ),
                  two: FractionColumnWidth(
                    nilDotFourNil,
                  ),
                  three: FractionColumnWidth(
                    nilDotTwoNil,
                  ),
                },
                children: [
                  TableRow(
                    children: List<Widget>.generate(
                      ReferralsHistory.values.length,
                      (index) => Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: twentySixDotNil,
                        ),
                        child: Text(
                          switch (ReferralsHistory.values[index]) {
                            ReferralsHistory.date => context.localize.date,
                            ReferralsHistory.amount => context.localize.amount,
                            ReferralsHistory.from => context.localize.from,
                            ReferralsHistory.balance =>
                              context.localize.balance,
                          },
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: fifteenDotNil,
                                height: twentyTwoDotFive / fifteenDotNil,
                              ),
                        ),
                      ),
                    ),
                  ),
                  ...List.generate(
                    transactionList.length,
                    (transactionIndex) => TableRow(
                      children: List<Widget>.generate(
                        ReferralsHistory.values.length,
                        (referralsHistoryIndex) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            bottom: switch (transactionIndex ==
                                (transactionList.length - one)) {
                              true => nilDotNil,
                              false => twelveDotNil,
                            },
                          ),
                          child: Container(
                            padding: const EdgeInsetsDirectional.symmetric(
                              vertical: tenDotNil,
                            ),
                            color: switch (transactionIndex % two == zero) {
                              true => null,
                              false => hexF0F4FA,
                            },
                            child: Text(
                              switch (ReferralsHistory
                                  .values[referralsHistoryIndex]) {
                                ReferralsHistory.date =>
                                  transactionList[transactionIndex]
                                      .transactionDate,
                                ReferralsHistory.amount
                                    when transactionList[transactionIndex]
                                        .isCredited =>
                                  plus +
                                      whiteSpace +
                                      transactionList[transactionIndex]
                                          .transactionAmount
                                          .toString(),
                                ReferralsHistory.amount => hyphen +
                                    whiteSpace +
                                    transactionList[transactionIndex]
                                        .transactionAmount
                                        .toString(),
                                ReferralsHistory.from =>
                                  transactionList[transactionIndex]
                                      .transactionFrom,
                                ReferralsHistory.balance =>
                                  transactionList[transactionIndex]
                                      .transactionAmount
                                      .toString(),
                              },
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                    fontSize: fifteenDotNil,
                                    height: twentyTwoDotFive / fifteenDotNil,
                                    color: switch (ReferralsHistory
                                        .values[referralsHistoryIndex]) {
                                      ReferralsHistory.amount
                                          when transactionList[transactionIndex]
                                              .isCredited =>
                                        hex419918,
                                      ReferralsHistory.amount => hexFF9D65,
                                      _ => null,
                                    },
                                  ),
                            ),
                          ),
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
}

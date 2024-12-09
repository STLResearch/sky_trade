import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, fortyNineDotNil, twentyDotNil, twentyEightDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/highlights_section.dart';
import 'package:sky_trade/features/referral/presentation/widgets/referrals_table.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          Text(
            context.localize.yourReferrals,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          const HighlightsSection(),
          const SizedBox(
            height: twentyEightDotNil,
          ),
          const ReferralsTable(),
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}

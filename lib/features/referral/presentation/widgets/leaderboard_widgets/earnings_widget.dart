import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/leaderboard_entity.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/earnings_table.dart';

class EarningsWidget extends StatelessWidget {
  const EarningsWidget({
    required this.earningsEntity,
    super.key,
  });

  final EarningsEntity earningsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localize.lifetimeEarnings,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppins,
              color: hex4285F4,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: NumberFormat.decimalPattern()
                      .format(earningsEntity.lifeTimeEarningsAmount),
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                    color: hex4285F4,
                  ),
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                TextSpan(
                  text: context.localize.skyPoints,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                    color: hex4285F4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: double.infinity,
            height: 9,
            child: Card(
              elevation: 0,
              color: hexD9D9D9,
            ),
          ),
          EarningsTable(
            quartileEarningsList: earningsEntity.quartileEarningsList,
          ),
        ],
      ),
    );
  }
}

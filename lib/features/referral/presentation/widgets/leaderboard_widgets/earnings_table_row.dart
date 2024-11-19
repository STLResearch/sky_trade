import 'package:flutter/material.dart';

import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/features/referral/domain/entities/leaderboard_entity.dart';

class EarningsTableRow extends StatelessWidget {
  const EarningsTableRow({
    required this.quartileEarningEntity,
    super.key,
  });

  final QuartileEarningEntity quartileEarningEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            quartileEarningEntity.quartileName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppins,
              color: hex838187,
            ),
          ),
          Text(
            quartileEarningEntity.earningsAmount.toString(),
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
              color: hex838187,
            ),
          ),
        ],
      ),
    );
  }
}

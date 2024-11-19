import 'package:flutter/material.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/leaderboard_entity.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/heading_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_balance_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_points_help_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/earnings_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/leaderboard_widget.dart';

class ReferralLeaderboardScreen extends StatelessWidget {

  const ReferralLeaderboardScreen({
    required this.skyBalance,
    required this.leaderboardEntity,
    super.key,
  });

  final int skyBalance;
  final LeaderboardEntity leaderboardEntity;

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        SkyBalanceWidget(skyBalance: skyBalance),
        const SkyPointsHelpWidget(),
        LeaderboardWidget(leaderboardData: leaderboardEntity.leaderboardData),
        const SizedBox(height: 30),
        HeadingWidget(heading: context.localize.yourEarnings),
        const SizedBox(height: 15),
        EarningsWidget(earningsEntity: leaderboardEntity.earningsEntity),
        const SizedBox(height: 40),
      ],
    );
  }
}

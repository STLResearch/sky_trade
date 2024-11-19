import 'package:flutter/material.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/history_entity.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/heading_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_balance_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_points_help_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/history_widgets/transaction_history_table_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/history_widgets/user_stat_summary_widget.dart';

class ReferralHistoryScreen extends StatelessWidget {
  const ReferralHistoryScreen({
    required this.skyBalance,
    required this.historyEntity,
    super.key,
  });

  final int skyBalance;
  final HistoryEntity historyEntity;

  @override
  Widget build(BuildContext context) {

    return ListView(
      shrinkWrap: true,
      children: [
        SkyBalanceWidget(
          skyBalance: skyBalance,
        ),
        const SkyPointsHelpWidget(),
        const SizedBox(height: 10),
        HeadingWidget(heading: context.localize.yourReferrals),
        UserStatSummaryWidget(
          userStatsEntity: historyEntity.userStats,
        ),
        const SizedBox(height: 10),
        TransactionHistoryTableWidget(
          transactionList: historyEntity.transactionList,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

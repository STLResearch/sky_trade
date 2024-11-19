import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/heading_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_balance_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_points_help_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/program_widgets/action_card_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/program_widgets/dotted_line_widget.dart';

class ReferralProgramScreen extends StatelessWidget {
  const ReferralProgramScreen({
    required this.skyBalance,
    super.key,
  });

  final int skyBalance;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SkyBalanceWidget(
          skyBalance: skyBalance,
        ),
        const SkyPointsHelpWidget(),
        HeadingWidget(heading: context.localize.shareAndEarn),
        const SizedBox(height: 20),
        ActionCardWidget(
          title: context.localize.share,
          icon: Assets.svgs.share.svg(),
          description: context.localize.shareCardDescription,
        ),
        const DottedLineWidget(),
        ActionCardWidget(
          title: context.localize.registerAndClaim,
          icon: Assets.svgs.earth.svg(),
          description: context.localize.registerAndClaimCardDescription,
        ),
        const DottedLineWidget(),
        ActionCardWidget(
          title: context.localize.earn,
          icon: Assets.svgs.referralGift.svg(),
          description: context.localize.earnCardDescription,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

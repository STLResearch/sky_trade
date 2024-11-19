import 'package:flutter/material.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/heading_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_balance_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/sky_points_help_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/invite_friends_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/referral_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/share_qr_code_widget.dart';

class ReferralShareScreen extends StatelessWidget {
  const ReferralShareScreen({
    required this.skyBalance,
    required this.referralCode,
    required this.referralLink,
    required this.qrData,
    super.key,
  });

  final int skyBalance;
  final String referralCode;
  final String referralLink;
  final String qrData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SkyBalanceWidget(skyBalance: skyBalance),
        const SkyPointsHelpWidget(),
        HeadingWidget(heading: context.localize.shareTheReferralLinkOrCode),
        const SizedBox(height: 10),
        ReferralWidget(
          code: referralCode,
          link: referralLink,
        ),
        const SizedBox(height: 30),
        HeadingWidget(heading: context.localize.inviteYourFriends),
        const InviteFriendsWidget(),
        const SizedBox(height: 30),
        HeadingWidget(heading: context.localize.shareYourUniqueQrCode),
        ShareQrCodeWidget(qrData: qrData),
        const SizedBox(height: 40),
      ],
    );
  }
}

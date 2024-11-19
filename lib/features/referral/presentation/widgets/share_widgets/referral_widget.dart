import 'package:flutter/material.dart';
import 'package:sky_trade/core/utils/enums/ui.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/referral_copy_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/referral_platform_share_widget.dart';

class ReferralWidget extends StatelessWidget {
  const ReferralWidget({
    required this.code,
    required this.link,
    super.key,
  });

  final String code;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReferralCopyWidget(
          codeOrLink: code,
          isCode: true,
        ),
        const ReferralPlatformShareWidget(arrangement: ArrangementType.row),
        ReferralCopyWidget(
          codeOrLink: link,
          isCode: false,
        ),
        const ReferralPlatformShareWidget(arrangement: ArrangementType.row),
      ],
    );
  }
}

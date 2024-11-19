import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/utils/enums/ui.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share_widgets/platform_card_widget.dart';

class ReferralPlatformShareWidget extends StatelessWidget {
  const ReferralPlatformShareWidget({
    required this.arrangement,
    super.key,
  });

  final ArrangementType arrangement;

  @override
  Widget build(BuildContext context) =>
      switch(arrangement) {
        ArrangementType.row =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralFacebook.svg(),
                  ),
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralLinkedIn.svg(),
                  ),
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralGoogle.svg(),
                  ),
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralTwitter.svg(),
                  ),
                ],
              ),
            ),

        ArrangementType.cube => Column(
            children: [
              Row(
                children: [
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralFacebook.svg(),
                  ),
                  const SizedBox(width: 4),
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralLinkedIn.svg(),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralGoogle.svg(),
                  ),
                  const SizedBox(width: 4),
                  PlatformCardWidget(
                    platformIcon: Assets.svgs.referralTwitter.svg(),
                  ),
                ],
              ),
            ],
        )

      };

}

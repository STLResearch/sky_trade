import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/history_entity.dart';
import 'package:sky_trade/features/referral/presentation/widgets/history_widgets/user_stat_widget.dart';

class UserStatSummaryWidget extends StatelessWidget {
  const UserStatSummaryWidget({
    required this.userStatsEntity,
    super.key,
  });

  final UserStatsEntity userStatsEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ReferralStatWidget(
          statData: userStatsEntity.numberOfRegisteredFriends.toString(),
          statIcon: Assets.svgs.userGroup.svg(),
          statDataDescriptor: context.localize.registeredFriends,
          isLineSeparatorVisible: true,
        ),
        const SizedBox(height: 10),
        ReferralStatWidget(
          statData: userStatsEntity.numberOfRegisteredAirspaces.toString(),
          statIcon: Assets.svgs.earth.svg(),
          statDataDescriptor: context.localize.registeredAirspaces,
          isLineSeparatorVisible: true,
        ),
        const SizedBox(height: 10),
        ReferralStatWidget(
          statData: userStatsEntity.numberOfValidateProperties.toString(),
          statIcon: Assets.svgs.home.svg(),
          statDataDescriptor: context.localize.validatedProperties,
          isLineSeparatorVisible: false,
        ),
      ],
    );
  }
}

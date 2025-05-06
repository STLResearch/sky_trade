import 'package:flutter/material.dart'
    show
        Alignment,
        Border,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        EdgeInsetsDirectional,
        InkWell,
        Padding,
        SizedBox,
        Stack,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fiftyFiveDotNil,
        fortyFourDotNil,
        one,
        tenDotNil;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/notification_count_bubble.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/restriction_info.dart'
    show RestrictionInfo;

class RestrictionIndicator extends StatelessWidget {
  const RestrictionIndicator({
    required this.clickedRestriction,
    super.key,
  });

  final ValueNotifier<RestrictionEntity?> clickedRestriction;

  @override
  Widget build(BuildContext context) =>
      ValueListenableBuilder<RestrictionEntity?>(
        valueListenable: clickedRestriction,
        builder: (_, clickedRestrictionValue, __) =>
            switch (clickedRestrictionValue == null) {
          true => const SizedBox.shrink(),
          false => SizedBox(
              width: fiftyFiveDotNil,
              height: fiftyFiveDotNil,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    onTap: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (_) => RestrictionInfo(
                        restrictionEntity: clickedRestrictionValue,
                      ),
                    ),
                    child: Container(
                      width: fortyFourDotNil,
                      height: fortyFourDotNil,
                      decoration: BoxDecoration(
                        color: clickedRestrictionValue!.indicatorFillColor,
                        borderRadius: BorderRadiusDirectional.circular(
                          tenDotNil,
                        ),
                        border: Border.all(
                          color: clickedRestrictionValue.indicatorOutlineColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(
                          eightDotNil,
                        ),
                        child: clickedRestrictionValue
                            .restrictionIndicatorInfoAsset
                            .svg(
                          width: eighteenDotNil,
                          height: eighteenDotNil,
                        ),
                      ),
                    ),
                  ),
                  NotificationCountBubble(
                    notificationCount: one.toString(),
                    bubbleColor: clickedRestrictionValue.indicatorOutlineColor,
                    textColor: clickedRestrictionValue.indicatorTextColor,
                  ),
                ],
              ),
            ),
        },
      );
}

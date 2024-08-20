import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        Border,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Clip,
        Color,
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
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fortyFiveDotNil,
        fortyFourDotNil,
        twentyOneDotNil;
import 'package:sky_ways/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/restriction_bubble.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/restriction_info.dart';

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
          false => Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: twentyOneDotNil,
                  vertical: fortyFiveDotNil,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
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
                            eightDotNil,
                          ),
                          border: Border.all(
                            color: Color(
                              clickedRestrictionValue.polygonFillOutlineColor,
                            ),
                          ),
                        ),
                        child: SvgPicture.asset(
                          clickedRestrictionValue
                              .restrictionIndicatorInfoAssetPath,
                          width: eighteenDotNil,
                          height: eighteenDotNil,
                        ),
                      ),
                    ),
                    RestrictionBubble(
                      bubbleColor: Color(
                        clickedRestrictionValue.polygonFillOutlineColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        },
      );
}

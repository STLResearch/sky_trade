// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        Border,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Clip,
        Container,
        EdgeInsetsDirectional,
        InkWell,
        Offset,
        Padding,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Transform,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        elevenDotNil,
        fortyFourDotNil,
        minusEightDotNil,
        minusSevenDotNil,
        nilDotNilOne,
        one,
        seventeenDotNil,
        tenDotNil;
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
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
          false => Stack(
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
                        color: clickedRestrictionValue.indicatorOutlineColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(
                        tenDotNil,
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
                Transform.translate(
                  offset: const Offset(
                    minusEightDotNil,
                    minusSevenDotNil,
                  ),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: seventeenDotNil,
                    height: seventeenDotNil,
                    decoration: BoxDecoration(
                      color: clickedRestrictionValue.indicatorOutlineColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        one.toString(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: elevenDotNil,
                              letterSpacing: nilDotNilOne,
                              color: clickedRestrictionValue.indicatorTextColor,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        },
      );
}

import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        EdgeInsetsDirectional,
        InkWell,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hex87878D;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotOneEight,
        fiveDotEightFour,
        fiveDotFourFive,
        nilDotThreeNine,
        sixDotTwoThree,
        threeDotOneTwo;

class FilterCard extends StatelessWidget {
  const FilterCard({
    required this.text,
    required this.selected,
    required this.disabled,
    required this.onTap,
    super.key,
  });

  final String text;
  final bool selected;
  final bool disabled;
  final Function0<void> onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: switch (disabled) {
          true => null,
          false => onTap,
        },
        borderRadius: BorderRadius.circular(
          threeDotOneTwo,
        ),
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: fiveDotEightFour,
            vertical: sixDotTwoThree,
          ),
          decoration: BoxDecoration(
            color: switch (selected) {
              true when disabled => hex87878D,
              true => hex4285F4,
              false => Theme.of(
                  context,
                ).scaffoldBackgroundColor,
            },
            border: Border.all(
              width: nilDotThreeNine,
              color: hex87878D,
            ),
            borderRadius: BorderRadiusDirectional.circular(
              threeDotOneTwo,
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: fiveDotFourFive,
                  height: eightDotOneEight / fiveDotFourFive,
                  color: switch (selected) {
                    true => Theme.of(
                        context,
                      ).scaffoldBackgroundColor,
                    false => null,
                  },
                ),
          ),
        ),
      );
}

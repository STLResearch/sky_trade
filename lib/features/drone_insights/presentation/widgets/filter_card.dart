// SPDX-License-Identifier: UNLICENSED
                            
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
        eightDotNineTwo,
        fiveDotOne,
        nilDotSixFour,
        nineDotFiveSix,
        tenDotTwo,
        thirteenDotThreeEight;

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
          fiveDotOne,
        ),
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: nineDotFiveSix,
            vertical: tenDotTwo,
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
              width: nilDotSixFour,
              color: hex87878D,
            ),
            borderRadius: BorderRadiusDirectional.circular(
              fiveDotOne,
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: eightDotNineTwo,
                  height: thirteenDotThreeEight / eightDotNineTwo,
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

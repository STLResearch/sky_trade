import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Color,
        Container,
        EdgeInsetsDirectional,
        Gradient,
        InkWell,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hex1A000000;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show eightDotNil, sixteenDotNil, tenDotNil;

class Card extends StatelessWidget {
  const Card({
    required this.child,
    required this.hasBorder,
    this.gradient,
    this.backgroundColor,
    this.cornerRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.onTap,
    super.key,
  });

  final Widget child;
  final bool hasBorder;
  final Gradient? gradient;
  final Color? backgroundColor;
  final double? cornerRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Function0<void>? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(
          cornerRadius ?? tenDotNil,
        ),
        onTap: onTap,
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: horizontalPadding ?? sixteenDotNil,
            vertical: verticalPadding ?? eightDotNil,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(
              cornerRadius ?? tenDotNil,
            ),
            border: switch (hasBorder) {
              true => Border.all(
                  color: hex1A000000,
                ),
              false => null,
            },
            gradient: gradient,
            color: backgroundColor,
          ),
          child: child,
        ),
      );
}

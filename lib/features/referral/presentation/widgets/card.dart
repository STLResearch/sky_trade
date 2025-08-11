// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Color,
        Container,
        InkWell,
        Offset,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hex263A4DE9;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show minusTenDotNil, nilDotNil, thirtyFourDotNil, twelveDotNil;

class Card extends StatelessWidget {
  const Card({
    required this.child,
    required this.cornerRadius,
    required this.backgroundColor,
    this.width,
    this.height,
    this.elevated,
    this.onTap,
    super.key,
  });

  final Widget child;
  final double cornerRadius;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final bool? elevated;
  final Function0<void>? onTap;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(
            cornerRadius,
          ),
          color: backgroundColor,
          boxShadow: switch (elevated ?? false) {
            true => const <BoxShadow>[
                BoxShadow(
                  color: hex263A4DE9,
                  offset: Offset(
                    nilDotNil,
                    twelveDotNil,
                  ),
                  blurRadius: thirtyFourDotNil,
                  spreadRadius: minusTenDotNil,
                ),
              ],
            false => null,
          },
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(
            cornerRadius,
          ),
          onTap: onTap,
          child: child,
        ),
      );
}

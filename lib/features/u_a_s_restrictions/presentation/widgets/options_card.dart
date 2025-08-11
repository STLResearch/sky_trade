// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Color,
        Container,
        Gradient,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart' show eightDotNil;

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    required this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.gradient,
    this.boxShadow,
    super.key,
  });

  final Widget child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final double? borderRadius;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius ?? eightDotNil,
          ),
          gradient: gradient,
          boxShadow: boxShadow,
        ),
        child: child,
      );
}

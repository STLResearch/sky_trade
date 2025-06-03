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
    required this.width,
    required this.height,
    required this.child,
    this.backgroundColor,
    this.gradient,
    this.boxShadow,
    super.key,
  });

  final double width;
  final double height;
  final Widget child;
  final Color? backgroundColor;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(
            eightDotNil,
          ),
          gradient: gradient,
          boxShadow: boxShadow,
        ),
        child: child,
      );
}

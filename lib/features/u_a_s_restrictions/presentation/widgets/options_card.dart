import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Color,
        Container,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart' show eightDotNil;

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.child,
    super.key,
  });

  final double width;
  final double height;
  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(
            eightDotNil,
          ),
        ),
        child: child,
      );
}

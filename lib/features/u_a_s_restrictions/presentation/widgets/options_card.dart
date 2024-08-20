import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        StatelessWidget,
        Widget;
import 'package:sky_ways/core/resources/colors.dart' show hexB3FFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show eightDotNil, fortyFourDotNil;

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    required this.height,
    required this.child,
    super.key,
  });

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        width: fortyFourDotNil,
        height: height,
        decoration: BoxDecoration(
          color: hexB3FFFFFF,
          borderRadius: BorderRadiusDirectional.circular(
            eightDotNil,
          ),
        ),
        child: child,
      );
}

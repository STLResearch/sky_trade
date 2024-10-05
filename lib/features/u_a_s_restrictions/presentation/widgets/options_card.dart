import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        StatelessWidget,
        Widget;
import 'package:sky_ways/core/resources/colors.dart' show hexB3FFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart' show eightDotNil;

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    required this.width,
    required this.height,
    required this.child,
    super.key,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
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

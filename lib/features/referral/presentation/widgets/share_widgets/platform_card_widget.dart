import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sky_trade/core/resources/colors.dart';

class PlatformCardWidget extends StatelessWidget {
  const PlatformCardWidget({
    required this.platformIcon,
    super.key,
  });

  final SvgPicture platformIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 55,
      child: Card(
        elevation: 0,
        color: hexE9F5FE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: platformIcon,
        ),
      ),
    );
    ;
  }
}

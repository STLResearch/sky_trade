import 'package:flutter/material.dart';

import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    required this.heading,
    super.key,
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.poppins,
          color: hex222222,
        ),
      ),
    );
  }
}

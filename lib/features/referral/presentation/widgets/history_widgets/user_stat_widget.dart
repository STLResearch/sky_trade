import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class ReferralStatWidget extends StatelessWidget {
  const ReferralStatWidget({
    required this.statData,
    required this.statIcon,
    required this.statDataDescriptor,
    required this.isLineSeparatorVisible,
    super.key,
  });

  final String statData;
  final SvgPicture statIcon;
  final String statDataDescriptor;
  final bool isLineSeparatorVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: statIcon,
              ),
              const SizedBox(width: 20),
              Text(
                statData,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.poppins,
                  color: hex4285F4,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                statDataDescriptor,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.poppins,
                  color: hex868686,
                ),
              ),
            ],
          ),
          Visibility(
            visible: isLineSeparatorVisible,
            child: const SizedBox(
              width: 45,
              height: 9,
              child: Card(
                elevation: 0,
                color: hexD9D9D9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

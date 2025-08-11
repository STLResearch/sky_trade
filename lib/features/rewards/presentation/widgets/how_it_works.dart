// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex161616, hex222222, hex4285F4, hex626262, hexF2F2F2;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fourDotNil,
        minusNilDotOne,
        nilDotNil,
        oneDotNil,
        oneDotThree,
        sixteenDotNil,
        tenDotNil,
        twentyDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/card.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localize.howItWorks,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: twentyDotNil,
                  height: oneDotNil,
                  letterSpacing: minusNilDotOne,
                  color: hex161616,
                ),
          ),
          const SizedBox(
            height: eightDotNil,
          ),
          Card(
            hasBorder: true,
            borderColor: hexF2F2F2,
            cornerRadius: sixteenDotNil,
            horizontalPadding: sixteenDotNil,
            verticalPadding: tenDotNil,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localize.trackADroneWithTheRadarApp,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: nilDotNil,
                          color: hex222222,
                        ),
                  ),
                  const SizedBox(
                    height: fourDotNil,
                  ),
                  Text(
                    context.localize.fiveSkyPointsPerDrone,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w600,
                          height: oneDotThree,
                          letterSpacing: nilDotNil,
                          color: hex4285F4,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: eightDotNil,
          ),
          Card(
            hasBorder: true,
            borderColor: hexF2F2F2,
            cornerRadius: sixteenDotNil,
            horizontalPadding: sixteenDotNil,
            verticalPadding: tenDotNil,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localize.trackADroneWithTheRadarAppInASpecificArea,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: nilDotNil,
                          color: hex626262,
                        ),
                  ),
                  Text(
                    context.localize
                        .texasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: tenDotNil,
                          height: eighteenDotNil / tenDotNil,
                          letterSpacing: nilDotNil,
                          color: hex626262,
                        ),
                  ),
                  const SizedBox(
                    height: fourDotNil,
                  ),
                  Text(
                    context.localize.boostingSkyPointsEgXThree,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w600,
                          height: oneDotThree,
                          letterSpacing: nilDotNil,
                          color: hex4285F4,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}

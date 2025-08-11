// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Color,
        Column,
        Container,
        EdgeInsetsDirectional,
        ElevatedButton,
        FontWeight,
        MainAxisSize,
        Navigator,
        OutlinedBorder,
        Radius,
        RoundedRectangleBorder,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex161616, hex626262, hexCEEAFF, hexD9D9D9;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyDotNil,
        fiveDotNil,
        fortyDotNil,
        fourteenDotNil,
        minusNilDotOne,
        nilDotNil,
        oneDotNil,
        seventeenDotNil,
        seventyDotNil,
        sixteenDotNil,
        tenDotNil,
        twentyFourDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class LeaderboardInfo extends StatelessWidget {
  const LeaderboardInfo({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyFourDotNil,
        ),
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: const BorderRadiusDirectional.vertical(
            top: Radius.circular(
              twentyFourDotNil,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: tenDotNil,
              ),
              Container(
                width: seventyDotNil,
                height: fiveDotNil,
                decoration: BoxDecoration(
                  color: hexD9D9D9,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: seventeenDotNil,
              ),
              Assets.svgs.infoLeaderboard.svg(),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Text(
                context.localize.leaderboard,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(
                      height: oneDotNil,
                      letterSpacing: minusNilDotOne,
                      color: hex161616,
                    ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Text(
                context.localize
                    .competeWithOthersToClimbTheRanksByEarningPointsThroughDroneObservationsAndQuestsPointsResetAtTheStartOfEachNewSeasonSoStayActiveToMaintainYourPosition,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: fourteenDotNil,
                      height: twentyTwoDotNil / fourteenDotNil,
                      letterSpacing: nilDotNil,
                      color: hex626262,
                    ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(
                  context,
                ).pop(),
                style: Theme.of(
                  context,
                ).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: const WidgetStatePropertyAll<Color>(
                        hexCEEAFF,
                      ),
                      fixedSize: const WidgetStatePropertyAll<Size>(
                        Size.fromHeight(
                          fiftyDotNil,
                        ),
                      ),
                      shape: WidgetStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(
                            fifteenDotNil,
                          ),
                        ),
                      ),
                    ),
                child: Center(
                  child: Text(
                    context.localize.close,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(
                          fontSize: sixteenDotNil,
                          height: oneDotNil,
                          letterSpacing: nilDotNil,
                          color: hex0653EA,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: fortyDotNil,
              ),
            ],
          ),
        ),
      );
}

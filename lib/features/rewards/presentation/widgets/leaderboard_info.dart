import 'package:flutter/material.dart'
    show
        AnimatedOpacity,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        Curves,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        MainAxisSize,
        Navigator,
        Padding,
        Radius,
        RoundedRectangleBorder,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart' show
    hex0653EA,
    hex161616,
    hex626262,
    hexCEEAFF;
import 'package:sky_trade/core/resources/numbers/ui.dart' show
    fifteenDotNil,
    fiftyDotNil,
    fourteenDotNil,
    minusNilDotOne,
    nilDotNil,
    oneDotFiveSeven,
    oneDotNil,
    oneFiftyDotNil,
    sixteenDotNil,
    thirteenDotNil,
    threeHundred,
    twentyDotNil,
    twentyFourDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class LeaderboardInfo extends StatelessWidget {
  const LeaderboardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(twentyFourDotNil),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: twentyFourDotNil),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: twentyFourDotNil),
            child: Column(
              children: [
                Center(
                  child: Assets.pngs.infoLeaderboard.image(),
                ),
                const SizedBox(height: twentyFourDotNil),
                Text(
                  context.localize.leaderboard,
                  style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: twentyDotNil,
                    height: oneDotNil,
                    letterSpacing: minusNilDotOne,
                    fontWeight: FontWeight.w500,
                    color: hex161616,
                  ),
                ),
                const SizedBox(height: twentyFourDotNil),
                Text(
                  context.localize
                      .competeWithOthersToClimbTheRanksByEarningPointsThroughDroneObservationsAndQuestsPointsResetAtTheStartOfEachNewSeasonSoStayActiveToMaintainYourPosition,
                  style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w300,
                    fontSize: fourteenDotNil,
                    height: oneDotFiveSeven,
                    letterSpacing: nilDotNil,
                    color: hex626262,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: twentyFourDotNil),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: threeHundred),
                  curve: Curves.easeOut,
                  opacity: oneDotNil,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hexCEEAFF,
                      minimumSize: const Size(double.infinity, fiftyDotNil),
                      padding: const EdgeInsets.fromLTRB(
                        oneFiftyDotNil,
                        thirteenDotNil,
                        oneFiftyDotNil,
                        thirteenDotNil,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(fifteenDotNil),
                      ),
                    ),
                    child: Text(
                      context.localize.close,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: sixteenDotNil,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                        color: hex0653EA,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: twentyFourDotNil),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

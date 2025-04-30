import 'package:flutter/material.dart'
    show
        AnimatedOpacity,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Colors,
        Column,
        Container,
        Curves,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        LinearProgressIndicator,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        Padding,
        Radius,
        RoundedRectangleBorder,
        Row,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart' show FontFamily;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex161616, hex1E1E1E, hex626262, hexCEEAFF, hexF1F1F1;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
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
        twentyFourDotNil,
        twoHundredDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class BadgeDescription extends StatelessWidget {
  const BadgeDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: twentyFourDotNil),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: twentyFourDotNil),
            child: Column(
              children: [
                Assets.svgs.level2.svg(),
                const SizedBox(height: sixteenDotNil),
                Text(
                  context.localize.advancedTracker,
                  style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: twentyDotNil,
                    height: oneDotNil,
                    letterSpacing: minusNilDotOne,
                    fontWeight: FontWeight.w500,
                    color: hex161616,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: twentyFourDotNil),
                LinearProgressIndicator(
                  value: twentyDotNil / twoHundredDotNil,
                  backgroundColor: hexF1F1F1,
                  color: hex1E1E1E,
                  minHeight: twentyDotNil,
                  borderRadius: BorderRadius.circular(fiftyDotNil),
                ),
                const SizedBox(height: eightDotNil),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.localize.twentyPoints,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                        height: oneDotNil,
                        letterSpacing: minusNilDotOne,
                        color: hex626262,
                      ),
                    ),
                    Text(
                      context.localize.twoHundredPoints,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                        height: oneDotNil,
                        letterSpacing: minusNilDotOne,
                        color: hex626262,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: twentyFourDotNil),
                Text(
                  context.localize
                      .earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToBoostYourScoreAndLevelUpPointsResetEverySeasonSoStayActiveToClimbTheLeaderboardsAndMakeYourMark,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                      foregroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, fiftyDotNil),
                      padding: const EdgeInsets.fromLTRB(
                        oneFiftyDotNil,
                        thirteenDotNil,
                        oneFiftyDotNil,
                        thirteenDotNil,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          fifteenDotNil,
                        ),
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
              ],
            ),
          ),
          const SizedBox(height: twentyFourDotNil),
        ],
      ),
    );
  }
}

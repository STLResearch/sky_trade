import 'package:flutter/material.dart'
    show
        AnimatedOpacity,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        CrossAxisAlignment,
        Curves,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
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
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex1E1E1E, hex626262, hexCEEAFF, hexD9D9D9, hexEAF6FF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiftyDotNil,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        oneDotFiveSeven,
        oneDotNil,
        oneFiftyDotNil,
        seventyDotNil,
        sixteenDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyTwoDotNil,
        threeHundred,
        twentyFiveDotNil,
        twentyFourDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class EligibleAreas extends StatelessWidget {
  const EligibleAreas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            twentyFourDotNil,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: fifteenDotNil,
          ),
          Center(
            child: Container(
              width: seventyDotNil,
              height: nineDotNil,
              decoration: BoxDecoration(
                color: hexD9D9D9,
                borderRadius: BorderRadius.circular(
                  tenDotNil,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: twentyFourDotNil,
            ),
            child: Column(
              children: [
                Text(
                  context.localize.droneRushZones,
                  style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: twentyTwoDotNil,
                    height: thirtyTwoDotNil / twentyTwoDotNil,
                    letterSpacing: nilDotNil,
                    fontWeight: FontWeight.w600,
                    color: hex1E1E1E,
                  ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                Text(
                  context.localize
                      .keepAnEyeOnTheMapForActiveRushZonesAndStartTrackingToMaximizeTourRewards,
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
                const SizedBox(
                  height: fifteenDotNil,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(
                    sixteenDotNil,
                    eightDotNil,
                    sixteenDotNil,
                    eightDotNil,
                  ),
                  decoration: BoxDecoration(
                    color: hexEAF6FF,
                    borderRadius: BorderRadius.circular(
                      sixteenDotNil,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.localize.activeRushZones,
                        style: const TextStyle(
                          fontSize: fourteenDotNil,
                          fontWeight: FontWeight.w300,
                          height: twentyFiveDotNil / fourteenDotNil,
                          letterSpacing: nilDotNil,
                          color: hex1E1E1E,
                        ),
                      ),
                      const SizedBox(
                        height: fourDotNil,
                      ),
                      _buildBulletPoint(
                        context.localize.downtownCore,
                      ),
                      _buildBulletPoint(
                        context.localize.bayviewIndustrialPark,
                      ),
                      _buildBulletPoint(
                        context.localize.northHillsArstrip,
                      ),
                      _buildBulletPoint(
                        context.localize.metroEastCorridor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                AnimatedOpacity(
                  duration: const Duration(
                    milliseconds: threeHundred,
                  ),
                  curve: Curves.easeOut,
                  opacity: oneDotNil,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hexCEEAFF,
                      minimumSize: const Size(
                        double.infinity,
                        fiftyDotNil,
                      ),
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
                const SizedBox(
                  height: twentyFourDotNil,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: eightDotNil,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            dot,
            style: TextStyle(
              fontSize: fourteenDotNil,
              fontWeight: FontWeight.w400,
              color: hex626262,
            ),
          ),
          const SizedBox(
            width: fourDotNil,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: fourteenDotNil,
              fontWeight: FontWeight.w400,
              color: hex626262,
            ),
          ),
        ],
      ),
    );
  }
}

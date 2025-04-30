import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        EdgeInsets,
        FontWeight,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        Radius,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fourDotNil,
        fourteenDotNil,
        minusNilDotOne,
        nilDotNil,
        nineDotNil,
        oneDotFiveSeven,
        oneDotNil,
        sixteenDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twoDotSixSeven,
        twoDotTwoEight;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class TaskDescription extends StatelessWidget {
  const TaskDescription({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: twentyFourDotNil),
            child: Column(
              children: [
                Center(
                  child: Assets.pngs.trackDrones.image(),
                ),
                const SizedBox(height: sixteenDotNil),
                Text(
                  context.localize.track5Drones,
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
                  context.localize.descriptionAboutTask,
                  style: const TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w300,
                    fontSize: fourteenDotNil,
                    height: oneDotFiveSeven,
                    letterSpacing: nilDotNil,
                    color: hex626262,
                  ),
                ),
                const SizedBox(height: twentyFourDotNil),
                Container(
                  padding: const EdgeInsets.all(sixteenDotNil),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: hexF2F2F2,
                    ),
                    borderRadius: BorderRadius.circular(nineDotNil),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.localize.earn10$kyPoints,
                        style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w500,
                          fontSize: fourteenDotNil,
                          height: twoDotTwoEight,
                          letterSpacing: nilDotNil,
                          color: hex222222,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: fourDotNil,
                        ),
                        decoration: BoxDecoration(
                          color: hexCEEAFF,
                          borderRadius: BorderRadius.circular(nineDotNil),
                        ),
                        child: Text(
                          context.localize.nilUponFive,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: twelveDotNil,
                            height: twoDotSixSeven,
                            letterSpacing: nilDotNil,
                            color: hex222222,
                          ),
                        ),
                      ),
                    ],
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

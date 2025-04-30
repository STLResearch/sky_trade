import 'package:flutter/material.dart'
    show
        Alignment,
        AppBar,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Clip,
        Colors,
        Column,
        Container,
        EdgeInsets,
        ElevatedButton,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        MaterialPageRoute,
        Navigator,
        Padding,
        Positioned,
        RoundedRectangleBorder,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        Stack,
        StackFit,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex0653EA,
        hex161616,
        hex4040FF,
        hex626262,
        hex68DEFF,
        hexCEEAFF,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftySixDotNil,
        fortyDotNil,
        fourteenDotNil,
        minusNilDotThree,
        nilDotNil,
        nilDotNilTwo,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        oneDotFiveSeven,
        oneDotNil,
        sixteenDotNil,
        thirteenDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twoEightyDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/views/points_screen.dart';

class AdvancedTrackerOnboardingScreen extends StatelessWidget {
  const AdvancedTrackerOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: nilDotNil,
          actions: [
            IconButton(
              icon: Assets.svgs.clearWhite.svg(),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                hex4040FF,
                hex68DEFF,
                hexFFFFFF,
              ],
              stops: [
                nilDotNilTwo,
                nilDotOneSevenTwoTwo,
                nilDotThreeFiveFourEight,
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: twentyFourDotNil,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: twoEightyDotNil,
                            width: double.infinity,
                            child: Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.expand,
                              children: [
                                Positioned(
                                  child: Assets.svgs.badgeLevel2.svg(),
                                ),
                                Positioned(
                                  top: nilDotNil,
                                  left: twentyDotNil,
                                  child: Assets.pngs.droneFront.image(),
                                ),
                                Positioned(
                                  top: fortyDotNil,
                                  right: twentyDotNil,
                                  child: Assets.pngs.droneBack.image(),
                                ),
                              ],
                            ),
                          ),
                          // Title
                          Text(
                            context.localize.youveUnlockedAdvancedTracker,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: hex161616,
                              fontWeight: FontWeight.w500,
                              fontSize: thirtyTwoDotNil,
                              fontFamily: FontFamily.poppins,
                              height: oneDotNil,
                              letterSpacing: minusNilDotThree,
                            ),
                          ),

                          const SizedBox(height: twentyDotNil),
                          Text(
                            context.localize
                                .keepMakingDroneObservationsAndCompletingDailyQuestsToClimbEvenHigherNewChallengesAwait,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: hex626262,
                              fontWeight: FontWeight.w300,
                              fontSize: fourteenDotNil,
                              fontFamily: FontFamily.poppins,
                              height: oneDotFiveSeven,
                              letterSpacing: nilDotNil,
                            ),
                          ),
                          const SizedBox(height: fortyDotNil),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: twentyDotNil),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: fifteenDotNil,
                    vertical: thirteenDotNil,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const PointsScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hexCEEAFF,
                      minimumSize: const Size(double.infinity, fiftySixDotNil),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(fifteenDotNil),
                      ),
                    ),
                    child: Text(
                      context.localize.letsFly,
                      style: const TextStyle(
                        color: hex0653EA,
                        fontWeight: FontWeight.w500,
                        fontSize: sixteenDotNil,
                        fontFamily: FontFamily.poppins,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

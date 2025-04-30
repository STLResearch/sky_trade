import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/views/points_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
                          horizontal: twentyFourDotNil),
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
                                  top: nilDotNil,
                                  child: Assets.svgs.badges.svg(),
                                ),
                                Positioned(
                                  top: nilDotNil,
                                  left: twentyDotNil,
                                  child: Assets.pngs.droneFront.image(),
                                ),
                                Positioned(
                                  top: fortyDotNil,
                                  right: fortyDotNil,
                                  child: Assets.pngs.droneBack.image(),
                                ),
                              ],
                            ),
                          ),
                          // Title
                          Text(
                            context.localize.introducingSkytradeRadarRewards,
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
                          // Description
                          Text(
                            context.localize
                                .earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToBoostYourScoreAndLevelUpPointsResetEverySeasonSoStayActiveToClimbTheLeaderboardsAndMakeYourMark,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
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
                      backgroundColor: hex0653EA,
                      minimumSize: const Size(double.infinity, fiftySixDotNil),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(fifteenDotNil),
                      ),
                    ),
                    child: Text(
                      context.localize.startEarning,
                      style: const TextStyle(
                        color: hexFFFFFF,
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

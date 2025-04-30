import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart'
    show
        Alignment,
        AppBar,
        BackdropFilter,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        ClipRRect,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        Navigator,
        SafeArea,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget,
        showModalBottomSheet;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fourteenDotNil,
        minusNilDotOne,
        minusNilDotTwoTwo,
        nilDotEightSixNilTwo,
        nilDotFive,
        nilDotNil,
        nilDotNilFive,
        nilDotNineEight,
        nilDotOneThreeSixSix,
        nilDotTwoFive,
        oneDotFiveSeven,
        oneDotNil,
        sixteenDotNil,
        sixtyDotNil,
        tenDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyFourDotNil,
        twoFiftyFive;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard_info.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard_table.dart';

class PointsLeaderboard extends StatelessWidget {
  const PointsLeaderboard({
    super.key,
  });

  void _showLeaderboardInfo(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const LeaderboardInfo();
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: hex68DEFF,
        body: Column(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: twentyDotNil),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(
                    twentyFourDotNil,
                    sixtyDotNil,
                    twentyFourDotNil,
                    twentyFourDotNil,
                  ),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          leading: IconButton(
                            icon: Assets.svgs.chevronLeftBlack.svg(),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          title: Text(
                            context.localize.leaderboard,
                            style: const TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: twentyDotNil,
                              height: oneDotNil,
                              letterSpacing: minusNilDotOne,
                              color: hex161616,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          centerTitle: true,
                          actions: [
                            IconButton(
                              icon: Assets.svgs.helpCircle.svg(),
                              onPressed: () {
                                _showLeaderboardInfo(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: sixteenDotNil),
                        Text(
                          context.localize.topTrackersThisSeason,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            color: hex222222,
                            fontWeight: FontWeight.w300,
                            fontSize: fourteenDotNil,
                            height: oneDotFiveSeven,
                            letterSpacing: nilDotNil,
                          ),
                        ),
                        const SizedBox(height: sixteenDotNil),
                        ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: twentyFiveDotNil,
                              sigmaY: twentyFiveDotNil,
                            ),
                            child: Container(
                              padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: sixteenDotNil,
                                vertical: eightDotNil,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(
                                    nilDotNineEight,
                                    minusNilDotTwoTwo,
                                  ),
                                  end: Alignment(
                                    nilDotNineEight,
                                    minusNilDotTwoTwo,
                                  ),
                                  colors: [
                                    Color.fromRGBO(
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      nilDotFive,
                                    ),
                                    Color.fromRGBO(
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      nilDotTwoFive,
                                    ),
                                  ],
                                  stops: [
                                    nilDotOneThreeSixSix,
                                    nilDotEightSixNilTwo,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  twentyDotNil,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: hex000000.withOpacity(nilDotNilFive),
                                    blurRadius: twentyDotNil,
                                  ),
                                ],
                              ),
                              child: Text(
                                context.localize.twentyThreeDaysLeft,
                                style: const TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w500,
                                  fontSize: tenDotNil,
                                  height: oneDotNil,
                                  letterSpacing: nilDotNil,
                                  color: hex222222,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Bottom leaderboard section
            const Expanded(
              child: PointsLeaderboardTable(),
            ),
          ],
        ),
      );
}

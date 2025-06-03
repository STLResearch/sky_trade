// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        AppBar,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Colors,
        Column,
        Container,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        MainAxisAlignment,
        Navigator,
        OutlinedBorder,
        Padding,
        Positioned,
        RoundedRectangleBorder,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex161616, hex4040FF, hex626262, hex68DEFF, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyDotNil,
        fortyDotNil,
        fourteenDotNil,
        minusNilDotThree,
        nilDotNil,
        nilDotNilTwo,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        oneDotNil,
        sixteenDotNil,
        thirtyFiveDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        twoEightyDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: nilDotNil,
          automaticallyImplyLeading: false,
          actionsPadding: const EdgeInsetsDirectional.symmetric(
            horizontal: twentyFourDotNil,
          ),
          actions: [
            IconButton(
              icon: Assets.svgs.clearWhite.svg(),
              onPressed: () => Navigator.of(
                context,
              ).pop(),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
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
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: twentyFourDotNil,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: twoEightyDotNil,
                            width: double.infinity,
                            child: Stack(
                              alignment: AlignmentDirectional.center,
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
                          Text(
                            context.localize.introducingSkyTradeRadarRewards,
                            textAlign: TextAlign.center,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                                  color: hex161616,
                                  fontSize: thirtyTwoDotNil,
                                  height: oneDotNil,
                                  letterSpacing: minusNilDotThree,
                                ),
                          ),
                          const SizedBox(
                            height: sixteenDotNil,
                          ),
                          Text(
                            context.localize
                                .earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnEvenMorePoints,
                            textAlign: TextAlign.center,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: hex626262,
                                  fontSize: fourteenDotNil,
                                  height: twentyTwoDotNil / fourteenDotNil,
                                  letterSpacing: nilDotNil,
                                ),
                          ),
                          const SizedBox(
                            height: fortyDotNil,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: twentyDotNil,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: twentyFourDotNil,
                  ),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).pop(),
                    style: Theme.of(
                      context,
                    ).elevatedButtonTheme.style?.copyWith(
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
                        context.localize.startEarning,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              color: hexFFFFFF,
                              fontSize: sixteenDotNil,
                              height: oneDotNil,
                              letterSpacing: nilDotNil,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: thirtyFiveDotNil,
                ),
              ],
            ),
          ),
        ),
      );
}

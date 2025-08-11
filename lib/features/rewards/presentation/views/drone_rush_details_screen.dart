// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        AppBar,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        Navigator,
        OutlinedBorder,
        Padding,
        PlaceholderAlignment,
        Positioned,
        RichText,
        RoundedRectangleBorder,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan,
        WidgetStatePropertyAll,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex00FFFFFF,
        hex0653EA,
        hex161616,
        hex626262,
        hex68DEFF,
        hex7583FF,
        hexCC4285F4,
        hexCCA8FFFF,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        eightyNineDotNil,
        fifteenDotNil,
        fiftyDotNil,
        fortyFiveDotNil,
        four,
        fourDotNil,
        fourteenDotNil,
        minusNilDotOne,
        minusTenDotNil,
        nilDotNil,
        nilDotOne,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        one,
        oneDotNil,
        sixDotNil,
        sixteenDotNil,
        sixtySixDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        three,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show homeRoutePath, rewardsRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc;
import 'package:sky_trade/features/rewards/presentation/widgets/eligible_areas.dart'
    show EligibleAreas;

class DroneRushDetailsScreen extends StatelessWidget {
  const DroneRushDetailsScreen({
    required this.openedFromRoute,
    required this.droneRushZonesBloc,
    super.key,
  });

  final String openedFromRoute;
  final DroneRushZonesBloc droneRushZonesBloc;

  @override
  Widget build(BuildContext context) => BlocProvider<DroneRushZonesBloc>.value(
        value: droneRushZonesBloc,
        child: DroneRushDetailsScreenView(
          openedFromRoute: openedFromRoute,
        ),
      );
}

class DroneRushDetailsScreenView extends StatelessWidget {
  const DroneRushDetailsScreenView({
    required this.openedFromRoute,
    super.key,
  });

  final String openedFromRoute;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Assets.svgs.chevronLeftBlack.svg(),
            onPressed: () => Navigator.of(
              context,
            ).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: nilDotNil,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                hexFFFFFF,
                hexCCA8FFFF,
                hexCC4285F4,
              ],
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  hex00FFFFFF,
                  hexFFFFFF,
                ],
                stops: [
                  nilDotOneSevenTwoTwo,
                  nilDotThreeFiveFourEight,
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: twentyFourDotNil,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: Container(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    horizontal: eightDotNil,
                                    vertical: fourDotNil,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(
                                      sixDotNil,
                                    ),
                                    gradient: const LinearGradient(
                                      begin: AlignmentDirectional.topEnd,
                                      end: AlignmentDirectional.bottomEnd,
                                      colors: [
                                        hex7583FF,
                                        hex68DEFF,
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    context.localize.specialEvent,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: tenDotNil,
                                          height: oneDotNil,
                                          letterSpacing: nilDotOne,
                                          color: hexFFFFFF,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: twelveDotNil,
                              ),
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  context.localize.droneRush,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                        fontFamily: FontFamily.chakraPetch,
                                        fontWeight: FontWeight.w600,
                                        fontSize: thirtyTwoDotNil,
                                        height: oneDotNil,
                                        letterSpacing: minusNilDotOne,
                                        color: hex161616,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: twelveDotNil,
                              ),
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  context.localize.trackAndEarnFiveXPoints,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium?.copyWith(
                                        fontSize: eighteenDotNil,
                                        height: oneDotNil,
                                        letterSpacing: minusNilDotOne,
                                        color: hex161616,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: minusTenDotNil,
                            right: twentyDotNil,
                            child: Assets.pngs.droneRushZoneBack.image(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: sixtySixDotNil,
                    ),
                    Column(
                      children: List<Widget>.generate(
                        four,
                        (index) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            bottom: switch (index == three) {
                              true => nilDotNil,
                              false => twentyDotNil,
                            },
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Assets.svgs.droneRushPoints.svg(),
                              const SizedBox(
                                width: sixteenDotNil,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      switch (index) {
                                        zero =>
                                          context.localize.watchForRushZones,
                                        one => context.localize.enterARushZone,
                                        two => context.localize.trackDrones,
                                        _ => context.localize.earnMorePoints,
                                      },
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: sixteenDotNil,
                                            height: oneDotNil,
                                            letterSpacing: minusNilDotOne,
                                            color: hex161616,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: eightDotNil,
                                    ),
                                    Text(
                                      switch (index) {
                                        zero => context.localize
                                            .onlySpecificLocationsAreEligibleForExtraPointsRushZonesWillBeMarkedClearlyOnYourMap,
                                        one => context.localize
                                            .youMustBePhysicallyLocatedWithinARushZoneToStartTracking,
                                        two => context.localize
                                            .observeAndConfirmDroneActivityAsUsual,
                                        _ => context.localize
                                            .allSuccessfulObservationsInRushZonesWillAutomaticallyEarnBoostedRewards,
                                      },
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall?.copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: fourteenDotNil,
                                            height: twentyTwoDotNil /
                                                fourteenDotNil,
                                            letterSpacing: nilDotNil,
                                            color: hex626262,
                                          ),
                                    ),
                                    if (index == zero)
                                      const SizedBox(
                                        height: eightDotNil,
                                      ),
                                    if (index == zero)
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Assets.svgs.helpCircleSmall
                                                  .svg(),
                                              alignment:
                                                  PlaceholderAlignment.middle,
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: fourDotNil,
                                              ),
                                              alignment:
                                                  PlaceholderAlignment.middle,
                                            ),
                                            TextSpan(
                                              text: context.localize
                                                  .whatAreasAreEligible,
                                              style: Theme.of(
                                                context,
                                              ).textTheme.bodyLarge?.copyWith(
                                                    fontSize: fourteenDotNil,
                                                    height: oneDotNil,
                                                    letterSpacing: nilDotNil,
                                                    color: hex0653EA,
                                                  ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () =>
                                                    showModalBottomSheet<void>(
                                                      context: context,
                                                      builder: (_) =>
                                                          EligibleAreas(
                                                        droneRushZonesBloc:
                                                            context.read<
                                                                DroneRushZonesBloc>(),
                                                      ),
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: eightyNineDotNil,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (openedFromRoute == homeRoutePath) {
                          Navigator.of(
                            context,
                          ).pop();
                        } else if (openedFromRoute == rewardsRoutePath) {
                          Navigator.of(
                            context,
                          ).pop();
                          Navigator.of(
                            context,
                          ).pop();
                        }
                      },
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
                            backgroundColor:
                                const WidgetStatePropertyAll<Color>(
                              hex0653EA,
                            ),
                          ),
                      child: Center(
                        child: Text(
                          context.localize.startTracking,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: sixteenDotNil,
                                height: oneDotNil,
                                letterSpacing: nilDotNil,
                                color: hexFFFFFF,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: fortyFiveDotNil,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

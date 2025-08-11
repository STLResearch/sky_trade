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
        CrossAxisAlignment,
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
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex0653EA,
        hex1E1E1E,
        hex626262,
        hexCEEAFF,
        hexD9D9D9,
        hexEAF6FF,
        hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiftyDotNil,
        five,
        four,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixteenDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        three,
        twentyDotNil,
        twentyFiveDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show centerDot, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc, DroneRushZonesState;

class EligibleAreas extends StatelessWidget {
  const EligibleAreas({
    required this.droneRushZonesBloc,
    super.key,
  });

  final DroneRushZonesBloc droneRushZonesBloc;

  @override
  Widget build(BuildContext context) => BlocProvider<DroneRushZonesBloc>.value(
        value: droneRushZonesBloc,
        child: const EligibleAreasView(),
      );
}

class EligibleAreasView extends StatelessWidget {
  const EligibleAreasView({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyNineDotNil,
        ),
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: const BorderRadiusDirectional.vertical(
            top: Radius.circular(
              thirtyDotNil,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: thirteenDotNil,
              ),
              Container(
                width: seventyDotNil,
                height: nineDotNil,
                decoration: BoxDecoration(
                  color: hexD9D9D9,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: twentyOneDotNil,
              ),
              Text(
                context.localize.droneRushZones,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: twentyTwoDotNil,
                      height: thirtyTwoDotNil / twentyTwoDotNil,
                      letterSpacing: nilDotNil,
                      color: hex1E1E1E,
                    ),
              ),
              const SizedBox(
                height: fifteenDotNil,
              ),
              Text(
                context.localize
                    .keepAnEyeOnTheMapForActiveRushZonesAndStartTrackingToMaximizeYourRewards,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: fourteenDotNil,
                      height: twentyFiveDotNil / fourteenDotNil,
                      letterSpacing: nilDotNil,
                      color: hex626262,
                    ),
              ),
              const SizedBox(
                height: fifteenDotNil,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: sixteenDotNil,
                  vertical: eightDotNil,
                ),
                decoration: BoxDecoration(
                  color: hexEAF6FF,
                  borderRadius: BorderRadiusDirectional.circular(
                    sixteenDotNil,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localize.activeRushZones,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: fourteenDotNil,
                            height: twentyFiveDotNil / fourteenDotNil,
                            letterSpacing: nilDotNil,
                            color: hex1E1E1E,
                          ),
                    ),
                    const SizedBox(
                      height: fourDotNil,
                    ),
                    BlocBuilder<DroneRushZonesBloc, DroneRushZonesState>(
                      builder: (_, droneRushZonesState) => Skeletonizer(
                        effect: droneRushZonesState.maybeWhen(
                          failedToGetLatestDroneRushZone: (_) =>
                              const SoldColorEffect(
                            color: hexEBEBF4,
                          ),
                          failedToGetOngoingDroneRushZones: (_) =>
                              const SoldColorEffect(
                            color: hexEBEBF4,
                          ),
                          orElse: () => ShimmerEffect(
                            highlightColor: Theme.of(
                              context,
                            ).scaffoldBackgroundColor,
                          ),
                        ),
                        enabled: droneRushZonesState.maybeWhen(
                          gotOngoingDroneRushZones: (_) => false,
                          noLatestDroneRushZone: () => false,
                          noOngoingDroneRushZone: () => false,
                          orElse: () => true,
                        ),
                        child: droneRushZonesState.maybeWhen(
                          gotOngoingDroneRushZones: (
                            droneRushZoneEntities,
                          ) =>
                              Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: droneRushZoneEntities
                                .map(
                                  (droneRushZoneEntity) => Text(
                                    centerDot +
                                        whiteSpace +
                                        whiteSpace +
                                        droneRushZoneEntity.locationName,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodySmall?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: fourteenDotNil,
                                          height:
                                              twentyFiveDotNil / fourteenDotNil,
                                          letterSpacing: nilDotNil,
                                          color: hex626262,
                                        ),
                                  ),
                                )
                                .toList(),
                          ),
                          noLatestDroneRushZone: () => Text(
                            context
                                .localize.thereIsNoNewDroneRushEventAtTheMoment,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: fourteenDotNil,
                                  height: twentyFiveDotNil / fourteenDotNil,
                                  letterSpacing: nilDotNil,
                                  color: hex626262,
                                ),
                          ),
                          noOngoingDroneRushZone: () => Text(
                            context.localize
                                .thereIsNoOnGoingDroneRushEventAtTheMoment,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: fourteenDotNil,
                                  height: twentyFiveDotNil / fourteenDotNil,
                                  letterSpacing: nilDotNil,
                                  color: hex626262,
                                ),
                          ),
                          orElse: () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List<Widget>.generate(
                              five,
                              (index) => Text(
                                centerDot +
                                    whiteSpace +
                                    whiteSpace +
                                    BoneMock.words(
                                      switch (index % two == zero) {
                                        true => three,
                                        false => four,
                                      },
                                    ),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: fourteenDotNil,
                                      height: twentyFiveDotNil / fourteenDotNil,
                                      letterSpacing: nilDotNil,
                                      color: hex626262,
                                    ),
                              ),
                              growable: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: eightDotNil,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: fifteenDotNil,
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
                height: twentyDotNil,
              ),
            ],
          ),
        ),
      );
}

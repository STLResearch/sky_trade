// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Color,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        MainAxisSize,
        Navigator,
        OutlinedBorder,
        Padding,
        Radius,
        RoundedRectangleBorder,
        Row,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
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
        oneDotNil,
        seventyDotNil,
        sixteenDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart';

class EligibleAreas extends StatelessWidget {
  const EligibleAreas({
    required this.activeRushZones,
    super.key,
  });

  final List<DroneRushZoneEntity> activeRushZones;

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
                    if (activeRushZones.isEmpty)
                      Text(
                        context.localize
                            .theListOfActiveRushZonesPlaceNamesCannotBeShownAtTheMoment,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: fourteenDotNil,
                              height: twentyFiveDotNil / fourteenDotNil,
                              letterSpacing: nilDotNil,
                              color: hex626262,
                            ),
                      )
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: activeRushZones
                            .map(
                              (rushZone) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: fourDotNil,
                                  bottom: fourDotNil,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: fourDotNil,
                                      height: fourDotNil,
                                      margin: const EdgeInsetsDirectional.only(
                                        start: eightDotNil,
                                        end: eightDotNil,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: hex626262,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        rushZone.locationName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: fourteenDotNil,
                                              height: twentyFiveDotNil /
                                                  fourteenDotNil,
                                              letterSpacing: nilDotNil,
                                              color: hex626262,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
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

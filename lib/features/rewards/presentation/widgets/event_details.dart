import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Color,
        Column,
        Container,
        EdgeInsetsDirectional,
        ElevatedButton,
        FontWeight,
        LinearGradient,
        MainAxisSize,
        Navigator,
        OutlinedBorder,
        Radius,
        RichText,
        RoundedRectangleBorder,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex0653EA,
        hex1E1E1E,
        hex626262,
        hex68DEFF,
        hex7583FF,
        hexCEEAFF,
        hexD9D9D9,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiftyDotNil,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        nilDotOne,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixDotNil,
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
import 'package:sky_trade/core/resources/strings/routes.dart'
    show rewardsDroneRushDetailsRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

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
              Container(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: eightDotNil,
                  vertical: fourDotNil,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
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
              const SizedBox(
                height: fifteenDotNil,
              ),
              Text(
                context.localize.droneRushZone,
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
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: context.localize.inThisZoneYouCanEarn + whiteSpace,
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
                    TextSpan(
                      text: context.localize.morePoints,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: fourteenDotNil,
                            height: twentyFiveDotNil / fourteenDotNil,
                            letterSpacing: nilDotNil,
                            color: hex626262,
                          ),
                    ),
                    TextSpan(
                      text: whiteSpace +
                          context.localize
                              .forTrackingDronesInSpecialHighActivityZones,
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
                  ],
                ),
              ),
              const SizedBox(
                height: fifteenDotNil,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pop();

                  Navigator.of(
                    context,
                  ).pushNamed(
                    rewardsDroneRushDetailsRoutePath,
                  );
                },
                style: Theme.of(
                  context,
                ).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: const WidgetStatePropertyAll<Color>(
                        hex0653EA,
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
                    context.localize.learnMore,
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

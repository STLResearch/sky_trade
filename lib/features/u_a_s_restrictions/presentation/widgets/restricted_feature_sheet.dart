import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        EdgeInsets,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        MainAxisSize,
        MediaQuery,
        Padding,
        Radius,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fourteenDotNil,
        nineDotNil,
        seventeenDotNil,
        seventyDotNil,
        sixtyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyTwoDotFive,
        twoDotTwo;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class RestrictedFeatureSheet extends StatelessWidget {
  const RestrictedFeatureSheet({
    required this.onGetStartedPressed,
    required this.isDroneInsightsFeature,
    super.key,
  });

  final bool isDroneInsightsFeature;
  final Function0<void> onGetStartedPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height / twoDotTwo,
        minWidth: const BoxConstraints().maxWidth,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: thirteenDotNil,
          ),
          Container(
            width: seventyDotNil,
            height: nineDotNil,
            margin: const EdgeInsetsDirectional.symmetric(
              horizontal: thirtyNineDotNil,
            ),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).bottomSheetTheme.dragHandleColor,
              borderRadius: BorderRadiusDirectional.circular(
                tenDotNil,
              ),
            ),
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: twentyDotNil,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Center(
                      child: SizedBox(
                        width: sixtyDotNil,
                        height: sixtyDotNil,
                        child: isDroneInsightsFeature
                            ? Assets.pngs.droneInsightsEye.image()
                            : Assets.pngs.droneRadar.image(),
                      ),
                    ),
                    const SizedBox(
                      height: twentyFiveDotNil,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: seventeenDotNil,
                      ),
                      isDroneInsightsFeature
                          ? context
                              .localize.youNeedToBeLoggedInToAccessDroneInsights
                          : context.localize
                              .youveTrackedFivePlusDronesReadyToUnlockMore,
                    ),
                    const SizedBox(
                      height: twentyFiveDotNil,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                      ),
                      isDroneInsightsFeature
                          ? context.localize
                              .logInToViewTrendsInDroneActivityAndTrackingHistory
                          : context.localize
                              .createYourProfileToSaveProgressGetAlertsAndExploreDeeperInsights,
                    ),
                    const SizedBox(
                      height: twentyFiveDotNil,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onGetStartedPressed.call,
                        child: Text(
                          context.localize.getStarted,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: fifteenDotNil,
                                    height: twentyTwoDotFive / fifteenDotNil,
                                    color: hexFFFFFF,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: thirtyDotNil,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

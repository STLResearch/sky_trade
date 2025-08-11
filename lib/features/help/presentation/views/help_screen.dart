// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        ColoredBox,
        Column,
        EdgeInsetsDirectional,
        IconButton,
        Navigator,
        Padding,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex00375A;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fourteenDotNil,
        thirtyDotNil,
        thirtyTwoDotFive,
        twentyDotNil,
        twentyFiveDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/help/presentation/widgets/help_list.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Assets.svgs.chevronLeft.svg(),
            onPressed: () => Navigator.of(
              context,
            ).pop(),
          ),
          title: Text(
            context.localize.help,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ColoredBox(
                color: hex00375A,
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: thirtyTwoDotFive,
                  ),
                  child: Column(
                    children: [
                      Text(
                        context.localize
                            .welcomeToSkyTradeRadarUsingOurApplicationYouCanReceiveDroneRemoteIdDataOnYourPhoneAndSeeRestrictedAreasForFlyingTheApplicationCanReceiveDataTransmittedOverBluetoothAndWiFi,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              fontSize: fourteenDotNil,
                              height: twentyOneDotNil / fourteenDotNil,
                              color: Theme.of(
                                context,
                              ).scaffoldBackgroundColor,
                            ),
                      ),
                      const SizedBox(
                        height: twentyDotNil,
                      ),
                      Text(
                        context.localize
                            .pleaseNoteThatTheFunctionalityOfThisApplicationIsEntirelyDependentOnTheOperationSystemOfYourMobileDeviceItsVersionAndAlsoTheHardwareComponentsAndFeaturesOfTheDroneYouWantToObserve,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              color: Theme.of(
                                context,
                              ).scaffoldBackgroundColor,
                            ),
                      ),
                      const SizedBox(
                        height: thirtyDotNil,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: twentyFiveDotNil,
              ),
              const HelpList(),
              const SizedBox(
                height: twentyFiveDotNil,
              ),
            ],
          ),
        ),
      );
}

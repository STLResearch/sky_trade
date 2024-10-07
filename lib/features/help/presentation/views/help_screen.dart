import 'package:flutter/material.dart'
    show
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        MainAxisSize,
        Padding,
        Row,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:sky_ways/core/assets/generated/assets.gen.dart';
import 'package:sky_ways/core/resources/colors.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        fourteenDotNil,
        sixDotNil,
        thirtyDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyFourDotNil,
        twentyOneDotNil,
        twoNinetyFiveDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/help/presentation/widgets/help_list.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HelpScreen();
}

class _HelpScreen extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: hex00375A,
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                thirtyDotNil,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Assets.svgs.chevronLeft.svg(
                        width: twentyFourDotNil,
                        height: twentyFourDotNil,
                      ),
                      const SizedBox(
                        width: sixDotNil,
                      ),
                      Text(
                        context.localize.help,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: hexFFFFFF,
                              fontSize: twentyFourDotNil,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: twentyDotNil,
                  ),
                  SizedBox(
                    width: twoNinetyFiveDotNil,
                    child: Text(
                      context.localize
                          .welcomeToSkyTradeRadarUsingOurApplicationYouCanReceiveDroneRemoteIdDataOnYourPhoneAndSeeRestrictedAreasForFlyingTheApplicationCanReceiveDataTransmittedOverBluetoothAndWiFi,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: hexFFFFFF,
                            fontSize: fourteenDotNil,
                            height: twentyOneDotNil / fourteenDotNil,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: twentyDotNil,
                  ),
                  SizedBox(
                    width: twoNinetyFiveDotNil,
                    child: Text(
                      context.localize
                          .pleaseNoteThatTheFunctionalityOfThisApplicationIsEntirelyDependentOnTheOperationSystemOfYourMobileDeviceItsVersionAndAlsoTheHardwareComponentsAndFeaturesOfTheDroneYouWantToObserve,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: hexFFFFFF,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: twentyFiveDotNil,
          // ),
          const Expanded(
            child: HelpList(),
          ),
        ],
      ),
    );
  }
}

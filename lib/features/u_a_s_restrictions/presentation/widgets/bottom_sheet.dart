import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontWeight,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        Radius,
        Row,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget,
        showModalBottomSheet;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/colors.dart'
    show hex1E1E1E, hex9D9D9D, hexF4F4F4;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFiveDotEightFive,
        twentyFourDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentySixDotNil,
        twentyTwoDotNil;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show arrowAssetPath, infoAssetPath, locationProhibitedAssetPath;

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomSheetState();
  }
}

class BottomSheetState extends StatelessWidget {
  const BottomSheetState({super.key});

  Future<void> _showBottomSheet(BuildContext context) =>
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) => Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.vertical(
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
                decoration: BoxDecoration(
                  color: Theme.of(context).bottomSheetTheme.dragHandleColor,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: twentyNineDotNil,
                  end: twentyNineDotNil,
                  top: twentyOneDotNil,
                  bottom: twentyDotNil,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          infoAssetPath,
                          width: twentyFourDotNil,
                          height: twentyFourDotNil,
                        ),
                        const SizedBox(
                          width: tenDotNil,
                        ),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!
                                .flightRestrictedAirspace,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: twentyTwoDotNil,
                                      height: thirtyTwoDotNil / twentyTwoDotNil,
                                      color: hex1E1E1E,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    const Divider(
                      height: oneDotNil,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          locationProhibitedAssetPath,
                          width: thirtyDotNil,
                          height: thirtyDotNil,
                        ),
                        const SizedBox(
                          width: fourteenDotNil,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.address,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: hex9D9D9D,
                                    ),
                              ),
                              Text(
                                AppLocalizations.of(context)!.specificAddress,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: hex1E1E1E,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: hexF4F4F4,
                        borderRadius: BorderRadiusDirectional.circular(
                          eightDotNil,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(
                          tenDotNil,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!
                                  .bottomSheetParagraph,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: hex1E1E1E,
                                  ),
                            ),
                            const SizedBox(
                              height: tenDotNil,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .federalAviationAdministration,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: hex1E1E1E,
                                      ),
                                ),
                                const SizedBox(
                                  width: tenDotNil,
                                ),
                                SvgPicture.asset(
                                  arrowAssetPath,
                                  width: twentyFiveDotEightFive,
                                  height: twentySixDotNil,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(height: fifteenDotNil),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () => _showBottomSheet(context),
        ),
      ),
    );
  }
}

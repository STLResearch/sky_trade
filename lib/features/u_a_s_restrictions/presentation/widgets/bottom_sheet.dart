import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/colors.dart'
    show hex1E1E1E, hex9D9D9D, hexD9D9D9, hexEBEBEB, hexF4F4F4, hexFFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fortyThreeDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        tenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFiveDotEightFive,
        twentyFourDotNil,
        twentyNineDotNil,
        twentySixDotNil,
        twentyTwoDotNil,
        twoHundredFortyNineDotSevenNine;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show arrowAssetPath, exitAssetPath, locationAssetPath;

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomSheetState();
  }
}

class BottomSheetState extends StatelessWidget {
  const BottomSheetState({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: hexFFFFFF,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(thirtyDotNil),
              topRight: Radius.circular(thirtyDotNil),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: twentyNineDotNil,
              top: fortyThreeDotNil,
              right: twentyNineDotNil,
              bottom: twentyDotNil,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: seventyDotNil,
                  height: nineDotNil,
                  decoration: BoxDecoration(
                    color: hexD9D9D9,
                    borderRadius: BorderRadius.circular(tenDotNil),
                  ),
                ),
                const SizedBox(height: fifteenDotNil),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      exitAssetPath,
                      width: twentyFourDotNil,
                      height: twentyFourDotNil,
                    ),
                    const SizedBox(width: tenDotNil),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.flightRestrictedAirspace,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: twentyTwoDotNil,
                              height: thirtyTwoDotNil / twentyTwoDotNil,
                              color: hex1E1E1E,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: fifteenDotNil),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: oneDotNil,
                        decoration: const BoxDecoration(
                          color: hexEBEBEB,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: fifteenDotNil),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            locationAssetPath,
                            width: thirtyDotNil,
                            height: thirtyDotNil,
                          ),
                          const SizedBox(width: fourteenDotNil),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.address,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: twelveDotNil,
                                      height: eighteenDotNil / twelveDotNil,
                                      color: hex9D9D9D,
                                    ),
                              ),
                              SizedBox(
                                width: twoHundredFortyNineDotSevenNine,
                                child: Text(
                                  AppLocalizations.of(context)!.specificAddress,
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: twelveDotNil,
                                        height: eighteenDotNil / twelveDotNil,
                                        color: hex1E1E1E,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: fifteenDotNil),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: hexF4F4F4,
                          borderRadius: BorderRadius.circular(eightDotNil),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(tenDotNil),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .bottomSheetParagraph,
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: twelveDotNil,
                                            height:
                                                eighteenDotNil / twelveDotNil,
                                            color: hex1E1E1E,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: tenDotNil),
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!
                                              .federalAviationAdministration,
                                          textAlign: TextAlign.left,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: twelveDotNil,
                                                height: eighteenDotNil /
                                                    twelveDotNil,
                                                color: hex1E1E1E,
                                              ),
                                        ),
                                        const SizedBox(width: tenDotNil),
                                        SvgPicture.asset(
                                          arrowAssetPath,
                                          width: twentyFiveDotEightFive,
                                          height: twentySixDotNil,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: fifteenDotNil),
              ],
            ),
          ),
        );
      },
    );
  }

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

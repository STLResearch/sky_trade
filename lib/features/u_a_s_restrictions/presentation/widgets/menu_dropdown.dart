import 'package:flutter/material.dart'
    show
        Border,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Expanded,
        MainAxisSize,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        oneDotNil,
        tenDotNil,
        threeNintyTwoDotNil,
        twentyFourDotNil,
        twoThirtyDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class MenuDropdown extends StatelessWidget {
  const MenuDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexFFFFFF,
      child: Container(
        width: threeNintyTwoDotNil,
        decoration: const BoxDecoration(
          color: hexFFFFFF,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: oneDotNil,
            bottom: oneDotNil,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: hexFFFFFF,
                        border: Border.all(
                          color: hexD5DCEB,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: fifteenDotNil,
                          top: tenDotNil,
                          right: fifteenDotNil,
                          bottom: tenDotNil,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.svgs.insights.svg(
                              width: twentyFourDotNil,
                              height: twentyFourDotNil,
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            SizedBox(
                              width: twoThirtyDotNil,
                              child: Text(
                                context.localize.insights,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: hex1D1E2D,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: hexFFFFFF,
                        border: Border.all(
                          color: hexD5DCEB,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: fifteenDotNil,
                          top: tenDotNil,
                          right: fifteenDotNil,
                          bottom: tenDotNil,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.svgs.settings.svg(
                              width: twentyFourDotNil,
                              height: twentyFourDotNil,
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            SizedBox(
                              width: twoThirtyDotNil,
                              child: Text(
                                context.localize.settings,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: hex1D1E2D,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: hexFFFFFF,
                        border: Border.all(
                          color: hexD5DCEB,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: fifteenDotNil,
                          top: tenDotNil,
                          right: fifteenDotNil,
                          bottom: tenDotNil,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.svgs.help.svg(
                              width: twentyFourDotNil,
                              height: twentyFourDotNil,
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            SizedBox(
                              width: twoThirtyDotNil,
                              child: Text(
                                context.localize.help,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: hex1D1E2D,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: hexFFFFFF,
                        border: Border.all(
                          color: hexD5DCEB,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: fifteenDotNil,
                          top: tenDotNil,
                          right: fifteenDotNil,
                          bottom: tenDotNil,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.svgs.logout.svg(
                              width: twentyFourDotNil,
                              height: twentyFourDotNil,
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            SizedBox(
                              width: twoThirtyDotNil,
                              child: Text(
                                context.localize.logout,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: hex1D1E2D,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

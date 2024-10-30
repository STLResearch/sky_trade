import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Column,
        EdgeInsetsDirectional,
        FontWeight,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        SafeArea,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0000FF, hex222222, hexE6FFFFFF, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        fiftyEightDotSixFour,
        fiftyFourDotNil,
        sevenDotNil,
        seventyEightDotNil,
        sixtyEightDotNil,
        sixtySixDotNil,
        tenDotNil,
        twelveDotNil,
        twentyOneDotNil,
        twentyOneDotThreeSeven,
        twoFiftyFive;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_result_card.dart';

class MapOverlay extends StatelessWidget {
  const MapOverlay({
    required this.myLocationFollowed,
    required this.mapStyle,
    required this.onGiftTap,
    required this.onMyLocationIconTap,
    required this.onMapLayerIconTap,
    required this.onDroneTap,
    super.key,
  });

  final bool myLocationFollowed;
  final MapStyle mapStyle;
  final Function0<void> onGiftTap;
  final Function0<void> onMyLocationIconTap;
  final Function0<void> onMapLayerIconTap;
  final Function0<void> onDroneTap;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: twentyOneDotNil,
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SearchCard(),
                    const SizedBox(
                      height: twelveDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: InkWell(
                        onTap: onGiftTap,
                        child: OptionsCard(
                          width: fiftyFourDotNil,
                          height: sixtyEightDotNil,
                          backgroundColor: hex0000FF,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.svgs.gift.svg(),
                              Text(
                                twoFiftyFive.toString(),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: elevenDotNil,
                                      height:
                                          twentyOneDotThreeSeven / elevenDotNil,
                                      color: hexFFFFFF,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: sevenDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: OptionsCard(
                        width: fiftyFourDotNil,
                        height: seventyEightDotNil,
                        backgroundColor: hexE6FFFFFF,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: onMyLocationIconTap,
                              child: switch (myLocationFollowed) {
                                true => Assets.svgs.myLocationFollowed.svg(),
                                false =>
                                  Assets.svgs.myLocationNotFollowed.svg(),
                              },
                            ),
                            const SizedBox(
                              height: tenDotNil,
                            ),
                            InkWell(
                              onTap: onMapLayerIconTap,
                              child: switch (mapStyle) {
                                MapStyle.dark => Assets.svgs.mapLayerDark.svg(),
                                MapStyle.satellite =>
                                  Assets.svgs.mapLayerSatellite.svg(),
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: sevenDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: InkWell(
                        onTap: onDroneTap,
                        child: OptionsCard(
                          width: fiftyFourDotNil,
                          height: fiftyEightDotSixFour,
                          backgroundColor: hexE6FFFFFF,
                          child: Assets.svgs.iconDroneBlack.svg(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: sevenDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: OptionsCard(
                        width: fiftyFourDotNil,
                        height: sixtySixDotNil,
                        backgroundColor: hexE6FFFFFF,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.svgs.sun.svg(),
                            Text(
                              context.localize.twenty +
                                  context.localize.degrees,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontSize: elevenDotNil,
                                    height:
                                        twentyOneDotThreeSeven / elevenDotNil,
                                    color: hex222222,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SearchResultCard(),
              ],
            ),
          ),
        ),
      );
}

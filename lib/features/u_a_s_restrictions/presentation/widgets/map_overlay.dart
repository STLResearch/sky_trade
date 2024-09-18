import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Column,
        EdgeInsetsDirectional,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        SafeArea,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart' show hex222222;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        seventyEightDotNil,
        sixtySixDotNil,
        tenDotNil,
        thirteenDotNil,
        twentyOneDotNil,
        twentyOneDotThreeSeven;
import 'package:sky_ways/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/options_card.dart';

class MapOverlay extends StatelessWidget {
  const MapOverlay({
    required this.myLocationFollowed,
    required this.mapStyle,
    required this.onMyLocationIconTap,
    required this.onMapLayerIconTap,
    super.key,
  });

  final bool myLocationFollowed;
  final MapStyle mapStyle;
  final Function0<void> onMyLocationIconTap;
  final Function0<void> onMapLayerIconTap;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: twentyOneDotNil,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: OptionsCard(
                    height: seventyEightDotNil,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: onMyLocationIconTap,
                          child: switch (myLocationFollowed) {
                            true => Assets.svgs.myLocationFollowed.svg(),
                            false => Assets.svgs.myLocationNotFollowed.svg(),
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
                  height: thirteenDotNil,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: OptionsCard(
                    height: sixtySixDotNil,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.svgs.sun.svg(),
                        Text(
                          context.localize.twenty + context.localize.degrees,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                fontSize: elevenDotNil,
                                height: twentyOneDotThreeSeven / elevenDotNil,
                                color: hex222222,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

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
        Stack,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE6FFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyFourDotNil,
        sevenDotNil,
        seventyEightDotNil,
        tenDotNil,
        twelveDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_result_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/weather_card.dart';

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
                    const WeatherCard(),
                  ],
                ),
                const SearchResultCard(),
              ],
            ),
          ),
        ),
      );
}

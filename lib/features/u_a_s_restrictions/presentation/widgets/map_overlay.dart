import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BorderRadius,
        BuildContext,
        Column,
        EdgeInsets,
        EdgeInsetsDirectional,
        FocusManager,
        FontWeight,
        GestureDetector,
        InkWell,
        LinearGradient,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        Padding,
        SafeArea,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4040FF, hex68DEFF, hexE6FFFFFF, hexEBEBF4, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        elevenDotNil,
        fiftyDotNil,
        fiftyFourDotNil,
        fiftyOneDotNil,
        one,
        sixDotNil,
        sixteenDotNil,
        sixtyOneDotNil,
        twentyOneDotNil,
        twentyOneDotThreeSeven,
        two;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show rewardsRoutePath;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc, DroneRushZonesState;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_card.dart'
    show SearchCard;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/search_result_card.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/weather_card.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

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
  Widget build(BuildContext context) => BlocProvider<SearchAutocompleteBloc>(
        create: (_) => serviceLocator(),
        child: MapOverlayView(
          myLocationFollowed: myLocationFollowed,
          mapStyle: mapStyle,
          onGiftTap: onGiftTap,
          onMyLocationIconTap: onMyLocationIconTap,
          onMapLayerIconTap: onMapLayerIconTap,
          onDroneTap: onDroneTap,
        ),
      );
}

class MapOverlayView extends StatefulWidget {
  const MapOverlayView({
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
  State<MapOverlayView> createState() => _MapOverlayViewState();
}

class _MapOverlayViewState extends State<MapOverlayView> {
  late final ValueNotifier<String?> _tappedSearchResultPlaceNameNotifier;
  late final ValueNotifier<bool> _showSearchResultCardNotifier;

  @override
  void initState() {
    _tappedSearchResultPlaceNameNotifier = ValueNotifier<String?>(
      null,
    );
    _showSearchResultCardNotifier = ValueNotifier<bool>(
      false,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tappedSearchResultPlaceNameNotifier.dispose();
    _showSearchResultCardNotifier.dispose();

    super.dispose();
  }

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
                    ValueListenableBuilder(
                      valueListenable: _tappedSearchResultPlaceNameNotifier,
                      builder:
                          (_, tappedSearchResultPlaceNameNotifierValue, __) =>
                              SearchCard(
                        tappedSearchResultPlaceName:
                            tappedSearchResultPlaceNameNotifierValue,
                        onSearchFieldTap: () =>
                            _showSearchResultCardNotifier.value = true,
                        onSearchFieldCleared: () =>
                            _tappedSearchResultPlaceNameNotifier.value = null,
                        onSearchFieldTextChanged: (text) =>
                            _tappedSearchResultPlaceNameNotifier.value = text,
                      ),
                    ),
                    const SizedBox(
                      height: sixteenDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: OptionsCard(
                        width: fiftyFourDotNil,
                        height: fiftyOneDotNil,
                        gradient: const LinearGradient(
                          colors: [
                            hex4040FF,
                            hex68DEFF,
                          ],
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                            eightDotNil,
                          ),
                          onTap: () => Navigator.of(context).pushNamed(
                            rewardsRoutePath,
                            arguments:
                              context.read<DroneRushZonesBloc>(),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: eightDotNil,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.svgs.gift.svg(),
                                BlocBuilder<DroneRushZonesBloc,
                                    DroneRushZonesState>(
                                  builder: (_, droneRushZonesState) =>
                                      Skeletonizer(
                                    effect: droneRushZonesState.maybeWhen(
                                      failedToGetLatestDroneRushZone: (_) =>
                                          const SoldColorEffect(
                                        color: hexEBEBF4,
                                      ),
                                      failedToGetOngoingDroneRushZones: (_) =>
                                          const SoldColorEffect(
                                        color: hexEBEBF4,
                                      ),
                                      orElse: () => ShimmerEffect(
                                        highlightColor: Theme.of(
                                          context,
                                        ).scaffoldBackgroundColor,
                                      ),
                                    ),
                                    enabled: droneRushZonesState.maybeWhen(
                                      noLatestDroneRushZone: () => false,
                                      noOngoingDroneRushZone: () => false,
                                      gotOngoingDroneRushZones: (_) => false,
                                      orElse: () => true,
                                    ),
                                    child: droneRushZonesState.maybeWhen(
                                      noLatestDroneRushZone: () =>
                                          const SizedBox.shrink(),
                                      noOngoingDroneRushZone: () =>
                                          const SizedBox.shrink(),
                                      gotOngoingDroneRushZones:
                                          (droneRushZoneEntities) => Text(
                                        droneRushZoneEntities.length.toString(),
                                        maxLines: one,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: elevenDotNil,
                                              height: twentyOneDotThreeSeven /
                                                  elevenDotNil,
                                              color: hexFFFFFF,
                                            ),
                                      ),
                                      orElse: () => Text(
                                        BoneMock.chars(
                                          two,
                                        ),
                                        maxLines: one,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: elevenDotNil,
                                              height: twentyOneDotThreeSeven /
                                                  elevenDotNil,
                                              color: hexFFFFFF,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: eightDotNil,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: OptionsCard(
                        width: fiftyFourDotNil,
                        height: fiftyDotNil,
                        backgroundColor: hexE6FFFFFF,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: widget.onMyLocationIconTap,
                              child: switch (widget.myLocationFollowed) {
                                true => Assets.svgs.myLocationFollowed.svg(),
                                false =>
                                  Assets.svgs.myLocationNotFollowed.svg(),
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: eightDotNil,
                    ),
                    const WeatherCard(),
                  ],
                ),
                ValueListenableBuilder(
                  valueListenable: _showSearchResultCardNotifier,
                  builder: (_, showSearchResultCardNotifierValue, __) =>
                      switch (showSearchResultCardNotifierValue) {
                    true => Padding(
                        padding: const EdgeInsets.only(
                          top: sixtyOneDotNil + sixDotNil,
                        ),
                        child: SizedBox(
                          height: double.infinity,
                          child: GestureDetector(
                            onTap: () {
                              _showSearchResultCardNotifier.value = false;
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
                        ),
                      ),
                    false => const SizedBox.shrink(),
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: _showSearchResultCardNotifier,
                  builder: (_, showSearchResultCardNotifierValue, __) =>
                      switch (showSearchResultCardNotifierValue) {
                    true => SearchResultCard(
                        onSearchResultItemTap: (placeName) {
                          _tappedSearchResultPlaceNameNotifier.value =
                              placeName;
                          _showSearchResultCardNotifier.value = false;
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                      ),
                    false => const SizedBox.shrink(),
                  },
                ),
              ],
            ),
          ),
        ),
      );
}

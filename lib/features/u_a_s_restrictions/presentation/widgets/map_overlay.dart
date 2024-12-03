import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Column,
        EdgeInsets,
        EdgeInsetsDirectional,
        FocusManager,
        GestureDetector,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        Positioned,
        SafeArea,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE6FFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyFourDotNil,
        sevenDotNil,
        seventyEightDotNil,
        sixtyOneDotNil,
        tenDotNil,
        twelveDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show MapStyle;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
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
  final ValueNotifier<String?> _queryTextNotifier =
      ValueNotifier<String?>(null);

  final ValueNotifier<bool> _showSearchResultCardNotifier =
      ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    _queryTextNotifier.value = null;
    return SafeArea(
      child: Align(
        alignment: AlignmentDirectional.topCenter,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: twentyOneDotNil,
          ),
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: _queryTextNotifier,
                      builder: (_, queryTextValue, __) => SearchCard(
                        queryText: queryTextValue,
                        onSearchCardTap: () =>
                            _showSearchResultCardNotifier.value = true,
                      ),
                    ),
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
                              onTap: widget.onMyLocationIconTap,
                              child: switch (widget.myLocationFollowed) {
                                true => Assets.svgs.myLocationFollowed.svg(),
                                false =>
                                  Assets.svgs.myLocationNotFollowed.svg(),
                              },
                            ),
                            const SizedBox(
                              height: tenDotNil,
                            ),
                            InkWell(
                              onTap: widget.onMapLayerIconTap,
                              child: switch (widget.mapStyle) {
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
                ValueListenableBuilder(
                  valueListenable: _showSearchResultCardNotifier,
                  builder: (_, value, __) => switch (value) {
                    true => Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(top: sixtyOneDotNil),
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
                  builder: (_, showResultCard, __) => switch (showResultCard) {
                    true => SearchResultCard(
                        onSearchCardTap: (suggestionPlaceName) {
                          _queryTextNotifier.value = suggestionPlaceName;
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
      ),
    );
  }
}

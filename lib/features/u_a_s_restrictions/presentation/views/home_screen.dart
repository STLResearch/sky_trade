import 'package:flutter/material.dart'
    show
        AnimatedPositioned,
        BottomNavigationBar,
        BottomNavigationBarItem,
        BuildContext,
        EdgeInsetsDirectional,
        LayoutBuilder,
        Padding,
        Scaffold,
        Stack,
        State,
        StatefulWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, ReadContext;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show CameraOptions, MapWidget, MapboxMap, MapboxOptions, Point, Position;
import 'package:sky_ways/core/resources/colors.dart' show hex4285F4, hex5D7285;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        five,
        forty,
        nilDotNil,
        one,
        oneHundred,
        sixteenDotNil,
        ten,
        three,
        twentyFourDotNil,
        two,
        zero;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show
        accountAssetPath,
        communityAssetPath,
        flightAssetPath,
        indicatorAssetPath,
        mapAssetPath,
        weatherAssetPath;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show mapboxMapsPublicKey, mapboxMapsStyleUri;
import 'package:sky_ways/core/utils/extensions/mapbox_map_extensions.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final MapboxMap? _mapboxMap;
  late final ValueNotifier<int> _selectedBottomNavigationBarItemIndex;

  @override
  void initState() {
    MapboxOptions.setAccessToken(
      dotenv.env[mapboxMapsPublicKey]!,
    );
    _selectedBottomNavigationBarItemIndex = ValueNotifier<int>(
      zero,
    );

    super.initState();
  }

  @override
  void dispose() {
    _mapboxMap?.dispose();
    _selectedBottomNavigationBarItemIndex.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<UASRestrictionsBloc, UASRestrictionsState>(
        listener: (_, uASRestrictionsState) {
          uASRestrictionsState.maybeWhen(
            gotRestrictions: (restrictionEntities) {
              for (final restrictionEntity in restrictionEntities) {
                _mapboxMap?.drawPolygonUsing(
                  vertices: restrictionEntity.region.coordinates,
                );
              }
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          body: MapWidget(
            styleUri: dotenv.env[mapboxMapsStyleUri]!,
            onMapCreated: (mapboxMap) {
              _mapboxMap = mapboxMap;

              final cameraOptions = CameraOptions(
                center: Point(
                  coordinates: Position(
                    -0.1425366,
                    51.5161597,
                  ),
                ),
                zoom: 9,
              );

              mapboxMap.easeTo(
                cameraOptions,
                null,
              );
              //
              // mapboxMap
              //     .coordinateBoundsForCameraUnwrapped(
              //   cameraOptions,
              // )
              //     .then(
              //   (coordinateBounds) {
              //     context.read<UASRestrictionsBloc>().add(
              //           UASRestrictionsEvent.getRestrictions(
              //             southWestLatitude: coordinateBounds
              //                 .southwest.coordinates.lat
              //                 .toDouble(),
              //             southWestLongitude: coordinateBounds
              //                 .southwest.coordinates.lng
              //                 .toDouble(),
              //             northEastLatitude: coordinateBounds
              //                 .northeast.coordinates.lat
              //                 .toDouble(),
              //             northEastLongitude: coordinateBounds
              //                 .northeast.coordinates.lng
              //                 .toDouble(),
              //           ),
              //         );
              //   },
              // );
            },
          ),
          bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: _selectedBottomNavigationBarItemIndex,
            builder: (_, selectedBottomNavigationBarItemIndexValue, __) =>
                LayoutBuilder(
              builder: (___, constraints) => Stack(
                children: [
                  BottomNavigationBar(
                    currentIndex: selectedBottomNavigationBarItemIndexValue,
                    items: List<BottomNavigationBarItem>.generate(
                      five,
                      (index) => BottomNavigationBarItem(
                        label: computeBottomNavigationBarLabelFrom(
                          index,
                        ),
                        icon: Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: sixteenDotNil,
                          ),
                          child: SvgPicture.asset(
                            computeBottomNavigationBarSvgAssetPathFrom(
                              index,
                            ),
                            width: twentyFourDotNil,
                            height: twentyFourDotNil,
                            color: switch (
                                selectedBottomNavigationBarItemIndexValue ==
                                    index) {
                              true => hex4285F4,
                              false => hex5D7285,
                            },
                          ),
                        ),
                      ),
                    ),
                    onTap: (index) =>
                        _selectedBottomNavigationBarItemIndex.value = index,
                  ),
                  AnimatedPositioned(
                    top: nilDotNil,
                    left: constraints.maxWidth /
                            five *
                            selectedBottomNavigationBarItemIndexValue +
                        (constraints.maxWidth / ten) -
                        forty,
                    duration: const Duration(
                      milliseconds: oneHundred,
                    ),
                    child: SvgPicture.asset(
                      indicatorAssetPath,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  String computeBottomNavigationBarLabelFrom(
    int index,
  ) =>
      switch (index) {
        zero => AppLocalizations.of(context)!.flight,
        one => AppLocalizations.of(context)!.map,
        two => AppLocalizations.of(context)!.weather,
        three => AppLocalizations.of(context)!.community,
        _ => AppLocalizations.of(context)!.account,
      };

  String computeBottomNavigationBarSvgAssetPathFrom(
    int index,
  ) =>
      switch (index) {
        zero => flightAssetPath,
        one => mapAssetPath,
        two => weatherAssetPath,
        three => communityAssetPath,
        _ => accountAssetPath,
      };
}

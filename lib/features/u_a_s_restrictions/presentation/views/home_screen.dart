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
import 'package:sky_ways/core/resources/strings/secrets.dart'
    show mapboxMapsPublicKey, mapboxMapsStyleUri;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/views/map_annotations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final MapboxMap? _mapboxMap;
  late final ValueNotifier<int> _selectedBottomNavigationBarItemIndex;
  late final List<List<Position>> _polygonCoordinates;
  late final MapAnnotations _mapAnnotations;

  @override
  void initState() {
    MapboxOptions.setAccessToken(
      dotenv.env[mapboxMapsPublicKey]!,
    );
    _selectedBottomNavigationBarItemIndex = ValueNotifier<int>(
      zero,
    );
    _polygonCoordinates = [
      // Default coordinates
      // [
      //   Position(-3.363937, -10.733102),
      //   Position(1.754703, -19.716317),
      //   Position(-15.747196, -21.085074),
      //   Position(-3.363937, -10.733102),
      // ]

      // Coordinates for McVean and Dunegrass area in Brampton, Ontario
      [
        Position(-79.7267, 43.7567), // Southwest
        Position(-79.7067, 43.7567), // Southeast
        Position(-79.7067, 43.7767), // Northeast
        Position(-79.7267, 43.7567), // Back to start to close the polygon
      ]
    ];

    super.initState();
  }

  @override
  void dispose() {
    _mapboxMap?.dispose();
    _selectedBottomNavigationBarItemIndex.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: MapWidget(
          styleUri: dotenv.env[mapboxMapsStyleUri]!,
          onMapCreated: (mapboxMap) {
            _mapboxMap = mapboxMap;
            _mapAnnotations = MapAnnotations(_mapboxMap, _polygonCoordinates);
            // Wait for the style to load before adding annotations
            _mapAnnotations
              ..createPolygonAnnotation()
              // Create a circle annotation with a radius of pixels or meters
              ..createCircleAnnotation(50);

            // Set the camera position to focus on location
            _mapboxMap!.setCamera(
              CameraOptions(
                center: Point(coordinates: Position(-79.7167, 43.7667)),
                zoom: 13,
              ),
            );
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

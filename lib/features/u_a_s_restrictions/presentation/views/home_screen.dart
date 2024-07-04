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
    show MapWidget, MapboxMap, MapboxOptions;
import 'package:sky_ways/core/resources/colors.dart' show hex4285F4, hex5D7285;
import 'package:sky_ways/core/resources/numbers.dart'
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
    // MapboxOptions.setAccessToken(
    //   dotenv.env[mapboxMapsPublicKey]!,
    // );
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
  Widget build(BuildContext context) => Scaffold(
        // body: MapWidget(
        //   styleUri: dotenv.env[mapboxMapsStyleUri]!,
        //   onMapCreated: (mapboxMap) => _mapboxMap = mapboxMap,
        // ),
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
                  ), // minimize the width of dash
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

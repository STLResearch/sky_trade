import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart'
    show MapWidget, MapboxMap, MapboxOptions;
import 'package:sky_ways/core/resources/strings/secret_keys.dart'
    show mapboxMapsPublicKey, mapboxMapsStyleUri;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late final MapboxMap? _mapboxMap;

  @override
  void initState() {
    // MapboxOptions.setAccessToken(
    //   dotenv.env[mapboxMapsPublicKey]!,
    // );

    super.initState();
  }

  @override
  void dispose() {
    _mapboxMap?.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) => Scaffold(
        // body: MapWidget(
        //   styleUri: dotenv.env[mapboxMapsStyleUri]!,
        //   onMapCreated: (mapboxMap) => _mapboxMap = mapboxMap,
        // ),
    bottomNavigationBar: ReusableBottomNav(),
      );
}

class ReusableBottomNav extends StatefulWidget {
  final int initialIndex;

  ReusableBottomNav({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  _ReusableBottomNavState createState() => _ReusableBottomNavState();
}

class _ReusableBottomNavState extends State<ReusableBottomNav> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
            ? Image.asset('assets/images/icon_drone.png', color: const Color(0xFF4285F4), width: 24, height: 24)
            : Image.asset('assets/images/icon_drone.png', color: const Color(0xFF5D7285), width: 24, height: 24),
          label: 'Flight',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
             ? Image.asset('assets/images/world_2_light.png', color: const Color(0xFF4285F4), width: 24, height: 24)
             : Image.asset('assets/images/world_2_light.png', color: const Color(0xFF5D7285), width: 24, height: 24),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? Image.asset('assets/images/sun_light.png', color: const Color(0xFF4285F4), width: 24, height: 24)
              : Image.asset('assets/images/sun_light.png', color: const Color(0xFF5D7285), width: 24, height: 24),
          label: 'Weather',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ? Image.asset('assets/images/group_light.png', color: const Color(0xFF4285F4), width: 24, height: 24)
              : Image.asset('assets/images/group_light.png', color: const Color(0xFF5D7285), width: 24, height: 24),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 4
              ? Image.asset('assets/images/user_light.png', color: const Color(0xFF4285F4), width: 24, height: 24)
              : Image.asset('assets/images/user_light.png', color: const Color(0xFF5D7285), width: 24, height: 24),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF4285F4),
      unselectedItemColor: const Color(0xFF5D7285),
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 11,
        height: 21.37 / 11,
        letterSpacing: 0.01,
      ),
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 11,
        height: 21.37 / 11,
        letterSpacing: 0.01,
      ),
    );
  }
}

import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BorderSide,
        BoxDecoration,
        BuildContext,
        Colors,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        InputDecoration,
        OutlineInputBorder,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        TextEditingController,
        TextFormField,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, MultiBlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex333333, hexB8B8B8;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fourteenDotNil,
        sixtyOneDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        twentyFiveDotNil,
        twentyFourDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show BluetoothAdapterState, WifiAdapterState;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_adapter_state_bloc/bluetooth_adapter_state_bloc.dart'
    show
        BluetoothAdapterStateBloc,
        BluetoothAdapterStateEvent,
        BluetoothAdapterStateState;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc, SearchAutocompleteEvent;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/menu.dart';
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_adapter_state_bloc/wifi_adapter_state_bloc.dart'
    show WifiAdapterStateBloc, WifiAdapterStateEvent, WifiAdapterStateState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<WifiAdapterStateBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<BluetoothAdapterStateBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const SearchCardView(),
      );
}

class SearchCardView extends StatefulWidget {
  const SearchCardView({super.key});

  @override
  State<SearchCardView> createState() => _SearchCardViewState();
}

class _SearchCardViewState extends State<SearchCardView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    context.read<BluetoothAdapterStateBloc>().add(
          const BluetoothAdapterStateEvent.listenBluetoothAdapterState(),
        );
    _maybeListenWifiAdapterState();

    super.initState();
  }

  @override
  void deactivate() {
    context.read<BluetoothAdapterStateBloc>().add(
          const BluetoothAdapterStateEvent.stopListeningBluetoothAdapterState(),
        );
    _maybeStopListeningWifiAdapterState();

    super.deactivate();
  }

  void _maybeListenWifiAdapterState() {
    if (Platform.isAndroid) {
      context.read<WifiAdapterStateBloc>().add(
            const WifiAdapterStateEvent.listenWifiAdapterState(),
          );
    }
  }

  void _maybeStopListeningWifiAdapterState() {
    if (Platform.isAndroid) {
      context.read<WifiAdapterStateBloc>().add(
            const WifiAdapterStateEvent.stopListeningWifiAdapterState(),
          );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        height: sixtyOneDotNil,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadiusDirectional.circular(
            eightDotNil,
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: fifteenDotNil,
            ),
            Assets.svgs.search.svg(),
            const SizedBox(
              width: tenDotNil,
            ),
            Expanded(
              child: TextFormField(
                controller: _searchController,
                cursorColor: hex333333,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: fourteenDotNil,
                      height: twentyOneDotNil / fourteenDotNil,
                      color: hex333333,
                    ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsetsDirectional.zero,
                  hintText: context.localize.searchLocation,
                  hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: hexB8B8B8,
                      ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                onChanged: (value) {
                  context.read<SearchAutocompleteBloc>().add(
                        SearchAutocompleteEvent.autocompleteSearch(
                          query: value,
                        ),
                      );
                },
              ),
            ),
            const SizedBox(
              width: tenDotNil,
            ),
            BlocBuilder<BluetoothAdapterStateBloc, BluetoothAdapterStateState>(
              builder: (_, bluetoothAdapterStateState) =>
                  bluetoothAdapterStateState.maybeWhen(
                gotBluetoothAdapterState: (bluetoothAdapterStateEntity) =>
                    switch (bluetoothAdapterStateEntity.adapterState) {
                  BluetoothAdapterState.on => Assets.svgs.bluetoothOn.svg(
                      width: twentyFourDotNil,
                      height: twentyFiveDotNil,
                    ),
                  _ => Assets.svgs.bluetoothOff.svg(
                      width: twentyFourDotNil,
                      height: twentyFiveDotNil,
                    ),
                },
                orElse: () => Assets.svgs.bluetoothOff.svg(
                  width: twentyFourDotNil,
                  height: twentyFiveDotNil,
                ),
              ),
            ),
            switch (Platform.isAndroid) {
              true => const SizedBox(
                  width: tenDotNil,
                ),
              false => const SizedBox.shrink(),
            },
            switch (Platform.isAndroid) {
              true => BlocBuilder<WifiAdapterStateBloc, WifiAdapterStateState>(
                  builder: (_, wifiAdapterStateState) =>
                      wifiAdapterStateState.maybeWhen(
                    gotWifiAdapterState: (wifiAdapterStateEntity) =>
                        switch (wifiAdapterStateEntity.adapterState) {
                      WifiAdapterState.enabled => Assets.svgs.wifiOn.svg(
                          width: thirtyTwoDotNil,
                          height: twentyFourDotNil,
                        ),
                      _ => Assets.svgs.wifiOff.svg(
                          width: thirtyTwoDotNil,
                          height: twentyFourDotNil,
                        ),
                    },
                    orElse: () => Assets.svgs.wifiOff.svg(
                      width: thirtyTwoDotNil,
                      height: twentyFourDotNil,
                    ),
                  ),
                ),
              false => const SizedBox.shrink(),
            },
            const SizedBox(
              width: tenDotNil,
            ),
            const Menu(),
            const SizedBox(
              width: eighteenDotNil,
            ),
          ],
        ),
      );
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BorderRadiusDirectional,
        BorderSide,
        BoxConstraints,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Colors,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        GestureDetector,
        InkWell,
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
        ValueListenableBuilder,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, MultiBlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex333333, hex595959, hexB8B8B8;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fourteenDotNil,
        sixteenDotNil,
        sixtyOneDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyFourDotNil,
        twentyOneDotNil,
        twoDotNil;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show BluetoothAdapterState, WifiAdapterState;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_adapter_state_bloc/bluetooth_adapter_state_bloc.dart'
    show
        BluetoothAdapterStateBloc,
        BluetoothAdapterStateEvent,
        BluetoothAdapterStateState;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesState;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc, SearchAutocompleteEvent;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/menu_dialog.dart'
    show MenuDialog;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_adapter_state_bloc/wifi_adapter_state_bloc.dart'
    show WifiAdapterStateBloc, WifiAdapterStateEvent, WifiAdapterStateState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SearchCard extends StatelessWidget {
  const SearchCard({
    required this.onSearchFieldTap,
    required this.onSearchFieldCleared,
    required this.onSearchFieldTextChanged,
    required this.tappedSearchResultPlaceName,
    this.onMenuButtonPressed,
    super.key,
  });

  final Function0<void> onSearchFieldTap;

  final Function0<void> onSearchFieldCleared;

  final Function1<String, void> onSearchFieldTextChanged;

  final String? tappedSearchResultPlaceName;

  final Function0<void>? onMenuButtonPressed;

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
        child: SearchCardView(
          onSearchFieldTap: onSearchFieldTap,
          onSearchFieldCleared: onSearchFieldCleared,
          onSearchFieldTextChanged: onSearchFieldTextChanged,
          tappedSearchResultPlaceName: tappedSearchResultPlaceName,
          onMenuButtonPressed: onMenuButtonPressed,
        ),
      );
}

class SearchCardView extends StatefulWidget {
  const SearchCardView({
    required this.onSearchFieldTap,
    required this.onSearchFieldCleared,
    required this.onSearchFieldTextChanged,
    required this.tappedSearchResultPlaceName,
    this.onMenuButtonPressed,
    super.key,
  });

  final Function0<void> onSearchFieldTap;

  final Function0<void> onSearchFieldCleared;

  final Function1<String, void> onSearchFieldTextChanged;

  final String? tappedSearchResultPlaceName;

  final Function0<void>? onMenuButtonPressed;

  @override
  State<SearchCardView> createState() => _SearchCardViewState();
}

class _SearchCardViewState extends State<SearchCardView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();

    _listenBluetoothAdapterState();

    _maybeListenWifiAdapterState();

    super.initState();
  }

  void _listenBluetoothAdapterState() =>
      context.read<BluetoothAdapterStateBloc>().add(
            const BluetoothAdapterStateEvent.listenBluetoothAdapterState(),
          );

  void _maybeListenWifiAdapterState() {
    if (Platform.isAndroid) {
      context.read<WifiAdapterStateBloc>().add(
            const WifiAdapterStateEvent.listenWifiAdapterState(),
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
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
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
                controller: _searchController
                  ..text = (widget.tappedSearchResultPlaceName ??
                      _searchController.text),
                cursorColor: hex333333,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontSize: fourteenDotNil,
                      height: twentyOneDotNil / fourteenDotNil,
                      color: hex333333,
                    ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsetsDirectional.zero,
                  hintText: context.localize.searchLocation,
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
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
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: twentyDotNil,
                    minWidth: twentyDotNil,
                  ),
                  suffixIcon: ValueListenableBuilder(
                    valueListenable: _searchController,
                    builder: (_, searchControllerValue, __) =>
                        switch (searchControllerValue.text.isEmpty) {
                      true => const SizedBox.shrink(),
                      false => BlocBuilder<RetrieveGeometricCoordinatesBloc,
                            RetrieveGeometricCoordinatesState>(
                          builder: (_, retrieveGeometricCoordinatesState) =>
                              retrieveGeometricCoordinatesState.maybeWhen(
                            retrievingCoordinates: () => SizedBox(
                              width: sixteenDotNil,
                              height: sixteenDotNil,
                              child: CircularProgressIndicator(
                                strokeWidth: twoDotNil,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  hex595959,
                                ),
                                backgroundColor: Theme.of(
                                  context,
                                ).scaffoldBackgroundColor,
                              ),
                            ),
                            orElse: () => GestureDetector(
                              onTap: () {
                                _searchController.clear();
                                widget.onSearchFieldCleared();

                                context.read<SearchAutocompleteBloc>().add(
                                      SearchAutocompleteEvent
                                          .autocompleteSearch(
                                        query: _searchController.text,
                                      ),
                                    );
                              },
                              child: Assets.svgs.clear.svg(),
                            ),
                          ),
                        ),
                    },
                  ),
                ),
                onChanged: (value) {
                  widget.onSearchFieldTextChanged(
                    value,
                  );

                  context.read<SearchAutocompleteBloc>().add(
                        SearchAutocompleteEvent.autocompleteSearch(
                          query: value,
                        ),
                      );
                },
                onTap: widget.onSearchFieldTap,
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
            InkWell(
              onTap: widget.onMenuButtonPressed ??
                  () => MenuDialog.show(
                        context,
                      ),
              child: Container(
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: twentyDotNil,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Assets.svgs.meatballsMenu.svg(),
                ),
              ),
            ),
            const SizedBox(
              width: eighteenDotNil,
            ),
          ],
        ),
      );
}

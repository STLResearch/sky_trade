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
        TextEditingController,
        TextFormField,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart' show hex333333, hexB8B8B8;
import 'package:sky_ways/core/resources/numbers/ui.dart'
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
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc, SearchAutocompleteEvent;

class SearchCard extends StatefulWidget {
  const SearchCard({super.key});

  @override
  State<SearchCard> createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
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
            Assets.svgs.bluetoothOn.svg(
              width: twentyFourDotNil,
              height: twentyFiveDotNil,
            ),
            const SizedBox(
              width: tenDotNil,
            ),
            Assets.svgs.wifiOn.svg(
              width: thirtyTwoDotNil,
              height: twentyFourDotNil,
            ),
            const SizedBox(
              width: tenDotNil,
            ),
            Assets.svgs.meatballsMenu.svg(),
            const SizedBox(
              width: eighteenDotNil,
            ),
          ],
        ),
      );
}

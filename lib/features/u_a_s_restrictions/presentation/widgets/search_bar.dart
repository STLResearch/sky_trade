import 'package:flutter/material.dart'
    show
        Border,
        BorderRadiusDirectional,
        BorderSide,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        Expanded,
        InputDecoration,
        ListTile,
        ListView,
        OutlineInputBorder,
        Positioned,
        Row,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextEditingController,
        TextField,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:get_it/get_it.dart';
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart'
    show hex222222, hex333333, hexFFFFFF, hexeBEBEB;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fortyFourDotNil,
        sixteenDotNil,
        sixtyOneDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        twelveDotNil,
        twentyFiveDotNil,
        twentyFourDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/search_autocomplete/domain/repositories/search_autocomplete_repository.dart';
import 'package:sky_ways/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart';

final _sl = GetIt.I;

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchAutocompleteBloc(
        _sl<SearchAutocompleteRepository>(),
      ),
      child: BlocBuilder<SearchAutocompleteBloc, SearchAutocompleteState>(
        builder: (context, state) {
          return Column(
            children: [
              Container(
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
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: context.localize.searchLocation,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: hexFFFFFF,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: hexFFFFFF,
                            ),
                          ),
                        ),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: hex222222,
                            ),
                        onChanged: (query) {
                          context.read<SearchAutocompleteBloc>().add(
                                SearchAutocompleteEvent.autocompleteSearch(
                                  query: query,
                                ),
                              );
                        },
                      ),
                    ),
                    const SizedBox(
                      width: tenDotNil,
                    ),
                    Assets.svgs.bluetooth.svg(
                      width: twentyFourDotNil,
                      height: twentyFiveDotNil,
                    ),
                    const SizedBox(
                      width: tenDotNil,
                    ),
                    Assets.svgs.wifi.svg(
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
              ),
              state.when(
                initial: Container.new,
                // Handle initial state
                gettingSearchAutocomplete: Container.new,
                // Handle getting search autocomplete state
                gotSearchAutocomplete: (searchResultEntities) => SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: searchResultEntities.length,
                    itemBuilder: (context, index) {
                      final suggestion = searchResultEntities[index];
                      return ListTile(
                        title: Text(suggestion.name),
                        subtitle: Text(suggestion.placeFormatted ?? ''),
                        onTap: () {
                          _searchController.text = suggestion.name;
                          // Handle the selection of the suggestion
                        },
                      );
                    },
                  ),
                ),
                failedToGetSearchAutocomplete: (failure) => Container(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;

  const CustomListTile({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: fortyFourDotNil, // Set the height of each list item
      decoration: BoxDecoration(
        border: Border.all(
          color: hexeBEBEB,
        ), // Set the border color and width
      ),
      child: Stack(
        children: [
          Positioned(
            left: sixteenDotNil,
            top: twelveDotNil,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: hex333333,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

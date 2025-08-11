// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsets,
        EdgeInsetsDirectional,
        InkWell,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:sky_trade/core/resources/colors.dart' show hex333333, hex595959;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fourteenDotNil,
        oneDotNil,
        oneSeventyNineDotNil,
        sixDotNil,
        sixteenDotNil,
        sixtyOneDotNil,
        twelveDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/retrieve_geometric_coordinates_bloc/retrieve_geometric_coordinates_bloc.dart'
    show RetrieveGeometricCoordinatesBloc, RetrieveGeometricCoordinatesEvent;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc, SearchAutocompleteState;

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    required this.onSearchResultItemTap,
    super.key,
  });

  final Function1<String, void> onSearchResultItemTap;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<SearchAutocompleteBloc, SearchAutocompleteState>(
            builder: (_, searchAutocompleteState) =>
                searchAutocompleteState.maybeWhen(
              gettingSearchAutocomplete: () => _buildResultsCardWith(
                context,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      hex595959,
                    ),
                    backgroundColor: Theme.of(
                      context,
                    ).scaffoldBackgroundColor,
                  ),
                ),
              ),
              gotSearchAutocomplete: (
                searchResultEntity,
              ) =>
                  _buildResultsCardWith(
                context,
                child: switch (searchResultEntity.suggestions.isNotEmpty) {
                  true => ListView.separated(
                      itemCount: searchResultEntity.suggestions.length,
                      itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          onSearchResultItemTap(
                            searchResultEntity.suggestions[index].name,
                          );

                          context.read<RetrieveGeometricCoordinatesBloc>().add(
                                RetrieveGeometricCoordinatesEvent
                                    .retrieveCoordinates(
                                  id: searchResultEntity.suggestions[index].id,
                                ),
                              );
                        },
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            vertical: twelveDotNil,
                            horizontal: sixteenDotNil,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                searchResultEntity.suggestions[index].name,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(
                                      fontSize: fourteenDotNil,
                                      height: twentyOneDotNil / fourteenDotNil,
                                      color: hex333333,
                                    ),
                              ),
                              if (searchResultEntity.suggestions[index]
                                      .placeFormatted.isNotEmpty ||
                                  searchResultEntity
                                          .suggestions[index].namePreferred !=
                                      null)
                                Text(
                                  switch (searchResultEntity.suggestions[index]
                                      .placeFormatted.isNotEmpty) {
                                    true => searchResultEntity
                                        .suggestions[index].placeFormatted,
                                    false
                                        when searchResultEntity
                                                    .suggestions[index]
                                                    .namePreferred !=
                                                null &&
                                            searchResultEntity
                                                .suggestions[index]
                                                .namePreferred!
                                                .isNotEmpty =>
                                      searchResultEntity
                                          .suggestions[index].namePreferred!,
                                    _ => emptyString,
                                  },
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall,
                                ),
                            ],
                          ),
                        ),
                      ),
                      separatorBuilder: (_, __) => const Divider(
                        height: oneDotNil,
                        indent: sixteenDotNil,
                        endIndent: sixteenDotNil,
                      ),
                    ),
                  false => Center(
                      child: Text(
                        context.localize.yourQueryDidNotYieldAnyResults,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              fontSize: fourteenDotNil,
                              height: twentyOneDotNil / fourteenDotNil,
                              color: hex333333,
                            ),
                      ),
                    ),
                },
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ],
      );

  Widget _buildResultsCardWith(
    BuildContext context, {
    required Widget child,
  }) =>
      Padding(
        padding: const EdgeInsets.only(
          top: sixtyOneDotNil + sixDotNil,
        ),
        child: Container(
          height: oneSeventyNineDotNil,
          decoration: BoxDecoration(
            color: Theme.of(
              context,
            ).scaffoldBackgroundColor,
            borderRadius: BorderRadiusDirectional.circular(
              eightDotNil,
            ),
          ),
          child: child,
        ),
      );
}

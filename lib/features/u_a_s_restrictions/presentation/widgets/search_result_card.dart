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
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:sky_ways/core/resources/colors.dart' show hex333333;
import 'package:sky_ways/core/resources/numbers/ui.dart'
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
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc, SearchAutocompleteState;

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<SearchAutocompleteBloc, SearchAutocompleteState>(
            builder: (_, searchAutocompleteState) =>
                searchAutocompleteState.maybeWhen(
              gettingSearchAutocomplete: () => const SizedBox(
                height: sixtyOneDotNil + sixDotNil,
              ),
              gotSearchAutocomplete: (_) => const SizedBox(
                height: sixtyOneDotNil + sixDotNil,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          BlocBuilder<SearchAutocompleteBloc, SearchAutocompleteState>(
            builder: (_, searchAutocompleteState) =>
                searchAutocompleteState.maybeWhen(
              gettingSearchAutocomplete: () => _buildResultsCardWith(
                context,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).scaffoldBackgroundColor,
                    ),
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
                        onTap: () {},
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
      Container(
        height: oneSeventyNineDotNil,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadiusDirectional.circular(
            eightDotNil,
          ),
        ),
        child: child,
      );
}

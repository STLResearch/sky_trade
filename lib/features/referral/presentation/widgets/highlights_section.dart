import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        Expanded,
        FontWeight,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex868686, hexD9D9D9, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fortyDotNil,
        oneDotNil,
        seventeenDotNil,
        sixtyDotNil,
        tenDotNil,
        thirtyFourDotNil,
        twentyTwoDotFive,
        two;
import 'package:sky_trade/core/utils/enums/ui.dart' show Highlights;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent, HighlightsState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';

class HighlightsSection extends StatefulWidget {
  const HighlightsSection({super.key});

  @override
  State<HighlightsSection> createState() => _HighlightsSectionState();
}

class _HighlightsSectionState extends State<HighlightsSection> {
  @override
  void initState() {
    _maybeGetHighlights();

    super.initState();
  }

  void _maybeGetHighlights() => context.read<HighlightsBloc>().state.whenOrNull(
        initial: _getHighlights,
      );

  void _getHighlights() => context.read<HighlightsBloc>().add(
        const HighlightsEvent.getHighlights(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<HighlightsBloc, HighlightsState>(
        listener: (_, highlightsState) {
          highlightsState.whenOrNull(
            failedToGetHighlights: (_) {
              AlertSnackBar.show(
                context,
                message: context
                    .localize.couldNotGetHighlightsSwipeDownToRefreshThePage,
              );
            },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List<Widget>.generate(
            Highlights.values.length,
            (index) => BlocBuilder<HighlightsBloc, HighlightsState>(
              builder: (_, highlightsState) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      switch (Highlights.values[index]) {
                        Highlights.registeredFriends =>
                          Assets.svgs.userGroup.svg(),
                        Highlights.registeredAirspaces =>
                          Assets.svgs.earth.svg(),
                        Highlights.validatedProperties =>
                          Assets.svgs.home.svg(),
                      },
                      const SizedBox(
                        width: seventeenDotNil,
                      ),
                      Skeletonizer(
                        effect: highlightsState.maybeWhen(
                          failedToGetHighlights: (_) => const SoldColorEffect(
                            color: hexEBEBF4,
                          ),
                          orElse: () => ShimmerEffect(
                            highlightColor: Theme.of(
                              context,
                            ).scaffoldBackgroundColor,
                          ),
                        ),
                        enabled: highlightsState.maybeWhen(
                          gotHighlights: (_) => false,
                          orElse: () => true,
                        ),
                        child: Text(
                          highlightsState.maybeWhen(
                            gotHighlights: (highlightsEntity) =>
                                switch (Highlights.values[index]) {
                              Highlights.registeredFriends =>
                                highlightsEntity.registeredFriends,
                              Highlights.registeredAirspaces =>
                                highlightsEntity.registeredAirspaces,
                              Highlights.validatedProperties =>
                                highlightsEntity.validatedProperties,
                            }
                                    .toString(),
                            orElse: () => BoneMock.chars(
                              two,
                            ),
                          ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: fortyDotNil,
                                height: sixtyDotNil / fortyDotNil,
                                color: hex4285F4,
                              ),
                        ),
                      ),
                      const SizedBox(
                        width: seventeenDotNil,
                      ),
                      Expanded(
                        child: Text(
                          switch (Highlights.values[index]) {
                            Highlights.registeredFriends =>
                              context.localize.registeredFriends,
                            Highlights.registeredAirspaces =>
                              context.localize.registeredAirspaces,
                            Highlights.validatedProperties =>
                              context.localize.validatedProperties,
                          },
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                                fontSize: fifteenDotNil,
                                height: twentyTwoDotFive / fifteenDotNil,
                                color: hex868686,
                              ),
                        ),
                      ),
                    ],
                  ),
                  switch (Highlights.values[index] ==
                          Highlights.registeredFriends ||
                      Highlights.values[index] ==
                          Highlights.registeredAirspaces) {
                    true => const SizedBox(
                        height: tenDotNil,
                      ),
                    false => const SizedBox.shrink(),
                  },
                  switch (Highlights.values[index] ==
                          Highlights.registeredFriends ||
                      Highlights.values[index] ==
                          Highlights.registeredAirspaces) {
                    true => const SizedBox(
                        width: thirtyFourDotNil,
                        child: Divider(
                          height: oneDotNil,
                          thickness: oneDotNil,
                          color: hexD9D9D9,
                        ),
                      ),
                    false => const SizedBox.shrink(),
                  },
                  switch (Highlights.values[index] ==
                          Highlights.registeredFriends ||
                      Highlights.values[index] ==
                          Highlights.registeredAirspaces) {
                    true => const SizedBox(
                        height: tenDotNil,
                      ),
                    false => const SizedBox.shrink(),
                  },
                ],
              ),
            ),
          ),
        ),
      );
}

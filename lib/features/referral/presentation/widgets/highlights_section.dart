import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        PlaceholderAlignment,
        RichText,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex868686, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fortyDotNil,
        seventeenDotNil,
        sixtyDotNil,
        twentyTwoDotFive,
        two;
import 'package:sky_trade/core/utils/enums/ui.dart' show Highlights;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent, HighlightsState;

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
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List<Widget>.generate(
          Highlights.values.length,
          (index) => BlocBuilder<HighlightsBloc, HighlightsState>(
            builder: (_, highlightsState) => RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: _buildHighlightIconUsing(
                      index: index,
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: seventeenDotNil,
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  WidgetSpan(
                    child: Skeletonizer(
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
                              _computeHighlightValueUsing(
                            index: index,
                            registeredFriends:
                                highlightsEntity.registeredFriends,
                            registeredAirspaces:
                                highlightsEntity.registeredAirspaces,
                            validatedProperties:
                                highlightsEntity.validatedProperties,
                          ),
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
                    alignment: PlaceholderAlignment.middle,
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: seventeenDotNil,
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  WidgetSpan(
                    child: Text(
                      _computeHighlightUsing(
                        context,
                        index: index,
                      ),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotFive / fifteenDotNil,
                            color: hex868686,
                          ),
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  SvgPicture _buildHighlightIconUsing({
    required int index,
  }) =>
      switch (Highlights.values[index]) {
        Highlights.registeredFriends => Assets.svgs.userGroup.svg(),
        Highlights.registeredAirspaces => Assets.svgs.earth.svg(),
        Highlights.validatedProperties => Assets.svgs.home.svg(),
      };

  String _computeHighlightValueUsing({
    required int index,
    required int registeredFriends,
    required int registeredAirspaces,
    required int validatedProperties,
  }) =>
      switch (Highlights.values[index]) {
        Highlights.registeredFriends => registeredFriends,
        Highlights.registeredAirspaces => registeredAirspaces,
        Highlights.validatedProperties => validatedProperties,
      }
          .toString();

  String _computeHighlightUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (Highlights.values[index]) {
        Highlights.registeredFriends => context.localize.registeredFriends,
        Highlights.registeredAirspaces => context.localize.registeredAirspaces,
        Highlights.validatedProperties => context.localize.validatedProperties,
      };
}

import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        RichText,
        SizedBox,
        StatelessWidget,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hex868686;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fortyDotNil,
        seventeenDotNil,
        sixtyDotNil,
        twentyTwoDotFive;
import 'package:sky_trade/core/utils/enums/ui.dart' show Highlights;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({
    required this.registeredFriends,
    required this.registeredAirspaces,
    required this.validatedProperties,
    super.key,
  });

  final String registeredFriends;
  final String registeredAirspaces;
  final String validatedProperties;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List<Widget>.generate(
          Highlights.values.length,
          (index) => _buildHighlightUsing(
            context,
            highlightIcon: _buildHighlightIconUsing(
              index: index,
            ),
            highlightValue: _computeHighlightValueUsing(
              index: index,
            ),
            highlight: _computeHighlightUsing(
              context,
              index: index,
            ),
          ),
        ),
      );

  Widget _buildHighlightUsing(
    BuildContext context, {
    required SvgPicture highlightIcon,
    required String highlightValue,
    required String highlight,
  }) =>
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            WidgetSpan(
              child: highlightIcon,
            ),
            const WidgetSpan(
              child: SizedBox(
                width: seventeenDotNil,
              ),
            ),
            TextSpan(
              text: highlightValue,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: fortyDotNil,
                    height: sixtyDotNil / fortyDotNil,
                    color: hex4285F4,
                  ),
            ),
            const WidgetSpan(
              child: SizedBox(
                width: seventeenDotNil,
              ),
            ),
            TextSpan(
              text: highlight,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(
                    fontSize: fifteenDotNil,
                    height: twentyTwoDotFive / fifteenDotNil,
                    color: hex868686,
                  ),
            ),
          ],
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
  }) =>
      switch (Highlights.values[index]) {
        Highlights.registeredFriends => registeredFriends,
        Highlights.registeredAirspaces => registeredAirspaces,
        Highlights.validatedProperties => validatedProperties,
      };

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

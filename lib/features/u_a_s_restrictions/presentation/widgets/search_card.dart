import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        Expanded,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart' show hex222222;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fourDotNil,
        sixteenDotNil,
        sixtyOneDotNil,
        tenDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

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
              child: Text(
                context.localize.searchLocation,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: hex222222,
                    ),
              ),
            ),
            Assets.svgs.meatballsMenu.svg(
              width: fourDotNil,
              height: sixteenDotNil,
            ),
            const SizedBox(
              width: eighteenDotNil,
            ),
          ],
        ),
      );
}

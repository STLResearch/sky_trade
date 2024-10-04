import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Flexible,
        FontWeight,
        GridView,
        LayoutBuilder,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        NeverScrollableScrollPhysics,
        Padding,
        Radius,
        RichText,
        Row,
        SizedBox,
        SliverGridDelegateWithFixedCrossAxisCount,
        Spacer,
        StatelessWidget,
        Text,
        TextSpan,
        TextStyle,
        Theme,
        Widget,
        WidgetSpan;
import 'package:sky_ways/core/assets/generated/assets.gen.dart';
import 'package:sky_ways/core/assets/generated/fonts.gen.dart';
import 'package:sky_ways/core/resources/colors.dart' show hex4285F4, hex838187;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        five,
        fiveDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixteenDotOne,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        thirtyThreeDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        two,
        twoDotNil,
        zero;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show asterisk, forwardSlash;

class UASDetails extends StatelessWidget {
  const UASDetails({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, boxConstraints) => Container(
          constraints: BoxConstraints(
            minWidth: boxConstraints.maxWidth,
          ),
          decoration: BoxDecoration(
            color: Theme.of(
              context,
            ).scaffoldBackgroundColor,
            borderRadius: const BorderRadiusDirectional.vertical(
              top: Radius.circular(
                thirtyDotNil,
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: thirteenDotNil,
              ),
              Container(
                width: seventyDotNil,
                height: nineDotNil,
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: thirtyNineDotNil,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).bottomSheetTheme.dragHandleColor,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: twentyOneDotNil,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  Assets.svgs.iconDroneBlack.svg(),
                  const SizedBox(
                    width: fiveDotNil,
                  ),
                  Flexible(
                    child: Text(
                      asterisk,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: five,
                  itemBuilder: (_, index) => Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: index == zero ? fifteenDotNil : tenDotNil,
                      start: twentyNineDotNil,
                      end: twentyNineDotNil,
                    ),
                    child: _buildSectionUsing(
                      context,
                      title: _computeTitle(),
                      content: _computeContent(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildSectionUsing(
    BuildContext context, {
    required String title,
    required Map<String, String> content,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: FontFamily.arial,
              fontWeight: FontWeight.w400,
              fontSize: fourteenDotNil,
              height: sixteenDotOne / fourteenDotNil,
              color: hex4285F4,
            ),
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          const Divider(
            height: oneDotNil,
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          GridView.builder(
            padding: EdgeInsetsDirectional.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: two,
              crossAxisSpacing: thirtyThreeDotNil,
              childAspectRatio: twoDotNil,
            ),
            itemCount: content.length,
            itemBuilder: (_, index) => RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: content.entries
                        .elementAt(
                          index,
                        )
                        .key,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontSize: tenDotNil,
                          height: fifteenDotNil / tenDotNil,
                          color: hex838187,
                        ),
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: tenDotNil,
                    ),
                  ),
                  TextSpan(
                    text: content.entries
                        .elementAt(
                          index,
                        )
                        .value,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(
                          fontSize: tenDotNil,
                          height: fifteenDotNil / tenDotNil,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  String _computeTitle() => asterisk;

  Map<String, String> _computeContent() => {
        for (final e in Iterable.generate(
          five,
          (innerIndex) => innerIndex.toString(),
        ))
          forwardSlash + e: forwardSlash + e,
      };
}

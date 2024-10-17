import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Column,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        Flexible,
        InkWell,
        LayoutBuilder,
        ListView,
        MainAxisSize,
        MediaQuery,
        Offset,
        Padding,
        Radius,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget,
        showModalBottomSheet;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart' show hex3A4DE9;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiveDotNil,
        fourteenDotNil,
        minusTenDotNil,
        nilDotNil,
        nilDotOneFive,
        nineDotNil,
        one,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyFourDotNil,
        thirtyNineDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentyTwoDotNil,
        twoDotNil;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/u_a_s_details.dart';

class UASList extends StatelessWidget {
  const UASList({
    required this.uasEntities,
    super.key,
  });

  final List<UASEntity> uasEntities;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, boxConstraints) => Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height / twoDotNil,
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
              Text(
                uasEntities.length.toString() +
                    whiteSpace +
                    switch (uasEntities.length) {
                      one => context.localize.drone,
                      _ => context.localize.drones,
                    },
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: uasEntities.length,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: twentyNineDotNil,
                    ),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(
                        top: fifteenDotNil,
                        bottom: index == uasEntities.length - one
                            ? twentyDotNil
                            : nilDotNil,
                      ),
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: fiveDotNil,
                        horizontal: twentyTwoDotNil,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).bottomSheetTheme.backgroundColor,
                        borderRadius: BorderRadiusDirectional.circular(
                          eightDotNil,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: hex3A4DE9.withOpacity(
                              nilDotOneFive,
                            ),
                            spreadRadius: minusTenDotNil,
                            blurRadius: thirtyFourDotNil,
                            offset: const Offset(
                              nilDotNil,
                              twelveDotNil,
                            ),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (_) => const UASDetails(),
                          );
                        },
                        child: Row(
                          children: [
                            Assets.svgs.iconDroneBlack.svg(),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            Expanded(
                              child: Text(
                                uasEntities[index]
                                    .remoteData
                                    .connection
                                    .macAddress,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: fourteenDotNil,
                                      height: twentyOneDotNil / fourteenDotNil,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            Assets.svgs.arrowRight.svg(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (uasEntities.isEmpty)
                const SizedBox(
                  height: twentyDotNil,
                ),
            ],
          ),
        ),
      );
}

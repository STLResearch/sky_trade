// SPDX-License-Identifier: UNLICENSED
                            
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
        Expanded,
        Flexible,
        FontWeight,
        InkWell,
        LayoutBuilder,
        MainAxisAlignment,
        MainAxisSize,
        MediaQuery,
        Padding,
        Radius,
        Row,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex1E1E1E, hex9D9D9D, hexF4F4F4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFiveDotEightFive,
        twentyFourDotNil,
        twentyNineDotNil,
        twentySixDotNil,
        twentyTwoDotNil,
        twoDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class RestrictionInfo extends StatelessWidget {
  const RestrictionInfo({
    required this.restrictionEntity,
    super.key,
  });

  final RestrictionEntity restrictionEntity;

  @override
  Widget build(BuildContext context) => BlocProvider<HandleLinkBloc>(
        create: (_) => serviceLocator(),
        child: RestrictionInfoView(
          restrictionEntity: restrictionEntity,
        ),
      );
}

class RestrictionInfoView extends StatelessWidget {
  const RestrictionInfoView({
    required this.restrictionEntity,
    super.key,
  });

  final RestrictionEntity restrictionEntity;

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
                height: sixDotNil,
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: fifteenDotNil,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: twentySixDotNil,
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            restrictionEntity.restrictionSheetTitleInfoAsset
                                .svg(
                              width: twentyFourDotNil,
                              height: twentyFourDotNil,
                            ),
                            const SizedBox(
                              width: tenDotNil,
                            ),
                            Expanded(
                              child: Text(
                                restrictionEntity.computeRestrictionTitleUsing(
                                  context: context,
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: twentyTwoDotNil,
                                      height: thirtyTwoDotNil / twentyTwoDotNil,
                                      color: hex1E1E1E,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: fifteenDotNil,
                      ),
                      const Divider(
                        height: oneDotNil,
                        thickness: oneDotNil,
                        indent: twentyNineDotNil,
                        endIndent: twentyNineDotNil,
                      ),
                      const SizedBox(
                        height: fifteenDotNil,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: twentyNineDotNil,
                        ),
                        child: Row(
                          children: [
                            restrictionEntity.restrictionSheetAddressInfoAsset
                                .svg(
                              width: thirtyDotNil,
                              height: thirtyDotNil,
                            ),
                            const SizedBox(
                              width: fourteenDotNil,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    context.localize.address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: hex9D9D9D,
                                        ),
                                  ),
                                  Text(
                                    restrictionEntity.properties.country,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: hex1E1E1E,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: fifteenDotNil,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: twentyNineDotNil,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: hexF4F4F4,
                            borderRadius: BorderRadiusDirectional.circular(
                              eightDotNil,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(
                              tenDotNil,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  restrictionEntity.properties.message,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(
                                        color: hex1E1E1E,
                                      ),
                                ),
                                switch (restrictionEntity
                                    .properties.additionLinks.isNotEmpty) {
                                  true => const SizedBox(
                                      height: tenDotNil,
                                    ),
                                  false => const SizedBox.shrink(),
                                },
                                if (restrictionEntity
                                    .properties.additionLinks.isNotEmpty)
                                  ...List<Widget>.generate(
                                    restrictionEntity
                                        .properties.additionLinks.length,
                                    (index) => Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: tenDotNil,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              restrictionEntity.properties
                                                  .additionLinks[index].name,
                                              style: Theme.of(
                                                context,
                                              ).textTheme.bodySmall?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: hex1E1E1E,
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: fourteenDotNil,
                                          ),
                                          InkWell(
                                            onTap: () => context
                                                .read<HandleLinkBloc>()
                                                .add(
                                                  HandleLinkEvent.handle(
                                                    link: restrictionEntity
                                                        .properties
                                                        .additionLinks[index]
                                                        .link,
                                                  ),
                                                ),
                                            child: Assets.svgs.arrow.svg(
                                              width: twentyFiveDotEightFive,
                                              height: twentySixDotNil,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: twentyDotNil,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

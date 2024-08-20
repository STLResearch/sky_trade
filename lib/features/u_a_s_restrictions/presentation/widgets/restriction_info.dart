import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        Radius,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/colors.dart'
    show hex1E1E1E, hex9D9D9D, hexF4F4F4;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyFiveDotEightFive,
        twentyFourDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentySixDotNil,
        twentyTwoDotNil;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show arrowAssetPath;
import 'package:sky_ways/core/utils/extensions/restriction_entity_extensions.dart';
import 'package:sky_ways/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

class RestrictionInfo extends StatelessWidget {
  const RestrictionInfo({
    required this.restrictionEntity,
    super.key,
  });

  final RestrictionEntity restrictionEntity;

  @override
  Widget build(BuildContext context) => Container(
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
              height: twentyOneDotNil,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: twentySixDotNil,
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    restrictionEntity.restrictionSheetTitleInfoAssetPath,
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
                  SvgPicture.asset(
                    restrictionEntity.restrictionSheetAddressInfoAssetPath,
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
                          AppLocalizations.of(context)!.address,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: hex9D9D9D,
                                  ),
                        ),
                        Text(
                          restrictionEntity.country,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
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
                        restrictionEntity.message,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              color: hex1E1E1E,
                            ),
                      ),
                      switch (restrictionEntity.additionLinks.isNotEmpty) {
                        true => const SizedBox(
                            height: tenDotNil,
                          ),
                        false => const SizedBox.shrink(),
                      },
                      if (restrictionEntity.additionLinks.isNotEmpty)
                        ...List<Widget>.generate(
                          restrictionEntity.additionLinks.length,
                          (index) => Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: tenDotNil,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    restrictionEntity.additionLinks[index].name,
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
                                  onTap: () =>
                                      context.read<HandleLinkBloc>().add(
                                            HandleLinkEvent.handle(
                                              link: restrictionEntity
                                                  .additionLinks[index].link,
                                            ),
                                          ),
                                  child: SvgPicture.asset(
                                    arrowAssetPath,
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
      );
}

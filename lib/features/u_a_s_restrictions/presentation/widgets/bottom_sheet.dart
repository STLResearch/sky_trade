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
    show
        arrowAssetPath,
        checkAssetPath,
        dangerAssetPath,
        infoAssetPath,
        locationDangerRestrictedAssetPath,
        locationProhibitedAssetPath;
import 'package:sky_ways/core/utils/enums/networking.dart' show RestrictionType;
import 'package:sky_ways/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    required this.restriction,
    super.key,
  });

  final RestrictionEntity restriction;

  String _getRestrictionTypeString(RestrictionType type) => switch (type) {
        RestrictionType.danger => 'Controlled Airspace',
        RestrictionType.prohibited => 'Uncontrolled Airspace',
        RestrictionType.restricted => 'Flight Restricted Airspace',
      };

  String _getSvgAssetPaths(RestrictionType type) => switch (type) {
        RestrictionType.danger => infoAssetPath,
        RestrictionType.prohibited => checkAssetPath,
        RestrictionType.restricted => dangerAssetPath,
      };

  String _getLocationAssetPaths(RestrictionType type) => switch (type) {
        RestrictionType.prohibited => locationProhibitedAssetPath,
        _ => locationDangerRestrictedAssetPath,
      };

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.vertical(
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
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: twentyNineDotNil,
                end: twentyNineDotNil,
                top: twentyOneDotNil,
                bottom: twentyDotNil,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        _getSvgAssetPaths(
                          restriction.type,
                        ),
                        width: twentyFourDotNil,
                        height: twentyFourDotNil,
                      ),
                      const SizedBox(
                        width: tenDotNil,
                      ),
                      Expanded(
                        child: Text(
                          _getRestrictionTypeString(
                            restriction.type,
                          ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: twentyTwoDotNil,
                                height: thirtyTwoDotNil / twentyTwoDotNil,
                                color: hex1E1E1E,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  const Divider(
                    height: oneDotNil,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        _getLocationAssetPaths(
                          restriction.type,
                        ),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: hex9D9D9D,
                                  ),
                            ),
                            Text(
                              restriction.country,
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
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Container(
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
                            restriction.message,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  color: hex1E1E1E,
                                ),
                          ),
                          if (restriction.additionLinks.isNotEmpty)
                            const SizedBox(
                              height: tenDotNil,
                            ),
                          if (restriction.additionLinks.isNotEmpty)
                            ...List<Widget>.generate(
                              restriction.additionLinks.length,
                              (index) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: tenDotNil,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      restriction.additionLinks[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: hex1E1E1E,
                                          ),
                                    ),
                                    const SizedBox(
                                      width: tenDotNil,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          context.read<HandleLinkBloc>().add(
                                                HandleLinkEvent.handle(
                                                  link: restriction
                                                      .additionLinks[index]
                                                      .link,
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
                  // const SizedBox(height: fifteenDotNil),
                ],
              ),
            ),
          ],
        ),
      );
}

// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        FractionColumnWidth,
        MainAxisSize,
        MediaQuery,
        Padding,
        Radius,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Table,
        TableBorder,
        TableRow,
        Text,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex1E1E1E, hex4285F4, hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eight,
        fifteenDotNil,
        fifteenDotSix,
        nilDotFive,
        nineDotNil,
        one,
        oneDotNil,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyEightDotFive,
        twentyNineDotNil,
        twentyOneDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class SkyPointsRewardDetails extends StatelessWidget {
  const SkyPointsRewardDetails({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.sizeOf(
          context,
        ).width,
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
            Text(
              context.localize.howCanIEarnSkyPoints,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: twentyTwoDotNil,
                    height: thirtyTwoDotNil / twentyTwoDotNil,
                    color: hex1E1E1E,
                  ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            const Divider(
              height: oneDotNil,
              indent: twentyNineDotNil,
              endIndent: twentyNineDotNil,
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: twentyEightDotFive,
                ),
                child: Table(
                  border: TableBorder.all(
                    color: hexE9F5FE,
                  ),
                  columnWidths: const {
                    zero: FractionColumnWidth(
                      nilDotFive,
                    ),
                    one: FractionColumnWidth(
                      nilDotFive,
                    ),
                  },
                  children: List<TableRow>.generate(
                    eight,
                    (tableIndex) => TableRow(
                      children: List<Widget>.generate(
                        two,
                        (tableRowIndex) => Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            vertical: tenDotNil,
                            horizontal: twelveDotNil,
                          ),
                          child: Text(
                            switch (tableRowIndex) {
                              zero => _computeRewardTypeAndPointsAwardedUsing(
                                  context,
                                )
                                    .entries
                                    .elementAt(
                                      tableIndex,
                                    )
                                    .key,
                              _ => _computeRewardTypeAndPointsAwardedUsing(
                                  context,
                                )
                                    .entries
                                    .elementAt(
                                      tableIndex,
                                    )
                                    .value,
                            },
                            style: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: twelveDotNil,
                              height: fifteenDotSix / twelveDotNil,
                              color: switch (tableRowIndex) {
                                zero => null,
                                _ => hex4285F4,
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
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

  Map<String, String> _computeRewardTypeAndPointsAwardedUsing(
    BuildContext context,
  ) =>
      {
        context.localize.accountRegistrationNoKycRequiredToGetThesePoints:
            context.localize.fiveSkyPoints,
        context.localize
                .claimYourAirspaceFullClaimVerifiedAirspaceThisIsPerEveryUniqueClaimedAirspaceKycCompletedIsAPreconditionForThisAllocation:
            context.localize.hundredSkyPoints,
        context.localize
                .forClaimedAirSpaceWhichIsFullyValidatedDoneByTheReferredAccount:
            context.localize
                .hundredSkyPointsToYouAndHundredSkyPointsToYourFriendThisIsPartOfThePointsAllocationTwoPlusTenPercentBonusOnTheReferredIncomeStreamFromAirRightRental,
        context.localize
                .referAFriendFriendRegistersAnAccountButKycOnThatFriendsAccountIsNotRequiredForTheIntroducingAccountToGetTheirSkyPointsFraudulentActivityWillBeMinimizedByTAndCsWhereWeSayWeWillDeductPointsForFraudulentActsIfDiscovered:
            context.localize.fiveSkyPoints,
        context.localize.forMakingAFirstValidBidInTheAuctionHouse:
            context.localize.hundredSkyPoints,
        context.localize
                .claimOrReferOneAirspacesInASpecificAreaNewYorkManhattanAndBoroughsTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford:
            context.localize.boostingSkyPointsEgXThree,
        context.localize.trackADroneWithTheRadarApp:
            context.localize.fiveSkyPointsPerDrone,
        context.localize
                .trackADroneWithTheRadarAppInASpecificAreaTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford:
            context.localize.boostingSkyPointsEgXThree,
      };
}

import 'package:flutter/material.dart'
    show
        Alignment,
        AppBar,
        Border,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Center,
        Clip,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Expanded,
        FontWeight,
        GestureDetector,
        IconButton,
        LinearGradient,
        LinearProgressIndicator,
        ListTile,
        MainAxisAlignment,
        MaterialPageRoute,
        MediaQuery,
        Navigator,
        Padding,
        Positioned,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextStyle,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart' show FontFamily;
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex000000,
        hex0653EA,
        hex161616,
        hex1E1E1E,
        hex222222,
        hex4040FF,
        hex626262,
        hex68DEFF,
        hexCEEAFF,
        hexD0EBFF,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fiftyDotNil,
        fourDotNil,
        fourteenDotNil,
        minusNilDotNineEight,
        minusNilDotOne,
        minusNilDotTwoTwo,
        minusOneFiftyFiveDotNil,
        nilDotEightSixNilTwo,
        nilDotFive,
        nilDotNil,
        nilDotNilTwo,
        nilDotNine,
        nilDotNineEight,
        nilDotOne,
        nilDotOneSevenTwoTwo,
        nilDotOneThreeSixSix,
        nilDotThree,
        nilDotThreeFiveFourEight,
        nilDotTwoFive,
        nilDotTwoTwo,
        nineDotNil,
        oneDotFiveSeven,
        oneDotNil,
        sixteenDotNil,
        ten,
        tenDotNil,
        thirtyTwoDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twoDotSixSeven,
        twoDotTwo,
        twoDotTwoEight,
        twoFiftyFive,
        twoHundredDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_bloc.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/badge_description.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard_table.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/task_description.dart';

class PointsScreen extends StatelessWidget {
  const PointsScreen({super.key});

  void _showBadgeDescription(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const BadgeDescription();
      },
    );
  }

  void _showTaskDescription(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const TaskDescription();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth - thirtyTwoDotNil;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: nilDotNil,
        leading: IconButton(
          icon: Assets.svgs.chevronLeft.svg(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          context.localize.pointsProgram,
          style: const TextStyle(
            fontFamily: FontFamily.chakraPetch,
            color: hexFFFFFF,
            fontSize: thirtyTwoDotNil,
            fontWeight: FontWeight.w600,
            height: nilDotNil,
            letterSpacing: nilDotNil,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              hex4040FF,
              hex68DEFF,
              hexFFFFFF,
            ],
            stops: [
              nilDotNilTwo,
              nilDotOneSevenTwoTwo,
              nilDotThreeFiveFourEight,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(sixteenDotNil),
              child: Column(
                children: [
                  Text(
                    context.localize.completeTasksToEarnSkyPoints,
                    style: const TextStyle(
                      color: hexFFFFFF,
                      fontSize: fourteenDotNil,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w300,
                      letterSpacing: nilDotNil,
                      height: oneDotFiveSeven,
                    ),
                  ),
                  const SizedBox(height: twentyFourDotNil),
                  Container(
                    width: cardWidth,
                    padding: const EdgeInsets.fromLTRB(
                      sixteenDotNil,
                      thirtyTwoDotNil,
                      sixteenDotNil,
                      thirtyTwoDotNil,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(nilDotNine),
                      borderRadius: BorderRadius.circular(twentyDotNil),
                      gradient: const LinearGradient(
                        begin: Alignment(nilDotNineEight, minusNilDotTwoTwo),
                        end: Alignment(minusNilDotNineEight, nilDotTwoTwo),
                        colors: [
                          Color.fromRGBO(
                            twoFiftyFive,
                            twoFiftyFive,
                            twoFiftyFive,
                            nilDotFive,
                          ),
                          Color.fromRGBO(
                            twoFiftyFive,
                            twoFiftyFive,
                            twoFiftyFive,
                            nilDotTwoFive,
                          ),
                        ],
                        stops: [nilDotOneThreeSixSix, nilDotEightSixNilTwo],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(nilDotOne),
                          blurRadius: twentyDotNil,
                        ),
                      ],
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: minusOneFiftyFiveDotNil,
                          left: nilDotNil,
                          right: 0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => _showBadgeDescription(context),
                              child: Assets.svgs.level2.svg(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: twentyDotNil),
                          child: Column(
                            children: [
                              Text(
                                context.localize.advancedTracker,
                                style: const TextStyle(
                                  fontFamily: FontFamily.chakraPetch,
                                  fontSize: twentyDotNil,
                                  fontWeight: FontWeight.w600,
                                  height: nilDotNil,
                                  letterSpacing: minusNilDotOne,
                                  color: hex161616,
                                ),
                              ),
                              const SizedBox(height: eightDotNil),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.localize.level2,
                                    style: const TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: tenDotNil,
                                      fontWeight: FontWeight.w300,
                                      height: oneDotNil,
                                      letterSpacing: minusNilDotOne,
                                      color: hex626262,
                                    ),
                                  ),
                                  Text(
                                    context.localize.twentyOfTwoHundredPoints,
                                    style: const TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: tenDotNil,
                                      fontWeight: FontWeight.w300,
                                      height: nilDotNil,
                                      letterSpacing: minusNilDotOne,
                                      color: hex626262,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: eightDotNil),
                              LinearProgressIndicator(
                                value: twentyDotNil / twoHundredDotNil,
                                backgroundColor:
                                    hexFFFFFF.withOpacity(nilDotThree),
                                color: hex1E1E1E,
                                minHeight: twelveDotNil,
                                borderRadius: BorderRadius.circular(
                                  fiftyDotNil,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: sixteenDotNil),
                  Container(
                    padding: const EdgeInsets.all(tenDotNil),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.localize.dailyQuests,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontSize: twentyDotNil,
                            fontWeight: FontWeight.w600,
                            height: oneDotNil,
                            letterSpacing: minusNilDotOne,
                            color: hex161616,
                          ),
                        ),
                        const SizedBox(height: sixteenDotNil),
                        _buildQuestItem(
                          context,
                          context.localize.track5Drones,
                          ten,
                          context.localize.nilUponFive,
                          false,
                          false,
                        ),
                        _buildQuestItem(
                          context,
                          context.localize.track5Drones,
                          ten,
                          context.localize.nilUponFive,
                          false,
                          false,
                        ),
                        _buildQuestItem(
                          context,
                          context.localize.track5Drones,
                          ten,
                          context.localize.nilUponFive,
                          false,
                          false,
                        ),
                        _buildQuestItem(
                          context,
                          context.localize.track5Drones,
                          ten,
                          context.localize.nilUponFive,
                          true,
                          true,
                        ),
                        const SizedBox(height: twentyDotNil),
                        Text(
                          context.localize.howItWorks,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontSize: twentyDotNil,
                            fontWeight: FontWeight.w600,
                            height: oneDotNil,
                            letterSpacing: minusNilDotOne,
                            color: hex161616,
                          ),
                        ),
                        const SizedBox(height: eightDotNil),
                        Text(
                          context.localize
                              .earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnBonusPointsAndClimbTheRanksTheMoreYouContributeTheMoreTouLevelUp,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontSize: fourteenDotNil,
                            fontWeight: FontWeight.w300,
                            height: oneDotFiveSeven,
                            letterSpacing: nilDotNil,
                            color: hex626262,
                          ),
                        ),
                        const SizedBox(height: twentyDotNil),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(twentyDotNil),
                            border: Border.all(
                              color: hex000000.withOpacity(nilDotOne),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              context.localize.viewLeaderboard,
                              style: const TextStyle(
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                fontSize: fourteenDotNil,
                                height: twoDotTwoEight,
                                letterSpacing: nilDotNil,
                                color: hex222222,
                              ),
                            ),
                            trailing: Container(
                              decoration: BoxDecoration(
                                color: hex1E1E1E,
                                borderRadius: BorderRadius.circular(nineDotNil),
                              ),
                              padding: const EdgeInsets.all(fourDotNil),
                              child: Assets.svgs.arrowRightWhite.svg(),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (context) => BlocProvider(
                                    create: (context) =>
                                        LeaderboardBloc(),
                                    child: const PointsLeaderboard(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestItem(
    BuildContext context,
    String title,
    int points,
    String progress,
    bool isActive,
    bool isCompleted,
  ) {
    return GestureDetector(
      onTap: () => _showTaskDescription(context),
      child: Container(
        margin: const EdgeInsets.only(bottom: twentyFourDotNil),
        padding: const EdgeInsets.symmetric(
          vertical: eightDotNil,
          horizontal: sixteenDotNil,
        ),
        decoration: BoxDecoration(
          color: isActive ? hexD0EBFF : Colors.white,
          borderRadius: BorderRadius.circular(tenDotNil),
          border: Border.all(
            color: hex000000.withOpacity(nilDotOne),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontSize: fourteenDotNil,
                      fontWeight: FontWeight.w500,
                      height: twoDotTwoEight,
                      letterSpacing: nilDotNil,
                    ),
                  ),
                  const SizedBox(height: fourDotNil),
                  Row(
                    children: [
                      Assets.svgs.points.svg(),
                      const SizedBox(width: fourDotNil),
                      Text(
                        isActive ? 'Claim +$points points' : '+ $points points',
                        //needs review
                        style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: tenDotNil,
                          fontWeight: FontWeight.w400,
                          height: twoDotTwo,
                          letterSpacing: nilDotNil,
                          color: hex222222,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: fourDotNil,
                horizontal: fourDotNil,
              ),
              decoration: BoxDecoration(
                color: isCompleted ? hex0653EA : hexCEEAFF,
                borderRadius: BorderRadius.circular(nineDotNil),
              ),
              child: isCompleted
                  ? Assets.svgs.check.svg()
                  : Text(
                      progress,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontSize: twelveDotNil,
                        fontWeight: FontWeight.w500,
                        height: twoDotSixSeven,
                        letterSpacing: nilDotNil,
                        color: hex222222,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

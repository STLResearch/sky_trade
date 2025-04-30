import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        Alignment,
        BackdropFilter,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        ClipRRect,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        ListView,
        Padding,
        Row,
        ScrollController,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        TextButton,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex1E1E1E,
        hex222222,
        hex3478F5,
        hex989898,
        hexCEEAFF,
        hexDEDEDE,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiftyEight,
        fourDotNil,
        fourteenDotNil,
        minusNilDotNineEight,
        minusNilDotTwoTwo,
        nilDotEightSixNilTwo,
        nilDotNil,
        nilDotNineEight,
        nilDotOneSix,
        nilDotOneThreeSixSix,
        nilDotTwoFive,
        nilDotTwoTwo,
        one,
        oneDotFiveSeven,
        oneDotNil,
        oneDotSevenOne,
        seven,
        sixteenDotNil,
        thirty,
        thirtyDotNil,
        thirtyEightDotNil,
        thirtyTwoDotNil,
        threeDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twoDotTwoEight,
        twoFiftyFive,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/domain/entities/leaderboard_entry_entity.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_bloc.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_event.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_bloc/leaderboard_state.dart';

class PointsLeaderboardTable extends StatefulWidget {
  const PointsLeaderboardTable({super.key});

  @override
  State<PointsLeaderboardTable> createState() => _PointsLeaderboardTableState();
}

class _PointsLeaderboardTableState extends State<PointsLeaderboardTable> {
  final ValueNotifier<int> _currentPageNotifier = ValueNotifier<int>(1);
  late final ScrollController _paginationController;

  @override
  void initState() {
    super.initState();
    _paginationController = ScrollController();
    _loadLeaderboardData();
  }

  void _loadLeaderboardData() {
    context.read<LeaderboardBloc>().add(
          FetchPointsLeaderboard(page: _currentPageNotifier.value),
        );
  }

  void _goToPage(int page) {
    _currentPageNotifier.value = page;
    _loadLeaderboardData();
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return hex3478F5;
      case 2:
        return hex3478F5;
      case 3:
        return hex3478F5;
      default:
        return hexDEDEDE;
    }
  }

  @override
  void dispose() {
    _paginationController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: twentyFourDotNil),
        child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
          builder: (context, state) {
            if (state is LeaderboardLoading && state is! LeaderboardLoaded) {
              return const Center(child: CircularProgressIndicator());
            }

            final entries = state is LeaderboardLoaded
                ? state.entries
                : List.generate(
                    9,
                    (index) => LeaderboardEntryEntity(
                      userId: 'asdw21123',
                      points: index == zero ? fiftyEight : thirty,
                      rank: index + one,
                    ),
                  );

            final totalPages =
                state is LeaderboardLoaded ? state.totalPages : 10;

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: entries.length,
                    itemBuilder: (context, index) {
                      final entry = entries[index];
                      return Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: eightDotNil),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(fifteenDotNil),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: twentyDotNil,
                              sigmaY: twentyDotNil,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(sixteenDotNil),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(
                                    nilDotNineEight,
                                    minusNilDotTwoTwo,
                                  ),
                                  end: Alignment(
                                    minusNilDotNineEight,
                                    nilDotTwoTwo,
                                  ),
                                  colors: [
                                    Color.fromRGBO(
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      nilDotTwoFive,
                                    ),
                                    Color.fromRGBO(
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      twoFiftyFive,
                                      nilDotOneSix,
                                    ),
                                  ],
                                  stops: [
                                    nilDotOneThreeSixSix,
                                    nilDotEightSixNilTwo,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  fifteenDotNil,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: twentyFourDotNil,
                                    height: twentyFourDotNil,
                                    decoration: BoxDecoration(
                                      color: _getRankColor(entry.rank),
                                      borderRadius: BorderRadius.circular(
                                        eightDotNil,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        entry.rank.toString(),
                                        style: TextStyle(
                                          color: entry.rank <= threeDotNil
                                              ? hexFFFFFF
                                              : hex989898,
                                          fontFamily: FontFamily.urbanist,
                                          fontWeight: FontWeight.w600,
                                          fontSize: fourteenDotNil,
                                          height: oneDotFiveSeven,
                                          letterSpacing: nilDotNil,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: eightDotNil),
                                  // Gap between rank and user ID
                                  Expanded(
                                    child: Text(
                                      entry.userId,
                                      style: const TextStyle(
                                        fontFamily: FontFamily.poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: fourteenDotNil,
                                        height: twoDotTwoEight,
                                        letterSpacing: nilDotNil,
                                        color: hex222222,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: nilDotNil),
                                  if (entry.rank == one)
                                    Row(
                                      children: [
                                        Assets.pngs.crown.image(
                                          width: thirtyEightDotNil,
                                          height: fourteenDotNil,
                                        ),
                                        const SizedBox(width: fourDotNil),
                                        Text(
                                          entry.points.toString(),
                                          style: const TextStyle(
                                            fontFamily: FontFamily.lato,
                                            fontWeight: FontWeight.w700,
                                            fontSize: sixteenDotNil,
                                            height: oneDotNil,
                                            letterSpacing: nilDotNil,
                                          ),
                                        ),
                                      ],
                                    )
                                  else
                                    Text(
                                      entry.points.toString(),
                                      style: const TextStyle(
                                        fontFamily: FontFamily.lato,
                                        fontWeight: FontWeight.w700,
                                        fontSize: sixteenDotNil,
                                        height: oneDotNil,
                                        letterSpacing: nilDotNil,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(thirtyDotNil),
                    topRight: Radius.circular(thirtyDotNil),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: twentyDotNil,
                      sigmaY: twentyDotNil,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(twentyFourDotNil),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(
                            nilDotNineEight,
                            minusNilDotTwoTwo,
                          ),
                          end: Alignment(
                            minusNilDotNineEight,
                            nilDotTwoTwo,
                          ),
                          colors: [
                            Color.fromRGBO(
                              twoFiftyFive,
                              twoFiftyFive,
                              twoFiftyFive,
                              nilDotTwoFive,
                            ),
                            Color.fromRGBO(
                              twoFiftyFive,
                              twoFiftyFive,
                              twoFiftyFive,
                              nilDotOneSix,
                            ),
                          ],
                          stops: [
                            nilDotOneThreeSixSix,
                            nilDotEightSixNilTwo,
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              //Show user's position
                            },
                            child: Text(
                              context.localize.seeMyPosition,
                              style: const TextStyle(
                                fontFamily: FontFamily.poppins,
                                color: hex3478F5,
                                fontWeight: FontWeight.w700,
                                fontSize: fourteenDotNil,
                                height: oneDotSevenOne,
                                letterSpacing: nilDotNil,
                              ),
                            ),
                          ),
                          const SizedBox(width: fifteenDotNil),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              controller: _paginationController,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Assets.svgs.chevronLeftBlack.svg(),
                                    onPressed: _currentPageNotifier.value > one
                                        ? () => _goToPage(
                                              _currentPageNotifier.value - one,
                                            )
                                        : null,
                                  ),
                                  for (int i = one;
                                      i <= totalPages && i <= seven;
                                      i++)
                                    ValueListenableBuilder<int>(
                                      valueListenable: _currentPageNotifier,
                                      builder: (_, currentPage, __) {
                                        return Container(
                                          margin: const EdgeInsets.symmetric(
                                            horizontal: fourDotNil,
                                          ),
                                          width: thirtyTwoDotNil,
                                          height: thirtyTwoDotNil,
                                          decoration: BoxDecoration(
                                            color: currentPage == i
                                                ? hexCEEAFF
                                                : Colors.transparent,
                                            borderRadius: BorderRadius.circular(
                                              eightDotNil,
                                            ),
                                          ),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              minimumSize: const Size(
                                                thirtyDotNil,
                                                thirtyDotNil,
                                              ),
                                            ),
                                            onPressed: () => _goToPage(i),
                                            child: Text(
                                              i.toString(),
                                              style: TextStyle(
                                                color: currentPage == i
                                                    ? hex3478F5
                                                    : hex1E1E1E,
                                                fontFamily: FontFamily.urbanist,
                                                fontWeight: currentPage == i
                                                    ? FontWeight.w600
                                                    : FontWeight.w400,
                                                fontSize: fourteenDotNil,
                                                height: oneDotFiveSeven,
                                                letterSpacing: nilDotNil,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  if (totalPages > seven) const Text('...'),
                                  IconButton(
                                    icon: Assets.svgs.chevronRight.svg(),
                                    onPressed: state is LeaderboardLoaded &&
                                            _currentPageNotifier.value <
                                                state.totalPages
                                        ? () => _goToPage(
                                              _currentPageNotifier.value + one,
                                            )
                                        : null,
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
              ],
            );
          },
        ),
      );
}

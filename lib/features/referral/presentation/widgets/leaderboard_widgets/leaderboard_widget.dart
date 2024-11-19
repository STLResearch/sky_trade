import 'package:flutter/material.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/heading_widget.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/leaderboard_table.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/next_button.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/page_scroll_bar.dart';

class LeaderboardWidget extends StatefulWidget {
  const LeaderboardWidget({
    required this.leaderboardData,
    super.key,
  });

  final List<List<Map<String, String>>> leaderboardData;

  @override
  State<LeaderboardWidget> createState() => _LeaderboardWidgetState();
}

class _LeaderboardWidgetState extends State<LeaderboardWidget> {
  int _currentPage = 0;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Card(
        elevation: 12,
        shadowColor: hex263A4DE9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: hexFFFFFF,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Column(
            children: [
              HeadingWidget(
                heading: context.localize.currentPeriodChallengeLeaderboard,
              ),
              const SizedBox(height: 20),
              LeaderboardTable(
                leaderboardData: widget.leaderboardData[_currentPage],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20),
                    Flexible(
                      child: PageScrollBar(
                        numOfItems: widget.leaderboardData.length,
                        scrollController: _scrollController,
                        selectedPageNumber: _currentPage,
                        onPageCardTap: (pageNumber) {
                          if (pageNumber != _currentPage) {
                            setState(() => _currentPage = pageNumber);
                          }
                        },
                      ),
                    ),
                    NextButton(
                      showDisabledColor:
                          _currentPage == widget.leaderboardData.length - 1,
                      onPressed: () {
                        if (_currentPage < widget.leaderboardData.length - 1) {
                          setState(() {
                            _currentPage += 1;
                            _scrollIfNecessary();
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollIfNecessary() {
    if (_scrollController.position.pixels !=
        _scrollController.position.maxScrollExtent) {
      _scrollController.animateTo(
        _currentPage * 30,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}

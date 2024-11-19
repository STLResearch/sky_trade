import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/history_entity.dart';
import 'package:sky_trade/features/referral/domain/entities/leaderboard_entity.dart';
import 'package:sky_trade/features/referral/presentation/views/referral_history_screen.dart';
import 'package:sky_trade/features/referral/presentation/views/referral_leaderboard_screen.dart';
import 'package:sky_trade/features/referral/presentation/views/referral_program_screen.dart';
import 'package:sky_trade/features/referral/presentation/views/referral_share_screen.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/screen_navigator_widget.dart';

class ReferralMainScreen extends StatefulWidget {
  const ReferralMainScreen({super.key});

  @override
  State<ReferralMainScreen> createState() => _ReferralMainScreenState();
}

class _ReferralMainScreenState extends State<ReferralMainScreen> {
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const historyEntity = HistoryEntity(
      UserStatsEntity(
        numberOfRegisteredFriends: 5,
        numberOfRegisteredAirspaces: 10,
        numberOfValidateProperties: 15,
      ),
      <TransactionEntity>[
        TransactionEntity(
          transactionDate: '1 Apr 24',
          transactionAmount: 50,
          transactionFrom: 'Brezhnev Fiona Salvador Rodrigues',
          isCredited: true,
        ),
        TransactionEntity(
          transactionDate: '2 May 24',
          transactionAmount: 50,
          transactionFrom: 'Mayan Anand',
          isCredited: false,
        ),
        TransactionEntity(
          transactionDate: '3 Mar 24',
          transactionAmount: 250,
          transactionFrom: 'Engels Immanuel',
          isCredited: true,
        ),
        TransactionEntity(
          transactionDate: '15 Nov 24',
          transactionAmount: 150,
          transactionFrom: 'Marcin Zudnaik',
          isCredited: true,
        ),
        TransactionEntity(
          transactionDate: '18 Jul 24',
          transactionAmount: 250,
          transactionFrom: 'John SkyWalker',
          isCredited: true,
        ),
        TransactionEntity(
          transactionDate: '27 Mar 24',
          transactionAmount: 600,
          transactionFrom: 'Activity 2',
          isCredited: false,
        ),
        TransactionEntity(
          transactionDate: '31 Dec 24',
          transactionAmount: 50,
          transactionFrom: 'Activity 5',
          isCredited: false,
        ),
      ],
    );

    const leaderboardEntity = LeaderboardEntity(
      leaderboardData: <List<Map<String, String>>>[
        [
          {'name': 'Alice', 'balance': r'$500'},
          {'name': 'Bob', 'balance': r'$450'},
          {'name': 'Charlie', 'balance': r'$400'},
          {'name': 'Diana', 'balance': r'$350'},
          {'name': 'Ethan', 'balance': r'$300'},
          {'name': 'Frank', 'balance': r'$250'},
        ],
        [
          {'name': 'Grace', 'balance': r'$600'},
          {'name': 'Hank', 'balance': r'$550'},
          {'name': 'Ivy', 'balance': r'$500'},
          {'name': 'Jack', 'balance': r'$450'},
          {'name': 'Kate', 'balance': r'$400'},
          {'name': 'Leo', 'balance': r'$350'},
        ],
        [
          {'name': 'Mia', 'balance': r'$700'},
          {'name': 'Noah', 'balance': r'$650'},
          {'name': 'Olivia', 'balance': r'$600'},
          {'name': 'Paul', 'balance': r'$550'},
          {'name': 'Quinn', 'balance': r'$500'},
          {'name': 'Ryan', 'balance': r'$450'},
        ],
        [
          {'name': 'Sophia', 'balance': r'$800'},
          {'name': 'Thomas', 'balance': r'$750'},
          {'name': 'Uma', 'balance': r'$700'},
          {'name': 'Victor', 'balance': r'$650'},
          {'name': 'Wendy', 'balance': r'$600'},
          {'name': 'Xavier', 'balance': r'$550'},
        ],
        [
          {'name': 'Yara', 'balance': r'$900'},
          {'name': 'Zane', 'balance': r'$850'},
          {'name': 'Aaron', 'balance': r'$800'},
          {'name': 'Bella', 'balance': r'$750'},
          {'name': 'Caleb', 'balance': r'$700'},
          {'name': 'Daisy', 'balance': r'$650'},
        ],
        [
          {'name': 'Eli', 'balance': r'$1000'},
          {'name': 'Fiona', 'balance': r'$950'},
          {'name': 'George', 'balance': r'$900'},
          {'name': 'Holly', 'balance': r'$850'},
          {'name': 'Ian', 'balance': r'$800'},
          {'name': 'Jade', 'balance': r'$750'},
        ],
        [
          {'name': 'Kevin', 'balance': r'$1100'},
          {'name': 'Lily', 'balance': r'$1050'},
          {'name': 'Max', 'balance': r'$1000'},
          {'name': 'Nina', 'balance': r'$950'},
          {'name': 'Oscar', 'balance': r'$900'},
          {'name': 'Penny', 'balance': r'$850'},
        ],
      ],
      earningsEntity: EarningsEntity(
        lifeTimeEarningsAmount: 125345,
        quartileEarningsList: [
          QuartileEarningEntity(
            quartileName: 'Q1 2024 Earnings',
            earningsAmount: 535,
          ),
          QuartileEarningEntity(
            quartileName: 'Q2 2024 Earnings',
            earningsAmount: 123,
          ),
          QuartileEarningEntity(
            quartileName: 'Q3 2024 Earnings',
            earningsAmount: 432,
          ),
          QuartileEarningEntity(
            quartileName: 'Q4 2024 Earnings',
            earningsAmount: 112,
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Assets.svgs.chevronLeft.svg(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(context.localize.referralProgram),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          ScreenNavigatorWidget(
            selectedTabIndex: _currentPageIndex + 1,
            scrollController: _scrollController,
            onTabSelected: (selectedTabIndex) {
              setState(() {
                _currentPageIndex = selectedTabIndex - 1;
                _pageController.jumpToPage(_currentPageIndex);
              });
            },
          ),
          const SizedBox(height: 15),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                ReferralProgramScreen(skyBalance: 50),
                ReferralShareScreen(
                  skyBalance: 50,
                  referralCode: 'REF.23GlFa?!',
                  referralLink: 'sky.trade/ref=brezhnev_rodrigues',
                  qrData: 'Brezhnev Rodrigues',
                ),
                ReferralHistoryScreen(
                  skyBalance: 50,
                  historyEntity: historyEntity,
                ),
                ReferralLeaderboardScreen(
                  skyBalance: 50,
                  leaderboardEntity: leaderboardEntity,
                ),
              ],
              onPageChanged: (pageIndex) {
                setState(() {
                  _currentPageIndex = pageIndex;
                  if (pageIndex == 0 || pageIndex == 3) {
                    _scrollScreenNavigatorWidgetToIndex(pageIndex + 1);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void _scrollScreenNavigatorWidgetToIndex(int index) {
    final position =
        index == 1 ? 0.0 : _scrollController.position.maxScrollExtent;

    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

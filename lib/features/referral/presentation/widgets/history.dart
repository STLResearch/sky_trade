import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        ScrollController,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, fortyNineDotNil, twentyDotNil, twentyEightDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/highlights_section.dart';
import 'package:sky_trade/features/referral/presentation/widgets/referrals.dart';

import '../../domain/entities/history_entity.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const _historyEntity = HistoryEntity(
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

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          Text(
            context.localize.yourReferrals,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          HighlightsSection(
            registeredFriends:
                _historyEntity.userStats.numberOfRegisteredFriends.toString(),
            registeredAirspaces:
                _historyEntity.userStats.numberOfRegisteredAirspaces.toString(),
            validatedProperties:
                _historyEntity.userStats.numberOfValidateProperties.toString(),
          ),
          const SizedBox(
            height: twentyEightDotNil,
          ),
          Referrals(
            transactionList: _historyEntity.transactionList,
          ),
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import 'package:sky_trade/features/referral/domain/entities/leaderboard_entity.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_widgets/earnings_table_row.dart';

class EarningsTable extends StatelessWidget {
  const EarningsTable({
    required this.quartileEarningsList,
    super.key,
  });

  final List<QuartileEarningEntity> quartileEarningsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Column(
        children: quartileEarningsList.map(
            (quartileEarning) => Column(
              children: [
                EarningsTableRow(
                  quartileEarningEntity: quartileEarning,
                ),
                const SizedBox(height: 15),
              ],
            ),
        ).toList(),
      ),
    );
  }
}

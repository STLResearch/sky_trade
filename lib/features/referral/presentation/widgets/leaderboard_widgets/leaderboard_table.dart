import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class LeaderboardTable extends StatelessWidget {
  const LeaderboardTable({required this.leaderboardData, super.key});

  final List<Map<String, String>> leaderboardData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          leaderBoardRow(
            name: context.localize.user,
            balance: context.localize.balance,
            fontWeight: FontWeight.w500,
          ),
          ...leaderboardData.map(
            (record) => Column(
              children: [
                leaderBoardRow(
                  name: record['name']!,
                  balance: record['balance']!,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 9,
                  child: Card(
                    elevation: 0,
                    color: hexF5F5F5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget leaderBoardRow({
    required String name,
    required String balance,
    required FontWeight fontWeight,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 13,
              fontWeight: fontWeight,
              fontFamily: FontFamily.poppins,
              color: fontWeight == FontWeight.w500 ? hex222222 : hex87878D,
            ),
          ),
          Text(
            balance,
            style: TextStyle(
              fontSize: 13,
              fontWeight: fontWeight,
              fontFamily: FontFamily.poppins,
              color: fontWeight == FontWeight.w500 ? hex222222 : hex87878D,
            ),
          ),
        ],
      ),
    );
  }
}

//ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class FaqModalBottomSheet extends StatelessWidget {
  const FaqModalBottomSheet({super.key});

  Map<String, String> getFaqTableInfo(BuildContext context) {
    return <String, String>{
      context.localize.skyPointsEarningSource1: context.localize.skyPoints5,
      context.localize.skyPointsEarningSource2: context.localize.skyPoints100,
      context.localize.skyPointsEarningSource3:
          context.localize.skyPoints100ToYouAnd100SkyPointsToYourFriend,
      context.localize.skyPointsEarningSource4: context.localize.skyPoints5,
      context.localize.skyPointsEarningSource5: context.localize.skyPoints100,
      context.localize.skyPointsEarningSource6:
          context.localize.boostingSkyPointsEgx3,
      context.localize.skyPointsEarningSource7: context.localize.skyPoints5,
      context.localize.skyPointsEarningSource8:
          context.localize.boostingSkyPointsEgx3,
    };
  }

  @override
  Widget build(BuildContext context) {
    final faqInfoTable = getFaqTableInfo(context);

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: hexFFFFFF,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            const SizedBox(
              width: 80,
              height: 15,
              child: Card(
                elevation: 0,
                color: hexD9D9D9,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              context.localize.howCanIEarnSkyPoints,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.poppins,
                color: hex222222,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: double.infinity,
              height: 10,
              child: Card(
                elevation: 0,
                color: hexEBEBEB,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Table(
                    border: TableBorder.all(color: hex4D4285F4),
                    children: faqInfoTable.entries.map((mapEntry) {
                      final index =
                          faqInfoTable.keys.toList().indexOf(mapEntry.key);
                      return getTableRow(
                        isEven: index.isEven,
                        mapEntry: mapEntry,
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow getTableRow({
    required bool isEven,
    required MapEntry<String, String> mapEntry,
  }) {
    return TableRow(
      decoration: BoxDecoration(color: isEven ? hexE9F5FE : hexFFFFFF),
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            mapEntry.key,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
              color: hex222222,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            mapEntry.value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
              color: hex4285F4,
            ),
          ),
        ),
      ],
    );
  }
}

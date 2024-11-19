import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/domain/entities/history_entity.dart';

class TransactionHistoryTableWidget extends StatelessWidget {
  const TransactionHistoryTableWidget({
    required this.transactionList,
    super.key,
  });

  final List<TransactionEntity> transactionList;

  @override
  Widget build(BuildContext context) {
    var isOdd = false;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 600,
          child: Table(
            columnWidths: const {
              0: FractionColumnWidth(0.20),
              1: FractionColumnWidth(0.20),
              2: FractionColumnWidth(0.60),
            },
            children: [
              TableRow(
                decoration: const BoxDecoration(color: hexFFFFFF),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                    child: Text(
                      context.localize.date,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: hex222222,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                    child: Text(
                      context.localize.amount,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: hex222222,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                    child: Text(
                      context.localize.from,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: hex222222,
                      ),
                    ),
                  ),
                ],
              ),
              ...transactionList.map((transaction) {
                isOdd = !isOdd;
                return TableRow(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isOdd ? hexFFFFFF : hexF0F4FA,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                      child: Text(
                        transaction.transactionDate,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.poppins,
                          color: hex87878D,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                      child: Text(
                        (transaction.isCredited ? '+' : '-') +
                            transaction.transactionAmount.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.poppins,
                          color: transaction.isCredited ? hex419918 : hexFF9D65,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                      child: Text(
                        transaction.transactionFrom,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.poppins,
                          color: hex87878D,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

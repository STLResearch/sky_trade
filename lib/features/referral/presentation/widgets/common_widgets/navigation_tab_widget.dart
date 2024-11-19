import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class NavigationTab extends StatelessWidget {
  const NavigationTab({
    required this.clickState,
    required this.navigationLabel,
    required this.onTap,
    super.key,
  });

  final bool clickState;
  final String navigationLabel;
  final Function0<void> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        color: clickState ? hex222222 : hex2222221A,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: Text(
              navigationLabel,
              style: TextStyle(
                fontSize: 13,
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.w400,
                color: clickState ? hexFFFFFF : hex222222,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

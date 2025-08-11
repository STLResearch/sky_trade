// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        MainAxisSize,
        Padding,
        SizedBox,
        StatelessWidget,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hexEBEBEB;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiveDotNil,
        oneDotNil,
        thirtyFiveDotNil,
        three,
        twentyFiveDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show MenuItem;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/main_menu_header.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/menu_entry.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    required this.onLogoutMenuItemPressed,
    super.key,
  });

  final Function0<void> onLogoutMenuItemPressed;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(
            thirtyFiveDotNil,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: twentyFiveDotNil,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: fiveDotNil,
                ),
                const MainMenuHeader(),
                const Divider(
                  height: oneDotNil,
                  color: hexEBEBEB,
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                ...List<Widget>.generate(
                  MenuItem.values
                      .take(
                        three,
                      )
                      .length,
                  (index) => Padding(
                    padding: switch (
                        MenuItem.values[index] == MenuItem.referralProgram) {
                      true => const EdgeInsetsDirectional.symmetric(
                          vertical: fifteenDotNil,
                        ),
                      false => EdgeInsetsDirectional.zero,
                    },
                    child: MenuEntry(
                      onLogoutMenuItemPressed: onLogoutMenuItemPressed,
                      index: index,
                      useExtraPadding: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
              ],
            ),
          ),
        ),
      );
}

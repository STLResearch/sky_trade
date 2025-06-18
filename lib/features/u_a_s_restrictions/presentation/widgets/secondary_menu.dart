import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        MainAxisSize,
        Padding,
        StatelessWidget,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, sixteenDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show MenuItem;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/menu_entry.dart';

class SecondaryMenu extends StatelessWidget {
  const SecondaryMenu({
    required this.onLogoutMenuItemPressed,
    super.key,
  });

  final Function0<void> onLogoutMenuItemPressed;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List<Widget>.generate(
          MenuItem.values
              .getRange(
                MenuItem.settings.index,
                MenuItem.values.length,
              )
              .length,
          (logicalIndex) {
            final secondaryMenuStartIndex = MenuItem.settings.index;
            final index = logicalIndex + secondaryMenuStartIndex;

            return Padding(
              padding: switch (MenuItem.values[index] == MenuItem.help) {
                true => const EdgeInsetsDirectional.only(
                    top: fifteenDotNil,
                    bottom: sixteenDotNil,
                  ),
                false => EdgeInsetsDirectional.zero,
              },
              child: MenuEntry(
                onLogoutMenuItemPressed: onLogoutMenuItemPressed,
                index: index,
                useExtraPadding: true,
              ),
            );
          },
        ),
      );
}

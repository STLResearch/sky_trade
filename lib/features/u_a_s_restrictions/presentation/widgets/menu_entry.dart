import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        EdgeInsetsDirectional,
        FontWeight,
        InkWell,
        Navigator,
        Padding,
        Row,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex1E1E1E;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show eightDotNil, fourteenDotNil, nilDotNil, sixDotNil, twentyFiveDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show helpRoutePath, insightsRoutePath, referralRoutePath, settingsRoutePath;
import 'package:sky_trade/core/utils/enums/ui.dart' show MenuItem;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    required this.onLogoutMenuItemPressed,
    required this.index,
    required this.useExtraPadding,
    super.key,
  });

  final Function0<void> onLogoutMenuItemPressed;
  final int index;
  final bool useExtraPadding;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.of(
            context,
          ).pop();

          switch (MenuItem.values[index]) {
            case MenuItem.insights:
              Navigator.of(
                context,
              ).pushNamed(
                insightsRoutePath,
              );
            case MenuItem.referralProgram:
              Navigator.of(
                context,
              ).pushNamed(
                referralRoutePath,
              );
            case MenuItem.logout:
              onLogoutMenuItemPressed();
            case MenuItem.settings:
              Navigator.of(
                context,
              ).pushNamed(
                settingsRoutePath,
              );
            case MenuItem.help:
              Navigator.of(
                context,
              ).pushNamed(
                helpRoutePath,
              );
          }
        },
        borderRadius: BorderRadius.circular(
          eightDotNil,
        ),
        child: Padding(
          padding: switch (useExtraPadding) {
            true => const EdgeInsetsDirectional.symmetric(
                horizontal: twentyFiveDotNil,
              ),
            false => EdgeInsetsDirectional.zero,
          },
          child: Row(
            children: [
              switch (MenuItem.values[index]) {
                MenuItem.insights => Assets.svgs.insights.svg(),
                MenuItem.referralProgram => Assets.svgs.menuGift.svg(),
                MenuItem.logout => Assets.svgs.logout.svg(),
                MenuItem.settings => Assets.svgs.settings.svg(),
                MenuItem.help => Assets.svgs.help.svg(),
              },
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: fourteenDotNil,
                  vertical: sixDotNil,
                ),
                child: Text(
                  switch (MenuItem.values[index]) {
                    MenuItem.insights => context.localize.insights,
                    MenuItem.referralProgram =>
                      context.localize.referralProgram,
                    MenuItem.logout => context.localize.logout,
                    MenuItem.settings => context.localize.settings,
                    MenuItem.help => context.localize.help,
                  },
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: nilDotNil,
                        color: hex1E1E1E,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
}

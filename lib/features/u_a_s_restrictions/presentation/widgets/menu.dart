import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Container,
        EdgeInsetsDirectional,
        GestureDetector,
        InkWell,
        MenuAnchor,
        MenuItemButton,
        Navigator,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex1D1E2D;
import 'package:sky_trade/core/resources/numbers/ui.dart' show twentyDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show helpRoutePath, insightsRoutePath, referralRoutePath, settingsRoutePath;
import 'package:sky_trade/core/utils/enums/ui.dart' show MenuItem;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/about_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) => MenuAnchor(
        builder: (_, menuController, __) => InkWell(
          onTap: () => switch (menuController.isOpen) {
            true => menuController.close(),
            false => menuController.open(),
          },
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(
              vertical: twentyDotNil,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Assets.svgs.meatballsMenu.svg(),
            ),
          ),
        ),
        menuChildren: List<MenuItemButton>.generate(
          MenuItem.values.length,
          (index) => MenuItemButton(
            leadingIcon: _computeMenuItemLeadingIconUsing(
              context,
              index: index,
            ),
            onPressed: _computeMenuItemPressedActionUsing(
              context,
              index: index,
            ),
            child: Text(
              _computeMenuItemLocalizedTextUsing(
                context,
                index: index,
              ),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: hex1D1E2D,
                  ),
            ),
          ),
        ),
      );

  Widget _computeMenuItemLeadingIconUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (MenuItem.values[index]) {
        MenuItem.insights => Assets.svgs.insights.svg(),
        MenuItem.referral => Assets.svgs.menuGift.svg(),
        MenuItem.about => Assets.svgs.iconDroneAbout.svg(),
        MenuItem.settings => Assets.svgs.settings.svg(),
        MenuItem.help => Assets.svgs.help.svg(),
        MenuItem.logout => Assets.svgs.logout.svg(),
      };

  Function0<void> _computeMenuItemPressedActionUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (MenuItem.values[index]) {
        MenuItem.insights => () => Navigator.of(
              context,
            ).pushNamed(
              insightsRoutePath,
            ),
        MenuItem.referral => () => Navigator.of(
              context,
            ).pushNamed(
              referralRoutePath,
            ),
        MenuItem.about => () => AboutDialog.show(
              context,
            ),
        MenuItem.settings => () => Navigator.of(
              context,
            ).pushNamed(
              settingsRoutePath,
            ),
        MenuItem.help => () => Navigator.of(
              context,
            ).pushNamed(
              helpRoutePath,
            ),
        MenuItem.logout => () => _showLogoutConfirmationDialogUsing(
              context,
            ),
      };

  void _showLogoutConfirmationDialogUsing(
    BuildContext context,
  ) =>
      ActionDialog.show(
        context,
        content: context.localize.areYouSureYouWantToLogout,
        onActionDismissed: () {
          Navigator.of(
            context,
          ).pop();
        },
        onActionConfirmed: () {
          Navigator.of(
            context,
          ).pop();

          context.read<Auth0LogoutBloc>().add(
                const Auth0LogoutEvent.logout(),
              );
        },
      );

  String _computeMenuItemLocalizedTextUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (MenuItem.values[index]) {
        MenuItem.insights => context.localize.insights,
        MenuItem.referral => context.localize.referralProgram,
        MenuItem.about => context.localize.about,
        MenuItem.settings => context.localize.settings,
        MenuItem.help => context.localize.help,
        MenuItem.logout => context.localize.logout,
      };
}

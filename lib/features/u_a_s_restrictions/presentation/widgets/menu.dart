import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Colors,
        Column,
        Container,
        Divider,
        EdgeInsets,
        EdgeInsetsDirectional,
        FontWeight,
        IconButton,
        InkWell,
        ListTile,
        ListView,
        MainAxisSize,
        Navigator,
        NeverScrollableScrollPhysics,
        Padding,
        Positioned,
        Radius,
        SafeArea,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        Theme,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex1E1E1E;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fortyDotNil,
        nilDotNil,
        oneDotNil,
        sixteenDotNil,
        tenDotNil,
        thirtyDotNil,
        twentyDotNil;
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
  Widget build(BuildContext context) => InkWell(
        onTap: () => _showMenuBottomSheet(context),
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
      );

  void _showMenuBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const MenuBottomSheet(),
    );
  }
}

class MenuBottomSheet extends StatelessWidget {
  const MenuBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            thirtyDotNil,
          ),
          topRight: Radius.circular(
            thirtyDotNil,
          ),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: twentyDotNil,
            vertical: tenDotNil,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: fortyDotNil,
                child: Stack(
                  children: [
                    Center(
                      child: Assets.svgs.skyTradeMenuLogo.svg(),
                    ),
                    Positioned(
                      right: nilDotNil,
                      top: nilDotNil,
                      bottom: nilDotNil,
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Assets.svgs.menuClear.svg(),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: eightDotNil,
              ),
              const Divider(
                height: oneDotNil,
                indent: sixteenDotNil,
                endIndent: sixteenDotNil,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: MenuItem.values.length,
                itemBuilder: _buildMenuItem,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, int index) {
    return ListTile(
      leading: SizedBox(
        width: thirtyDotNil,
        height: thirtyDotNil,
        child: Center(
          child: _computeMenuItemLeadingIconUsing(context, index: index),
        ),
      ),
      title: Text(
        _computeMenuItemLocalizedTextUsing(context, index: index),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: hex1E1E1E,
              fontWeight: FontWeight.w500,
              letterSpacing: nilDotNil,
            ),
      ),
      onTap: () {
        Navigator.of(context).pop();
        _computeMenuItemPressedActionUsing(context, index: index)();
      },
    );
  }

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

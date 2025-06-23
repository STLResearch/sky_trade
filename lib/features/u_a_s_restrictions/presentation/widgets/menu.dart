import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Column,
        Container,
        CrossAxisAlignment,
        Dialog,
        Divider,
        EdgeInsets,
        EdgeInsetsDirectional,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        Padding,
        RoundedRectangleBorder,
        Row,
        SingleChildScrollView,
        SizedBox,
        Stack,
        StatelessWidget,
        Widget,
        showDialog;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE2E2E2, hexEBEBF5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fiftyDotNil,
        oneDotNil,
        tenDotNil,
        thirtyDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFiveDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/about_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/bottom_menu.dart'
    show BottomMenu;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/main_menu.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/secondary_menu.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => showDialog<void>(
          context: context,
          builder: (_) => Dialog(
            insetPadding: const EdgeInsets.symmetric(
              horizontal: fiftyDotNil,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(
                thirtyDotNil,
              ),
            ),
            backgroundColor: hexEBEBF5,
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: tenDotNil,
                vertical: twentyDotNil,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(
                          context,
                        ).pop(),
                        borderRadius: BorderRadius.circular(
                          eightDotNil,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(
                            twelveDotNil,
                          ),
                          child: Assets.svgs.menuClear.svg(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.svgs.skyTradeRadarMenuLogo.svg(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: tenDotNil,
                  ),
                  MainMenu(
                    onLogoutMenuItemPressed: () => _showLogoutDialogUsing(
                      context,
                    ),
                  ),
                  const SizedBox(
                    height: tenDotNil,
                  ),
                  SecondaryMenu(
                    onLogoutMenuItemPressed: () => _showLogoutDialogUsing(
                      context,
                    ),
                  ),
                  const Divider(
                    height: oneDotNil,
                    color: hexE2E2E2,
                    indent: twentyFiveDotNil,
                    endIndent: twentyFiveDotNil,
                  ),
                  BottomMenu(
                    onAboutMenuItemPressed: () => AboutDialog.show(
                      context,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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

  void _showLogoutDialogUsing(
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
}

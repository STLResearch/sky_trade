import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderRadius,
        BorderRadiusDirectional,
        BuildContext,
        Column,
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
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, MultiBlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE2E2E2, hexEBEBF5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        oneDotNil,
        tenDotNil,
        thirtyDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/about/presentation/blocs/app_version_bloc/app_version_bloc.dart'
    show AppVersionBloc;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent;
import 'package:sky_trade/features/drone_insights/presentation/blocs/track_drone_insights_bloc/track_drone_insights_bloc.dart'
    show TrackDroneInsightsBloc;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/about_dialog.dart'
    show AboutDialog;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/bottom_menu.dart'
    show BottomMenu;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/main_menu.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/secondary_menu.dart';

final class MenuDialog {
  static void show(
    BuildContext context,
  ) {
    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: twentyTwoDotNil,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            thirtyDotNil,
          ),
        ),
        backgroundColor: hexEBEBF5,
        child: Menu(
          appVersionBloc: context.read<AppVersionBloc>(),
          trackDroneInsightsBloc: context.read<TrackDroneInsightsBloc>(),
          onLogoutMenuItemPressed: () => ActionDialog.show(
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
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    required this.appVersionBloc,
    required this.trackDroneInsightsBloc,
    required this.onLogoutMenuItemPressed,
    super.key,
  });

  final AppVersionBloc appVersionBloc;
  final TrackDroneInsightsBloc trackDroneInsightsBloc;
  final Function0<void> onLogoutMenuItemPressed;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AppVersionBloc>.value(
            value: appVersionBloc,
          ),
          BlocProvider<TrackDroneInsightsBloc>.value(
            value: trackDroneInsightsBloc,
          ),
        ],
        child: MenuView(
          onLogoutMenuItemPressed: onLogoutMenuItemPressed,
        ),
      );
}

class MenuView extends StatelessWidget {
  const MenuView({
    required this.onLogoutMenuItemPressed,
    super.key,
  });

  final Function0<void> onLogoutMenuItemPressed;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
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
              onLogoutMenuItemPressed: onLogoutMenuItemPressed,
            ),
            const SizedBox(
              height: tenDotNil,
            ),
            SecondaryMenu(
              onLogoutMenuItemPressed: onLogoutMenuItemPressed,
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
      );
}

import 'dart:ui';
import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        AnimatedBuilder,
        Animation,
        AnimationController,
        BackdropFilter,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BoxShape,
        BuildContext,
        Center,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        CurvedAnimation,
        Curves,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FadeTransition,
        FontWeight,
        GestureDetector,
        Icon,
        IconButton,
        Icons,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Material,
        Navigator,
        Offset,
        Overlay,
        OverlayEntry,
        Padding,
        Positioned,
        Row,
        SingleTickerProviderStateMixin,
        SizedBox,
        SlideTransition,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        Tween,
        VoidCallback,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, MultiBlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex192331,
        hex1E1E1E,
        hex3A4DE9,
        hex3C4043,
        hex8A8A8A,
        hexE2E2E2,
        hexEBEBF5,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/local.dart' hide zero;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        fiveDotFive,
        fiveDotNil,
        fortyDotNil,
        fourteenDotNil,
        minusTenDotNil,
        nilDotNil,
        nilDotOneFive,
        nilDotTwo,
        nilDotTwoFour,
        oneDotNil,
        sixteenDotNil,
        tenDotNil,
        thirtyDotNil,
        thirtyFiveDotNil,
        thirtyFourDotFive,
        thirtyTwoDotSixFour,
        threeDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        twentyTwoDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show skyTradePrivacyPolicyUrl, skyTradeTermsOfServiceUrl;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show helpRoutePath, insightsRoutePath, referralRoutePath, settingsRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show dot;
import 'package:sky_trade/core/utils/enums/ui.dart' show MenuItem;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/about_dialog.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => _showMenuOverlay(context),
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

  void _showMenuOverlay(BuildContext context) {
    MenuOverlay.show(context);
  }
}

class MenuOverlay {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context) {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider<HandleLinkBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const MenuOverlayWidget(
          onDismiss: hide,
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}

class MenuOverlayWidget extends StatefulWidget {
  const MenuOverlayWidget({
    required this.onDismiss,
    super.key,
  });

  final VoidCallback onDismiss;

  @override
  State<MenuOverlayWidget> createState() => _MenuOverlayWidgetState();
}

class _MenuOverlayWidgetState extends State<MenuOverlayWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: threeHundred),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: nilDotNil,
      end: oneDotNil,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(nilDotNil, oneDotNil),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutCubic,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _dismiss() async {
    await _animationController.reverse();
    widget.onDismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: [
              GestureDetector(
                onTap: _dismiss,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: oneDotNil,
                    sigmaY: oneDotNil,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: hex192331.withOpacity(
                      nilDotTwoFour * _fadeAnimation.value,
                    ),
                  ),
                ),
              ),
              Center(
                child: SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Container(
                      margin: const EdgeInsetsDirectional.only(
                        start: twentyTwoDotNil,
                        end: twentyTwoDotNil,
                      ),
                      decoration: BoxDecoration(
                        color: hexEBEBF5,
                        borderRadius: BorderRadius.circular(
                          thirtyDotNil,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: hex3A4DE9.withOpacity(nilDotOneFive),
                            blurRadius: thirtyFourDotFive,
                            offset: const Offset(
                              nilDotNil,
                              twelveDotNil,
                            ),
                            spreadRadius: minusTenDotNil,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: tenDotNil,
                          vertical: twentyDotNil,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildHeader(),
                            const SizedBox(height: tenDotNil),
                            _buildUserProfileWithMenuItems(context),
                            const SizedBox(height: tenDotNil),
                            _buildSecondaryMenuItems(context),
                            const SizedBox(height: fifteenDotNil),
                            const Divider(
                              height: oneDotNil,
                              color: hexE2E2E2,
                              indent: thirtyFiveDotNil,
                              endIndent: thirtyFiveDotNil,
                            ),
                            const SizedBox(height: tenDotNil),
                            _buildFooterLinks(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: thirtyTwoDotSixFour,
      child: Stack(
        children: [
          Center(
            child: Assets.svgs.skyTradeMenuLogo.svg(),
          ),
          Positioned(
            left: nilDotNil,
            top: nilDotNil,
            bottom: nilDotNil,
            child: IconButton(
              onPressed: _dismiss,
              icon: Assets.svgs.menuClear.svg(),
              padding: EdgeInsetsDirectional.zero,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileWithMenuItems(BuildContext context) {
    final primaryItems = [
      MenuItem.insights,
      MenuItem.referral,
      MenuItem.logout,
    ];

    return Container(
      decoration: BoxDecoration(
        color: hexFFFFFF,
        borderRadius: BorderRadius.circular(
          thirtyFiveDotNil,
        ),
      ),
      padding: const EdgeInsetsDirectional.only(
        start: twentyFiveDotNil,
        end: twentyFiveDotNil,
        top: fiveDotNil,
        bottom: fifteenDotNil,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.all(eightDotNil),
            child: Row(
              children: [
                Container(
                  width: fortyDotNil,
                  height: fortyDotNil,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: fortyDotNil,
                  ),
                ),
                const SizedBox(width: twentyFiveDotNil),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User name', // Replace with actual user name
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: fourteenDotNil,
                              color: hex3C4043,
                              height: fourteenDotNil / fourteenDotNil,
                              letterSpacing: nilDotNil,
                            ),
                      ),
                      const SizedBox(height: threeDotNil),
                      Text(
                        'r668g94sertvn......89',
                        // Replace with actual wallet ID
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              height: twelveDotNil / twelveDotNil,
                              letterSpacing: nilDotTwo,
                              color: hex3C4043,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: oneDotNil,
            indent: sixteenDotNil,
            endIndent: sixteenDotNil,
          ),
          for (int i = zero; i < primaryItems.length; i++) ...[
            _buildMenuItem(context, primaryItems[i]),
          ],
        ],
      ),
    );
  }

  Widget _buildSecondaryMenuItems(BuildContext context) {
    final secondaryItems = [
      MenuItem.settings,
      MenuItem.help,
    ];

    return Container(
      padding: const EdgeInsetsDirectional.only(
        start: twentyFiveDotNil,
        end: twentyFiveDotNil,
      ),
      child: Column(
        children: [
          for (int i = zero; i < secondaryItems.length; i++) ...[
            _buildMenuItem(context, secondaryItems[i]),
          ],
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItem menuItem) {
    return InkWell(
      onTap: () {
        _dismiss();
        _computeMenuItemPressedAction(context, menuItem)();
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: eightDotNil),
        child: Row(
          children: [
            SizedBox(
              width: thirtyDotNil,
              height: thirtyDotNil,
              child: Center(
                child: _computeMenuItemLeadingIcon(menuItem),
              ),
            ),
            const SizedBox(width: fifteenDotNil),
            Expanded(
              child: Text(
                _computeMenuItemLocalizedText(context, menuItem),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: twelveDotNil,
                      height: eighteenDotNil / twelveDotNil,
                      letterSpacing: nilDotNil,
                      color: hex1E1E1E,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFooterLink(context, context.localize.about, () {
          _dismiss();
          AboutDialog.show(context);
        }),
        const SizedBox(width: fiveDotFive),
        const Text(
          dot,
          style: TextStyle(
            color: hex8A8A8A,
          ),
        ),
        const SizedBox(width: fiveDotFive),
        _buildFooterLink(context, context.localize.termsOfService, () {
          _dismiss();
          context.read<HandleLinkBloc>().add(
                const HandleLinkEvent.handle(
                  link: skyTradeTermsOfServiceUrl,
                ),
              );
        }),
        const SizedBox(width: fiveDotFive),
        const Text(dot, style: TextStyle(color: hex8A8A8A)),
        const SizedBox(width: fiveDotFive),
        _buildFooterLink(context, context.localize.privacyPolicy, () {
          _dismiss();
          context.read<HandleLinkBloc>().add(
                const HandleLinkEvent.handle(
                  link: skyTradePrivacyPolicyUrl,
                ),
              );
        }),
      ],
    );
  }

  Widget _buildFooterLink(
    BuildContext context,
    String text,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: tenDotNil,
              height: tenDotNil / tenDotNil,
              letterSpacing: nilDotTwo,
              color: hex3C4043,
            ),
      ),
    );
  }

  Widget _computeMenuItemLeadingIcon(MenuItem menuItem) => switch (menuItem) {
        MenuItem.insights => Assets.svgs.insights.svg(),
        MenuItem.referral => Assets.svgs.menuGift.svg(),
        MenuItem.about => Assets.svgs.iconDroneAbout.svg(),
        MenuItem.settings => Assets.svgs.settings.svg(),
        MenuItem.help => Assets.svgs.help.svg(),
        MenuItem.logout => Assets.svgs.logout.svg(),
      };

  Function0<void> _computeMenuItemPressedAction(
    BuildContext context,
    MenuItem menuItem,
  ) =>
      switch (menuItem) {
        MenuItem.insights => () =>
            Navigator.of(context).pushNamed(insightsRoutePath),
        MenuItem.referral => () =>
            Navigator.of(context).pushNamed(referralRoutePath),
        MenuItem.about => () => AboutDialog.show(context),
        MenuItem.settings => () =>
            Navigator.of(context).pushNamed(settingsRoutePath),
        MenuItem.help => () => Navigator.of(context).pushNamed(helpRoutePath),
        MenuItem.logout => () => _showLogoutConfirmationDialog(context),
      };

  void _showLogoutConfirmationDialog(BuildContext context) => ActionDialog.show(
        context,
        content: context.localize.areYouSureYouWantToLogout,
        onActionDismissed: () => Navigator.of(context).pop(),
        onActionConfirmed: () {
          Navigator.of(context).pop();
          context.read<Auth0LogoutBloc>().add(const Auth0LogoutEvent.logout());
        },
      );

  String _computeMenuItemLocalizedText(
    BuildContext context,
    MenuItem menuItem,
  ) =>
      switch (menuItem) {
        MenuItem.insights => context.localize.insights,
        MenuItem.referral => context.localize.referralProgram,
        MenuItem.about => context.localize.about,
        MenuItem.settings => context.localize.settings,
        MenuItem.help => context.localize.help,
        MenuItem.logout => context.localize.logout,
      };
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:flutter/material.dart'
    show
        Banner,
        BannerLocation,
        BuildContext,
        Color,
        FontWeight,
        State,
        StatefulWidget,
        StatelessWidget,
        TextStyle,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0066CC, hex626262, hexCC0000, hexFF8C00, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show eightDotNil, oneDotNil;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours, liveEnvironment, stageEnvironment;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show hyphen;
import 'package:sky_trade/features/about/domain/entities/about_entity.dart'
    show AppVersionEntity;
import 'package:sky_trade/features/about/presentation/blocs/app_version_bloc/app_version_bloc.dart'
    show AppVersionBloc, AppVersionEvent, AppVersionState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class AppBanner extends StatelessWidget {
  const AppBanner({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<AppVersionBloc>(
        create: (_) => serviceLocator(),
        child: AppBannerView(
          child: child,
        ),
      );
}

class AppBannerView extends StatefulWidget {
  const AppBannerView({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<AppBannerView> createState() => _AppBannerViewState();
}

class _AppBannerViewState extends State<AppBannerView> {
  @override
  void initState() {
    _getAppVersion();

    super.initState();
  }

  void _getAppVersion() => context.read<AppVersionBloc>().add(
        const AppVersionEvent.getVersion(),
      );

  @override
  Widget build(BuildContext context) =>
      switch (_isSuitableEnvironmentToShowBanner) {
        true => BlocBuilder<AppVersionBloc, AppVersionState>(
            builder: (_, appVersionState) => Banner(
              message: appVersionState.maybeWhen(
                gotVersion: (appVersionEntity) => _computeBannerMessage(
                  appVersionEntity: appVersionEntity,
                ),
                orElse: _computeBannerMessage,
              ),
              textStyle: const TextStyle(
                color: hexFFFFFF,
                fontSize: eightDotNil,
                fontWeight: FontWeight.w900,
                height: oneDotNil,
              ),
              location: BannerLocation.topEnd,
              color: _bannerColor,
              child: widget.child,
            ),
          ),
        false => widget.child,
      };

  bool get _isSuitableEnvironmentToShowBanner =>
      (kDebugMode || kProfileMode) &&
      (_environment == devEnvironment ||
          _environment == stageEnvironment ||
          _environment == liveEnvironment);

  String _computeBannerMessage({
    AppVersionEntity? appVersionEntity,
  }) =>
      switch (Platform.isAndroid) {
        true => _computeBannerMessageUsing(
            appendEnvironmentName: false,
            appVersionEntity: appVersionEntity,
          ),
        false => _computeBannerMessageUsing(
            appendEnvironmentName: true,
            appVersionEntity: appVersionEntity,
          ),
      };

  String _computeBannerMessageUsing({
    required bool appendEnvironmentName,
    required AppVersionEntity? appVersionEntity,
  }) =>
      switch (appVersionEntity) {
        null => _environment,
        _ when appendEnvironmentName =>
          appVersionEntity.versionName + hyphen + _environment,
        _ => appVersionEntity.versionName,
      }
          .toUpperCase();

  Color get _bannerColor => switch (_environment) {
        devEnvironment => hex0066CC,
        stageEnvironment => hexFF8C00,
        liveEnvironment => hexCC0000,
        _ => hex626262,
      };

  String get _environment => const String.fromEnvironment(
        flavours,
        defaultValue: devEnvironment,
      );
}

// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart'
    show MaterialPageRoute, Route, RouteSettings;
import 'package:sky_trade/core/resources/strings/routes.dart';
import 'package:sky_trade/core/utils/enums/ui.dart' show ErrorReason;
import 'package:sky_trade/env_banner.dart' show EnvBanner;
import 'package:sky_trade/features/auth/presentation/views/error_screen.dart'
    show ErrorScreen;
import 'package:sky_trade/features/auth/presentation/views/get_started_screen.dart'
    show GetStartedScreen;
import 'package:sky_trade/features/auth/presentation/views/loading_screen.dart'
    show LoadingScreen;
import 'package:sky_trade/features/auth/presentation/views/onboarding_screen.dart'
    as auth show OnboardingScreen;
import 'package:sky_trade/features/drone_insights/presentation/views/insights_screen.dart'
    show InsightsScreen;
import 'package:sky_trade/features/help/presentation/views/help_screen.dart';
import 'package:sky_trade/features/internet_connection_checker/presentation/screens/no_internet_connection_screen.dart';
import 'package:sky_trade/features/referral/presentation/views/referral_screen.dart'
    show ReferralScreen;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc;
import 'package:sky_trade/features/rewards/presentation/views/drone_rush_details_screen.dart'
    as rewards;
import 'package:sky_trade/features/rewards/presentation/views/leaderboard_screen.dart'
    as rewards show LeaderboardScreen;
import 'package:sky_trade/features/rewards/presentation/views/onboarding_screen.dart'
    as rewards;
import 'package:sky_trade/features/rewards/presentation/views/rewards_screen.dart'
    show RewardsScreen;
import 'package:sky_trade/features/settings/presentation/views/settings_screen.dart'
    show SettingsScreen;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/views/home_screen.dart'
    show HomeScreen;

Route routes(RouteSettings settings) => MaterialPageRoute(
      builder: (context) => EnvBanner(
        child: switch (settings.name) {
          baseRoutePath || loadingRoutePath => const LoadingScreen(),
          noInternetConnectionRoutePath => const NoInternetConnectionScreen(),
          errorRoutePath => ErrorScreen(
              reason: settings.arguments! as ErrorReason,
            ),
          getStartedRoutePath => const GetStartedScreen(),
          homeRoutePath => const HomeScreen(),
          helpRoutePath => const HelpScreen(),
          insightsRoutePath => const InsightsScreen(),
          settingsRoutePath => const SettingsScreen(),
          referralRoutePath => const ReferralScreen(),
          onboardingRoutePath => const auth.OnboardingScreen(),
          rewardsOnboardingRoutePath => const rewards.OnboardingScreen(),
          rewardsLeaderboardRoutePath => const rewards.LeaderboardScreen(),
          rewardsDroneRushDetailsRoutePath => rewards.DroneRushDetailsScreen(
              openedFromRoute: settings.arguments! as String,
            ),
          rewardsRoutePath => RewardsScreen(
              droneRushZonesBloc: settings.arguments! as DroneRushZonesBloc,
            ),
          _ => const ErrorScreen(
              reason: ErrorReason.unknownNavigationRoute,
            ),
        },
      ),
    );

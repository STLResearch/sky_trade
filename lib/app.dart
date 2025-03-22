import 'package:flutter/material.dart'
    show
        BuildContext,
        MaterialApp,
        State,
        StatefulWidget,
        StatelessWidget,
        ThemeMode,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:sky_trade/core/localization/l10n/generated/app_localizations.dart'
    show AppLocalizations;
import 'package:sky_trade/core/navigation/route_configuration.dart';
import 'package:sky_trade/core/resources/theme.dart' show darkTheme, lightTheme;
import 'package:sky_trade/features/link_handler/presentation/blocs/app_link_bloc/app_link_bloc.dart'
    show AppLinkBloc, AppLinkEvent;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<AppLinkBloc>(
        create: (_) => serviceLocator(),
        child: const AppView(),
      );
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  void initState() {
    _listenLink();

    super.initState();
  }

  void _listenLink() => context.read<AppLinkBloc>().add(
        const AppLinkEvent.listenLink(),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        locale: AppLocalizations.supportedLocales.first,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateRoute: routes,
      );
}

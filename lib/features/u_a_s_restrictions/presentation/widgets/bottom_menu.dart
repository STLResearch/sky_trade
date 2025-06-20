import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        InkWell,
        Navigator,
        Padding,
        Row,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:sky_trade/core/resources/colors.dart' show hex3C4043, hex8A8A8A;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fourDotNil,
        nilDotTwo,
        oneDotNil,
        tenDotNil,
        threeDotNil,
        twoDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show skyTradePrivacyPolicyUrl, skyTradeTermsOfServiceUrl;
import 'package:sky_trade/core/utils/enums/ui.dart' show BottomMenuItem;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    required this.onAboutMenuItemPressed,
    super.key,
  });

  final Function0<void> onAboutMenuItemPressed;

  @override
  Widget build(BuildContext context) => BlocProvider<HandleLinkBloc>(
        create: (_) => serviceLocator(),
        child: BottomMenuView(
          onAboutMenuItemPressed: onAboutMenuItemPressed,
        ),
      );
}

class BottomMenuView extends StatelessWidget {
  const BottomMenuView({
    required this.onAboutMenuItemPressed,
    super.key,
  });

  final Function0<void> onAboutMenuItemPressed;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.only(
          top: twoDotNil,
        ),
        child: Row(
          children: List<Widget>.generate(
            BottomMenuItem.values.length,
            (index) => switch (
                BottomMenuItem.values[index] == BottomMenuItem.termsOfService) {
              true => Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: fourDotNil,
                        height: fourDotNil,
                        decoration: const BoxDecoration(
                          color: hex8A8A8A,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Expanded(
                        child: _buildBottomMenuEntryClickableTextUsing(
                          context,
                          index: index,
                        ),
                      ),
                      Container(
                        width: fourDotNil,
                        height: fourDotNil,
                        decoration: const BoxDecoration(
                          color: hex8A8A8A,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              false => Expanded(
                  child: _buildBottomMenuEntryClickableTextUsing(
                    context,
                    index: index,
                  ),
                ),
            },
          ),
        ),
      );

  Widget _buildBottomMenuEntryClickableTextUsing(
    BuildContext context, {
    required int index,
  }) =>
      Padding(
        padding: EdgeInsetsDirectional.only(
          top: fourDotNil,
          start: switch (BottomMenuItem.values[index] == BottomMenuItem.about) {
            true => threeDotNil,
            false => eightDotNil,
          },
          end: switch (
              BottomMenuItem.values[index] == BottomMenuItem.privacyPolicy) {
            true => threeDotNil,
            false => eightDotNil,
          },
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).pop();

            switch (BottomMenuItem.values[index]) {
              case BottomMenuItem.about:
                onAboutMenuItemPressed();
              case BottomMenuItem.termsOfService:
                context.read<HandleLinkBloc>().add(
                      const HandleLinkEvent.handle(
                        link: skyTradeTermsOfServiceUrl,
                      ),
                    );
              case BottomMenuItem.privacyPolicy:
                context.read<HandleLinkBloc>().add(
                      const HandleLinkEvent.handle(
                        link: skyTradePrivacyPolicyUrl,
                      ),
                    );
            }
          },
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: eightDotNil,
              vertical: eightDotNil,
            ),
            child: Text(
              switch (BottomMenuItem.values[index]) {
                BottomMenuItem.about => context.localize.about,
                BottomMenuItem.termsOfService =>
                  context.localize.termsOfService,
                BottomMenuItem.privacyPolicy => context.localize.privacyPolicy,
              },
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(
                    fontSize: tenDotNil,
                    height: oneDotNil,
                    letterSpacing: nilDotTwo,
                    color: hex3C4043,
                  ),
            ),
          ),
        ),
      );
}

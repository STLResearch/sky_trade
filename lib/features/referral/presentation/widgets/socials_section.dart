// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Padding,
        Row,
        StatelessWidget,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE9F5FE, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fortyNineDotNil,
        fortySixDotNil,
        fourteenDotFive,
        thirteenDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show Socials, SocialsLinkType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart'
    show HighlightsEntityExtensions;
import 'package:sky_trade/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc, CheckLinkEvent, CheckLinkState;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsState;
import 'package:sky_trade/features/referral/presentation/blocs/socials_link_bloc/socials_link_bloc.dart'
    show SocialsLinkBloc, SocialsLinkEvent, SocialsLinkState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SocialsSection extends StatelessWidget {
  const SocialsSection({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<CheckLinkBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<HandleLinkBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<SocialsLinkBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const SocialsSectionView(),
      );
}

class SocialsSectionView extends StatelessWidget {
  const SocialsSectionView({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<SocialsLinkBloc, SocialsLinkState>(
            listener: (_, socialsLinkState) {
              socialsLinkState.whenOrNull(
                computedLink: (
                  deepLink,
                  _,
                  __,
                  ___,
                  ____,
                  _____,
                ) {
                  context.read<CheckLinkBloc>().add(
                        CheckLinkEvent.check(
                          link: deepLink,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<CheckLinkBloc, CheckLinkState>(
            listener: (_, checkLinkState) {
              checkLinkState.whenOrNull(
                checked: (linkEntity) {
                  final linkCanBeHandled = linkEntity.handled;

                  if (linkCanBeHandled) {
                    context.read<HandleLinkBloc>().add(
                          HandleLinkEvent.handle(
                            link: linkEntity.link,
                          ),
                        );

                    return;
                  }

                  context.read<SocialsLinkBloc>().state.whenOrNull(
                    computedLink: (
                      _,
                      socials,
                      referralLink,
                      title,
                      message,
                      linkType,
                    ) {
                      if (linkType == SocialsLinkType.webLink) {
                        AlertSnackBar.show(
                          context,
                          message: context.localize
                              .unableToShareTheCorrespondingAppMayNotBeInstalledOnYourDevice,
                        );

                        return;
                      }

                      context.read<SocialsLinkBloc>().add(
                            SocialsLinkEvent.computeLinkFrom(
                              socials: socials,
                              referralLink: referralLink,
                              title: title,
                              message: message,
                              linkType: SocialsLinkType.webLink,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
        ],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List<Widget>.generate(
            Socials.values.length,
            (index) => BlocBuilder<HighlightsBloc, HighlightsState>(
              builder: (_, highlightsState) => Skeletonizer(
                effect: highlightsState.maybeWhen(
                  failedToGetHighlights: (_) => const SoldColorEffect(
                    color: hexEBEBF4,
                  ),
                  orElse: () => ShimmerEffect(
                    highlightColor: Theme.of(
                      context,
                    ).scaffoldBackgroundColor,
                  ),
                ),
                enabled: highlightsState.maybeWhen(
                  gotHighlights: (_) => false,
                  orElse: () => true,
                ),
                child: Card(
                  width: fortySixDotNil,
                  height: fortyNineDotNil,
                  cornerRadius: eightDotNil,
                  backgroundColor: hexE9F5FE,
                  onTap: highlightsState.maybeWhen(
                    gotHighlights: (highlightsEntity) =>
                        () => context.read<SocialsLinkBloc>().add(
                              SocialsLinkEvent.computeLinkFrom(
                                socials: Socials.values[index],
                                referralLink: highlightsEntity.referralLink,
                                title: context
                                    .localize.yourExclusiveInvitationToSkyTrade,
                                message: context.localize
                                    .joinMeOnSkyTradeAndStartTradingAirspaceAndRealEstateSignUpWithMyLinkAndGetExclusiveRewards,
                                linkType: SocialsLinkType.appLink,
                              ),
                            ),
                    orElse: () => null,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      vertical: fourteenDotFive,
                      horizontal: thirteenDotNil,
                    ),
                    child: Skeleton.shade(
                      child: switch (Socials.values[index]) {
                        Socials.facebook => Assets.svgs.referralFacebook.svg(),
                        Socials.linkedIn => Assets.svgs.referralLinkedIn.svg(),
                        Socials.email => Assets.svgs.referralGoogle.svg(),
                        Socials.x => Assets.svgs.referralX.svg(),
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

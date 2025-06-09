import 'package:flutter/material.dart'
    show
        BuildContext,
        ColoredBox,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        FontWeight,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, ReadContext;
import 'package:qr_flutter/qr_flutter.dart' show QrImageView;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart' show hexB8B8B8, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        elevenDotNil,
        fortyNineDotNil,
        four,
        oneFortyDotNil,
        oneThirtyNineDotSixEight,
        tenDotNil,
        thirtyFiveDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show comma;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart'
    show HighlightsEntityExtensions;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent, HighlightsState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/referral/presentation/widgets/email_field.dart'
    show EmailField;
import 'package:sky_trade/features/referral/presentation/widgets/shareable_content_card.dart'
    show ShareableContentCard;

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  void initState() {
    _maybeGetHighlights();

    super.initState();
  }

  void _maybeGetHighlights() => context.read<HighlightsBloc>().state.whenOrNull(
        initial: _getHighlights,
      );

  void _getHighlights() => context.read<HighlightsBloc>().add(
        const HighlightsEvent.getHighlights(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<HighlightsBloc, HighlightsState>(
        listener: (_, highlightsState) {
          highlightsState.whenOrNull(
            failedToGetHighlights: (_) {
              AlertSnackBar.show(
                context,
                message: context
                    .localize.couldNotGetHighlightsSwipeDownToRefreshThePage,
              );
            },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: twentyDotNil,
            ),
            Text(
              context.localize.shareTheReferralLinkOrCode,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: tenDotNil,
            ),
            Text(
              context.localize.code,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: twelveDotNil,
                    height: eighteenDotNil / twelveDotNil,
                    color: hexB8B8B8,
                  ),
            ),
            const SizedBox(
              height: tenDotNil,
            ),
            const ShareableContentCard(),
            const SizedBox(
              height: twentyFourDotNil,
            ),
            Text(
              context.localize.inviteYourFriends + comma,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: elevenDotNil,
            ),
            const EmailField(),
            const SizedBox(
              height: thirtyFiveDotNil,
            ),
            Text(
              context.localize.shareYourUniqueQrCode,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: elevenDotNil,
            ),
            BlocBuilder<HighlightsBloc, HighlightsState>(
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
                child: highlightsState.maybeWhen(
                  gotHighlights: (_) => SizedBox(
                    width: oneFortyDotNil,
                    height: oneFortyDotNil,
                    child: QrImageView(
                      padding: EdgeInsets.zero,
                      data: highlightsState.maybeWhen(
                        gotHighlights: (highlightsEntity) =>
                            highlightsEntity.referralLink,
                        orElse: () => BoneMock.words(
                          four,
                        ),
                      ),
                      size: oneThirtyNineDotSixEight,
                    ),
                  ),
                  orElse: () => const Skeleton.leaf(
                    child: SizedBox(
                      width: oneFortyDotNil,
                      height: oneFortyDotNil,
                      child: ColoredBox(
                        color: hexEBEBF4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: fortyNineDotNil,
            ),
          ],
        ),
      );
}

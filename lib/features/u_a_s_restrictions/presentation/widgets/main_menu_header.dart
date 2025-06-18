import 'package:flutter/material.dart'
    show
        BuildContext,
        CircleAvatar,
        Column,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        MainAxisSize,
        Padding,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart'
    show hex3C4043, hexEBEBF4, hexEBEBF5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        four,
        fourteenDotNil,
        nilDotNil,
        nilDotTwo,
        one,
        oneDotNil,
        twentyDotNil,
        twentyFiveDotNil,
        two;
import 'package:sky_trade/core/utils/extensions/sky_trade_user_entity_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart'
    show
        CheckSkyTradeUserExistsBloc,
        CheckSkyTradeUserExistsEvent,
        CheckSkyTradeUserExistsState;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class MainMenuHeader extends StatelessWidget {
  const MainMenuHeader({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocProvider<CheckSkyTradeUserExistsBloc>(
        create: (_) => serviceLocator(),
        child: const MainMenuHeaderView(),
      );
}

class MainMenuHeaderView extends StatefulWidget {
  const MainMenuHeaderView({super.key});

  @override
  State<MainMenuHeaderView> createState() => _MainMenuHeaderViewState();
}

class _MainMenuHeaderViewState extends State<MainMenuHeaderView> {
  @override
  void initState() {
    _getSkyTradeUser();

    super.initState();
  }

  void _getSkyTradeUser() => context.read<CheckSkyTradeUserExistsBloc>().add(
        const CheckSkyTradeUserExistsEvent.checkUserExists(),
      );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.all(
          eightDotNil,
        ),
        child: Row(
          children: [
            BlocBuilder<CheckSkyTradeUserExistsBloc,
                CheckSkyTradeUserExistsState>(
              builder: (_, checkSkyTradeUserExistsState) => Skeletonizer(
                effect: checkSkyTradeUserExistsState.maybeWhen(
                  failedToCheckUser: (_) => const SoldColorEffect(
                    color: hexEBEBF4,
                  ),
                  orElse: () => ShimmerEffect(
                    highlightColor: Theme.of(
                      context,
                    ).scaffoldBackgroundColor,
                  ),
                ),
                enabled: checkSkyTradeUserExistsState.maybeWhen(
                  userExists: (_) => false,
                  orElse: () => true,
                ),
                child: Skeleton.leaf(
                  child: CircleAvatar(
                    radius: twentyDotNil,
                    backgroundColor: hexEBEBF5,
                    child: checkSkyTradeUserExistsState.whenOrNull(
                      userExists: (skyTradeUserEntity) => Text(
                        skyTradeUserEntity.initials,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: fourteenDotNil,
                              height: oneDotNil,
                              letterSpacing: nilDotNil,
                              color: hex3C4043,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: twentyFiveDotNil,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<CheckSkyTradeUserExistsBloc,
                      CheckSkyTradeUserExistsState>(
                    builder: (_, checkSkyTradeUserExistsState) => Skeletonizer(
                      effect: checkSkyTradeUserExistsState.maybeWhen(
                        failedToCheckUser: (_) => const SoldColorEffect(
                          color: hexEBEBF4,
                        ),
                        orElse: () => ShimmerEffect(
                          highlightColor: Theme.of(
                            context,
                          ).scaffoldBackgroundColor,
                        ),
                      ),
                      enabled: checkSkyTradeUserExistsState.maybeWhen(
                        userExists: (_) => false,
                        orElse: () => true,
                      ),
                      child: Text(
                        checkSkyTradeUserExistsState.maybeWhen(
                          userExists: (skyTradeUserEntity) =>
                              skyTradeUserEntity.displayName,
                          orElse: () => BoneMock.words(
                            two,
                          ),
                        ),
                        maxLines: one,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: fourteenDotNil,
                              height: oneDotNil,
                              letterSpacing: nilDotNil,
                              color: hex3C4043,
                            ),
                      ),
                    ),
                  ),
                  BlocBuilder<CheckSkyTradeUserExistsBloc,
                      CheckSkyTradeUserExistsState>(
                    builder: (_, checkSkyTradeUserExistsState) => Skeletonizer(
                      effect: checkSkyTradeUserExistsState.maybeWhen(
                        failedToCheckUser: (_) => const SoldColorEffect(
                          color: hexEBEBF4,
                        ),
                        orElse: () => ShimmerEffect(
                          highlightColor: Theme.of(
                            context,
                          ).scaffoldBackgroundColor,
                        ),
                      ),
                      enabled: checkSkyTradeUserExistsState.maybeWhen(
                        userExists: (_) => false,
                        orElse: () => true,
                      ),
                      child: Text(
                        checkSkyTradeUserExistsState.maybeWhen(
                          userExists: (skyTradeUserEntity) =>
                              skyTradeUserEntity.blockchainAddress,
                          orElse: () => BoneMock.words(
                            four,
                          ),
                        ),
                        maxLines: one,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              height: oneDotNil,
                              letterSpacing: nilDotTwo,
                              color: hex3C4043,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

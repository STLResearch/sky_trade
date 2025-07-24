// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Column,
        Container,
        EdgeInsetsDirectional,
        ElevatedButton,
        FontWeight,
        MainAxisSize,
        Navigator,
        OutlinedBorder,
        Radius,
        RoundedRectangleBorder,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hexCEEAFF, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        fifteenDotNil,
        fiftyDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixteenDotNil,
        sixtyDotNil,
        sixtyOneDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        twentyFourDotNil,
        twoDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show GeolocatedRemoteIDCollectionEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/cached_remote_i_d_transmitter_bloc/cached_remote_i_d_transmitter_bloc.dart'
    show
        CachedRemoteIDTransmitterBloc,
        CachedRemoteIDTransmitterEvent,
        CachedRemoteIDTransmitterState;

class CachedDroneDataInfo extends StatelessWidget {
  const CachedDroneDataInfo({
    required this.cachedRemoteIDTransmitterBloc,
    required this.dronesDataToSend,
    super.key,
  });

  final CachedRemoteIDTransmitterBloc cachedRemoteIDTransmitterBloc;

  final List<GeolocatedRemoteIDCollectionEntity> dronesDataToSend;

  @override
  Widget build(BuildContext context) =>
      BlocProvider<CachedRemoteIDTransmitterBloc>.value(
        value: cachedRemoteIDTransmitterBloc,
        child: CachedDroneDataInfoView(
          dronesDataToSend: dronesDataToSend,
        ),
      );
}

class CachedDroneDataInfoView extends StatelessWidget {
  const CachedDroneDataInfoView({
    required this.dronesDataToSend,
    super.key,
  });

  final List<GeolocatedRemoteIDCollectionEntity> dronesDataToSend;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyFourDotNil,
        ),
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: const BorderRadiusDirectional.vertical(
            top: Radius.circular(
              thirtyDotNil,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: thirteenDotNil,
              ),
              Container(
                width: seventyDotNil,
                height: nineDotNil,
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: thirtyNineDotNil,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).bottomSheetTheme.dragHandleColor,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: eighteenDotNil,
              ),
              SizedBox(
                width: sixtyOneDotNil,
                height: sixtyDotNil,
                child: Assets.pngs.droneRadar.image(),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              BlocBuilder<CachedRemoteIDTransmitterBloc,
                  CachedRemoteIDTransmitterState>(
                builder: (_, cachedRemoteIDTransmitterState) => Text(
                  cachedRemoteIDTransmitterState.maybeWhen(
                    transmittingRemoteID: () =>
                        context.localize.weAreSendingYourDroneData,
                    transmittedRemoteID: () => context.localize.droneDataSent,
                    orElse: () => context
                        .localize.youHaveExistingDroneDataThatIsReadyToBeSent,
                  ),
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                      ),
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              BlocBuilder<CachedRemoteIDTransmitterBloc,
                  CachedRemoteIDTransmitterState>(
                builder: (_, cachedRemoteIDTransmitterState) => Text(
                  cachedRemoteIDTransmitterState.maybeWhen(
                    transmittingRemoteID: () => context.localize
                        .yourDroneDataIsCurrentlyBeingSentKindlyExerciseSomePatience,
                    transmittedRemoteID: () => context.localize
                        .weHaveSentYourDroneDataNoFurtherActionIsRequired,
                    orElse: () => context.localize
                        .weHaveDetectedThatThisDeviceHasSomeStoredDroneDataThatCanBeSentPleaseNoteThatSendingThisDataWillAssociateTheDroneDataWithThisAccountAndAnyRewardsAccumulatedWillBeCreditedToThisAccount,
                  ),
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                      ),
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              BlocBuilder<CachedRemoteIDTransmitterBloc,
                  CachedRemoteIDTransmitterState>(
                builder: (_, cachedRemoteIDTransmitterState) =>
                    cachedRemoteIDTransmitterState.maybeWhen(
                  transmittedRemoteID: () => const SizedBox.shrink(),
                  orElse: () => ElevatedButton(
                    onPressed: cachedRemoteIDTransmitterState.maybeWhen(
                      transmittingRemoteID: () => null,
                      orElse: () => () {
                        context.read<CachedRemoteIDTransmitterBloc>().add(
                              const CachedRemoteIDTransmitterEvent
                                  .startTransmitter(),
                            );

                        context.read<CachedRemoteIDTransmitterBloc>().add(
                              CachedRemoteIDTransmitterEvent.transmitRemoteID(
                                geolocatedRemoteIDCollectionEntities:
                                    dronesDataToSend,
                              ),
                            );

                        Navigator.of(
                          context,
                        ).pop();
                      },
                    ),
                    style: Theme.of(
                      context,
                    ).elevatedButtonTheme.style?.copyWith(
                          backgroundColor: const WidgetStatePropertyAll<Color>(
                            hex0653EA,
                          ),
                          fixedSize: const WidgetStatePropertyAll<Size>(
                            Size.fromHeight(
                              fiftyDotNil,
                            ),
                          ),
                          shape: WidgetStatePropertyAll<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(
                                fifteenDotNil,
                              ),
                            ),
                          ),
                        ),
                    child: Center(
                      child: cachedRemoteIDTransmitterState.maybeWhen(
                        transmittingRemoteID: () => const SizedBox(
                          width: sixteenDotNil,
                          height: sixteenDotNil,
                          child: CircularProgressIndicator(
                            color: hexFFFFFF,
                            strokeWidth: twoDotNil,
                          ),
                        ),
                        orElse: () => Text(
                          context.localize.sendNow,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: sixteenDotNil,
                                height: oneDotNil,
                                letterSpacing: nilDotNil,
                                color: hexFFFFFF,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BlocBuilder<CachedRemoteIDTransmitterBloc,
                  CachedRemoteIDTransmitterState>(
                builder: (_, cachedRemoteIDTransmitterState) =>
                    cachedRemoteIDTransmitterState.maybeWhen(
                  transmittedRemoteID: () => const SizedBox.shrink(),
                  orElse: () => const SizedBox(
                    height: fifteenDotNil,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(
                  context,
                ).pop(),
                style: Theme.of(
                  context,
                ).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: const WidgetStatePropertyAll<Color>(
                        hexCEEAFF,
                      ),
                      fixedSize: const WidgetStatePropertyAll<Size>(
                        Size.fromHeight(
                          fiftyDotNil,
                        ),
                      ),
                      shape: WidgetStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(
                            fifteenDotNil,
                          ),
                        ),
                      ),
                    ),
                child: Center(
                  child: BlocBuilder<CachedRemoteIDTransmitterBloc,
                      CachedRemoteIDTransmitterState>(
                    builder: (_, cachedRemoteIDTransmitterState) => Text(
                      cachedRemoteIDTransmitterState.maybeWhen(
                        transmittingRemoteID: () => context.localize.close,
                        transmittedRemoteID: () => context.localize.dismiss,
                        orElse: () => context.localize.maybeLater,
                      ),
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(
                            fontSize: sixteenDotNil,
                            height: oneDotNil,
                            letterSpacing: nilDotNil,
                            color: hex0653EA,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
            ],
          ),
        ),
      );
}

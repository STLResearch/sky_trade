import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Column,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        Flexible,
        InkWell,
        LayoutBuilder,
        ListView,
        MainAxisSize,
        MediaQuery,
        Offset,
        Padding,
        Radius,
        RichText,
        Row,
        SizedBox,
        StatefulBuilder,
        StatelessWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan,
        WidgetsBinding,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex3A4DE9;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiveDotNil,
        fourteenDotNil,
        minusTenDotNil,
        nilDotNil,
        nilDotOneFive,
        nineDotNil,
        one,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyFourDotNil,
        thirtyNineDotNil,
        threeDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyNineDotNil,
        twentyOneDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show BroadcastRemoteIDReceiverBloc, BroadcastRemoteIDReceiverState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_details.dart'
    show UASDetails;

class UASList extends StatelessWidget {
  const UASList({
    required this.broadcastRemoteIDReceiverBloc,
    super.key,
  });

  final BroadcastRemoteIDReceiverBloc broadcastRemoteIDReceiverBloc;

  @override
  Widget build(BuildContext context) =>
      BlocProvider<BroadcastRemoteIDReceiverBloc>.value(
        value: broadcastRemoteIDReceiverBloc,
        child: const UASListView(),
      );
}

class UASListView extends StatelessWidget {
  const UASListView({super.key});

  @override
  Widget build(BuildContext context) => StatefulBuilder(
        builder: (context, setState) => LayoutBuilder(
          builder: (context, boxConstraints) => Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height / threeDotNil,
              minWidth: boxConstraints.maxWidth,
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
                  height: twentyOneDotNil,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: BlocBuilder<BroadcastRemoteIDReceiverBloc,
                            BroadcastRemoteIDReceiverState>(
                          builder: (_, broadcastRemoteIDReceiverState) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              setState(() {});
                            });

                            return Text(
                              broadcastRemoteIDReceiverState.maybeWhen(
                                    gotRemoteIDs: (remoteIDEntities) =>
                                        switch (remoteIDEntities.isNotEmpty) {
                                      true =>
                                        remoteIDEntities.length.toString() +
                                            whiteSpace +
                                            switch (remoteIDEntities.length) {
                                              one => context.localize.drone,
                                              _ => context.localize.drones,
                                            },
                                      false => context.localize.no +
                                          whiteSpace +
                                          context.localize.drones,
                                    },
                                    orElse: () =>
                                        context.localize.no +
                                        whiteSpace +
                                        context.localize.drones,
                                  ) +
                                  whiteSpace +
                                  context.localize.tracked,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<BroadcastRemoteIDReceiverBloc,
                    BroadcastRemoteIDReceiverState>(
                  builder: (_, broadcastRemoteIDReceiverState) =>
                      broadcastRemoteIDReceiverState.maybeWhen(
                    gotRemoteIDs: (remoteIDEntities) => Flexible(
                      child: ListView.builder(
                        itemCount: remoteIDEntities.length,
                        itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: twentyNineDotNil,
                          ),
                          child: Container(
                            margin: EdgeInsetsDirectional.only(
                              top: fifteenDotNil,
                              bottom: index == remoteIDEntities.length - one
                                  ? twentyDotNil
                                  : nilDotNil,
                            ),
                            padding: const EdgeInsetsDirectional.symmetric(
                              vertical: fiveDotNil,
                              horizontal: twentyTwoDotNil,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).scaffoldBackgroundColor,
                              borderRadius: BorderRadiusDirectional.circular(
                                eightDotNil,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: hex3A4DE9.withOpacity(
                                    nilDotOneFive,
                                  ),
                                  spreadRadius: minusTenDotNil,
                                  blurRadius: thirtyFourDotNil,
                                  offset: const Offset(
                                    nilDotNil,
                                    twelveDotNil,
                                  ),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) => UASDetails(
                                    broadcastRemoteIDReceiverBloc: context
                                        .read<BroadcastRemoteIDReceiverBloc>(),
                                    index: index,
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Assets.svgs.iconDroneBlack.svg(),
                                  const SizedBox(
                                    width: tenDotNil,
                                  ),
                                  Expanded(
                                    child: Text(
                                      remoteIDEntities
                                          .elementAt(index)
                                          .connection
                                          .macAddress,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: fourteenDotNil,
                                            height: twentyOneDotNil /
                                                fourteenDotNil,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: tenDotNil,
                                  ),
                                  Assets.svgs.arrowRight.svg(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ),
                const SizedBox(
                  height: twentyDotNil,
                ),
              ],
            ),
          ),
        ),
      );
}

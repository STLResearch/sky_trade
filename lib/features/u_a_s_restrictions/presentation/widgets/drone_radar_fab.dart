import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        Alignment,
        BorderRadius,
        BuildContext,
        EdgeInsetsDirectional,
        FloatingActionButton,
        Padding,
        RoundedRectangleBorder,
        SizedBox,
        Stack,
        StatelessWidget,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex0653EA, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFourDotNil,
        nilDotNil,
        sixtyFiveDotNil,
        tenDotNil;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show BroadcastRemoteIDReceiverBloc;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/notification_count_bubble.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_list.dart'
    show UASList;

class DroneRadarFab extends StatelessWidget {
  const DroneRadarFab({
    required this.newDronesCount,
    super.key,
  });

  final ValueNotifier<int> newDronesCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        nilDotNil,
        nilDotNil,
        nilDotNil,
        fifteenDotNil,
      ),
      child: SizedBox(
        width: sixtyFiveDotNil,
        height: sixtyFiveDotNil,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: fiftyFourDotNil,
              height: fiftyFourDotNil,
              child: FloatingActionButton(
                backgroundColor: hexFFFFFF,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    tenDotNil,
                  ),
                ),
                onPressed: () async {
                  await showModalBottomSheet<UASList>(
                    context: context,
                    builder: (_) => UASList(
                      broadcastRemoteIDReceiverBloc:
                          context.read<BroadcastRemoteIDReceiverBloc>(),
                    ),
                  );
                  newDronesCount.value = 0;
                },
                child: Assets.svgs.iconDroneBlue.svg(),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: newDronesCount,
              builder: (_, newDronesCountValue, __) {
                if (newDronesCountValue == 0) {
                  return const SizedBox();
                }
                return NotificationCountBubble(
                  notificationCount: newDronesCountValue.toString(),
                  textColor: hexFFFFFF,
                  bubbleColor: hex0653EA,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

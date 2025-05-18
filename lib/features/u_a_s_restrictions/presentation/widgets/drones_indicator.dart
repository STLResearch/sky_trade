import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShadow,
        BoxShape,
        BuildContext,
        Center,
        Container,
        EdgeInsetsDirectional,
        FontWeight,
        InkWell,
        Offset,
        Padding,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Transform,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0000000D, hex0653EA, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyFourDotNil,
        minusTwentySixDotNil,
        nilDotNilNil,
        sevenDotSixEight,
        tenDotNil,
        thirtyEightDotSixFour,
        twentyDotNil,
        twentyFiveDotNil,
        twentySixDotNil,
        zero;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/broadcast_remote_i_d_receiver_bloc/broadcast_remote_i_d_receiver_bloc.dart'
    show BroadcastRemoteIDReceiverBloc;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_list.dart'
    show UASList;

class DronesIndicator extends StatelessWidget {
  const DronesIndicator({
    required this.newDronesCount,
    super.key,
  });

  final ValueNotifier<int> newDronesCount;

  @override
  Widget build(BuildContext context) => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(
              tenDotNil,
            ),
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (_) => UASList(
                  broadcastRemoteIDReceiverBloc:
                      context.read<BroadcastRemoteIDReceiverBloc>(),
                ),
              );

              newDronesCount.value = zero;
            },
            child: Container(
              width: fiftyFourDotNil,
              height: fiftyFourDotNil,
              decoration: BoxDecoration(
                color: hexFFFFFF,
                borderRadius: BorderRadiusDirectional.circular(
                  tenDotNil,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: hex0000000D,
                    blurRadius: twentyFiveDotNil,
                  ),
                  BoxShadow(
                    color: hex0000000D,
                    blurRadius: twentyDotNil,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(
                  sevenDotSixEight,
                ),
                child: Assets.svgs.iconDroneBlue.svg(
                  width: thirtyEightDotSixFour,
                  height: thirtyEightDotSixFour,
                ),
              ),
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: newDronesCount,
            builder: (_, newDronesCountValue, __) =>
                switch (newDronesCountValue) {
              zero => const SizedBox.shrink(),
              _ => Transform.translate(
                  offset: const Offset(
                    twentySixDotNil,
                    minusTwentySixDotNil,
                  ),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: twentyDotNil,
                    height: twentyDotNil,
                    decoration: const BoxDecoration(
                      color: hex0653EA,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        newDronesCountValue.toString(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              letterSpacing: nilDotNilNil,
                              color: hexFFFFFF,
                            ),
                      ),
                    ),
                  ),
                ),
            },
          ),
        ],
      );
}

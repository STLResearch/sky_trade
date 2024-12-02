// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Column,
        Container,
        EdgeInsetsDirectional,
        Flexible,
        LayoutBuilder,
        MainAxisSize,
        PlaceholderAlignment,
        Radius,
        RichText,
        SingleChildScrollView,
        SizedBox,
        StatefulBuilder,
        StatelessWidget,
        Text,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan,
        WidgetsBinding;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiveDotNil,
        nineDotNil,
        one,
        seventyDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        twentyNineDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/remote_i_d_entity_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart'
    show RemoteIDReceiverBloc, RemoteIDReceiverState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/u_a_s_detail_section.dart';

class UASDetails extends StatelessWidget {
  const UASDetails({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) => StatefulBuilder(
        builder: (context, setState) => LayoutBuilder(
          builder: (context, boxConstraints) => Container(
            constraints: BoxConstraints(
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
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Assets.svgs.iconDroneBlack.svg(),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                          width: fiveDotNil,
                        ),
                      ),
                      WidgetSpan(
                        child: BlocBuilder<RemoteIDReceiverBloc,
                            RemoteIDReceiverState>(
                          builder: (_, remoteIDReceiverState) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              setState(() {});
                            });

                            return remoteIDReceiverState.maybeWhen(
                              gotRemoteIDs: (remoteIDEntities) => Text(
                                remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .connection
                                    .macAddress,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              orElse: () => Text(
                                emptyString,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            );
                          },
                        ),
                        alignment: PlaceholderAlignment.middle,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child:
                      BlocBuilder<RemoteIDReceiverBloc, RemoteIDReceiverState>(
                    builder: (_, remoteIDReceiverState) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        setState(() {});
                      });

                      return remoteIDReceiverState.maybeWhen(
                        gotRemoteIDs: (remoteIDEntities) =>
                            SingleChildScrollView(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: twentyNineDotNil,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: fifteenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.connection,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDConnectionHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              if ((remoteIDEntities
                                          .elementAt(
                                            index,
                                          )
                                          .basicIDs
                                          ?.isEmpty ??
                                      false) ||
                                  (remoteIDEntities
                                              .elementAt(
                                                index,
                                              )
                                              .basicIDs
                                              ?.length ??
                                          one) ==
                                      one)
                                UASDetailSection(
                                  title: context.localize.basicId,
                                  content: remoteIDEntities
                                      .elementAt(
                                        index,
                                      )
                                      .computeLocalizedRemoteIDBasicIDHeaderContentUsing(
                                        context,
                                        position: one,
                                      ),
                                )
                              else
                                ...List<Widget>.generate(
                                  remoteIDEntities
                                          .elementAt(
                                            index,
                                          )
                                          .basicIDs
                                          ?.length ??
                                      one,
                                  (basicIDsIndex) => UASDetailSection(
                                    title: context.localize.basicId +
                                        whiteSpace +
                                        (basicIDsIndex + one).toString(),
                                    content: remoteIDEntities
                                        .elementAt(
                                          index,
                                        )
                                        .computeLocalizedRemoteIDBasicIDHeaderContentUsing(
                                          context,
                                          position: basicIDsIndex + one,
                                        ),
                                  ),
                                ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.location,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDLocationHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.systemOperator,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDSystemHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.selfId,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDSelfIDHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.operatorId,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDOperatorIDHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: tenDotNil,
                              ),
                              UASDetailSection(
                                title: context.localize.authentication,
                                content: remoteIDEntities
                                    .elementAt(
                                      index,
                                    )
                                    .computeLocalizedRemoteIDAuthenticationHeaderContentUsing(
                                      context,
                                    ),
                              ),
                              const SizedBox(
                                height: fifteenDotNil,
                              ),
                            ],
                          ),
                        ),
                        orElse: () => Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

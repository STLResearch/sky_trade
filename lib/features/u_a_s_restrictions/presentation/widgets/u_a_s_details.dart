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
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Flexible,
        FontWeight,
        GridView,
        LayoutBuilder,
        ListView,
        MainAxisSize,
        NeverScrollableScrollPhysics,
        Padding,
        PlaceholderAlignment,
        Radius,
        RichText,
        SizedBox,
        SliverGridDelegateWithFixedCrossAxisCount,
        StatefulBuilder,
        StatelessWidget,
        Text,
        TextSpan,
        TextStyle,
        Theme,
        Widget,
        WidgetSpan,
        WidgetsBinding;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        five,
        fiveDotNil,
        four,
        fourteenDotNil,
        nineDotNil,
        one,
        oneDotNil,
        seventyDotNil,
        six,
        sixDotNil,
        sixteenDotOne,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        three,
        twentyNineDotNil,
        twentyOneDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/remote_i_d_entity_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart'
    show RemoteIDReceiverBloc, RemoteIDReceiverState;

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
                        gotRemoteIDs: (remoteIDEntities) => ListView.builder(
                          itemCount: six +
                              (remoteIDEntities
                                      .elementAt(
                                        index,
                                      )
                                      .basicIDs
                                      ?.length ??
                                  one),
                          itemBuilder: (_, listIndex) => Padding(
                            padding: EdgeInsetsDirectional.only(
                              top:
                                  listIndex == zero ? fifteenDotNil : tenDotNil,
                              start: twentyNineDotNil,
                              end: twentyNineDotNil,
                            ),
                            child: _buildSectionUsing(
                              context,
                              title: _computeTitleUsing(
                                context,
                                headerIndex: listIndex,
                                length: six +
                                    (remoteIDEntities
                                            .elementAt(
                                              index,
                                            )
                                            .basicIDs
                                            ?.length ??
                                        one),
                              ),
                              content: _computeContentKeyValuePairUsing(
                                context,
                                headerIndex: listIndex,
                                length: six +
                                    (remoteIDEntities
                                            .elementAt(
                                              index,
                                            )
                                            .basicIDs
                                            ?.length ??
                                        one),
                                remoteIDEntity: remoteIDEntities.elementAt(
                                  index,
                                ),
                              ),
                            ),
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

  Widget _buildSectionUsing(
    BuildContext context, {
    required String title,
    required Map<String, String> content,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: FontFamily.arial,
              fontWeight: FontWeight.w400,
              fontSize: fourteenDotNil,
              height: sixteenDotOne / fourteenDotNil,
              color: hex4285F4,
            ),
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          const Divider(
            height: oneDotNil,
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          GridView.builder(
            padding: EdgeInsetsDirectional.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: two,
              crossAxisSpacing: fifteenDotNil,
              childAspectRatio: sixDotNil,
            ),
            itemCount: content.length,
            itemBuilder: (_, index) => RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: content.entries
                        .elementAt(
                          index,
                        )
                        .key,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontSize: tenDotNil,
                          height: fifteenDotNil / tenDotNil,
                          color: hex838187,
                        ),
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: tenDotNil,
                    ),
                  ),
                  TextSpan(
                    text: content.entries
                        .elementAt(
                          index,
                        )
                        .value,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(
                          fontSize: tenDotNil,
                          height: fifteenDotNil / tenDotNil,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  String _computeTitleUsing(
    BuildContext context, {
    required int headerIndex,
    required int length,
  }) =>
      switch (headerIndex) {
        _ when headerIndex == length - one => context.localize.authentication,
        _ when headerIndex == length - two => context.localize.operatorId,
        _ when headerIndex == length - three => context.localize.systemOperator,
        _ when headerIndex == length - four => context.localize.selfId,
        _ when headerIndex == length - five => context.localize.location,
        _ when headerIndex == length - length => context.localize.connection,
        _ => context.localize.basicId,
      };

  Map<String, String> _computeContentKeyValuePairUsing(
    BuildContext context, {
    required int headerIndex,
    required int length,
    required RemoteIDEntity remoteIDEntity,
  }) =>
      switch (headerIndex) {
        _ when headerIndex == length - one => remoteIDEntity
              .computeLocalizedRemoteIDAuthenticationHeaderContentUsing(
            context,
          ),
        _ when headerIndex == length - two =>
          remoteIDEntity.computeLocalizedRemoteIDOperatorIDHeaderContentUsing(
            context,
          ),
        _ when headerIndex == length - three =>
          remoteIDEntity.computeLocalizedRemoteIDSystemHeaderContentUsing(
            context,
          ),
        _ when headerIndex == length - four =>
          remoteIDEntity.computeLocalizedRemoteIDSelfIDHeaderContentUsing(
            context,
          ),
        _ when headerIndex == length - five =>
          remoteIDEntity.computeLocalizedRemoteIDLocationHeaderContentUsing(
            context,
          ),
        _ when headerIndex == length - length =>
          remoteIDEntity.computeLocalizedRemoteIDConnectionHeaderContentUsing(
            context,
          ),
        _ => remoteIDEntity.computeLocalizedRemoteIDBasicIDHeaderContentUsing(
            context,
            index: headerIndex,
          ),
      };
}

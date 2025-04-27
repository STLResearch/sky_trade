import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsetsDirectional,
        Expanded,
        InkWell,
        MediaQuery,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextOverflow,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hex0653EA, hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fourteenDotNil,
        one,
        twentyOneDotNil,
        twentyTwoDotNil,
        two;
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class CopiableContentCard extends StatelessWidget {
  const CopiableContentCard({
    required this.copiableContent,
    required this.actionText,
    required this.onActionTap,
    super.key,
  });

  final String copiableContent;
  final String actionText;
  final Function0<void>? onActionTap;

  @override
  Widget build(BuildContext context) => Card(
        width: MediaQuery.sizeOf(
          context,
        ).width,
        cornerRadius: eightDotNil,
        backgroundColor: hexE9F5FE,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: fourteenDotNil,
            horizontal: twentyTwoDotNil,
          ),
          child: Row(
            children: [
              Expanded(
                flex: two,
                child: Text(
                  copiableContent,
                  overflow: TextOverflow.ellipsis,
                  maxLines: one,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                      ),
                ),
              ),
              const SizedBox(
                width: fifteenDotNil,
              ),
              InkWell(
                onTap: onActionTap,
                child: Text(
                  actionText,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                        color: hex0653EA,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
}

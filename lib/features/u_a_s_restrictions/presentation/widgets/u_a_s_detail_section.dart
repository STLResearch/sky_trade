// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        FontWeight,
        MainAxisSize,
        Padding,
        RichText,
        SizedBox,
        StatelessWidget,
        Table,
        TableRow,
        Text,
        TextSpan,
        TextStyle,
        Theme,
        Widget,
        WidgetSpan;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fourteenDotNil,
        one,
        oneDotNil,
        sixteenDotOne,
        tenDotNil,
        two,
        zero;

class UASDetailSection extends StatelessWidget {
  const UASDetailSection({
    required this.title,
    required this.content,
    super.key,
  });

  final String title;
  final Map<String, String> content;

  @override
  Widget build(BuildContext context) => Column(
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
          Table(
            children: _buildTableRowsUsing(
              context,
            ),
          ),
        ],
      );

  List<TableRow> _buildTableRowsUsing(
    BuildContext context,
  ) {
    final rows = <TableRow>[];

    for (var i = zero; i < content.entries.length; i += two) {
      rows.add(
        TableRow(
          children: [
            if (i < content.entries.length)
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: fifteenDotNil,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: content.entries
                            .elementAt(
                              i,
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
                              i,
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
              )
            else
              const SizedBox.shrink(),
            if (i + one < content.entries.length)
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: content.entries
                          .elementAt(
                            i + one,
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
                            i + one,
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
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      );
    }

    return rows;
  }
}

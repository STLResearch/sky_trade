// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Padding,
        Row,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hexCCCCCC;
import 'package:sky_trade/core/resources/numbers/ui.dart' show nineDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/widgets/section_divider.dart';

final class OrSection extends StatelessWidget {
  const OrSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SectionDivider(
            fillWidth: true,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: nineDotNil,
            ),
            child: Text(
              context.localize.or,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: hexCCCCCC,
                  ),
            ),
          ),
          const SectionDivider(
            fillWidth: true,
          ),
        ],
      );
}

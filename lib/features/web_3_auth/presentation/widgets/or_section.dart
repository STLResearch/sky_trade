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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/colors.dart' show hexCCCCCC;
import 'package:sky_ways/core/resources/numbers.dart' show nineDotNil;
import 'package:sky_ways/features/web_3_auth/presentation/widgets/section_divider.dart';

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
              AppLocalizations.of(context)!.or,
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

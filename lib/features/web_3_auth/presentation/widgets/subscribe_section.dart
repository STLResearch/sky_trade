import 'package:flutter/material.dart'
    show
        BuildContext,
        Checkbox,
        MaterialTapTargetSize,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        VisualDensity,
        Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/colors.dart' show hex0653EA, hex87878D;
import 'package:sky_ways/core/resources/numbers.dart'
    show eightDotNil, fourteenDotNil, minusFourDotNil, twentyOneDotNil;

final class SubscribeSection extends StatelessWidget {
  const SubscribeSection({
    required this.checkboxNotifier,
    required this.checkboxEnabled,
    super.key,
  });

  final ValueNotifier<bool> checkboxNotifier;
  final bool checkboxEnabled;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          ValueListenableBuilder<bool>(
            valueListenable: checkboxNotifier,
            builder: (_, checkboxNotifierValue, __) => Checkbox(
              activeColor: hex0653EA,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(
                horizontal: minusFourDotNil,
                vertical: minusFourDotNil,
              ),
              value: checkboxNotifierValue,
              onChanged: switch (checkboxEnabled) {
                true => (value) =>
                    checkboxNotifier.value = value ?? checkboxNotifierValue,
                false => null,
              },
            ),
          ),
          const SizedBox(
            width: eightDotNil,
          ),
          Text(
            AppLocalizations.of(context)!.subscribeToNewsletter,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                  color: hex87878D,
                ),
          ),
        ],
      );
}

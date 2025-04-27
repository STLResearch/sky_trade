import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        AutovalidateMode,
        Border,
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        Flexible,
        FormField,
        InkWell,
        Padding,
        Radio,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex838187, hex87878D, hexE04F64;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fiveDotNil,
        fourteenDotNil,
        nilDotNil,
        sixteenDotNil,
        twentyOneDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show asterisk;
import 'package:sky_trade/core/utils/enums/ui.dart' show UserCategory;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class YourStatus extends StatelessWidget {
  const YourStatus({
    required this.enabled,
    required this.onChanged,
    super.key,
  });

  final bool enabled;
  final Function1<UserCategory?, void> onChanged;

  @override
  Widget build(BuildContext context) => FormField<UserCategory?>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (field) => Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    context.localize.yourStatus,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontSize: fourteenDotNil,
                          height: twentyOneDotNil / fourteenDotNil,
                          color: switch (field.hasError) {
                            true => hexE04F64,
                            false => hex838187,
                          },
                        ),
                  ),
                ),
                Text(
                  asterisk,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                        color: hexE04F64,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: fiveDotNil,
            ),
            ...List<Widget>.generate(
              UserCategory.values.length,
              (index) => Container(
                margin: EdgeInsetsDirectional.only(
                  bottom: switch (UserCategory.values[index]) {
                    UserCategory.individual => sixteenDotNil,
                    UserCategory.corporateEntity => nilDotNil,
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
                    eightDotNil,
                  ),
                  border: Border.all(
                    color: switch (field.value == UserCategory.values[index]) {
                      true => hex0653EA,
                      false => hex87878D,
                    },
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                    eightDotNil,
                  ),
                  onTap: switch (enabled) {
                    true => () {
                        field.didChange(
                          UserCategory.values[index],
                        );

                        onChanged(
                          UserCategory.values[index],
                        );
                      },
                    false => null,
                  },
                  child: Row(
                    children: [
                      Radio<UserCategory>(
                        activeColor: hex0653EA,
                        value: UserCategory.values[index],
                        groupValue: field.value,
                        onChanged: switch (enabled) {
                          true => (userCategory) {
                              field.didChange(
                                userCategory,
                              );

                              onChanged(
                                userCategory,
                              );
                            },
                          false => null,
                        },
                      ),
                      Expanded(
                        child: Text(
                          switch (UserCategory.values[index]) {
                            UserCategory.individual =>
                              context.localize.iAmAnIndividual,
                            UserCategory.corporateEntity =>
                              context.localize.iAmACorporateEntity,
                          },
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                                fontSize: fourteenDotNil,
                                height: twentyOneDotNil / fourteenDotNil,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            switch (field.hasError) {
              true => const SizedBox(
                  height: fiveDotNil,
                ),
              false => const SizedBox.shrink(),
            },
            switch (field.hasError) {
              true => Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: twentyTwoDotNil,
                    ),
                    child: Text(
                      field.errorText ?? context.localize.selectACategory,
                      style: Theme.of(
                        context,
                      ).inputDecorationTheme.errorStyle,
                    ),
                  ),
                ),
              false => const SizedBox.shrink(),
            },
          ],
        ),
        validator: (value) => switch (value == null) {
          true => context.localize.selectACategory,
          false => null,
        },
      );
}

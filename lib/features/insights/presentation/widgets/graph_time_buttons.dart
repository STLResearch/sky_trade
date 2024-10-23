import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Container,
        EdgeInsets,
        FontWeight,
        GestureDetector,
        MainAxisSize,
        Radius,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hex4285F4, hex87878D, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotOneEight,
        fiveDotEightFour,
        fiveDotFourFive,
        nilDotThreeNine,
        sixDotTwoThree,
        threeDotEightNine,
        threeDotOneTwo,
        threeFifteenDotNil,
        twentySevenDotNil,
        twentyThreeDotNil,
        twoHundredDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class GraphTimeButtons extends StatelessWidget {
  const GraphTimeButtons({required this.selectedPeriodNotifier, super.key});

  final ValueNotifier<String> selectedPeriodNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: twentySevenDotNil,
        left: twoHundredDotNil,
        right: twentyThreeDotNil,
        bottom: threeFifteenDotNil,
      ),
      padding: const EdgeInsets.all(
        threeDotEightNine,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            threeDotOneTwo,
          ),
        ),
      ),
      child: ValueListenableBuilder<String>(
        valueListenable: selectedPeriodNotifier,
        builder: (context, selectedButton, child) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildButton(
                context,
                context.localize.oneDay,
                selectedButton == context.localize.oneDay,
              ),
              const SizedBox(width: threeDotEightNine),
              _buildButton(
                context,
                context.localize.oneWeek,
                selectedButton == context.localize.oneWeek,
              ),
              const SizedBox(width: threeDotEightNine),
              _buildButton(
                context,
                context.localize.oneMonth,
                selectedButton == context.localize.oneMonth,
              ),
              const SizedBox(width: threeDotEightNine),
              _buildButton(
                context,
                context.localize.oneYear,
                selectedButton == context.localize.oneYear,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, bool isSelected) {
    return GestureDetector(
      onTap: () => selectedPeriodNotifier.value = text,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: fiveDotEightFour,
          vertical: sixDotTwoThree,
        ),
        decoration: BoxDecoration(
          color: isSelected ? hex4285F4 : hexFFFFFF,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              threeDotOneTwo,
            ),
          ),
          border: Border.all(
            color: isSelected ? hex4285F4 : hex87878D,
            width: nilDotThreeNine,
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: fiveDotFourFive,
                height: eightDotOneEight / fiveDotFourFive,
                color: isSelected ? hexFFFFFF : hex222222,
              ),
        ),
      ),
    );
  }
}

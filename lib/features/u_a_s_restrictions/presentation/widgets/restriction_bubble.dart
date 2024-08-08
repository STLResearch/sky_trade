import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Color,
        Container,
        Offset,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Transform,
        Widget;
import 'package:sky_ways/core/resources/colors.dart' show hexFFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        minusEightDotNil,
        minusSevenDotNil,
        nilDotNilOne,
        one,
        seventeenDotNil,
        twentyOneDotThreeSeven;

class RestrictionBubble extends StatelessWidget {
  const RestrictionBubble({
    required this.bubbleColor,
    super.key,
  });

  final Color bubbleColor;

  @override
  Widget build(BuildContext context) => Transform.translate(
        offset: const Offset(
          minusEightDotNil,
          minusSevenDotNil,
        ),
        child: Container(
          alignment: AlignmentDirectional.center,
          width: seventeenDotNil,
          height: seventeenDotNil,
          decoration: BoxDecoration(
            color: bubbleColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            textAlign: TextAlign.center,
            one.toString(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: elevenDotNil,
                  height: twentyOneDotThreeSeven / elevenDotNil,
                  letterSpacing: nilDotNilOne,
                  color: hexFFFFFF,
                ),
          ),
        ),
      );
}

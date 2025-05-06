import 'package:flutter/material.dart'
    show
        BoxConstraints,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Center,
        Color,
        Container,
        Positioned,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show nilDotNil, nineDotNil, twentyDotNil;

class NotificationCountBubble extends StatelessWidget {
  const NotificationCountBubble({
    required this.notificationCount,
    required this.textColor,
    required this.bubbleColor, super.key,
  });

  final String notificationCount;
  final Color bubbleColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: nilDotNil,
      top: nilDotNil,
      child: Container(
        decoration: BoxDecoration(
          color: bubbleColor,
          shape: BoxShape.circle,
        ),
        constraints: const BoxConstraints(
          minWidth: twentyDotNil,
          minHeight: twentyDotNil,
        ),
        child: Center(
          child: Text(
            notificationCount,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: nineDotNil,
            ),
          ),
        ),
      ),
    );
  }
}

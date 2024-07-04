import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubscribeWidget extends StatefulWidget {
  const SubscribeWidget({super.key});

  @override
  SubscribeWidgetState createState() => SubscribeWidgetState();
}

class SubscribeWidgetState extends State<SubscribeWidget> {
  bool _subscribeToNewsletter = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: const Color(0xFF87878D),
          // Set the active color to #87878D
          value: _subscribeToNewsletter,
          onChanged: (newValue) {
            setState(() {
              _subscribeToNewsletter = newValue!;
            });
          },
        ),
        Text(
          AppLocalizations.of(context)!.subscribetonewsletter,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF87878D),
          ),
        ),
      ],
    );
  }
}

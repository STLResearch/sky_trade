import 'package:flutter/material.dart';
import 'package:sky_trade/core/resources/colors.dart';

class DottedLineWidget extends StatelessWidget {
  const DottedLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 10,
            height: 13,
            child: Card(
              elevation: 0,
              color: hex4285F4,
            ),
          ),
          SizedBox(
            width: 10,
            height: 13,
            child: Card(
              elevation: 0,
              color: hex4285F4,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BuildContext,
        Expanded,
        MainAxisAlignment,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:intl/intl.dart' show DateFormat;
import 'package:sky_trade/core/resources/colors.dart' show hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart' show sixteenDotNil;
import 'package:sky_trade/core/resources/strings/ui.dart' show ddMMyyhmma;

class TrackedDrone extends StatelessWidget {
  const TrackedDrone({
    required this.macAddress,
    required this.lastUpdate,
    this.givenName,
    super.key,
  });

  final String macAddress;
  final DateTime lastUpdate;
  final String? givenName;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              givenName ?? macAddress,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(
                    color: hex838187,
                  ),
            ),
          ),
          const SizedBox(
            width: sixteenDotNil,
          ),
          Text(
            DateFormat(
              ddMMyyhmma,
            ).format(
              lastUpdate,
            ),
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(
                  color: hex838187,
                ),
          ),
        ],
      );
}

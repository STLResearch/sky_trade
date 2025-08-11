// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show BuildContext, Divider, Expanded, StatelessWidget, Widget;
import 'package:sky_trade/core/resources/numbers/ui.dart' show oneDotNil;

final class SectionDivider extends StatelessWidget {
  const SectionDivider({
    required this.fillWidth,
    super.key,
  });

  final bool fillWidth;

  @override
  Widget build(BuildContext context) => switch (fillWidth) {
        true => Expanded(
            child: _buildDivider(),
          ),
        false => _buildDivider(),
      };

  Widget _buildDivider() => const Divider(
        height: oneDotNil,
        thickness: oneDotNil,
      );
}

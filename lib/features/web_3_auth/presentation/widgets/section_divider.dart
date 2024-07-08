import 'package:flutter/material.dart'
    show BuildContext, Divider, Expanded, StatelessWidget, Widget;
import 'package:sky_ways/core/resources/numbers.dart' show oneDotNil;

final class SectionDivider extends StatelessWidget {
  const SectionDivider({
    required this.expand,
    super.key,
  });

  final bool expand;

  @override
  Widget build(BuildContext context) => switch (expand) {
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

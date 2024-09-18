// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart'
    show
        AnimatedPositioned,
        BottomNavigationBar,
        BottomNavigationBarItem,
        BuildContext,
        EdgeInsetsDirectional,
        LayoutBuilder,
        Padding,
        Stack,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:sky_ways/core/assets/generated/assets.gen.dart'
    show Assets, SvgGenImage;
import 'package:sky_ways/core/resources/colors.dart' show hex4285F4, hex5D7285;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        five,
        forty,
        nilDotNil,
        one,
        oneHundred,
        sixteenDotNil,
        ten,
        three,
        twentyFourDotNil,
        two,
        zero;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.selectedBottomNavigationBarItemIndex,
    super.key,
  });

  final ValueNotifier<int> selectedBottomNavigationBarItemIndex;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<int>(
        valueListenable: selectedBottomNavigationBarItemIndex,
        builder: (_, selectedBottomNavigationBarItemIndexValue, __) =>
            LayoutBuilder(
          builder: (___, constraints) => Stack(
            children: [
              BottomNavigationBar(
                currentIndex: selectedBottomNavigationBarItemIndexValue,
                items: List<BottomNavigationBarItem>.generate(
                  five,
                  (index) => BottomNavigationBarItem(
                    label: _computeBottomNavigationBarLabelFrom(
                      context: context,
                      index: index,
                    ),
                    icon: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: sixteenDotNil,
                      ),
                      child: _computeBottomNavigationBarSvgAssetFrom(
                        index,
                      ).svg(
                        width: twentyFourDotNil,
                        height: twentyFourDotNil,
                        color: switch (
                            selectedBottomNavigationBarItemIndexValue ==
                                index) {
                          true => hex4285F4,
                          false => hex5D7285,
                        },
                      ),
                    ),
                  ),
                ),
                onTap: (index) =>
                    selectedBottomNavigationBarItemIndex.value = index,
              ),
              AnimatedPositioned(
                top: nilDotNil,
                left: constraints.maxWidth /
                        five *
                        selectedBottomNavigationBarItemIndexValue +
                    (constraints.maxWidth / ten) -
                    forty,
                duration: const Duration(
                  milliseconds: oneHundred,
                ),
                child: Assets.svgs.indicator.svg(),
              ),
            ],
          ),
        ),
      );

  String _computeBottomNavigationBarLabelFrom({
    required BuildContext context,
    required int index,
  }) =>
      switch (index) {
        zero => context.localize.flight,
        one => context.localize.map,
        two => context.localize.weather,
        three => context.localize.community,
        _ => context.localize.account,
      };

  SvgGenImage _computeBottomNavigationBarSvgAssetFrom(
    int index,
  ) =>
      switch (index) {
        zero => Assets.svgs.flight,
        one => Assets.svgs.map,
        two => Assets.svgs.weather,
        three => Assets.svgs.community,
        _ => Assets.svgs.account,
      };
}

import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        AlwaysScrollableScrollPhysics,
        BorderRadius,
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Colors,
        Column,
        ConstrainedBox,
        Container,
        EdgeInsets,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        InkWell,
        LayoutBuilder,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        Material,
        NeverScrollableScrollPhysics,
        Offset,
        Padding,
        Radius,
        Row,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextDecoration,
        TextStyle,
        Widget;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/colors.dart'
    show hex222222, hex3A4DE9, hexD9D9D9, hexFFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fiveDotNil,
        minusTenDotNil,
        nilDotNil,
        nilDotOneFive,
        nineDotNil,
        seventyDotNil,
        tenDotNil,
        thirtyDotNil,
        thirtyFourDotNil,
        threeDotNil,
        twelveDotNil,
        twentyDotNil;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show arrowRightAssetPath, clearAssetPath, iconDroneBlackAssetPath;
import 'package:sky_ways/core/resources/strings/fonts.dart';

class DronesBottomSheet extends StatelessWidget {
  const DronesBottomSheet({
    required this.droneCount,
    required this.droneList,
    super.key,
  });

  final int droneCount;
  final List<String> droneList;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          top: fifteenDotNil,
          end: thirtyDotNil,
          start: thirtyDotNil,
          bottom: twentyDotNil,
        ),
        decoration: const BoxDecoration(
          color: hexFFFFFF,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(thirtyDotNil),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    clearAssetPath,
                  ),
                ),
                Align(
                  child: Column(
                    children: [
                      Container(
                        width: seventyDotNil,
                        height: nineDotNil,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                            eightDotNil,
                          ),
                          color: hexD9D9D9,
                        ),
                      ),
                      const SizedBox(
                        height: twentyDotNil,
                      ),
                      Text(
                        '$droneCount drones',
                        style: const TextStyle(
                          fontFamily: poppins,
                          fontSize: twentyDotNil,
                          fontWeight: FontWeight.w500,
                          color: hex222222,
                          decoration: TextDecoration.none,
                          height: thirtyDotNil / twentyDotNil,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: tenDotNil,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                // Constrain the height of the list to be at most 220
                return ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 700, // Max height for the list
                  ),
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: droneList.length,
                    itemBuilder: (context, index) {
                      return DroneListItem(drone: droneList[index]);
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: tenDotNil,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DroneListItem extends StatelessWidget {
  const DroneListItem({
    required this.drone,
    super.key,
  });

  final String drone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: threeDotNil,
      ),
      decoration: BoxDecoration(
        color: hexFFFFFF,
        borderRadius: BorderRadius.circular(
          tenDotNil,
        ),
        boxShadow: [
          BoxShadow(
            color: hex3A4DE9.withOpacity(
              nilDotOneFive,
            ),
            spreadRadius: minusTenDotNil,
            blurRadius: thirtyFourDotNil,
            offset: const Offset(
              nilDotNil,
              twelveDotNil,
            ),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: tenDotNil,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                top: fiveDotNil,
                left: twentyDotNil,
                bottom: fiveDotNil,
              ),
              decoration: const BoxDecoration(
                color: hexFFFFFF,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    iconDroneBlackAssetPath,
                  ),
                  Expanded(
                    child: Text(
                      drone,
                      style: const TextStyle(
                        fontFamily: poppins,
                        fontSize: twentyDotNil,
                        fontWeight: FontWeight.w400,
                        color: hex222222,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    arrowRightAssetPath,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

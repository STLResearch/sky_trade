import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart' show BuildContext, Color;
import 'package:flutter/services.dart' show rootBundle;
import 'package:sky_trade/core/assets/generated/assets.gen.dart'
    show Assets, SvgGenImage;
import 'package:sky_trade/core/resources/colors.dart'
    show
        rawHexA9143A,
        rawHexB3BBBD48,
        rawHexB3E04F64,
        rawHexB3F68351,
        rawHexBBBD48,
        rawHexF68351;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show RestrictionType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

extension RestrictionEntityExtensions on RestrictionEntity {
  Color get polygonColor => switch (properties.restrictionType) {
        RestrictionType.danger => const Color(rawHexBBBD48),
        RestrictionType.prohibited => const Color(rawHexA9143A),
        RestrictionType.restricted => const Color(rawHexF68351),
      };

  Color get indicatorFillColor => Color(
        switch (properties.restrictionType) {
          RestrictionType.danger => rawHexB3BBBD48,
          RestrictionType.prohibited => rawHexB3E04F64,
          RestrictionType.restricted => rawHexB3F68351,
        },
      );

  Future<Uint8List> get polygonMarkerImage async {
    final bytes = await rootBundle.load(
      switch (properties.restrictionType) {
        RestrictionType.danger => Assets.pngs.markerDanger.path,
        RestrictionType.prohibited => Assets.pngs.markerProhibited.path,
        RestrictionType.restricted => Assets.pngs.markerRestricted.path,
      },
    );

    return bytes.buffer.asUint8List();
  }

  String computeRestrictionTitleUsing({
    required BuildContext context,
  }) =>
      switch (properties.restrictionType) {
        RestrictionType.danger => context.localize.specialUseAirspace,
        RestrictionType.prohibited => context.localize.flightRestrictedAirspace,
        RestrictionType.restricted => context.localize.controlledAirspace,
      };

  SvgGenImage get restrictionSheetTitleInfoAsset =>
      switch (properties.restrictionType) {
        RestrictionType.prohibited => Assets.svgs.prohibited,
        _ => Assets.svgs.info,
      };

  SvgGenImage get restrictionSheetAddressInfoAsset =>
      switch (properties.restrictionType) {
        RestrictionType.prohibited => Assets.svgs.locationProhibited,
        _ => Assets.svgs.locationDangerRestricted,
      };
}

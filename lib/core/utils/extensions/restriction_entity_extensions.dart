import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart' show BuildContext, Color;
import 'package:flutter/services.dart' show rootBundle;
import 'package:sky_ways/core/assets/generated/assets.gen.dart'
    show Assets, SvgGenImage;
import 'package:sky_ways/core/resources/colors.dart'
    show
        rawHex33BBBD48,
        rawHex33E04F64,
        rawHex33F68351,
        rawHexA9143A,
        rawHexB3BBBD48,
        rawHexB3E04F64,
        rawHexB3F68351,
        rawHexBBBD48,
        rawHexF68351;
import 'package:sky_ways/core/utils/enums/networking.dart' show RestrictionType;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

extension RestrictionEntityExtensions on RestrictionEntity {
  int get polygonFillColor => switch (type) {
        RestrictionType.danger => rawHex33BBBD48,
        RestrictionType.prohibited => rawHex33E04F64,
        RestrictionType.restricted => rawHex33F68351,
      };

  int get polygonFillOutlineColor => switch (type) {
        RestrictionType.danger => rawHexBBBD48,
        RestrictionType.prohibited => rawHexA9143A,
        RestrictionType.restricted => rawHexF68351,
      };

  Color get indicatorFillColor => Color(
        switch (type) {
          RestrictionType.danger => rawHexB3BBBD48,
          RestrictionType.prohibited => rawHexB3E04F64,
          RestrictionType.restricted => rawHexB3F68351,
        },
      );

  Future<Uint8List> get polygonMarkerImage async {
    final bytes = await rootBundle.load(
      switch (type) {
        RestrictionType.danger => Assets.pngs.markerDanger.path,
        RestrictionType.prohibited => Assets.pngs.markerProhibited.path,
        RestrictionType.restricted => Assets.pngs.markerRestricted.path,
      },
    );

    return bytes.buffer.asUint8List();
  }

  SvgGenImage get restrictionIndicatorInfoAsset => switch (type) {
        RestrictionType.danger => Assets.svgs.infoDanger,
        RestrictionType.prohibited => Assets.svgs.infoProhibited,
        RestrictionType.restricted => Assets.svgs.infoRestricted,
      };

  String computeRestrictionTitleUsing({
    required BuildContext context,
  }) =>
      switch (type) {
        RestrictionType.danger => context.localize.specialUseAirspace,
        RestrictionType.prohibited => context.localize.flightRestrictedAirspace,
        RestrictionType.restricted => context.localize.controlledAirspace,
      };

  SvgGenImage get restrictionSheetTitleInfoAsset => switch (type) {
        RestrictionType.prohibited => Assets.svgs.prohibited,
        _ => Assets.svgs.info,
      };

  SvgGenImage get restrictionSheetAddressInfoAsset => switch (type) {
        RestrictionType.prohibited => Assets.svgs.locationProhibited,
        _ => Assets.svgs.locationDangerRestricted,
      };
}

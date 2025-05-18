import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart' show BuildContext, Color;
import 'package:flutter/services.dart' show rootBundle;
import 'package:sky_trade/core/assets/generated/assets.gen.dart'
    show Assets, SvgGenImage;
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex222222,
        hexA9143A,
        hexB3BBBD48,
        hexB3E04F64,
        hexB3F68351,
        hexBBBD48,
        hexE04F64,
        hexECEE75,
        hexF68351,
        hexFF9D72,
        hexFFFFFF;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show RestrictionType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

extension RestrictionEntityExtensions on RestrictionEntity {
  Color get polygonFillColor => switch (properties.type) {
        RestrictionType.danger => hexB3BBBD48,
        RestrictionType.prohibited => hexB3E04F64,
        RestrictionType.restricted => hexB3F68351,
      };

  Color get polygonOutlineColor => switch (properties.type) {
        RestrictionType.danger => hexBBBD48,
        RestrictionType.prohibited => hexA9143A,
        RestrictionType.restricted => hexF68351,
      };

  Color get indicatorFillColor => switch (properties.type) {
        RestrictionType.danger => hexECEE75,
        RestrictionType.prohibited => hexE04F64,
        RestrictionType.restricted => hexFF9D72,
      };

  Color get indicatorOutlineColor => switch (properties.type) {
        RestrictionType.danger => hexBBBD48,
        RestrictionType.prohibited => hexA9143A,
        RestrictionType.restricted => hexF68351,
      };

  Color get indicatorTextColor => switch (properties.type) {
        RestrictionType.danger => hex222222,
        RestrictionType.prohibited => hexFFFFFF,
        RestrictionType.restricted => hexFFFFFF,
      };

  Future<Uint8List> get polygonMarkerImage async {
    final bytes = await rootBundle.load(
      switch (properties.type) {
        RestrictionType.danger => Assets.pngs.markerDanger.path,
        RestrictionType.prohibited => Assets.pngs.markerProhibited.path,
        RestrictionType.restricted => Assets.pngs.markerRestricted.path,
      },
    );

    return bytes.buffer.asUint8List();
  }

  SvgGenImage get restrictionIndicatorInfoAsset => switch (properties.type) {
        RestrictionType.danger => Assets.svgs.infoDanger,
        RestrictionType.prohibited => Assets.svgs.infoProhibited,
        RestrictionType.restricted => Assets.svgs.infoRestricted,
      };

  String computeRestrictionTitleUsing({
    required BuildContext context,
  }) =>
      switch (properties.type) {
        RestrictionType.danger => context.localize.specialUseAirspace,
        RestrictionType.prohibited => context.localize.restrictedAirspace,
        RestrictionType.restricted => context.localize.controlledAirspace,
      };

  SvgGenImage get restrictionSheetTitleInfoAsset => switch (properties.type) {
        RestrictionType.danger => Assets.svgs.danger,
        RestrictionType.prohibited => Assets.svgs.prohibited,
        RestrictionType.restricted => Assets.svgs.restricted,
      };

  SvgGenImage get restrictionSheetAddressInfoAsset => switch (properties.type) {
        RestrictionType.danger => Assets.svgs.locationDanger,
        RestrictionType.prohibited => Assets.svgs.locationProhibited,
        RestrictionType.restricted => Assets.svgs.locationRestricted,
      };
}

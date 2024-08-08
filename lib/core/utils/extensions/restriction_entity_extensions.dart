import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart' show BuildContext, Color;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show
        infoAssetPath,
        infoDangerAssetPath,
        infoProhibitedAssetPath,
        infoRestrictedAssetPath,
        locationDangerRestrictedAssetPath,
        locationProhibitedAssetPath,
        markerDangerAssetPath,
        markerProhibitedAssetPath,
        markerRestrictedAssetPath,
        prohibitedAssetPath;
import 'package:sky_ways/core/utils/enums/networking.dart' show RestrictionType;
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

  Color get fillColor => Color(
        switch (type) {
          RestrictionType.danger => rawHexB3BBBD48,
          RestrictionType.prohibited => rawHexB3E04F64,
          RestrictionType.restricted => rawHexB3F68351,
        },
      );

  Future<Uint8List> get polygonMarkerImage async {
    final bytes = await rootBundle.load(
      switch (type) {
        RestrictionType.danger => markerDangerAssetPath,
        RestrictionType.prohibited => markerProhibitedAssetPath,
        RestrictionType.restricted => markerRestrictedAssetPath,
      },
    );

    return bytes.buffer.asUint8List();
  }

  String get restrictionIndicatorInfoAssetPath => switch (type) {
        RestrictionType.danger => infoDangerAssetPath,
        RestrictionType.prohibited => infoProhibitedAssetPath,
        RestrictionType.restricted => infoRestrictedAssetPath,
      };

  String computeRestrictionTitleUsing({
    required BuildContext context,
  }) =>
      switch (type) {
        RestrictionType.danger =>
          AppLocalizations.of(context)!.specialUseAirspace,
        RestrictionType.prohibited =>
          AppLocalizations.of(context)!.flightRestrictedAirspace,
        RestrictionType.restricted =>
          AppLocalizations.of(context)!.controlledAirspace,
      };

  String get restrictionSheetTitleInfoAssetPath => switch (type) {
        RestrictionType.prohibited => prohibitedAssetPath,
        _ => infoAssetPath,
      };

  String get restrictionSheetAddressInfoAssetPath => switch (type) {
        RestrictionType.prohibited => locationProhibitedAssetPath,
        _ => locationDangerRestrictedAssetPath,
      };
}

// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:typed_data' show Uint8List;

import 'package:hive_ce/hive.dart'
    show AdapterSpec, BinaryReader, BinaryWriter, GenerateAdapters, TypeAdapter;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show
        GeometryType,
        RemoteIDMessageSource,
        RestrictionType,
        UnmannedAircraftAuthenticationType,
        UnmannedAircraftCategory,
        UnmannedAircraftClassValue,
        UnmannedAircraftClassificationType,
        UnmannedAircraftHeightType,
        UnmannedAircraftHorizontalAccuracy,
        UnmannedAircraftIDType,
        UnmannedAircraftOperationalStatus,
        UnmannedAircraftOperatorIDType,
        UnmannedAircraftOperatorLocationType,
        UnmannedAircraftSelfIDDescriptionType,
        UnmannedAircraftSpeedAccuracy,
        UnmannedAircraftType,
        UnmannedAircraftVerticalOrBarometerAccuracy;
import 'package:sky_trade/features/auth/data/models/auth_model.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart';
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<RestrictionModel>(),
  AdapterSpec<PropertiesModel>(),
  AdapterSpec<RestrictionType>(),
  AdapterSpec<AdditionalLinkModel>(),
  AdapterSpec<GeometryModel>(),
  AdapterSpec<GeometryType>(),
  AdapterSpec<SkyTradeUserModel>(),
  AdapterSpec<OwnedReferralCodeModel>(),
  AdapterSpec<RemoteIDModel>(),
  AdapterSpec<ConnectionModel>(),
  AdapterSpec<RemoteIDMessageSource>(),
  AdapterSpec<BasicIDModel>(),
  AdapterSpec<UnmannedAircraftType>(),
  AdapterSpec<UnmannedAircraftIDType>(),
  AdapterSpec<LocationModel>(),
  AdapterSpec<UnmannedAircraftOperationalStatus>(),
  AdapterSpec<UnmannedAircraftHeightType>(),
  AdapterSpec<UnmannedAircraftHorizontalAccuracy>(),
  AdapterSpec<UnmannedAircraftVerticalOrBarometerAccuracy>(),
  AdapterSpec<UnmannedAircraftSpeedAccuracy>(),
  AdapterSpec<SystemModel>(),
  AdapterSpec<UnmannedAircraftOperatorLocationType>(),
  AdapterSpec<UnmannedAircraftClassificationType>(),
  AdapterSpec<UnmannedAircraftCategory>(),
  AdapterSpec<UnmannedAircraftClassValue>(),
  AdapterSpec<CoordinatesModel>(),
  AdapterSpec<SelfIDModel>(),
  AdapterSpec<UnmannedAircraftSelfIDDescriptionType>(),
  AdapterSpec<OperatorIDModel>(),
  AdapterSpec<UnmannedAircraftOperatorIDType>(),
  AdapterSpec<AuthenticationModel>(),
  AdapterSpec<UnmannedAircraftAuthenticationType>(),
  AdapterSpec<GeolocatedRemoteIDCollectionModel>(),
  AdapterSpec<DeviceModel>(),
])
class HiveAdapters {}

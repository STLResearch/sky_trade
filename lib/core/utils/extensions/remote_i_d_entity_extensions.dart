// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart' show BuildContext;
import 'package:sky_trade/core/resources/numbers/ui.dart' show eight, one;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, hyphen;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show
        AuthenticationModel,
        BasicIDModel,
        ConnectionModel,
        CoordinatesModel,
        DeviceModel,
        LocationModel,
        OperatorIDModel,
        RemoteIDModel,
        SelfIDModel,
        SystemModel;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show DeviceEntity, RemoteIDEntity;

extension RemoteIDEntityExtensions on RemoteIDEntity {
  RemoteIDModel toRemoteIDModel() {
    final connectionModel = ConnectionModel(
      mMacAddress: connection.macAddress,
      mLastSeen: connection.lastSeen,
      mMessageSource: connection.messageSource,
      mRssi: connection.rssi,
    );

    final basicIDModels = basicIDs
        ?.map(
          (basicIDEntity) => BasicIDModel(
            mType: basicIDEntity.type,
            mIDType: basicIDEntity.iDType,
            mSerialNumber: basicIDEntity.serialNumber,
            mRegistrationID: basicIDEntity.registrationID,
            mID: basicIDEntity.iD,
            mRawData: basicIDEntity.rawData,
          ),
        )
        .toList();

    LocationModel? locationModel;
    if (location != null) {
      locationModel = LocationModel(
        mOperationalStatus: location!.operationalStatus,
        mHeightType: location!.heightType,
        mHorizontalAccuracy: location!.horizontalAccuracy,
        mVerticalAccuracy: location!.verticalAccuracy,
        mBarometerAccuracy: location!.barometerAccuracy,
        mSpeedAccuracy: location!.speedAccuracy,
        mDirection: location!.direction,
        mHorizontalSpeed: location!.horizontalSpeed,
        mVerticalSpeed: location!.verticalSpeed,
        mLatitude: location!.latitude,
        mLongitude: location!.longitude,
        mLocation: switch (location!.location != null) {
          true => CoordinatesModel(
              mLatitude: location!.location!.latitude,
              mLongitude: location!.location!.longitude,
            ),
          false => null,
        },
        mAltitudePressure: location!.altitudePressure,
        mAltitudeGeodetic: location!.altitudeGeodetic,
        mHeight: location!.height,
        mTimestamp: location!.timestamp,
        mTimestampAccuracy: location!.timestampAccuracy,
        mRawData: location!.rawData,
      );
    }

    SystemModel? systemModel;
    if (system != null) {
      systemModel = SystemModel(
        mOperatorLocationType: system!.operatorLocationType,
        mClassificationType: system!.classificationType,
        mAreaCount: system!.areaCount,
        mAreaRadius: system!.areaRadius,
        mTimestamp: system!.timestamp,
        mOperatorLatitude: system!.operatorLatitude,
        mOperatorLongitude: system!.operatorLongitude,
        mOperatorLocation: switch (system!.operatorLocation != null) {
          true => CoordinatesModel(
              mLatitude: system!.operatorLocation!.latitude,
              mLongitude: system!.operatorLocation!.longitude,
            ),
          false => null,
        },
        mOperatorAltitude: system!.operatorAltitude,
        mAreaCeiling: system!.areaCeiling,
        mAreaFloor: system!.areaFloor,
        mCategory: system!.category,
        mClassValue: system!.classValue,
        mRawData: system!.rawData,
      );
    }

    SelfIDModel? selfIDModel;
    if (selfID != null) {
      selfIDModel = SelfIDModel(
        mDescriptionType: selfID!.descriptionType,
        mOperationDescription: selfID!.operationDescription,
        mDescription: selfID!.description,
        mRawData: selfID!.rawData,
      );
    }

    OperatorIDModel? operatorIDModel;
    if (operatorID != null) {
      operatorIDModel = OperatorIDModel(
        mOperatorIDType: operatorID!.operatorIDType,
        mOperatorIDClassification: operatorID!.operatorIDClassification,
        mOperatorID: operatorID!.operatorID,
        mID: operatorID!.iD,
        mRawData: operatorID!.rawData,
      );
    }

    AuthenticationModel? authenticationModel;
    if (authentication != null) {
      authenticationModel = AuthenticationModel(
        mAuthenticationType: authentication!.authenticationType,
        mAuthenticationPageNumber: authentication!.authenticationPageNumber,
        mAuthenticationData: authentication!.authenticationData,
        mLastAuthenticationPageIndex:
            authentication!.lastAuthenticationPageIndex,
        mAuthenticationLength: authentication!.authenticationLength,
        mTimestamp: authentication!.timestamp,
        mRawData: authentication!.rawData,
      );
    }

    return RemoteIDModel(
      mConnection: connectionModel,
      mBasicIDs: basicIDModels,
      mLocation: locationModel,
      mSystem: systemModel,
      mSelfID: selfIDModel,
      mOperatorID: operatorIDModel,
      mAuthentication: authenticationModel,
    );
  }

  Map<String, String> computeLocalizedRemoteIDConnectionHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.rssi: connection.rssi?.toString() ?? hyphen,
        context.localize.mac: connection.macAddress,
        context.localize.lastSeen: connection.lastSeen.toString(),
        context.localize.source: connection.messageSource.name,
      };

  Map<String, String> computeLocalizedRemoteIDBasicIDHeaderContentUsing(
    BuildContext context, {
    required int position,
  }) {
    final basicID = switch (basicIDs?.isEmpty ?? false) {
      true => null,
      false => basicIDs?[position - one],
    };

    return {
      context.localize.type: basicID?.type.name ?? hyphen,
      context.localize.idType: basicID?.iDType.name ?? hyphen,
      context.localize.uasId: basicID?.iD?.toList().toString() ??
          basicID?.serialNumber ??
          basicID?.registrationID ??
          hyphen,
    };
  }

  Map<String, String> computeLocalizedRemoteIDLocationHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.latitude: location?.location?.latitude.toString() ??
            location?.latitude?.toString() ??
            hyphen,
        context.localize.longitude: location?.location?.longitude.toString() ??
            location?.longitude?.toString() ??
            hyphen,
        context.localize.altitudePress:
            location?.altitudePressure?.toString() ?? hyphen,
        context.localize.altitudeGeod:
            location?.altitudeGeodetic?.toString() ?? hyphen,
        context.localize.direction: location?.direction?.toString() ?? hyphen,
        context.localize.status: location?.operationalStatus.name ?? hyphen,
        context.localize.horizontalSpeed:
            location?.horizontalSpeed?.toString() ?? hyphen,
        context.localize.verticalSpeed:
            location?.verticalSpeed?.toString() ?? hyphen,
        context.localize.height: location?.height?.toString() ?? hyphen,
        context.localize.heightOver: location?.heightType.name ?? hyphen,
        context.localize.horizontalAccuracy:
            location?.horizontalAccuracy.name ?? hyphen,
        context.localize.verticalAccuracy:
            location?.verticalAccuracy.name ?? hyphen,
        context.localize.baroAcc: location?.barometerAccuracy.name ?? hyphen,
        context.localize.speedAcc: location?.speedAccuracy.name ?? hyphen,
        context.localize.timeAcc:
            location?.timestampAccuracy?.toString() ?? hyphen,
        context.localize.timestamp: location?.timestamp?.toString() ?? hyphen,
      };

  Map<String, String> computeLocalizedRemoteIDSelfIDHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.operation: selfID?.description ??
            selfID?.operationDescription?.toList().toString() ??
            hyphen,
        context.localize.type: selfID?.descriptionType.name ?? hyphen,
      };

  Map<String, String> computeLocalizedRemoteIDSystemHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.locationType:
            system?.operatorLocationType.name ?? hyphen,
        context.localize.altitude:
            system?.operatorAltitude?.toString() ?? hyphen,
        context.localize.latitude:
            system?.operatorLocation?.latitude.toString() ??
                system?.operatorLatitude?.toString() ??
                hyphen,
        context.localize.longitude:
            system?.operatorLocation?.longitude.toString() ??
                system?.operatorLongitude?.toString() ??
                hyphen,
        context.localize.areaCount: system?.areaCount.toString() ?? hyphen,
        context.localize.areaRadius: system?.areaRadius.toString() ?? hyphen,
        context.localize.areaCeiling: system?.areaCeiling?.toString() ?? hyphen,
        context.localize.areaFloor: system?.areaFloor?.toString() ?? hyphen,
        context.localize.classification:
            system?.classificationType.name ?? hyphen,
        context.localize.cLass: system?.classValue.name ?? hyphen,
        context.localize.category: system?.category.name ?? hyphen,
      };

  Map<String, String> computeLocalizedRemoteIDOperatorIDHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.operatorId
                    .split(
                      emptyString,
                    )
                    .first
                    .toUpperCase() +
                context.localize.operatorId
                    .substring(
                      one,
                      eight,
                    )
                    .toLowerCase() +
                context.localize.operatorId.substring(
                  eight,
                ):
            operatorID?.iD ??
                operatorID?.operatorID?.toList().toString() ??
                hyphen,
        context.localize.type: operatorID?.operatorIDClassification?.name ??
            operatorID?.operatorIDType?.toString() ??
            hyphen,
      };

  Map<String, String> computeLocalizedRemoteIDAuthenticationHeaderContentUsing(
    BuildContext context,
  ) =>
      {
        context.localize.type:
            authentication?.authenticationType.name ?? hyphen,
        context.localize.length:
            authentication?.authenticationLength?.toString() ?? hyphen,
        context.localize.timestamp:
            authentication?.timestamp?.toString() ?? hyphen,
        context.localize.authentication
                    .split(
                      emptyString,
                    )
                    .first
                    .toUpperCase() +
                context.localize.authentication
                    .substring(
                      one,
                    )
                    .toLowerCase():
            authentication?.authenticationData.toList().toString() ?? hyphen,
        context.localize.page:
            authentication?.authenticationPageNumber.toString() ?? hyphen,
        context.localize.index:
            authentication?.lastAuthenticationPageIndex?.toString() ?? hyphen,
      };
}

extension DeviceEntityExtensions on DeviceEntity {
  DeviceModel toDeviceModel() => DeviceModel(
        mLatitude: latitude,
        mLongitude: longitude,
      );
}

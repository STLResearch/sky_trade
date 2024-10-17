import 'package:sky_ways/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show
        AuthenticationModel,
        BasicIDModel,
        ConnectionModel,
        CoordinatesModel,
        LocationModel,
        OperatorIDModel,
        RemoteIDModel,
        SelfIDModel,
        SystemModel;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

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
      );
    }

    SelfIDModel? selfIDModel;
    if (selfID != null) {
      selfIDModel = SelfIDModel(
        mDescriptionType: selfID!.descriptionType,
        mOperationDescription: selfID!.operationDescription,
        mDescription: selfID!.description,
      );
    }

    OperatorIDModel? operatorIDModel;
    if (operatorID != null) {
      operatorIDModel = OperatorIDModel(
        mOperatorIDType: operatorID!.operatorIDType,
        mOperatorIDClassification: operatorID!.operatorIDClassification,
        mOperatorID: operatorID!.operatorID,
        mID: operatorID!.iD,
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
}

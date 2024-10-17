// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'u_a_s_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UASModel _$UASModelFromJson(Map<String, dynamic> json) => UASModel(
      mId: json['id'] as String,
      mRemoteData:
          RemoteIDModel.fromJson(json['remoteData'] as Map<String, dynamic>),
      mCreatedAt: json['createdAt'] as String,
      mUpdateAt: json['updateAt'] as String,
    );

Map<String, dynamic> _$UASModelToJson(UASModel instance) => <String, dynamic>{
      'id': instance.mId,
      'remoteData': instance.mRemoteData,
      'createdAt': instance.mCreatedAt,
      'updateAt': instance.mUpdateAt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_space_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirSpaceHistoryModel _$AirSpaceHistoryModelFromJson(
        Map<String, dynamic> json) =>
    AirSpaceHistoryModel(
      mLifetimeTotalIncome: (json['lifetime_total_income'] as num).toDouble(),
      mTotalIncomeMTD: (json['total_income_mtd'] as num).toDouble(),
      mTotalIncomeWTD: (json['total_income_wtd'] as num).toDouble(),
      mAirSpaceHistoryTable: (json['airspace_history'] as List<dynamic>)
          .map((e) => AirSpaceHistoryTableEntryModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AirSpaceHistoryModelToJson(
        AirSpaceHistoryModel instance) =>
    <String, dynamic>{
      'lifetime_total_income': instance.mLifetimeTotalIncome,
      'total_income_mtd': instance.mTotalIncomeMTD,
      'total_income_wtd': instance.mTotalIncomeWTD,
      'airspace_history': instance.mAirSpaceHistoryTable,
    };

AirSpaceHistoryTableEntryModel _$AirSpaceHistoryTableEntryModelFromJson(
        Map<String, dynamic> json) =>
    AirSpaceHistoryTableEntryModel(
      mType: json['type'] as String,
      mDate: json['date'] as String,
      mPrice: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$AirSpaceHistoryTableEntryModelToJson(
        AirSpaceHistoryTableEntryModel instance) =>
    <String, dynamic>{
      'price': instance.mPrice,
      'type': instance.mType,
      'date': instance.mDate,
    };

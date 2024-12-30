import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/features/air_rights/domain/entities/air_space_history_entity.dart';

part 'air_space_history_model.g.dart';

@JsonSerializable()
final class AirSpaceHistoryModel extends AirSpaceHistoryEntity {
  AirSpaceHistoryModel({
    required this.mLifetimeTotalIncome,
    required this.mTotalIncomeMTD,
    required this.mTotalIncomeWTD,
    required this.mAirSpaceHistoryTable,
  }) : super(
          lifetimeTotalIncome: mLifetimeTotalIncome,
          totalIncomeMTD: mTotalIncomeMTD,
          totalIncomeWTD: mTotalIncomeWTD,
          airSpaceHistoryTable: mAirSpaceHistoryTable,
        );

  factory AirSpaceHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AirSpaceHistoryModelFromJson(json);

  @JsonKey(name: lifetimeTotalIncomeKey)
  final double mLifetimeTotalIncome;

  @JsonKey(name: totalIncomeMTDKey)
  final double mTotalIncomeMTD;

  @JsonKey(name: totalIncomeWTDKey)
  final double mTotalIncomeWTD;

  @JsonKey(name: airSpaceHistoryTableKey)
  final List<AirSpaceHistoryTableEntryModel> mAirSpaceHistoryTable;
}

@JsonSerializable()
final class AirSpaceHistoryTableEntryModel
    extends AirSpaceHistoryTableEntryEntity {
  AirSpaceHistoryTableEntryModel({
    required this.mType,
    required this.mDate,
    required this.mPrice,
  }) : super(
          price: mPrice,
          type: mType,
          date: mDate,
        );

  factory AirSpaceHistoryTableEntryModel.fromJson(Map<String, dynamic> json) =>
      _$AirSpaceHistoryTableEntryModelFromJson(json);

  @JsonKey(name: priceKey)
  final double mPrice;

  @JsonKey(name: typeKey)
  final String mType;

  @JsonKey(name: dateKey)
  final String mDate;
}

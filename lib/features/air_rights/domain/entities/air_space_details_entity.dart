import 'package:sky_trade/core/utils/enums/networking.dart';

base class AirSpaceDetailsEntity {
  AirSpaceDetailsEntity({
    required this.currentRentPrice,
    required this.highestBid,
    required this.propertyId,
    required this.propertyOwnerId,
    required this.propertyAddress,
    required this.propertyStatus,
    required String? deadline,
  }) : deadline = deadline != null ? DateTime.parse(deadline) : null;

  final double currentRentPrice;

  final double? highestBid;

  final double propertyId;

  final double propertyOwnerId;

  final String propertyAddress;

  final PropertyStatusType propertyStatus;

  final DateTime? deadline;
}

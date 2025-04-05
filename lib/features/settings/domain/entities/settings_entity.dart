import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;

base class MessageEntity extends Equatable {
  const MessageEntity({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [
        message,
      ];
}

base class TrackingStatusEntity extends Equatable {
  const TrackingStatusEntity({
    required this.status,
  });

  final TrackingTransparencyRequestStatus status;

  @override
  List<Object?> get props => [
        status,
      ];
}

import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

base class UASEntity extends Equatable {
  const UASEntity({
    required this.id,
    required this.remoteData,
    required this.createdAt,
    required this.updateAt,
  });

  final String id;

  final RemoteIDEntity remoteData;

  final String createdAt;

  final String updateAt;

  @override
  List<Object?> get props => [
        id,
        remoteData,
        createdAt,
        updateAt,
      ];
}

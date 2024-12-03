import 'package:equatable/equatable.dart';
import 'package:sky_trade/core/utils/typedefs/networking.dart';

base class RetrieveResultEntity extends Equatable {

  const RetrieveResultEntity({
    required this.coordinates,
  });

  final LatLng coordinates;

  @override
  List<Object?> get props => [
    coordinates,
  ];

}

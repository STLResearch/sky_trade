// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;

base class WeatherEntity extends Equatable {
  const WeatherEntity({
    required this.weatherConditions,
    required this.main,
  });

  final List<WeatherConditionEntity> weatherConditions;

  final MainEntity main;

  @override
  List<Object?> get props => [
        weatherConditions,
        main,
      ];
}

base class WeatherConditionEntity extends Equatable {
  const WeatherConditionEntity({
    required this.icon,
  });

  final String icon;

  @override
  List<Object?> get props => [
        icon,
      ];
}

base class MainEntity extends Equatable {
  const MainEntity({
    required this.temperature,
  });

  final double temperature;

  @override
  List<Object?> get props => [
        temperature,
      ];
}

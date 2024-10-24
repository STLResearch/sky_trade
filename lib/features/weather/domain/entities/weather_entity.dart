
base class OpenWeatherDataEntity {
  OpenWeatherDataEntity({
    required this.iconUrls,
    required this.currentTemperature,
  });

  final List<String>? iconUrls;
  final double? currentTemperature; // celsius
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_ways/core/resources/colors.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart';
import 'package:sky_ways/features/u_a_s_restrictions/presentation/widgets/options_card.dart';
import 'package:sky_ways/features/weather/domain/entities/weather_entity.dart';
import 'package:sky_ways/features/weather/presentation/weather_bloc/weather_bloc.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (BuildContext context, WeatherState weatherState) {
        return weatherState.when(
          initial: buildTransparentWeatherCard,
          fetchingWeatherData: () => buildWeatherCardWithLoadingIndicator(
            context,
          ),
          fetchSuccessful: (weatherData) => buildWeatherCardWithData(
            weatherData: weatherData,
          ),
          fetchFailed: (weatherFailure) => buildTransparentWeatherCard(),
        );
      },
    );
  }

  OptionsCard buildWeatherCardWithLoadingIndicator(
    BuildContext context,
  ) =>
      OptionsCard(
        width: fiftyFourDotNil,
        height: seventyDotNil,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: thirtyDotNil,
              height: thirtyDotNil,
              child: CircularProgressIndicator(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      );

  Widget buildWeatherCardWithData({
    required OpenWeatherDataEntity weatherData,
  }) {
    String iconUrl;
    final listLength = weatherData.iconUrls?.length ?? 0;

    switch (listLength) {
      case 0:
        return buildTransparentWeatherCard();

      default:
        iconUrl = weatherData.iconUrls![0];
    }

    return OptionsCard(
      width: fiftyFourDotNil,
      height: seventyDotNil,
      child: Column(
        children: [
          const SizedBox(
            height: fiveDotNil,
          ),
          Image.network(
            iconUrl,
            width: fiftyFourDotNil,
            height: thirtyFourDotNil,
          ),
          Material(
            type: MaterialType.transparency,
            child: Text(
              ' ${weatherData.currentTemperature?.round()}\u00B0',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: twelveDotNil,
                color: hex222222,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildTransparentWeatherCard() {
    return const SizedBox(
      width: fiftyFourDotNil,
      height: seventyDotNil,
    );
  }
}

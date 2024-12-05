import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        CircularProgressIndicator,
        Column,
        Image,
        MainAxisAlignment,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hexE6FFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        fiftyFourDotNil,
        sixtySixDotNil,
        threeDotNil,
        twentyFourDotNil,
        twentyOneDotThreeSeven,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/weather_entity_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart';
import 'package:sky_trade/features/weather/presentation/weather_bloc/weather_bloc.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: AlignmentDirectional.topEnd,
        child: OptionsCard(
          width: fiftyFourDotNil,
          height: sixtySixDotNil,
          backgroundColor: hexE6FFFFFF,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (_, weatherState) => weatherState.maybeWhen(
                  gotWeather: (weatherEntity) => Image.network(
                    weatherEntity.weatherConditions[zero].iconUrl,
                    width: twentyFourDotNil,
                    height: twentyFourDotNil,
                    color: hex222222,
                    errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                  ),
                  gettingWeather: () => Align(
                    alignment: AlignmentDirectional.center,
                    child: SizedBox(
                      width: twentyFourDotNil,
                      height: twentyFourDotNil,
                      child: CircularProgressIndicator(
                        strokeWidth: threeDotNil,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (_, weatherState) => weatherState.maybeWhen(
                  gotWeather: (weatherEntity) => Text(
                    weatherEntity.main.temperature.round().toString() +
                        context.localize.degrees,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: elevenDotNil,
                          height: twentyOneDotThreeSeven / elevenDotNil,
                          color: hex222222,
                        ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ),
      );
}

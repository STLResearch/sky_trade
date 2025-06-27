import 'package:cached_network_image/cached_network_image.dart'
    show CachedNetworkImage;
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        MainAxisAlignment,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hexE6FFFFFF, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        fiftyFourDotNil,
        sixtySixDotNil,
        twentyFourDotNil,
        twentyOneDotThreeSeven,
        two,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/weather_entity_extensions.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart'
    show OptionsCard;
import 'package:sky_trade/features/weather/presentation/weather_bloc/weather_bloc.dart'
    show WeatherBloc, WeatherState;

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) => OptionsCard(
        width: fiftyFourDotNil,
        height: sixtySixDotNil,
        backgroundColor: hexE6FFFFFF,
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (_, weatherState) => Skeletonizer(
            effect: weatherState.maybeWhen(
              failedToGetWeather: (_) => const SoldColorEffect(
                color: hexEBEBF4,
              ),
              orElse: () => ShimmerEffect(
                highlightColor: Theme.of(
                  context,
                ).scaffoldBackgroundColor,
              ),
            ),
            enabled: weatherState.maybeWhen(
              gotWeather: (_) => false,
              orElse: () => true,
            ),
            child: weatherState.maybeWhen(
              gotWeather: (weatherEntity) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: weatherEntity.weatherConditions[zero].iconUrl,
                    width: twentyFourDotNil,
                    height: twentyFourDotNil,
                    placeholder: (_, __) => Assets.svgs.weather.svg(),
                    errorWidget: (_, __, ___) => Assets.svgs.weather.svg(),
                  ),
                  Text(
                    weatherEntity.main.temperature.round().toString() +
                        context.localize.degrees,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontSize: elevenDotNil,
                          height: twentyOneDotThreeSeven / elevenDotNil,
                          color: hex222222,
                        ),
                  ),
                ],
              ),
              orElse: () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skeleton.shade(
                    child: Assets.svgs.weather.svg(),
                  ),
                  Text(
                    BoneMock.chars(
                          two,
                          two.toString(),
                        ) +
                        context.localize.degrees,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(
                          fontSize: elevenDotNil,
                          height: twentyOneDotThreeSeven / elevenDotNil,
                          color: hex222222,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

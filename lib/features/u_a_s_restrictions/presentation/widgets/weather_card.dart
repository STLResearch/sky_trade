import 'package:cached_network_image/cached_network_image.dart'
    show CachedNetworkImage;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        CircularProgressIndicator,
        Column,
        EdgeInsets,
        Image,
        MainAxisAlignment,
        Padding,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hex595959, hexE6FFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        fiftyFourDotNil,
        fourteenDotNil,
        sixtySixDotNil,
        thirtyTwoDotNil,
        threeDotNil,
        twentyDotNil,
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
  Widget build(BuildContext context) => Align(
        alignment: AlignmentDirectional.topEnd,
        child: OptionsCard(
          width: fiftyFourDotNil,
          height: sixtySixDotNil,
          backgroundColor: hexE6FFFFFF,
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (_, weatherState) => weatherState.maybeWhen(
              gotWeather: (weatherEntity) => CachedNetworkImage(
                imageUrl: weatherEntity.weatherConditions[zero].iconUrl,
                imageBuilder: (context, imageProvider) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: imageProvider,
                      width: thirtyTwoDotNil,
                      height: thirtyTwoDotNil,
                    ),
                    Text(
                      weatherEntity.main.temperature.round().toString() +
                          context.localize.degrees,
                      style: const TextStyle(
                        fontSize: elevenDotNil,
                        color: hex222222,
                      ),
                    ),
                  ],
                ),
                placeholder: (_, __) => _loadingWidget(),
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
              ),
              gettingWeather: _loadingWidget,
              orElse: SizedBox.shrink,
            ),
          ),
        ),
      );

  Widget _loadingWidget() => const Padding(
        padding: EdgeInsets.symmetric(
          vertical: twentyDotNil,
          horizontal: fourteenDotNil,
        ),
        child: CircularProgressIndicator(
          strokeWidth: threeDotNil,
          color: hex595959,
          backgroundColor: hexE6FFFFFF,
        ),
      );
}

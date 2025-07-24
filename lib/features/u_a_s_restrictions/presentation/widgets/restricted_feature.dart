import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        EdgeInsetsDirectional,
        ElevatedButton,
        FontWeight,
        Image,
        MainAxisSize,
        Navigator,
        OutlinedBorder,
        Radius,
        RoundedRectangleBorder,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:sky_trade/core/resources/colors.dart' show hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        fiftyDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        oneDotNil,
        seventyDotNil,
        sixtyDotNil,
        sixtyOneDotNil,
        tenDotNil,
        thirteenDotNil,
        thirtyDotNil,
        thirtyNineDotNil,
        twentyFourDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/guest_user_bloc/guest_user_bloc.dart'
    show GuestUserBloc, GuestUserEvent;

class RestrictedFeature extends StatelessWidget {
  const RestrictedFeature({
    required this.guestUserBloc,
    required this.highlightImage,
    required this.highlight,
    required this.description,
    required this.onGetStartedPressed,
    super.key,
  });

  final GuestUserBloc guestUserBloc;

  final Image highlightImage;

  final String highlight;

  final String description;

  final Function0<void> onGetStartedPressed;

  @override
  Widget build(BuildContext context) => BlocProvider<GuestUserBloc>.value(
        value: guestUserBloc,
        child: RestrictedFeatureView(
          highlightImage: highlightImage,
          highlight: highlight,
          description: description,
          onGetStartedPressed: onGetStartedPressed,
        ),
      );
}

class RestrictedFeatureView extends StatelessWidget {
  const RestrictedFeatureView({
    required this.highlightImage,
    required this.highlight,
    required this.description,
    required this.onGetStartedPressed,
    super.key,
  });

  final Image highlightImage;

  final String highlight;

  final String description;

  final Function0<void> onGetStartedPressed;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyFourDotNil,
        ),
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: const BorderRadiusDirectional.vertical(
            top: Radius.circular(
              thirtyDotNil,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: thirteenDotNil,
              ),
              Container(
                width: seventyDotNil,
                height: nineDotNil,
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: thirtyNineDotNil,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).bottomSheetTheme.dragHandleColor,
                  borderRadius: BorderRadiusDirectional.circular(
                    tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: eighteenDotNil,
              ),
              SizedBox(
                width: sixtyOneDotNil,
                height: sixtyDotNil,
                child: highlightImage,
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Text(
                highlight,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      height: oneDotNil,
                      letterSpacing: nilDotNil,
                    ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: fourteenDotNil,
                      height: oneDotNil,
                      letterSpacing: nilDotNil,
                    ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<GuestUserBloc>().add(
                        const GuestUserEvent.setUserIsGuest(
                          isGuest: false,
                        ),
                      );

                  Navigator.of(
                    context,
                  ).pop();

                  onGetStartedPressed();
                },
                style: Theme.of(
                  context,
                ).elevatedButtonTheme.style?.copyWith(
                      shape: WidgetStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            tenDotNil,
                          ),
                        ),
                      ),
                      fixedSize: const WidgetStatePropertyAll<Size>(
                        Size.fromHeight(
                          fiftyDotNil,
                        ),
                      ),
                    ),
                child: Center(
                  child: Text(
                    context.localize.getStartedAlt,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          height: oneDotNil,
                          letterSpacing: nilDotNil,
                          color: hexFFFFFF,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
            ],
          ),
        ),
      );
}

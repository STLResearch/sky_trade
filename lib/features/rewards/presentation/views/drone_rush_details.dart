import 'dart:ui' show ImageFilter;
import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart' show FontFamily;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex616161, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyDotNil,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        oneDotNil,
        sixTwentyDotNil,
        sixteenDotNil,
        threeHundred,
        twentyDotNil,
        twentyFourDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/eligible_areas.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/views/home_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DroneRushDetails extends StatelessWidget {
  const DroneRushDetails({super.key});

  void _showEligibleAreas(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const EligibleAreas();
      },
    );
  }

  void _showHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final webViewController = WebViewController()
      ..setJavaScriptMode(
        JavaScriptMode.unrestricted,
      )
      ..setBackgroundColor(
        hex616161,
      )
      ..loadRequest(
        Uri.parse(
          droneRushDetailsUrl,
        ),
      );
    return Scaffold(
      backgroundColor: hexFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Assets.svgs.chevronLeftBlack.svg(),
          onPressed: () {
            Navigator.pop(context);
          },
          padding: const EdgeInsets.only(
            left: twentyFourDotNil,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: twentyFourDotNil,
            ),
            child: GestureDetector(
              onTap: () => _showEligibleAreas(
                context,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.svgs.helpCircle.svg(
                    width: sixteenDotNil,
                    height: sixteenDotNil,
                  ),
                  const SizedBox(width: fourDotNil),
                  Text(
                    context.localize.whichAreasAreEligible,
                    style: const TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: fourteenDotNil,
                      height: fourteenDotNil / fourteenDotNil,
                      letterSpacing: nilDotNil,
                      color: hex0653EA,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: twentyDotNil,
          sigmaY: twentyDotNil,
        ),
        child: ColoredBox(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: twentyFourDotNil,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Center(
                    child: ClipRRect(
                      child: SizedBox(
                        height: sixTwentyDotNil,
                        child: WebViewWidget(
                          controller: webViewController,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: fourteenDotNil,
                    ),
                    child: AnimatedOpacity(
                      duration: const Duration(
                        milliseconds: threeHundred,
                      ),
                      curve: Curves.easeOut,
                      opacity: oneDotNil,
                      child: ElevatedButton(
                        onPressed: () {
                          _showHomeScreen(
                            context,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: hex0653EA,
                          minimumSize: const Size(
                            double.infinity,
                            fiftyDotNil,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              fifteenDotNil,
                            ),
                          ),
                        ),
                        child: Text(
                          context.localize.startTracking,
                          style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: sixteenDotNil,
                            height: sixteenDotNil / sixteenDotNil,
                            letterSpacing: nilDotNil,
                            color: hexFFFFFF,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

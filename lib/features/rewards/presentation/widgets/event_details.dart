import 'package:flutter/material.dart'
    show
        AnimatedOpacity,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        ClipRRect,
        Column,
        Container,
        Curves,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        MainAxisSize,
        MaterialPageRoute,
        Navigator,
        Padding,
        Radius,
        RoundedRectangleBorder,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart' show FontFamily;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex616161, hexCEEAFF, hexD9D9D9, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyDotNil,
        nilDotNil,
        nineDotNil,
        oneDotNil,
        oneFiftyDotNil,
        seventyDotNil,
        sixteenDotNil,
        tenDotNil,
        thirteenDotNil,
        threeHundred,
        twentyFourDotNil,
        twoFiftySevenDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/views/drone_rush_details.dart';
import 'package:webview_flutter/webview_flutter.dart'
    show WebViewController, WebViewWidget;

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  void _showDroneRushDetailsScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const DroneRushDetails(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final webViewController = WebViewController()
      ..setBackgroundColor(
        hex616161,
      )
      ..loadRequest(
        Uri.parse(
          eventDetailsUrl,
        ),
      );
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            twentyFourDotNil,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: fifteenDotNil,
          ),
          Center(
            child: Container(
              width: seventyDotNil,
              height: nineDotNil,
              decoration: BoxDecoration(
                color: hexD9D9D9,
                borderRadius: BorderRadius.circular(tenDotNil),
              ),
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: twentyFourDotNil,
            ),
            child: Column(
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: twoFiftySevenDotNil,
                    child: WebViewWidget(
                      controller: webViewController,
                    ),
                  ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                AnimatedOpacity(
                  duration: const Duration(
                    milliseconds: threeHundred,
                  ),
                  curve: Curves.easeOut,
                  opacity: oneDotNil,
                  child: ElevatedButton(
                    onPressed: () {
                      _showDroneRushDetailsScreen(
                        context,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hex0653EA,
                      minimumSize: const Size(
                        double.infinity,
                        fiftyDotNil,
                      ),
                      padding: const EdgeInsets.fromLTRB(
                        oneFiftyDotNil,
                        thirteenDotNil,
                        oneFiftyDotNil,
                        thirteenDotNil,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          fifteenDotNil,
                        ),
                      ),
                    ),
                    child: Text(
                      context.localize.learnMore,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: sixteenDotNil,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                        color: hexFFFFFF,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                AnimatedOpacity(
                  duration: const Duration(
                    milliseconds: threeHundred,
                  ),
                  curve: Curves.easeOut,
                  opacity: oneDotNil,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hexCEEAFF,
                      minimumSize: const Size(
                        double.infinity,
                        fiftyDotNil,
                      ),
                      padding: const EdgeInsets.fromLTRB(
                        oneFiftyDotNil,
                        thirteenDotNil,
                        oneFiftyDotNil,
                        thirteenDotNil,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          fifteenDotNil,
                        ),
                      ),
                    ),
                    child: Text(
                      context.localize.close,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: sixteenDotNil,
                        height: oneDotNil,
                        letterSpacing: nilDotNil,
                        color: hex0653EA,
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
        ],
      ),
    );
  }
}

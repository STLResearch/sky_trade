import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Column,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        StrokeCap,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fortyEightDotNil,
        fortySevenDotNil,
        fourteenDotNil,
        oneFiftyTwoDotNil,
        seventeenDotSevenThree,
        tenDotNil,
        thirtyDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.all(
              thirtyDotNil,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: tenDotNil,
                ),
                Assets.svgs.skyTradeLogo.svg(),
                const SizedBox(
                  height: fortyEightDotNil,
                ),
                SizedBox(
                  width: oneFiftyTwoDotNil,
                  height: oneFiftyTwoDotNil,
                  child: CircularProgressIndicator(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    strokeWidth: seventeenDotSevenThree,
                    strokeCap: StrokeCap.round,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      hex4285F4,
                    ),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                const SizedBox(
                  height: fortySevenDotNil,
                ),
                Text(
                  context.localize.loadingPleaseWait,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
}

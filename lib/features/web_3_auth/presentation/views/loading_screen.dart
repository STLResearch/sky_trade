import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        CircularProgressIndicator,
        Column,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Theme,
        Widget;
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fortyDotNil, oneFiftyDotNil, tenDotNil, thirtyDotNil;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show skyTradeLogoAssetPath;

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
                SvgPicture.asset(
                  skyTradeLogoAssetPath,
                ),
                const SizedBox(
                  height: fortyDotNil,
                ),
                SizedBox(
                  width: oneFiftyDotNil,
                  height: oneFiftyDotNil,
                  child: CircularProgressIndicator(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

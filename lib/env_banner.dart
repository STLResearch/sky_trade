import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart'
    show
        Banner,
        BannerLocation,
        BuildContext,
        Colors,
        FutureBuilder,
        StatelessWidget,
        Widget;
import 'package:flutter/services.dart' show Color;
import 'package:package_info_plus/package_info_plus.dart' show PackageInfo;
import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, liveEnvironment, stageEnvironment;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;

class EnvBanner extends StatelessWidget {
  const EnvBanner({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) {
      return child;
    }

    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (_, snapshot) {
        var version = emptyString;
        Color color =  Colors.orangeAccent;
        if (snapshot.hasData) {
          version = snapshot.data!.version;
        }
        if(version.contains(devEnvironment)){
          color = Colors.orangeAccent;
        }
        else if(version.contains(stageEnvironment)){
          color = Colors.blueAccent;
        }
        else if(version.contains(liveEnvironment)){
          color = Colors.deepPurpleAccent;
        }
        return Banner(
          message: version.toUpperCase(),
          location: BannerLocation.topEnd,
          color: color,
          child: child,
        );
      },
    );
  }
}

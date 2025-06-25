import 'package:sky_trade/core/resources/strings/environments.dart'
    show devEnvironment, flavours, liveEnvironment, stageEnvironment;
import 'package:sky_trade/main_dev.dart' as dev;
import 'package:sky_trade/main_live.dart' as live;
import 'package:sky_trade/main_stage.dart' as stage;

String get currentEnv => const String.fromEnvironment(
      flavours,
      defaultValue: devEnvironment,
    );

void main() {
  switch (currentEnv) {
    case devEnvironment:
      dev.main();
    case stageEnvironment:
      stage.main();
    case liveEnvironment:
      live.main();
  }
}


import '../core/utils/logger.dart';
import '../main.dart';
import 'flaver_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PROD,
    env: "PROD",
    name: "PROD  App",
    values: FlavorValues(
      bundleID: 'com.',
      appID: 'com.app',
    ),
  );
  Logger.init(LogMode.live);
  mainCommon();
}

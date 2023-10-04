
import '../main.dart';
import 'flaver_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.DEV,
    env: "DEV",
    name: "DEV ",
    values: FlavorValues(
      bundleID: '',
      appID: '',
    ),
  );
 
  mainCommon();
}

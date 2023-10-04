

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicNetwork {
  static final DynamicNetwork _init = DynamicNetwork._internal();
  factory DynamicNetwork() {
    return _init;
  }
  DynamicNetwork._internal();

  Future<String> generateLink() async {
    try {
      final dynamicLinkParams = DynamicLinkParameters(
        link: Uri.parse("https://.page.link"),
        uriPrefix: "https://.page.link",
        androidParameters: const AndroidParameters(
          packageName: "com.app",
          minimumVersion: 30,
        ),
        iosParameters: const IOSParameters(
          bundleId: "com.",
          appStoreId: "1620678047",
          minimumVersion: "1",
        ),
      );
      final dynamicLink =
          await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
      return dynamicLink.shortUrl.toString();
    } catch (e) {
      throw e;
    }
  }
}

import 'package:firebase_analytics/firebase_analytics.dart';


class AnalyticsNetwork {
  static final AnalyticsNetwork _init = AnalyticsNetwork._internal();
  factory AnalyticsNetwork() {
    return _init;
  }
  AnalyticsNetwork._internal();

  Future setScreen(String screen) async {
    try {
      await FirebaseAnalytics.instance.setCurrentScreen(screenName: screen);
    } catch (e) {
      throw e;
    }
  }

  Future setUserId(String id) async {
    try {
      
      await FirebaseAnalytics.instance.setUserId(id: id);
    } catch (e) {
      throw e;
    }
  }

  Future setLog(String name, Map<String, dynamic> parameter) async {
    try {
      await FirebaseAnalytics.instance
          .logEvent(name: name, parameters: parameter);
    } catch (e) {
      throw e;
    }
  }
}

import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationNetwork {
  static final NotificationNetwork _init = NotificationNetwork._internal();
  factory NotificationNetwork() {
    return _init;
  }
  NotificationNetwork._internal();

  Future subscribeBrodcastTopic() async {
    try {
      await FirebaseMessaging.instance.subscribeToTopic('broadcast');
    } catch (e) {
      throw e;
    }
  }

  Future permission() async {
    try {
      FirebaseMessaging messaging = FirebaseMessaging.instance;

      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        subscribeBrodcastTopic();
      } else if (settings.authorizationStatus ==
          AuthorizationStatus.provisional) {
        print('User granted provisional permission');
      } else {
        print('User declined or has not accepted permission');
      }
    } catch (e) {
      throw e;
    }
  }
}

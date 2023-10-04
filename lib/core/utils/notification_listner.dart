// import 'dart:async';
// import 'dart:io';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// class NotificationListner {
//   static final NotificationListner _initilize = NotificationListner._internal();

//   factory NotificationListner() {
//     return _initilize;
//   }

//   NotificationListner._internal();

//   int id = 0;

//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   /// Streams are created so that app can respond to notification-related events
//   /// since the plugin is initialised in the `main` function
//   final StreamController<ReceivedNotification>
//       didReceiveLocalNotificationStream =
//       StreamController<ReceivedNotification>.broadcast();

//   final StreamController<String?> selectNotificationStream =
//       StreamController<String?>.broadcast();

//   static const MethodChannel platform =
//       MethodChannel('dexterx.dev/flutter_local_notifications_example');

//   static const String portName = 'notification_send_port';
//   String? selectedNotificationPayload;

//   /// A notification action which triggers a url launch event
//   static const String urlLaunchActionId = 'id_1';

//   /// A notification action which triggers a App navigation event
//   static const String navigationActionId = 'id_3';

//   /// Defines a iOS/MacOS notification category for text input actions.
//   static const String darwinNotificationCategoryText = 'textCategory';

//   /// Defines a iOS/MacOS notification category for plain actions.
//   static const String darwinNotificationCategoryPlain = 'plainCategory';

//   @pragma('vm:entry-point')
//   void notificationTapBackground(NotificationResponse notificationResponse) {
//     // ignore: avoid_print
//     print('notification(${notificationResponse.id}) action tapped: '
//         '${notificationResponse.actionId} with'
//         ' payload: ${notificationResponse.payload}');
//     if (notificationResponse.input?.isNotEmpty ?? false) {
//       // ignore: avoid_print
//       print(
//           'notification action tapped with input: ${notificationResponse.input}');
//     }
//   }

//   Future<void> backgroundLister(RemoteMessage message) async {
//     await Firebase.initializeApp();
//   }

//   Future<void> initialLocalNotification() async {
//     await _configureLocalTimeZone();

//     final NotificationAppLaunchDetails? notificationAppLaunchDetails =
//         !kIsWeb && Platform.isLinux
//             ? null
//             : await flutterLocalNotificationsPlugin
//                 .getNotificationAppLaunchDetails();
//     // String initialRoute = HomePage.routeName;
//     if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
//       selectedNotificationPayload =
//           notificationAppLaunchDetails!.notificationResponse?.payload;
//       //   initialRoute = SecondPage.routeName;
//     }

//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('app_icon');

//     final List<DarwinNotificationCategory> darwinNotificationCategories =
//         <DarwinNotificationCategory>[
//       DarwinNotificationCategory(
//         darwinNotificationCategoryText,
//         actions: <DarwinNotificationAction>[
//           DarwinNotificationAction.text(
//             'text_1',
//             'Action 1',
//             buttonTitle: 'Send',
//             placeholder: 'Placeholder',
//           ),
//         ],
//       ),
//       DarwinNotificationCategory(
//         darwinNotificationCategoryPlain,
//         actions: <DarwinNotificationAction>[
//           DarwinNotificationAction.plain('id_1', 'Action 1'),
//           DarwinNotificationAction.plain(
//             'id_2',
//             'Action 2 (destructive)',
//             options: <DarwinNotificationActionOption>{
//               DarwinNotificationActionOption.destructive,
//             },
//           ),
//           DarwinNotificationAction.plain(
//             navigationActionId,
//             'Action 3 (foreground)',
//             options: <DarwinNotificationActionOption>{
//               DarwinNotificationActionOption.foreground,
//             },
//           ),
//           DarwinNotificationAction.plain(
//             'id_4',
//             'Action 4 (auth required)',
//             options: <DarwinNotificationActionOption>{
//               DarwinNotificationActionOption.authenticationRequired,
//             },
//           ),
//         ],
//         options: <DarwinNotificationCategoryOption>{
//           DarwinNotificationCategoryOption.hiddenPreviewShowTitle,
//         },
//       )
//     ];

//     /// Note: permissions aren't requested here just to demonstrate that can be
//     /// done later
//     final DarwinInitializationSettings initializationSettingsDarwin =
//         DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//       onDidReceiveLocalNotification:
//           (int id, String? title, String? body, String? payload) async {
//         didReceiveLocalNotificationStream.add(
//           ReceivedNotification(
//             id: id,
//             title: title,
//             body: body,
//             payload: payload,
//           ),
//         );
//       },
//       notificationCategories: darwinNotificationCategories,
//     );
//     final LinuxInitializationSettings initializationSettingsLinux =
//         LinuxInitializationSettings(
//       defaultActionName: 'Open notification',
//       defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
//     );
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsDarwin,
//       macOS: initializationSettingsDarwin,
//       linux: initializationSettingsLinux,
//     );
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse:
//           (NotificationResponse notificationResponse) {
//         switch (notificationResponse.notificationResponseType) {
//           case NotificationResponseType.selectedNotification:
//             selectNotificationStream.add(notificationResponse.payload);
//             break;
//           case NotificationResponseType.selectedNotificationAction:
//             if (notificationResponse.actionId == navigationActionId) {
//               selectNotificationStream.add(notificationResponse.payload);
//             }
//             break;
//         }
//       },
//       onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
//     );
//   }

//   Future<void> initialLisner() async {
//     _isAndroidPermissionGranted();
//     _requestPermissions();
//     _configureDidReceiveLocalNotificationSubject();
//     _configureSelectNotificationSubject();
//     FirebaseMessaging.instance
//         .getInitialMessage()
//         .then((RemoteMessage? message) async {});
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {}
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((message) async {});
//   }

//   Future<void> _configureLocalTimeZone() async {
//     if (kIsWeb || Platform.isLinux) {
//       return;
//     }
//     tz.initializeTimeZones();
//     final String? timeZoneName = await FlutterTimezone.getLocalTimezone();
//     tz.setLocalLocation(tz.getLocation(timeZoneName!));
//   }

//   Future<void> _isAndroidPermissionGranted() async {
//     if (Platform.isAndroid) {
//       final bool granted = await flutterLocalNotificationsPlugin
//               .resolvePlatformSpecificImplementation<
//                   AndroidFlutterLocalNotificationsPlugin>()
//               ?.areNotificationsEnabled() ??
//           false;

//       // setState(() {
//       //   _notificationsEnabled = granted;
//       // });
//     }
//   }

//   Future<void> _requestPermissions() async {
//     if (Platform.isIOS || Platform.isMacOS) {
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//               IOSFlutterLocalNotificationsPlugin>()
//           ?.requestPermissions(
//             alert: true,
//             badge: true,
//             sound: true,
//           );
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//               MacOSFlutterLocalNotificationsPlugin>()
//           ?.requestPermissions(
//             alert: true,
//             badge: true,
//             sound: true,
//           );
//     } else if (Platform.isAndroid) {
//       final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
//           flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
//               AndroidFlutterLocalNotificationsPlugin>();

//       final bool? granted = await androidImplementation?.requestPermission();
//       // setState(() {
//       //   _notificationsEnabled = granted ?? false;
//       // });
//     }
//   }

//   void _configureDidReceiveLocalNotificationSubject() {
//     didReceiveLocalNotificationStream.stream
//         .listen((ReceivedNotification receivedNotification) async {
//       // await showDialog(
//       //   context: context,
//       //   builder: (BuildContext context) => CupertinoAlertDialog(
//       //     title: receivedNotification.title != null
//       //         ? Text(receivedNotification.title!)
//       //         : null,
//       //     content: receivedNotification.body != null
//       //         ? Text(receivedNotification.body!)
//       //         : null,
//       //     actions: <Widget>[
//       //       CupertinoDialogAction(
//       //         isDefaultAction: true,
//       //         onPressed: () async {
//       //           Navigator.of(context, rootNavigator: true).pop();
//       //           await Navigator.of(context).push(
//       //             MaterialPageRoute<void>(
//       //               builder: (BuildContext context) =>
//       //                   SecondPage(receivedNotification.payload),
//       //             ),
//       //           );
//       //         },
//       //         child: const Text('Ok'),
//       //       )
//       //     ],
//       //   ),
//       // );
//     });
//   }

//   void _configureSelectNotificationSubject() {
//     selectNotificationStream.stream.listen((String? payload) async {
//       // await Navigator.of(context).push(MaterialPageRoute<void>(
//       //   builder: (BuildContext context) => SecondPage(payload),
//       // ));
//     });
//   }

//   dispose() {
//     didReceiveLocalNotificationStream.close();
//     selectNotificationStream.close();
//   }
// }

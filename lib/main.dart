import 'dart:async';
import 'dart:isolate';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> mainCommon() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]).then((value) {
      PrefUtils().init();
      Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
      runApp(MyApp());
    });
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}

getOutSideCrash() {
  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    final List<dynamic> errorAndStacktrace = pair;
    await FirebaseCrashlytics.instance.recordError(
      errorAndStacktrace.first,
      errorAndStacktrace.last,
    );
  }).sendPort);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      scaffoldMessengerKey: globalMessengerKey,
      //for setting localization strings
      supportedLocales: const [
        Locale('en', ''),
      ],
      localizationsDelegates: [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'blackroad_v1',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}

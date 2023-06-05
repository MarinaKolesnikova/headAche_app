import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:migr_proj/config/app_config.dart';
import 'package:migr_proj/presentation/application.dart';
import 'config/modules/injection_config.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..maxConnectionsPerHost = 1
      ..connectionTimeout = Duration(seconds: 20);
  }
}

Future<void> initializeApp({required AppConfig appConfig}) async {
  initDependencies(appConfig);
  initLogger(appConfig);

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  getIt<AppRouter>();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  HttpOverrides.global = MyHttpOverrides();

  runApp(Application());
}

import 'package:flutter/widgets.dart';
import 'package:migr_proj/config/app_config.dart';
import 'package:migr_proj/initialize_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeApp(appConfig: DevConfig());
}

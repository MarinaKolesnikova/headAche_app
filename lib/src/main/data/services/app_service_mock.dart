import 'dart:async';

import 'package:migr_proj/src/main/data/services/app_service.dart';

class AppServiceMock implements AppService {
  const AppServiceMock();

  @override
  Future<bool> checkConnection() async {
    await Future.delayed(Duration(milliseconds: 100));
    return true;
  }
}

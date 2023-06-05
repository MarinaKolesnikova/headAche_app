import 'package:dio/dio.dart';
import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/presentation/shared/mixins/logout.dart';

class DioErrorService {
  static void getError(Response<dynamic>? response) {
    if (response == null) return;
    final String message = response.data['detail'];
    if (response.statusCode == 401 || message.contains('Недопустимый токен.')) {
      _logout();
    }
  }

  static void _logout() {
    final context = getIt<AppRouter>().navigatorKey.currentContext!;
    Logout.logoutAction(context);
  }
}

import 'package:flutter/material.dart';
import 'package:migr_proj/config/modules/injection_config.dart';

class DialogsBuilder {
  const DialogsBuilder._();

  static Future<void> defaultDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    await showDialog(
      context: context,
      useSafeArea: false,
      barrierColor: Colors.transparent,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> modalBottomSheetBuilder({required Widget widget}) async {
    await showModalBottomSheet<dynamic>(
      context: getIt<AppRouter>().navigatorKey.currentContext!,
      elevation: 1.0,
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      isScrollControlled: true,
      builder: (BuildContext ctx) => widget,
    );
  }
}

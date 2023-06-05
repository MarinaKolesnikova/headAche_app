import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/presentation/snackbar/snackbar.dart';
import 'package:migr_proj/resources/dictionary/data/messages_dictionary/messages_dictionary.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class InfoMessages {
  static MessagesDictionary get messagesDictionary => dictionaryManager.getSelectedData.messages;
  static void wrongCredentialsMessage() {
    show(
      SnackBarBuilder.getSnackBar(text: messagesDictionary.wrongCredentials),
    );
  }

  static void accountExistsMessage() {
    show(
      SnackBarBuilder.getSnackBar(text: messagesDictionary.accountExists),
    );
  }

  static void show(SnackBar snackBar) {
    final context = getIt<AppRouter>().navigatorKey.currentContext!;
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

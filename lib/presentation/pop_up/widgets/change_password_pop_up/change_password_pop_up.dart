import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/pop_up/general/one_button_dialog.dart';

import 'package:migr_proj/resources/resources.dart';

class ChangePasswordPopUpBuilder {
  static OneButtonDialog displayChangeConfirm({
    required String text,
    required VoidCallback onTap,
  }) {
    return _displayPopUpLayout(
      text: text,
      onTap: onTap,
    );
  }

  static OneButtonDialog displayPassError({
    required String text,
    required VoidCallback onTap,
  }) {
    return _displayPopUpLayout(
      text: text,
      onTap: onTap,
    );
  }

  static OneButtonDialog _displayPopUpLayout({
    required String text,
    required VoidCallback onTap,
  }) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;

    return OneButtonDialog(
      buttonColor: LightColors.text,
      message: text,
      buttonText: dict.ok,
      onTap: onTap,
    );
  }
}

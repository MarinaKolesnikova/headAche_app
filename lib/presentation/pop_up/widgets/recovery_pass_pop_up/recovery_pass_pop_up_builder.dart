import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/pop_up/general/one_button_dialog.dart';

import 'package:migr_proj/resources/resources.dart';

class RecoveryPassPopUpBuilder {
  static OneButtonDialog displayRecoveryConfirm({
    required BuildContext context,
  }) {
    return _displayPopUpLayout(
      context,
    );
  }

  static OneButtonDialog _displayPopUpLayout(
    BuildContext context,
  ) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;

    return OneButtonDialog(
        message: dict.linkWasSend,
        buttonText: dict.ok,
        onTap: () {
          context.popRoute();
        });
  }
}

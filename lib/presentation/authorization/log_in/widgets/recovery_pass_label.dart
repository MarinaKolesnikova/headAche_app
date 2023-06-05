import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/resources/resources.dart';

class RecoveryPassLabel extends StatelessWidget {
  const RecoveryPassLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NonAnimatedInkWell(
            onTap: () {
              //ToDo(MAri): add passRecovery screen here
              context.router.pushNamed(AppRoutes.authScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                dict.recovery,
                style: LightTextStyles.robotoS14W400Undrl(color: LightColors.linkBlue, letterSpacing: 0.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

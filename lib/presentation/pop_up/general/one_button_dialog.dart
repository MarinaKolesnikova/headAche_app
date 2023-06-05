import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:migr_proj/presentation/pop_up/dialog_builder.dart';
import 'package:migr_proj/presentation/pop_up/mixins/button_dialog_mixin.dart';
import 'package:migr_proj/presentation/pop_up/pop_up_layout.dart';
import 'package:migr_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/shared/interfaces/i_dialog.dart';

class OneButtonDialog implements IDialog {
  final String? title;
  final String message;
  final String buttonText;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color? dialogColor;
  final bool isAutoclose;

  const OneButtonDialog({
    required this.message,
    required this.buttonText,
    required this.onTap,
    this.title,
    this.dialogColor,
    this.isAutoclose = false,
    this.buttonColor = LightColors.white,
  });

  Widget get widget {
    return OneButtonDialogWidget(
      title: title,
      message: message,
      onTap: onTap,
      buttonText: buttonText,
      buttonColor: buttonColor,
      dialogColor: dialogColor,
      isAutoclose: isAutoclose,
    );
  }

  Future<void> _builder(BuildContext context) async {
    await DialogsBuilder.defaultDialogBuilder(
      widget: widget,
      context: context,
    );
  }

  @override
  Future<void> show(DisplayFunction display) async => await display(_builder);
}

class OneButtonDialogWidget extends StatelessWidget with ButtonDialogMixin {
  const OneButtonDialogWidget({
    required this.message,
    required this.buttonText,
    required this.onTap,
    required this.buttonColor,
    required this.isAutoclose,
    this.dialogColor,
    this.isCheckbox = false,
    this.title,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String message;
  final bool isCheckbox;
  final String buttonText;
  final Color buttonColor;
  final Color? dialogColor;
  final bool isAutoclose;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return PopUpLayout(
      isAutoClosed: isAutoclose,
      backgroundFade: false,
      dialogColor: dialogColor ?? LightColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.0),
          getText(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
            padding: const EdgeInsets.only(bottom: 10.0),
          ),
          getText(
            text: message,
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            padding: EdgeInsets.only(bottom: 17),
          ),
          LightOutlineButton(
            borderColor: buttonColor,
            padding: const EdgeInsets.only(bottom: 30.0, top: 3.0).add(
              const EdgeInsets.symmetric(
                horizontal: 55.0,
              ),
            ),
            text: buttonText,
            onTap: () async {
              // isTapClosed = true;
              await context.popRoute();
              onTap.call();
            },
          ),
        ],
      ),
    );
  }
}

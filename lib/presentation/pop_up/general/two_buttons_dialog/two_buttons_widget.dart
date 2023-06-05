import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/pop_up/dialog_builder.dart';
import 'package:migr_proj/presentation/pop_up/mixins/button_dialog_mixin.dart';
import 'package:migr_proj/presentation/pop_up/pop_up_layout.dart';

import 'package:migr_proj/presentation/shared/widgets/buttons/pop_up_text_button.dart';

import 'package:migr_proj/src/shared/interfaces/i_dialog.dart';

class ListButtonActionModel {
  const ListButtonActionModel({
    required this.title,
    required this.action,
  });

  final String title;
  final VoidCallback action;
}

class TwoButtonDialog implements IDialog {
  const TwoButtonDialog({
    required this.title,
    required this.onAccept,
    required this.onDecline,
    required this.acceptText,
    required this.declineText,
    this.isAutoClosed = true,
    this.message,
  });

  final String? message;
  final String title;
  final bool isAutoClosed;

  final String acceptText;
  final String declineText;

  final VoidCallback onAccept;
  final VoidCallback onDecline;

  Widget get widget {
    return TwoButtonDialogWidget(
      title: title,
      message: message,
      isAutoClosed: isAutoClosed,
      acceptText: acceptText,
      declineText: declineText,
      onAccept: onAccept,
      onDecline: onDecline,
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

class TwoButtonDialogWidget extends StatelessWidget with ButtonDialogMixin {
  const TwoButtonDialogWidget({
    required this.onAccept,
    required this.onDecline,
    required this.acceptText,
    required this.declineText,
    required this.title,
    this.message,
    this.isAutoClosed = true,
    Key? key,
  })  : hasLayout = true,
        super(key: key);

  const TwoButtonDialogWidget.withoutLayout({
    required this.onAccept,
    required this.onDecline,
    required this.acceptText,
    required this.declineText,
    required this.title,
    this.message,
    this.hasLayout = false,
    this.isAutoClosed = true,
    Key? key,
  }) : super(key: key);
  final String? message;
  final String title;

  final bool? hasLayout;
  final bool isAutoClosed;
  final String acceptText;
  final String declineText;

  final VoidCallback onAccept;
  final VoidCallback onDecline;

  @override
  Widget build(BuildContext context) {
    if (hasLayout == true) {
      return PopUpLayout(
        isAutoClosed: isAutoClosed,
        backgroundFade: false,
        dialogColor: LightColors.white.withOpacity(0.35),
        child: child(),
      );
    }
    return child();
  }

  Widget _getActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PopUpTextButton(
            action: onAccept,
            title: acceptText,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          color: LightColors.text,
          height: 40.0,
          width: 1.0,
        ),
        Expanded(
          child: PopUpTextButton(
            action: onDecline,
            title: declineText,
          ),
        ),
      ],
    );
  }

  Widget child() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        getText(
          text: title,
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
          padding: const EdgeInsets.only(bottom: 10.0),
        ),
        getText(
          text: message,
          fontWeight: FontWeight.w500,
          fontSize: 17.0,
          padding: EdgeInsets.only(bottom: 10),
        ),
        Flexible(
          child: _getActions(),
        ),
      ],
    );
  }
}

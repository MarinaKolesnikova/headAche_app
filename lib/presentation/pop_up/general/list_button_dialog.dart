import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/pop_up/dialog_builder.dart';
import 'package:migr_proj/presentation/pop_up/mixins/button_dialog_mixin.dart';
import 'package:migr_proj/presentation/pop_up/pop_up_layout.dart';

import 'package:migr_proj/presentation/shared/widgets/buttons/pop_up_text_button.dart';
import 'package:migr_proj/presentation/shared/widgets/divider/divider.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/shared/interfaces/i_dialog.dart';

class ListButtonActionModel {
  const ListButtonActionModel({
    required this.title,
    required this.action,
  });

  final String title;
  final VoidCallback action;
}

class ListButtonDialog implements IDialog {
  const ListButtonDialog({
    required this.title,
    required this.actions,
    this.isAutoClosed = true,
    this.message,
  });

  final String? message;
  final String title;
  final bool isAutoClosed;
  final List<ListButtonActionModel> actions;

  Widget get widget {
    return ListButtonDialogWidget(
      title: title,
      actions: actions,
      message: message,
      isAutoClosed: isAutoClosed,
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

class ListButtonDialogWidget extends StatelessWidget with ButtonDialogMixin {
  const ListButtonDialogWidget({
    required this.actions,
    required this.title,
    this.message,
    this.isAutoClosed = true,
    Key? key,
  })  : hasLayout = true,
        super(key: key);

  const ListButtonDialogWidget.withoutLayout({
    required this.actions,
    required this.title,
    this.message,
    this.hasLayout = false,
    this.isAutoClosed = true,
    Key? key,
  }) : super(key: key);
  final String? message;
  final String title;
  final List<ListButtonActionModel> actions;
  final bool? hasLayout;
  final bool isAutoClosed;

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
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return PopUpTextButton(
          action: actions[index].action,
          title: actions[index].title,
        );
      },
      separatorBuilder: (context, index) {
        return LightDivider();
      },
      itemCount: actions.length,
    );
  }

  Widget child() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        getText(
          text: title,
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
          padding: const EdgeInsets.only(bottom: 10.0),
        ),
        getText(
          text: message,
          fontWeight: FontWeight.w500,
          fontSize: 17.0,
          padding: EdgeInsets.only(bottom: 10),
        ),
        LightDivider(),
        Flexible(
          child: _getActions(),
        ),
      ],
    );
  }
}

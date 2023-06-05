import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/pop_up/dialog_builder.dart';

import 'package:migr_proj/presentation/pop_up/pop_up_layout.dart';
import 'package:migr_proj/src/shared/interfaces/i_dialog.dart';

class AnotherContentDialog implements IDialog {
  const AnotherContentDialog({
    required this.content,
    this.isAutoClosed = true,
    this.backgroundFade = true,
    this.verticalPadding,
    this.horizontalPadding,
    this.dialogColor,
  });

  final Widget content;
  final bool backgroundFade;
  final bool isAutoClosed;
  final EdgeInsetsGeometry? horizontalPadding;
  final EdgeInsetsGeometry? verticalPadding;

  final Color? dialogColor;

  Widget get widget {
    return AnotherContentDialogWidget(
      content: content,
      dialogColor: dialogColor,
      isAutoClosed: isAutoClosed,
      backgroundFade: backgroundFade,
      horizontalPadding: horizontalPadding,
      verticalPadding: verticalPadding,
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

class AnotherContentDialogWidget extends StatelessWidget {
  const AnotherContentDialogWidget({
    required this.content,
    this.backgroundFade = true,
    this.isAutoClosed = true,
    this.horizontalPadding,
    this.verticalPadding,
    this.dialogColor,
    Key? key,
  }) : super(key: key);

  final Widget content;
  final bool backgroundFade;
  final bool isAutoClosed;
  final EdgeInsetsGeometry? horizontalPadding;
  final EdgeInsetsGeometry? verticalPadding;

  final Color? dialogColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopUpLayout(
        horizontalPadding: horizontalPadding,
        isAutoClosed: isAutoClosed,
        backgroundFade: backgroundFade,
        dialogColor: dialogColor,
        verticalPadding: verticalPadding,
        child: content,
      ),
    );
  }
}

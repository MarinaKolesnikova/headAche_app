import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field.dart';
import 'package:migr_proj/resources/resources.dart';

class LightMultiLineTextField extends StatelessWidget {
  const LightMultiLineTextField({
    required this.controller,
    required this.fieldHeight,
    this.formatters,
    Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final double fieldHeight;

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      onKeyEvent: (focusNode, event) {
        if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter) {
          return KeyEventResult.skipRemainingHandlers;
        }
        return KeyEventResult.ignored;
      },
      autofocus: true,
      child: SizedBox(
        height: fieldHeight,
        child: LightTextField(
          fieldName: 'comment',
          expands: true,
          keyboardType: TextInputType.multiline,
          textStyle: LightTextStyles.poppinsS16W400(height: 1.3),
          filledColor: LightColors.text,
          textAlignVertical: TextAlignVertical.bottom,
          controller: controller,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          inputFormatters: formatters,
        ),
      ),
    );
  }
}

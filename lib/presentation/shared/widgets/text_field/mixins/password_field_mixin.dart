import 'package:migr_proj/presentation/shared/widgets/text_field/password_text_field.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

mixin PasswordFieldMixin<T extends PasswordEditingField> on State<T> {
  bool validate() {
    if (widget.textController.text.trim().isEmpty) return true;
    return validationText() == null;
  }

  String? validationText() {
    final text = widget.textController.text.trim();
    String? validationMessage;

    if (widget.validationRules != null) {
      for (String? Function(String) func in widget.validationRules!) {
        validationMessage = func.call(text) ?? validationMessage;
      }
    }
    return validationMessage;
  }

  Widget errorText() {
    final errorMess = validationText();

    if (errorMess != null && !validate()) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 8.0,
          top: 4.0,
        ),
        child: Text(
          errorMess,
          key: widget.errorKey,
          style: LightTextStyles.poppinsS12W400(color: LightColors.errorColor),
        ),
      );
    }
    return SizedBox.shrink();
  }
}

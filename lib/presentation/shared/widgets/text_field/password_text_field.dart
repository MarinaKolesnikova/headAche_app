import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field_builder.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/mixins/password_field_mixin.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class PasswordEditingField extends StatefulWidget {
  const PasswordEditingField({
    required this.labelText,
    required this.textController,
    required this.isValid,
    this.validationRules,
    this.fieldColor,
    this.errorKey,
    Key? key,
  }) : super(key: key);
  final String labelText;
  final TextEditingController textController;
  final Key? errorKey;
  final Function(bool)? isValid;
  final List<String? Function(String)>? validationRules;
  final Color? fieldColor;

  @override
  State<PasswordEditingField> createState() => _PasswordEditingFieldState();
}

class _PasswordEditingFieldState extends State<PasswordEditingField> with PasswordFieldMixin {
  late bool isValid;

  @override
  void initState() {
    super.initState();
    isValid = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Focus(
          child: LightTextFieldBuilder.password(
            obsqureIconColor: LightColors.text,
            textStyle: LightTextStyles.poppinsS14W400(
              color: LightColors.text,
              height: 1.8,
            ),
            labelStyle: LightTextStyles.poppinsS14W400(color: LightColors.text),
            label: widget.labelText,
            controller: widget.textController,
            filledColor: validate() ? widget.fieldColor ?? LightColors.text : LightColors.errorColor,
            onChange: (_) {
              isValid = validate();
              widget.isValid?.call(isValid && widget.textController.text.trim().isNotEmpty);
            },
          ),
        ),
        errorText(),
      ],
    );
  }
}

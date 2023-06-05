import 'package:migr_proj/presentation/authorization/sign_up/mixins/auth_fields_mixin.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field_builder.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/password_text_field.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/shared/utils/text_validation_util.dart';
import 'package:flutter/material.dart';

class SignUpFieldsList extends StatefulWidget {
  const SignUpFieldsList({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final Function({required bool buttonDisability}) onChanged;

  @override
  State<SignUpFieldsList> createState() => _SignUpFieldsListState();
}

class _SignUpFieldsListState extends State<SignUpFieldsList> with AuthFieldsMixin {
  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry fieldPadding = EdgeInsets.fromLTRB(26.0, 15.0, 26.0, 0.0);
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;
    final TextStyle textStyle = LightTextStyles.poppinsS16W400(color: LightColors.white.withOpacity(0.8), height: 1.5);
    final TextStyle labelStyle = LightTextStyles.poppinsS16W400(color: LightColors.white.withOpacity(0.8));
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: LightTextFieldBuilder.login(
              label: dict.userName,
              controller: widget.nameController,
              fieldPadding: fieldPadding,
              isMandatory: true,
              labelStyle: labelStyle,
              textStyle: textStyle,
              filledColor: LightColors.white,
              onChange: (_) => onChange(),
            ),
          ),
          LightTextFieldBuilder.login(
            label: dict.email,
            controller: widget.emailController,
            fieldPadding: fieldPadding,
            isMandatory: true,
            labelStyle: labelStyle,
            textStyle: textStyle,
            filledColor: isEmailValid ? LightColors.white : LightColors.errorColor,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChange: (_) => onChange(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: PasswordEditingField(
              textController: widget.passwordController,
              labelText: dict.password,
              validationRules: [
                validator(widget.confirmPasswordController),
                TextValidationUtil.passwordFormat,
              ],
              isValid: (isValid) => eqPassIsValid(isValid: isValid),
              fieldColor: getFieldColor(PasswordErrorEnum.newField),
            ),
          ),
          PasswordEditingField(
            textController: widget.confirmPasswordController,
            labelText: dict.confirmPassword,
            validationRules: [
              validator(widget.passwordController),
              TextValidationUtil.passwordFormat,
            ],
            isValid: (isValid) => newPassIsValid(isValid: isValid),
            fieldColor: getFieldColor(PasswordErrorEnum.newField),
          ),
        ],
      ),
    );
  }

  Color? getFieldColor(PasswordErrorEnum field) {
    if (passwordEnum == field) return LightColors.errorColor;
    return null;
  }
}

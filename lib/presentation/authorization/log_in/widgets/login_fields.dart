import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field_builder.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    required this.loginController,
    required this.passwordController,
    required this.onChange,
    required this.isError,
    Key? key,
  }) : super(key: key);
  final TextEditingController loginController;
  final TextEditingController passwordController;
  final VoidCallback onChange;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: LightTextFieldBuilder.login(
            label: dict.email,
            controller: loginController,
            labelStyle: LightTextStyles.poppinsS16W400(),
            textStyle: LightTextStyles.poppinsS16W400(height: 1.5),
            filledColor: isError ? LightColors.errorColor : LightColors.text,
            onChange: (_) {
              onChange();
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LightTextFieldBuilder.password(
            controller: passwordController,
            labelStyle: LightTextStyles.poppinsS16W400(),
            textStyle: LightTextStyles.poppinsS16W400(height: 1.5),
            filledColor: isError ? LightColors.errorColor : LightColors.text,
            onChange: (_) {
              onChange();
            },
          ),
        ),
      ],
    );
  }
}

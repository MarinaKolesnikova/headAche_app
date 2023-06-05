import 'package:migr_proj/presentation/authorization/sign_up/mixins/sing_up_screen_mixin.dart';

import 'package:migr_proj/presentation/authorization/sign_up/widgets/sign_up_fields_list.dart';
import 'package:migr_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:migr_proj/presentation/shared/widgets/sign_with_buttons/builders/sign_with_builder.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with SignUpScreenMixin {
  AuthDictionary get dictionary => dictionaryManager.getSelectedData.auth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: [
          SignUpFieldsList(
            nameController: nameController,
            emailController: emailController,
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController,
            onChanged: onChanged,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (ctx, state) {
                return LightOutlineButton(
                  color: LightColors.text,
                  isDisable: isButtonDisable,
                  text: dictionary.enter,
                  onTap: onSignUpButtonTap,
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                );
              },
            ),
          ),
          SignWithBuilder(
            signWithType: SignWithType.signUp,
            padding: const EdgeInsets.symmetric(horizontal: 87.0).add(const EdgeInsets.only(top: 18.0)),
          ),
        ],
      ),
    );
  }
}

import 'dart:io' show Platform;
import 'package:migr_proj/presentation/shared/widgets/sign_with_buttons/sign_with_buttons.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';
import 'package:migr_proj/src/auth/domain/bloc/events/social_sign_in_event.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

enum SignWithType { signUp, logIn }

class SignWithBuilder extends StatelessWidget {
  const SignWithBuilder({required this.signWithType, this.padding, Key? key}) : super(key: key);
  final SignWithType signWithType;
  final EdgeInsetsGeometry? padding;

  AuthDictionary get authDictionary => dictionaryManager.getSelectedData.auth;

  @override
  Widget build(BuildContext context) {
    switch (signWithType) {
      case SignWithType.signUp:
        return buttonsBuilder(
          context,
          assignment: authDictionary.signUpWith,
        );
      case SignWithType.logIn:
        return buttonsBuilder(
          context,
          assignment: authDictionary.loginWith,
        );
    }
  }

  Widget buttonsBuilder(BuildContext context, {required String assignment}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 6.0),
          child: Text(
            assignment + authDictionary.socialNetworks,
            style: LightTextStyles.poppinsS14W400(color: LightColors.text),
          ),
        ),
        SignWithButton(
          color: LightColors.facebookBlue,
          iconPath: SvgPathPicker.facebook,
          text: assignment + authDictionary.facebook,
          padding: padding,
          onTap: () => onSocialSignInButtonTap(context, signInType: SignInType.facebook),
        ),
        SignWithButton(
          color: LightColors.googleBlue,
          iconPath: SvgPathPicker.google,
          text: assignment + authDictionary.google,
          padding: padding,
          onTap: () => onSocialSignInButtonTap(context, signInType: SignInType.google),
        ),
      ],
    );
  }

  void onSocialSignInButtonTap(BuildContext context, {required SignInType signInType}) {
    final event = SocialSignInEvent(
      signInType: signInType,
      onEventComplete: () => context.router.pushNamed(AppRoutes.homeScreen),
    );

    context.read<AuthBloc>().add(event);
  }
}

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:migr_proj/presentation/authorization/sign_up/sign_up_screen.dart';
import 'package:migr_proj/src/auth/domain/bloc/events/sign_up_event.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

mixin SignUpScreenMixin<T extends SignUpScreen> on State<T> {
  late final GlobalKey<FormBuilderState> formKey;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;
  late bool isTermsAccept;
  late bool isButtonDisable;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormBuilderState>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    isButtonDisable = true;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void onChanged({required bool buttonDisability}) {
    isButtonDisable = buttonDisability;

    setState(() {});
  }

  void buttonDisabilityCheck() {
    if (isAllFieldsFilled) {
      isButtonDisable = false;
    } else {
      isButtonDisable = true;
    }
    setState(() {});
  }

  void onSignUpButtonTap() {
    if (!isButtonDisable) {
      context.read<AuthBloc>().add(
            SignUpEvent(
              name: nameController.text,
              email: emailController.text,
              password: passwordController.text,
              confirmPassword: confirmPasswordController.text,
              onComplete: () async {
                await context.router.pushNamed(AppRoutes.homeScreen);
              },
            ),
          );
    }
  }

  bool get isAllFieldsFilled {
    final bool isIdentificationFilled = isEmpty(nameController) || isEmpty(emailController);
    final bool isPasswordFilled = isEmpty(passwordController) || isEmpty(confirmPasswordController);
    if (isIdentificationFilled || isPasswordFilled) {
      return false;
    }
    return true;
  }

  bool isEmpty(TextEditingController controller) {
    return controller.text.isEmpty;
  }
}

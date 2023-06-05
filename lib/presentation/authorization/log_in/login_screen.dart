import 'package:migr_proj/presentation/authorization/log_in/mixins/log_in_screen_mixin.dart';
import 'package:migr_proj/presentation/authorization/log_in/widgets/login_fields.dart';
import 'package:migr_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:migr_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:migr_proj/presentation/shared/widgets/sign_with_buttons/builders/sign_with_builder.dart';
import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:migr_proj/config/modules/injection_config.dart';

import 'package:migr_proj/resources/resources.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> with LogInScreenMixin {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: Center(
        child: ScrollConfiguration(
          behavior: ScrollCleanBehavior(),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  LoginFields(
                    loginController: loginController,
                    passwordController: passwordController,
                    onChange: onChange,
                    isError: errorText != null,
                  ),
                  if (errorText != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0).add(EdgeInsets.symmetric(horizontal: 20.0)),
                      child: Text(
                        errorText!,
                        key: const Key('errorText'),
                        style: LightTextStyles.poppinsS12W400(color: LightColors.errorColor),
                      ),
                    ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0).add(EdgeInsets.only(top: 60.0)),
                      child: LightOutlineButton(
                        color: LightColors.text,
                        isDisable: isButtonDisable,
                        onTap: onLogin,
                        text: dict.enter,
                      ),
                    ),
                  ),
                  SignWithBuilder(
                    signWithType: SignWithType.logIn,
                    padding: const EdgeInsets.symmetric(horizontal: 87.0).add(const EdgeInsets.only(top: 18.0)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void onLogin() {
    final authBloc = context.read<AuthBloc>();
    authBloc.add(
      LoginEvent(
        email: loginController.text,
        password: passwordController.text,
        onLoginCompleted: () {
          context.router.replaceNamed(AppRoutes.homeScreen);
        },
        onError: onError,
      ),
    );
  }
}

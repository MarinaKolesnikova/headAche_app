import 'package:migr_proj/presentation/authorization/log_in/login_screen.dart';
import 'package:migr_proj/presentation/authorization/sign_up/sign_up_screen.dart';
import 'package:migr_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/models/tab_bar_model.dart';

import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/top_tab_bar_builder.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:migr_proj/src/shared/layouts/main_layout.dart';
import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;
    final Widget sliverAppbar = SliverAppBar(
      expandedHeight: 160.0,
      backgroundColor: LightColors.backgroundColor,
      automaticallyImplyLeading: false,
      flexibleSpace: const FlexibleSpaceBar(
        //TODO(Mar): add logo here
        background: SizedBox(),
        collapseMode: CollapseMode.none,
      ),
    );

    return BlocProvider(
      create: (ctx) => AuthBloc.byGetIt(),
      child: MainLayout.withFocusLayout(
        resizeToAvoidBottomInset: true,
        child: ScrollConfiguration(
          behavior: ScrollCleanBehavior(),
          child: TopTabBarBuilder.sliverTopTabBar(
            header: sliverAppbar,
            elements: [
              TabBarModel(
                title: dict.login,
                page: LogInScreen(),
              ),
              TabBarModel(
                title: dict.signUp,
                page: SignUpScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

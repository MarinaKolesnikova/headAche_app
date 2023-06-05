import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:migr_proj/presentation/shared/widgets/app_bar/light_app_bar.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    required this.child,
    Key? key,
    this.appBar,
    this.bottomBar,
    this.onWillPop,
    this.appBarLabel,
    this.backgroundColor,
    this.floatingActionButton,
    this.backAppBar = false,
    this.withGradient = true,
    this.resizeToAvoidBottomInset = false,
  })  : _withFocusLayout = false,
        super(key: key);
  const MainLayout.withFocusLayout({
    required this.child,
    Key? key,
    this.appBar,
    this.bottomBar,
    this.onWillPop,
    this.appBarLabel,
    this.backgroundColor,
    this.floatingActionButton,
    this.backAppBar = false,
    this.resizeToAvoidBottomInset = false,
    this.withGradient = true,
  })  : _withFocusLayout = true,
        super(key: key);

  final Widget child;
  final String? appBarLabel;
  final Widget? bottomBar;
  final Color? backgroundColor;
  final Future<bool> Function()? onWillPop;

  final PreferredSizeWidget? appBar;
  final bool backAppBar;
  final bool withGradient;
  final bool _withFocusLayout;

  final bool resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    Widget body = SizedBox(
      width: mediaQuery.size.width - mediaQuery.padding.horizontal,
      child: child,
    );
    if (_withFocusLayout) {
      body = focusLayout(context, child: body);
    }

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: onWillPop,
          child: applyGradient(
            Scaffold(
              extendBody: true,
              appBar: getAppBar,
              bottomNavigationBar: bottomBar,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
              backgroundColor: withGradient ? Colors.transparent : backgroundColor,
              body: body,
              floatingActionButton: floatingActionButton,
            ),
          ),
        );
      },
    );
  }

  Widget applyGradient(Widget child) {
    if (withGradient) {
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: LightColors.bgGradient,
          ),
        ),
        child: child,
      );
    }
    return child;
  }

  PreferredSizeWidget? get getAppBar {
    if (appBarLabel != null) {
      return LightAppBar(
        label: appBarLabel!,
        hasBackButton: backAppBar,
      );
    }
    return appBar;
  }

  BoxDecoration? getDecoration({required Gradient? gradient}) {
    if (gradient != null) {
      return BoxDecoration(gradient: gradient);
    }
    return null;
  }

  Widget focusLayout(BuildContext context, {required Widget child}) {
    return NonAnimatedInkWell(
      onTap: FocusScope.of(context).unfocus,
      child: child,
    );
  }
}

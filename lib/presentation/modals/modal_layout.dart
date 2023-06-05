import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/resources/resources.dart';

class ModalLayout extends StatelessWidget {
  const ModalLayout({
    required this.child,
    Key? key,
    this.height,
    this.backgroundColor,
  })  : _withFocusLayout = false,
        super(key: key);

  const ModalLayout.withFocusLayout({
    required this.child,
    Key? key,
    this.height,
    this.backgroundColor,
  })  : _withFocusLayout = true,
        super(key: key);

  final Widget child;
  final double? height;
  final bool _withFocusLayout;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        Widget widget = Container(
          decoration: BoxDecoration(
              color: backgroundColor ?? LightColors.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: LightColors.text.withOpacity(0.08),
                  blurRadius: 15.0,
                  spreadRadius: 10.0,
                )
              ]),
          child: child,
        );

        if (_withFocusLayout) {
          widget = focusLayout(context, child: widget);
        }

        return Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: widget,
        );
      },
    );
  }

  Widget focusLayout(BuildContext context, {required Widget child}) {
    return NonAnimatedInkWell(
      onTap: FocusScope.of(context).unfocus,
      child: child,
    );
  }
}

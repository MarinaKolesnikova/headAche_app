import 'package:flutter/material.dart';
import 'package:auto_route/src/router/auto_router_x.dart';

import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

class PopUpLayout extends StatelessWidget {
  const PopUpLayout({
    required this.child,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundFade = true,
    this.isAutoClosed = true,
    this.dialogColor,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final bool isAutoClosed;
  final EdgeInsetsGeometry? horizontalPadding;
  final EdgeInsetsGeometry? verticalPadding;

  final bool backgroundFade;
  final Color? dialogColor;

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(10.0);
    return Material(
      borderRadius: borderRadius,
      color: backgroundFade ? LightColors.white.withOpacity(0.75) : Colors.transparent,
      child: NonAnimatedInkWell(
        onTap: () {
          if (isAutoClosed) context.popRoute();
        },
        child: Center(
          child: Padding(
            padding: verticalPadding ?? EdgeInsets.symmetric(vertical: 70.0).add(horizontalPadding ?? EdgeInsets.symmetric(horizontal: 53.0)),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: getDecoration(borderRadius: borderRadius),
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration getDecoration({required BorderRadius borderRadius}) {
    return BoxDecoration(
      color: dialogColor ?? Colors.white,
      borderRadius: borderRadius,
    );
  }
}

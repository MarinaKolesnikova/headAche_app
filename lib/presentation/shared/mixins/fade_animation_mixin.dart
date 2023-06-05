import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:flutter/material.dart';

mixin FadeAnimationMixin<T extends StatefulWidget> on AnimationState<T> {
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    fadeAnimation = createFadeAnimation();
  }

  Animation<double> createFadeAnimation({Curve curve = Curves.easeIn}) {
    return Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: animationController,
      curve: curve,
    ));
  }
}

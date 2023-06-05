import 'package:flutter/material.dart';

mixin AnimationMixin<T extends StatefulWidget> on State<T> implements TickerProvider {
  Duration get animationDuration;

  late AnimationController animationController;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: animationDuration,
    )..addListener(listener);
  }

  @override
  void deactivate() {
    animationController.stop();
    super.deactivate();
  }

  @override
  @mustCallSuper
  void dispose() {
    animationController.removeListener(listener);
    animationController.dispose();
    super.dispose();
  }

  void listener() => mounted ? setState(() {}) : {};
}

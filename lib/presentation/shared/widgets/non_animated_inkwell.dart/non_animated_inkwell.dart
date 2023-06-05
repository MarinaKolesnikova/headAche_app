import 'package:flutter/material.dart';

class NonAnimatedInkWell extends StatelessWidget {
  const NonAnimatedInkWell({
    required this.onTap,
    required this.child,
    this.onLongPress,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final Widget child;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      onLongPress: onLongPress,
      child: child,
    );
  }
}

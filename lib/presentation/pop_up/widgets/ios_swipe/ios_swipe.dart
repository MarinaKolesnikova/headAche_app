import 'dart:io';

import 'package:flutter/material.dart';

class IOSSwipe extends StatelessWidget {
  const IOSSwipe({
    required this.child,
    required this.onSwipe,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final VoidCallback onSwipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.globalPosition.dx > 70.0 && details.globalPosition.dx < 100.0 && details.delta.dx > 0) {
          if (Platform.isIOS) {
            onSwipe.call();
          }
        }
      },
      child: child,
    );
  }
}

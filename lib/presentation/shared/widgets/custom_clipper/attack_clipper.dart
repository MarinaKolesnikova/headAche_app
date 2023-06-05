import 'package:flutter/material.dart';

class AttackClipper extends CustomClipper<Path> {
  const AttackClipper();

  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 10)
      ..lineTo(0, size.height - 10)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}

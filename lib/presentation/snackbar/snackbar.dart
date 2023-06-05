import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';

class SnackBarBuilder {
  static SnackBar getSnackBar({
    required String text,
  }) {
    return SnackBar(
      backgroundColor: LightColors.accentColor,
      content: Text(text),
      duration: const Duration(seconds: 3),
    );
  }
}

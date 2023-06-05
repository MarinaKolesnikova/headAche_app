import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

mixin OutlineButtonMixin {
  Color getButtonColor({
    required bool isDisable,
    Color? color,
  }) {
    if (isDisable) {
      return LightColors.outlinedButtonColor.withOpacity(0.2);
    }

    return LightColors.outlinedButtonColor.withOpacity(0.8);
  }

  Color getTextColor({
    required bool isDisable,
    required Color borderColor,
  }) {
    if (isDisable) {
      return borderColor.withOpacity(0.5);
    }

    return borderColor;
  }

  Border getBorder({
    required bool isDisable,
    required Color borderColor,
  }) {
    return Border.all(
      color: isDisable ? borderColor.withOpacity(0.2) : borderColor,
      width: 1.1,
    );
  }

  BorderRadius get borderRad => BorderRadius.circular(90.0);
  Color? getSplashColor({required bool isDisable}) {
    if (!isDisable) {
      return null;
    }
    return Colors.transparent;
  }
}
